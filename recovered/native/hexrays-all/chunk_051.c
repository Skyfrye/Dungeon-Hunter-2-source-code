// ===== 7c0cd0 gameswf::sprite_begin_fill(gameswf::fn_call const&) =====
int __fastcall gameswf::sprite_begin_fill(gameswf *this, const gameswf::fn_call *a2)
{
  gameswf::sprite_instance *v3; // r0
  int canvas; // r0
  int v5; // r1
  const char *v6; // r2
  int v7; // r3
  gameswf::canvas *v8; // r7
  int v9; // r0
  int v10; // r1
  int v11; // r0
  char v13; // [sp+4h] [bp-4h] BYREF
  char v14; // [sp+5h] [bp-3h]
  char v15; // [sp+6h] [bp-2h]
  char v16; // [sp+7h] [bp-1h]

  v3 = (gameswf::sprite_instance *)gameswf::sprite_getptr(this, a2);
  canvas = gameswf::sprite_instance::get_canvas(v3);
  v7 = *((_DWORD *)this + 4);
  v8 = (gameswf::canvas *)canvas;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = -1;
  if ( v7 > 0 )
  {
    v9 = (int)COERCE_DOUBLE(
                gameswf::as_value::to_number(
                  (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
                  v5,
                  v6));
    v10 = *((_DWORD *)this + 4);
    v13 = BYTE2(v9);
    v14 = BYTE1(v9);
    v15 = v9;
    v16 = -1;
    if ( v10 > 1 )
    {
      v11 = (int)COERCE_DOUBLE(
                   gameswf::as_value::to_number(
                     (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 1)),
                     v10,
                     (const char *)(v9 >> 16)));
      if ( v11 <= 254 )
      {
        if ( v11 <= 0 )
        {
          v16 = 0;
          return gameswf::canvas::begin_fill(v8, (const gameswf::rgba *)&v13);
        }
      }
      else
      {
        LOBYTE(v11) = -1;
      }
      v16 = (char)-(char)v11 / 100;
    }
  }
  return gameswf::canvas::begin_fill(v8, (const gameswf::rgba *)&v13);
}


// ===== 7c0dbc gameswf::sprite_set_fps(gameswf::fn_call const&) =====
int __fastcall gameswf::sprite_set_fps(gameswf *this, const gameswf::fn_call *a2)
{
  int result; // r0
  int v4; // r1
  gameswf::root **v5; // r4
  float v6; // r0

  result = gameswf::sprite_getptr(this, a2);
  v5 = (gameswf::root **)result;
  if ( *((_DWORD *)this + 4) == 1 )
  {
    v6 = COERCE_DOUBLE(
           gameswf::as_value::to_number(
             (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
             v4,
             (const char *)*((_DWORD *)this + 5)));
    return gameswf::sprite_instance::set_fps(v5, v6);
  }
  return result;
}


// ===== 7c0e08 gameswf::sprite_create_text_field(gameswf::fn_call const&) =====
void __fastcall gameswf::sprite_create_text_field(int **this, const gameswf::fn_call *a2)
{
  gameswf::sprite_instance *v3; // r7
  const char *v4; // r1
  gameswf::as_value *v5; // r4
  char *v6; // r8
  int v7; // r1
  const char *v8; // r2
  double v9; // r10
  const char *v10; // r2
  double v11; // kr00_8
  const char *v12; // r2
  const char *v13; // r2
  gameswf::tu_string *text_field; // r1
  double v15; // [sp+18h] [bp-18h]
  double v16; // [sp+20h] [bp-10h]
  double v17; // [sp+28h] [bp-8h]

  v3 = (gameswf::sprite_instance *)gameswf::sprite_getptr((gameswf *)this, a2);
  gameswf::as_value::set_as_object((gameswf::as_value *)*this, nullptr);
  if ( *(this + 4) == (int *)&byte_6 )
  {
    v5 = (gameswf::as_value *)*this;
    v6 = gameswf::as_value::to_string((gameswf::as_value *)(**(this + 3) + 12 * (_DWORD)*(this + 5)));
    v9 = COERCE_DOUBLE(gameswf::as_value::to_number((gameswf::as_value *)(**(this + 3) + 12 * ((_DWORD)*(this + 5) - 1)), v7, v8));
    v11 = COERCE_DOUBLE(
            gameswf::as_value::to_number(
              (gameswf::as_value *)(**(this + 3) + 12 * ((_DWORD)*(this + 5) - 2)),
              SHIDWORD(v9),
              v10));
    v17 = COERCE_DOUBLE(
            gameswf::as_value::to_number(
              (gameswf::as_value *)(**(this + 3) + 12 * ((_DWORD)*(this + 5) - 3)),
              **(this + 3),
              (const char *)LODWORD(v11)));
    v16 = COERCE_DOUBLE(
            gameswf::as_value::to_number(
              (gameswf::as_value *)(**(this + 3) + 12 * (_DWORD)(*(this + 5) - 1)),
              **(this + 3),
              v12));
    v15 = COERCE_DOUBLE(
            gameswf::as_value::to_number(
              (gameswf::as_value *)(**(this + 3) + 12 * ((_DWORD)*(this + 5) - 5)),
              **(this + 3),
              v13));
    text_field = gameswf::sprite_instance::create_text_field(
                   v3,
                   v6,
                   (int)v9 + 0x4000,
                   (int)v11,
                   (int)v17,
                   (int)v16,
                   (int)v15);
    gameswf::as_value::set_as_object(v5, text_field);
  }
  else
  {
    gameswf::log_error("createTextField: the number of arguments must be 6\n", v4);
  }
}


// ===== 7c0f7c gameswf::sprite_instance_at_depth(gameswf::fn_call const&) =====
void __fastcall gameswf::sprite_instance_at_depth(gameswf *this, const gameswf::fn_call *a2)
{
  int v3; // r1
  int v4; // r5
  int v5; // r0
  gameswf::as_object *character_at_depth; // r1

  if ( *((int *)this + 4) > 0 && (v4 = gameswf::sprite_getptr(this, a2)) != 0 )
  {
    v5 = (int)COERCE_DOUBLE(
                gameswf::as_value::to_number(
                  (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
                  v3,
                  (const char *)*((_DWORD *)this + 5)));
    character_at_depth = (gameswf::as_object *)gameswf::display_list::get_character_at_depth(
                                                 (gameswf::display_list *)(v4 + 168),
                                                 v5 + 0x4000);
    gameswf::as_value::set_as_object(*(gameswf::as_value **)this, character_at_depth);
  }
  else
  {
    gameswf::as_value::set_as_object(*(gameswf::as_value **)this, nullptr);
  }
}


// ===== 7c0fe8 gameswf::sprite_getnexthighestdepth(gameswf::fn_call const&) =====
int __fastcall gameswf::sprite_getnexthighestdepth(gameswf *this, const gameswf::fn_call *a2)
{
  gameswf::sprite_instance *v3; // r0
  double v4; // r2

  v3 = (gameswf::sprite_instance *)gameswf::sprite_getptr(this, a2);
  v4 = (double)(gameswf::sprite_instance::get_highest_depth(v3) - 0x4000);
  return gameswf::as_value::set_double(*(gameswf::as_value **)this, v4);
}


// ===== 7c1018 gameswf::sprite_create_empty_movieclip(gameswf::fn_call const&) =====
void __fastcall gameswf::sprite_create_empty_movieclip(gameswf *this, const gameswf::fn_call *a2)
{
  const char *v3; // r1
  gameswf::sprite_instance *v4; // r5
  char *v5; // r6
  int v6; // r1
  const char *v7; // r2
  int v8; // r0
  gameswf::ref_counted **v9; // r1

  v4 = (gameswf::sprite_instance *)gameswf::sprite_getptr(this, a2);
  if ( *((_DWORD *)this + 4) == 2 )
  {
    v5 = gameswf::as_value::to_string((gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)));
    v8 = (int)COERCE_DOUBLE(
                gameswf::as_value::to_number(
                  (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 1)),
                  v6,
                  v7));
    v9 = gameswf::sprite_instance::add_empty_movieclip(v4, v5, v8 + 0x4000);
    gameswf::as_value::set_as_object(*(gameswf::as_value **)this, (gameswf::as_object *)v9);
  }
  else
  {
    gameswf::log_error("createEmptyMovieClip needs 2 args\n", v3);
  }
}


// ===== 7c10a0 gameswf::sprite_get_depth(gameswf::fn_call const&) =====
int __fastcall gameswf::sprite_get_depth(gameswf *this, const gameswf::fn_call *a2)
{
  double v3; // r2

  v3 = (double)(*(unsigned __int16 *)(gameswf::sprite_getptr(this, a2) + 148) - 0x4000);
  return gameswf::as_value::set_double(*(gameswf::as_value **)this, v3);
}


// ===== 7c10d0 gameswf::sprite_duplicate_movieclip(gameswf::fn_call const&) =====
void __fastcall gameswf::sprite_duplicate_movieclip(gameswf *this, const gameswf::fn_call *a2)
{
  int v3; // r0
  const char *v4; // r1
  int v5; // r7
  int (__fastcall *v6)(int, char *, int); // r6
  char *v7; // r8
  int v8; // r1
  const char *v9; // r2
  int v10; // r0
  gameswf::as_object *v11; // r6
  int v12; // r5
  int v13; // r3

  v3 = gameswf::sprite_getptr(this, a2);
  v5 = v3;
  if ( *((int *)this + 4) <= 1 )
  {
    gameswf::log_error("duplicateMovieClip needs 2 or 3 args\n", v4);
  }
  else
  {
    v6 = *(int (__fastcall **)(int, char *, int))(*(_DWORD *)v3 + 212);
    v7 = gameswf::as_value::to_tu_string((gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)));
    v10 = (int)COERCE_DOUBLE(
                 gameswf::as_value::to_number(
                   (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 1)),
                   v8,
                   v9));
    v11 = (gameswf::as_object *)v6(v5, v7, v10 + 0x4000);
    if ( *((_DWORD *)this + 4) == 3 )
    {
      v12 = **((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 2);
      if ( *(_BYTE *)(v12 + 1) == 5 )
      {
        v13 = *(_DWORD *)(v12 + 4);
        if ( v13 )
          (*(void (__fastcall **)(_DWORD, gameswf::as_object *))(*(_DWORD *)v13 + 72))(*(_DWORD *)(v12 + 4), v11);
      }
    }
    gameswf::as_value::set_as_object(*(gameswf::as_value **)this, v11);
  }
}


// ===== 7c11b4 gameswf::sprite_get_bytes_total(gameswf::fn_call const&) =====
int __fastcall gameswf::sprite_get_bytes_total(gameswf *this, const gameswf::fn_call *a2)
{
  gameswf::sprite_instance *v3; // r0
  gameswf::as_value *v4; // r4
  double file_bytes; // r2

  v3 = (gameswf::sprite_instance *)gameswf::sprite_getptr(this, a2);
  v4 = *(gameswf::as_value **)this;
  file_bytes = (double)(int)gameswf::sprite_instance::get_file_bytes(v3);
  return gameswf::as_value::set_double(v4, file_bytes);
}


// ===== 7c11e0 gameswf::sprite_get_bytes_loaded(gameswf::fn_call const&) =====
int __fastcall gameswf::sprite_get_bytes_loaded(gameswf *this, const gameswf::fn_call *a2)
{
  gameswf::sprite_instance *v3; // r0
  gameswf::as_value *v4; // r4
  double loaded_bytes; // r2

  v3 = (gameswf::sprite_instance *)gameswf::sprite_getptr(this, a2);
  v4 = *(gameswf::as_value **)this;
  loaded_bytes = (double)(int)gameswf::sprite_instance::get_loaded_bytes(v3);
  return gameswf::as_value::set_double(v4, loaded_bytes);
}


// ===== 7c120c gameswf::sprite_prev_frame(gameswf::fn_call const&) =====
int __fastcall gameswf::sprite_prev_frame(gameswf *this, const gameswf::fn_call *a2)
{
  int v2; // r4
  int v3; // r0

  v2 = gameswf::sprite_getptr(this, a2);
  v3 = (*(int (**)(void))(*(_DWORD *)v2 + 312))();
  if ( v3 > 0 )
    (*(void (__fastcall **)(int, int))(*(_DWORD *)v2 + 332))(v2, v3 - 1);
  return (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 148))(v2, 1);
}


// ===== 7c1258 gameswf::sprite_next_frame(gameswf::fn_call const&) =====
int __fastcall gameswf::sprite_next_frame(gameswf *this, const gameswf::fn_call *a2)
{
  int v2; // r4
  int v3; // r5
  int v4; // r0

  v2 = gameswf::sprite_getptr(this, a2);
  v3 = (*(int (**)(void))(*(_DWORD *)v2 + 316))();
  v4 = (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 312))(v2);
  if ( v3 > v4 )
    (*(void (__fastcall **)(int, int))(*(_DWORD *)v2 + 332))(v2, v4 + 1);
  return (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 148))(v2, 1);
}


// ===== 7c12b8 gameswf::sprite_stop(gameswf::fn_call const&) =====
int __fastcall gameswf::sprite_stop(gameswf *this, const gameswf::fn_call *a2)
{
  int v2; // r0

  v2 = gameswf::sprite_getptr(this, a2);
  return (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 148))(v2, 1);
}


// ===== 7c12d4 gameswf::sprite_play(gameswf::fn_call const&) =====
int __fastcall gameswf::sprite_play(gameswf *this, const gameswf::fn_call *a2)
{
  int v2; // r0

  v2 = gameswf::sprite_getptr(this, a2);
  return (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v2 + 148))(v2, 0);
}


// ===== 7c12f0 gameswf::sprite_clear(gameswf::fn_call const&) =====
void __fastcall gameswf::sprite_clear(gameswf *this, const gameswf::fn_call *a2)
{
  _DWORD *v2; // r0
  _DWORD *v3; // r4
  void (__fastcall ***v4)(_DWORD); // r0

  v2 = (_DWORD *)gameswf::sprite_getptr(this, a2);
  v3 = v2;
  if ( v2[60] )
  {
    (*(void (__fastcall **)(_DWORD *))(*v2 + 168))(v2);
    v4 = (void (__fastcall ***)(_DWORD))v3[60];
    if ( v4 )
    {
      gameswf::ref_counted::drop_ref(v4);
      v3[60] = 0;
    }
  }
}


// ===== 7c1330 gameswf::smart_ptr_proxy::operator=(gameswf::weak_proxy *) [clone] =====
void __fastcall gameswf::smart_ptr_proxy::operator=(_DWORD **a1)
{
  _DWORD *v2; // r0

  v2 = *a1;
  if ( v2 )
  {
    if ( (*v2)-- == 1 )
      gameswf::free_internal(v2);
    *a1 = nullptr;
  }
}


// ===== 7c136c gameswf::sprite_hit_test(gameswf::fn_call const&) =====
void __fastcall gameswf::sprite_hit_test(gameswf::as_environment **this, const gameswf::fn_call *a2)
{
  gameswf::character **v3; // r6
  const char *v4; // r1
  int v5; // r5
  int v6; // r5
  int *v7; // r7
  int v8; // r3
  float v9; // r8
  int v10; // r5
  float v11; // r2
  int v12; // r3
  gameswf::as_value *v13; // r4
  bool v14; // r0
  __int64 v15; // r1
  float v16; // r0
  __int64 v17; // r1
  float v18; // r0
  gameswf::character **target; // r0
  const char *v20; // r1
  gameswf::character **v21; // r7
  gameswf::as_value *v22; // r4
  bool v23; // r0
  int v24; // r0
  float v25; // [sp+4h] [bp-Ch]

  v3 = (gameswf::character **)gameswf::sprite_getptr((gameswf *)this, a2);
  gameswf::as_value::set_bool(*this, 0);
  v5 = (int)*(this + 4);
  if ( v5 == 1 )
  {
    target = (gameswf::character **)gameswf::as_environment::find_target(
                                      *(this + 3),
                                      (const gameswf::as_value *)(*(_DWORD *)*(this + 3) + 12 * (_DWORD)*(this + 5)));
    v21 = target;
    if ( target && (*((int (__fastcall **)(gameswf::character **, int))*target + 2))(target, 1) )
    {
      v22 = *this;
      v23 = gameswf::sprite_instance::hit_test(v3, v21);
      gameswf::as_value::set_bool(v22, v23);
    }
    else
    {
      gameswf::log_error("hitTest: can't find target\n", v20);
    }
  }
  else if ( v5 <= 1 )
  {
    gameswf::log_error("hitTest() wrong parameters\n", v4);
  }
  else
  {
    v6 = (int)*(this + 5);
    v7 = (int *)*(this + 3);
    v8 = *v7;
    if ( *(_BYTE *)(*v7 + 12 * v6 + 1) == 2 )
    {
      v18 = COERCE_DOUBLE(gameswf::as_value::to_number((gameswf::as_value *)(*v7 + 12 * v6), v17, (const char *)HIDWORD(v17)))
          * 20.0;
      v7 = (int *)*(this + 3);
      v9 = v18;
      v6 = (int)*(this + 5);
      v8 = *v7;
    }
    else
    {
      v9 = 0.0;
    }
    v10 = 12 * (v6 - 1);
    if ( *(_BYTE *)(v8 + v10 + 1) == 2 )
    {
      v16 = COERCE_DOUBLE(gameswf::as_value::to_number((gameswf::as_value *)(*v7 + v10), v15, (const char *)HIDWORD(v15)))
          * 20.0;
      v11 = v16;
    }
    else
    {
      v11 = 0.0;
    }
    if ( *(this + 4) == (gameswf::as_environment *)((char *)&dword_0 + 3) )
    {
      v25 = v11;
      v24 = gameswf::as_value::to_bool((gameswf::as_value *)(*(_DWORD *)*(this + 3) + 12 * ((_DWORD)*(this + 5) - 2)));
      v11 = v25;
      v12 = v24;
    }
    else
    {
      v12 = 0;
    }
    v13 = *this;
    v14 = gameswf::sprite_instance::hit_test((gameswf::sprite_instance *)v3, v9, v11, v12);
    gameswf::as_value::set_bool(v13, v14);
  }
}


// ===== 7c1574 gameswf::transform_point(gameswf::as_object *,gameswf::matrix const&) =====
void __fastcall gameswf::transform_point(gameswf *this, gameswf::as_object *a2, const gameswf::matrix *a3)
{
  void (__fastcall *v5)(gameswf *, _BYTE *, _BYTE *); // r7
  void (__fastcall *v6)(gameswf *, _BYTE *, _BYTE *); // r10
  int v7; // r1
  const char *v8; // r2
  double v9; // r0
  const char *v10; // r2
  float v11; // r10
  float v12; // r0
  void (__fastcall *v13)(gameswf *, _BYTE *, _BYTE *); // r10
  void (__fastcall *v14)(gameswf *, _BYTE *, _BYTE *); // r10
  float v15; // [sp+0h] [bp-9Ch]
  float v16; // [sp+4h] [bp-98h]
  _BYTE v17[4]; // [sp+8h] [bp-94h] BYREF
  double v18; // [sp+Ch] [bp-90h]
  _BYTE v19[4]; // [sp+14h] [bp-88h] BYREF
  double v20; // [sp+18h] [bp-84h]
  _BYTE v21[4]; // [sp+20h] [bp-7Ch] BYREF
  int v22; // [sp+24h] [bp-78h]
  int v23; // [sp+28h] [bp-74h]
  _BYTE v24[4]; // [sp+2Ch] [bp-70h] BYREF
  int v25; // [sp+30h] [bp-6Ch]
  int v26; // [sp+34h] [bp-68h]
  double v27; // [sp+38h] [bp-64h]
  _BYTE v28[8]; // [sp+44h] [bp-58h] BYREF
  void *v29; // [sp+50h] [bp-4Ch]
  _BYTE v30[8]; // [sp+58h] [bp-44h] BYREF
  void *v31; // [sp+64h] [bp-38h]
  _BYTE v32[8]; // [sp+6Ch] [bp-30h] BYREF
  void *v33; // [sp+78h] [bp-24h]
  _BYTE v34[8]; // [sp+80h] [bp-1Ch] BYREF
  void *p; // [sp+8Ch] [bp-10h]

  if ( this )
  {
    v27 = 0.0;
    v24[0] = 0;
    v24[1] = 2;
    v25 = 0;
    v26 = 0;
    v5 = *(void (__fastcall **)(gameswf *, _BYTE *, _BYTE *))(*(_DWORD *)this + 32);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v34, "x");
    v5(this, v34, v24);
    if ( v34[0] == -1 )
      gameswf::free_internal(p);
    v27 = 0.0;
    v21[0] = 0;
    v21[1] = 2;
    v22 = 0;
    v23 = 0;
    v6 = *(void (__fastcall **)(gameswf *, _BYTE *, _BYTE *))(*(_DWORD *)this + 32);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v32, "y");
    v6(this, v32, v21);
    if ( v32[0] == -1 )
      gameswf::free_internal(v33);
    v9 = COERCE_DOUBLE(gameswf::as_value::to_number((gameswf::as_value *)v24, v7, v8));
    *(float *)&v9 = v9 * 20.0;
    v11 = *(float *)&v9;
    v12 = COERCE_DOUBLE(gameswf::as_value::to_number((gameswf::as_value *)v21, SHIDWORD(v9), v10)) * 20.0;
    v15 = (float)((float)(v11 * *(float *)a2) + (float)(v12 * *((float *)a2 + 1))) + *((float *)a2 + 2);
    v16 = (float)((float)(v11 * *((float *)a2 + 3)) + (float)(v12 * *((float *)a2 + 4))) + *((float *)a2 + 5);
    v13 = *(void (__fastcall **)(gameswf *, _BYTE *, _BYTE *))(*(_DWORD *)this + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v30, "x");
    v19[0] = 0;
    v19[1] = 2;
    v27 = (float)(v15 / 20.0);
    v20 = v27;
    v13(this, v30, v19);
    gameswf::as_value::drop_refs((gameswf::as_value *)v19);
    if ( v30[0] == -1 )
      gameswf::free_internal(v31);
    v14 = *(void (__fastcall **)(gameswf *, _BYTE *, _BYTE *))(*(_DWORD *)this + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v28, "y");
    v17[0] = 0;
    v17[1] = 2;
    v27 = (float)(v16 / 20.0);
    v18 = v27;
    v14(this, v28, v17);
    gameswf::as_value::drop_refs((gameswf::as_value *)v17);
    if ( v28[0] == -1 )
      gameswf::free_internal(v29);
    gameswf::as_value::drop_refs((gameswf::as_value *)v21);
    gameswf::as_value::drop_refs((gameswf::as_value *)v24);
  }
}


// ===== 7c18a8 gameswf::sprite_global_local(gameswf::fn_call const&) =====
void __fastcall gameswf::sprite_global_local(gameswf *this, const gameswf::fn_call *a2)
{
  gameswf::character *v3; // r0
  char *world_matrix; // r0
  int v5; // r3
  const gameswf::matrix *v6; // r2
  gameswf *v7; // r0
  _DWORD v8[6]; // [sp+0h] [bp-18h] BYREF

  v3 = (gameswf::character *)gameswf::sprite_getptr(this, a2);
  if ( *((_DWORD *)this + 4) == 1 )
  {
    v8[5] = 0;
    v8[4] = 1065353216;
    v8[0] = 1065353216;
    memset(&v8[1], 0, 12);
    world_matrix = gameswf::character::get_world_matrix(v3);
    gameswf::matrix::set_inverse((gameswf::matrix *)v8, (const gameswf::matrix *)world_matrix);
    v5 = **((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5);
    v6 = (const gameswf::matrix *)*(char *)(v5 + 1);
    if ( v6 == (const gameswf::matrix *)&byte_5 )
      v7 = *(gameswf **)(v5 + 4);
    else
      v7 = nullptr;
    gameswf::transform_point(v7, (gameswf::as_object *)v8, v6);
  }
}


// ===== 7c1938 gameswf::sprite_local_global(gameswf::fn_call const&) =====
void __fastcall gameswf::sprite_local_global(gameswf *this, const gameswf::fn_call *a2)
{
  gameswf::character *v3; // r0
  int v4; // r3
  gameswf *v5; // r4
  char *world_matrix; // r1
  const gameswf::matrix *v7; // r2

  v3 = (gameswf::character *)gameswf::sprite_getptr(this, a2);
  if ( *((_DWORD *)this + 4) == 1 )
  {
    v4 = **((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5);
    if ( *(_BYTE *)(v4 + 1) == 5 )
      v5 = *(gameswf **)(v4 + 4);
    else
      v5 = nullptr;
    world_matrix = gameswf::character::get_world_matrix(v3);
    gameswf::transform_point(v5, (gameswf::as_object *)world_matrix, v7);
  }
}


// ===== 7c198c gameswf::sprite_goto_and_play(gameswf::fn_call const&) =====
void __fastcall gameswf::sprite_goto_and_play(gameswf *this, const gameswf::fn_call *a2)
{
  const char *v3; // r1
  gameswf::sprite_instance *v4; // r8
  _DWORD *v5; // r7
  int v6; // r6
  int v7; // r3
  char *v8; // r0
  const char *v9; // r2
  _BYTE v10[8]; // [sp+8h] [bp-1Ch] BYREF
  void *p; // [sp+14h] [bp-10h]
  unsigned int v12; // [sp+18h] [bp-Ch]

  v4 = (gameswf::sprite_instance *)gameswf::sprite_getptr(this, a2);
  if ( *((int *)this + 4) <= 0 )
  {
    gameswf::log_error("error: sprite_goto_and_play needs one arg\n", v3);
  }
  else
  {
    v5 = *((_DWORD **)this + 3);
    v6 = *((_DWORD *)this + 5);
    v7 = *(unsigned __int8 *)(*v5 + 12 * v6 + 1);
    if ( (unsigned __int8)(v7 - 3) <= 1u || v7 == 2 )
    {
      v10[0] = 1;
      v12 = v12 & 0xFF000000 | 0xFFFFFF;
      v10[1] = 0;
      HIBYTE(v12) &= ~1u;
      v8 = gameswf::as_value::to_string((gameswf::as_value *)(*v5 + 12 * v6), (gameswf::tu_string *)v10);
      if ( gameswf::sprite_instance::goto_frame(v4, (const gameswf::tu_string *)v8, v9) )
        (*(void (__fastcall **)(gameswf::sprite_instance *, _DWORD))(*(_DWORD *)v4 + 148))(v4, 0);
      if ( v10[0] == -1 )
        gameswf::free_internal(p);
    }
  }
}


// ===== 7c1adc gameswf::sprite_goto_and_stop(gameswf::fn_call const&) =====
void __fastcall gameswf::sprite_goto_and_stop(gameswf *this, const gameswf::fn_call *a2)
{
  const char *v3; // r1
  gameswf::sprite_instance *v4; // r8
  _DWORD *v5; // r7
  int v6; // r6
  int v7; // r3
  char v8; // r1
  char *v9; // r0
  const char *v10; // r2
  _BYTE v11[8]; // [sp+8h] [bp-1Ch] BYREF
  void *p; // [sp+14h] [bp-10h]
  unsigned int v13; // [sp+18h] [bp-Ch]

  v4 = (gameswf::sprite_instance *)gameswf::sprite_getptr(this, a2);
  if ( *((int *)this + 4) <= 0 )
  {
    gameswf::log_error("error: sprite_goto_and_stop needs one arg\n", v3);
  }
  else
  {
    v5 = *((_DWORD **)this + 3);
    v6 = *((_DWORD *)this + 5);
    v7 = *(unsigned __int8 *)(*v5 + 12 * v6 + 1);
    if ( (unsigned __int8)(v7 - 3) <= 1u || v7 == 2 )
    {
      v8 = ((v13 & 0xFF000000 | 0xFFFFFF) >> 24) & 0xFE;
      v11[1] = 0;
      v13 = v13 & 0xFF000000 | 0xFFFFFF;
      v11[0] = 1;
      HIBYTE(v13) = v8;
      v9 = gameswf::as_value::to_string((gameswf::as_value *)(*v5 + 12 * v6), (gameswf::tu_string *)v11);
      gameswf::sprite_instance::goto_frame(v4, (const gameswf::tu_string *)v9, v10);
      (*(void (__fastcall **)(gameswf::sprite_instance *, int))(*(_DWORD *)v4 + 148))(v4, 1);
      if ( v11[0] == -1 )
        gameswf::free_internal(p);
    }
  }
}


// ===== 7c1c24 gameswf::sprite_attach_movie(gameswf::fn_call const&) =====
void __fastcall gameswf::sprite_attach_movie(gameswf *this, const gameswf::fn_call *a2)
{
  const char *v3; // r1
  const gameswf::cxform **v4; // r8
  char *v5; // r0
  char *v6; // r0
  int v7; // r1
  const char *v8; // r2
  double v9; // kr00_8
  gameswf::ref_counted **v10; // r7
  int v11; // r3
  int v12; // r3
  _BYTE v13[8]; // [sp+8h] [bp-44h] BYREF
  void *p; // [sp+14h] [bp-38h]
  _BYTE v15[8]; // [sp+1Ch] [bp-30h] BYREF
  void *v16; // [sp+28h] [bp-24h]
  _BYTE v17[8]; // [sp+30h] [bp-1Ch] BYREF
  void *v18; // [sp+3Ch] [bp-10h]

  v4 = (const gameswf::cxform **)gameswf::sprite_getptr(this, a2);
  if ( *((int *)this + 4) <= 2 )
  {
    gameswf::log_error("attachMovie needs 3 or 4 args\n", v3);
    return;
  }
  v5 = gameswf::as_value::to_string((gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)));
  gameswf::tu_string::tu_string((gameswf::tu_string *)v17, v5);
  v6 = gameswf::as_value::to_string((gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 1)));
  gameswf::tu_string::tu_string((gameswf::tu_string *)v15, v6);
  v9 = COERCE_DOUBLE(
         gameswf::as_value::to_number(
           (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 2)),
           v7,
           v8));
  gameswf::tu_string::tu_string((gameswf::tu_string *)v13, (const gameswf::tu_string *)v15);
  v10 = gameswf::sprite_instance::attach_movie(v4, (int)v17, (const gameswf::tu_string *)v13, (int)v9 + 0x4000);
  if ( v13[0] == -1 )
    gameswf::free_internal(p);
  if ( *((int *)this + 4) <= 3
    || (v11 = **((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 3), *(_BYTE *)(v11 + 1) != 5)
    || (v12 = *(_DWORD *)(v11 + 4)) == 0 )
  {
    gameswf::as_value::set_as_object(*(gameswf::as_value **)this, (gameswf::as_object *)v10);
    if ( v15[0] != -1 )
      goto LABEL_7;
    goto LABEL_11;
  }
  (*(void (__fastcall **)(int, gameswf::ref_counted **))(*(_DWORD *)v12 + 72))(v12, v10);
  gameswf::as_value::set_as_object(*(gameswf::as_value **)this, (gameswf::as_object *)v10);
  if ( v15[0] == -1 )
LABEL_11:
    gameswf::free_internal(v16);
LABEL_7:
  if ( v17[0] == -1 )
    gameswf::free_internal(v18);
}


// ===== 7c1e18 gameswf::fn_call::get_root(void) =====
int __fastcall gameswf::fn_call::get_root(gameswf::fn_call *this)
{
  int v1; // r4
  gameswf::player *v2; // r0
  _BYTE *v3; // r3

  v1 = *((_DWORD *)this + 3);
  v2 = *(gameswf::player **)(v1 + 104);
  if ( v2 )
  {
    v3 = *(_BYTE **)(v1 + 100);
    if ( !v3[4] )
    {
      if ( (*(_DWORD *)v3)-- == 1 )
        gameswf::free_internal(v3);
      v2 = nullptr;
      *(_DWORD *)(v1 + 104) = 0;
      *(_DWORD *)(v1 + 100) = 0;
    }
  }
  return gameswf::player::get_root(v2);
}


// ===== 7c1e70 gameswf::sprite_stop_drag(gameswf::fn_call const&) =====
int __fastcall gameswf::sprite_stop_drag(gameswf *this, const gameswf::fn_call *a2)
{
  int v3; // r5
  int result; // r0
  int root; // r0

  v3 = gameswf::sprite_getptr(this, a2);
  result = gameswf::fn_call::get_root(this);
  if ( *(_DWORD *)(result + 88) == v3 )
  {
    root = gameswf::fn_call::get_root(this);
    return gameswf::root::stop_drag(root);
  }
  return result;
}


// ===== 7c1ea8 gameswf::sprite_start_drag(gameswf::fn_call const&) =====
void __fastcall gameswf::sprite_start_drag(gameswf *this, const gameswf::fn_call *a2)
{
  gameswf::character **v3; // r7
  char v4; // r6
  char v5; // r4
  int root; // r0
  char v7; // r0
  int v8; // r1
  const char *v9; // r2
  float v10; // r0
  int v11; // r1
  const char *v12; // r2
  int v13; // r3
  int v14; // r4
  float v15; // r0
  float v16; // r0
  float v17; // r0
  int v18; // r3
  float v19; // [sp+8h] [bp-14h] BYREF
  float v20; // [sp+Ch] [bp-10h]
  int v21; // [sp+10h] [bp-Ch]
  float v22; // [sp+14h] [bp-8h]

  v3 = (gameswf::character **)gameswf::sprite_getptr(this, a2);
  if ( *((int *)this + 4) > 0 )
  {
    v7 = gameswf::as_value::to_bool((gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)));
    v4 = v7;
    if ( *((int *)this + 4) <= 1 )
    {
      v5 = 0;
      goto LABEL_4;
    }
    v10 = COERCE_DOUBLE(
            gameswf::as_value::to_number(
              (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 1)),
              v8,
              v9));
    v13 = *((_DWORD *)this + 4);
    v19 = v10;
    if ( v13 > 2 )
    {
      v16 = COERCE_DOUBLE(
              gameswf::as_value::to_number(
                (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 2)),
                v11,
                v12));
      v13 = *((_DWORD *)this + 4);
      v14 = 3;
      v21 = LODWORD(v16);
      if ( v13 > 3 )
      {
        v14 = 4;
        v17 = COERCE_DOUBLE(
                gameswf::as_value::to_number(
                  (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 3)),
                  v11,
                  (const char *)(*((_DWORD *)this + 5) - 3)));
        v18 = *((_DWORD *)this + 4);
        v20 = v17;
        if ( v18 <= 4 )
        {
          v15 = 199980.0;
          goto LABEL_13;
        }
LABEL_17:
        v15 = COERCE_DOUBLE(
                gameswf::as_value::to_number(
                  (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - v14)),
                  v11,
                  (const char *)*((_DWORD *)this + 5)));
        goto LABEL_13;
      }
    }
    else
    {
      v14 = 2;
      v21 = -935113984;
    }
    v20 = 199980.0;
    if ( v14 >= v13 )
    {
      v15 = 199980.0;
LABEL_13:
      v22 = v15;
      v5 = 1;
      goto LABEL_4;
    }
    goto LABEL_17;
  }
  v4 = 0;
  v5 = 0;
LABEL_4:
  root = gameswf::fn_call::get_root(this);
  gameswf::root::start_drag(root, v3, v4, v5, &v19);
}


// ===== 7c2028 gameswf::sprite_swap_depths(gameswf::fn_call const&) =====
const char *__fastcall gameswf::sprite_swap_depths(gameswf *this, const gameswf::fn_call *a2)
{
  const char *v3; // r1
  int v4; // r4
  const char *result; // r0
  int v6; // r3
  _DWORD *v7; // r6
  int v8; // r5
  int v9; // r2
  int v10; // r3
  int character_at_depth; // r0
  int v12; // r0
  const char *v13; // r1
  bool v14; // zf
  int v15; // r5
  int v16; // r6
  int v17; // r3
  int v18; // r7
  int v19; // r3
  int v20; // r2
  int v21; // r7
  __int64 v22; // r1
  int v23; // r6
  int parent; // r0
  int v25; // r0
  const char *v26; // r1
  gameswf::display_list *v27; // r5
  __int16 v28; // r3
  int v29; // r0
  int v30; // r0

  v4 = gameswf::sprite_getptr(this, a2);
  if ( *((_DWORD *)this + 4) != 1 )
    return gameswf::log_error("swapDepths needs one arg\n", v3);
  v6 = *((_DWORD *)this + 5);
  v7 = *((_DWORD **)this + 3);
  v8 = 12 * v6;
  v9 = *v7 + 12 * v6;
  v10 = *(char *)(v9 + 1);
  if ( v10 == 2 )
  {
    result = (const char *)(int)COERCE_DOUBLE(
                                  gameswf::as_value::to_number(
                                    (gameswf::as_value *)(*v7 + v8),
                                    v22,
                                    (const char *)HIDWORD(v22)));
    v23 = (int)(result + 0x4000);
    if ( result + 0x4000 == (const char *)*(unsigned __int16 *)(v4 + 148) )
      return result;
    parent = gameswf::character::get_parent((gameswf::character *)v4);
    v25 = gameswf::cast_to<gameswf::sprite_instance>(parent);
    if ( !v25 )
      return gameswf::log_error("can't do _root.swapDepths\n", v26);
    v27 = (gameswf::display_list *)(v25 + 168);
    character_at_depth = gameswf::display_list::get_character_at_depth((gameswf::display_list *)(v25 + 168), v23);
    if ( !character_at_depth )
      return (const char *)gameswf::display_list::change_character_depth(v27, (gameswf::character *)v4, v23);
  }
  else
  {
    if ( v10 != 5 )
      return gameswf::log_error("swapDepths has received invalid arg\n", v3);
    character_at_depth = *(_DWORD *)(v9 + 4);
  }
  v12 = gameswf::cast_to<gameswf::sprite_instance>(character_at_depth);
  v14 = v4 == 0;
  if ( v4 )
    v14 = v12 == 0;
  v15 = v12;
  if ( v14 )
    return gameswf::log_error("It is impossible to swap NULL character\n", v13);
  v16 = *(_DWORD *)(v4 + 64);
  if ( v16 )
  {
    v17 = *(_DWORD *)(v4 + 60);
    v18 = *(unsigned __int8 *)(v17 + 4);
    if ( !*(_BYTE *)(v17 + 4) )
    {
      gameswf::smart_ptr_proxy::operator=((_DWORD **)(v4 + 60));
      v16 = v18;
      *(_DWORD *)(v4 + 64) = v18;
    }
  }
  v19 = *(_DWORD *)(v15 + 64);
  if ( v19 )
  {
    v20 = *(_DWORD *)(v15 + 60);
    v21 = *(unsigned __int8 *)(v20 + 4);
    if ( !*(_BYTE *)(v20 + 4) )
    {
      gameswf::smart_ptr_proxy::operator=((_DWORD **)(v15 + 60));
      *(_DWORD *)(v15 + 64) = v21;
      v19 = v21;
    }
  }
  if ( v19 != v16 || !gameswf::character::get_parent((gameswf::character *)v4) )
    return gameswf::log_error("MovieClips should have the same parent\n", v13);
  v28 = *(_WORD *)(v15 + 148);
  *(_WORD *)(v15 + 148) = *(_WORD *)(v4 + 148);
  *(_WORD *)(v4 + 148) = v28;
  v29 = gameswf::character::get_parent((gameswf::character *)v4);
  v30 = gameswf::cast_to<gameswf::sprite_instance>(v29);
  return (const char *)gameswf::display_list::swap_characters(
                         (gameswf::display_list *)(v30 + 168),
                         (gameswf::character *)v4,
                         (gameswf::character *)v15);
}


// ===== 7c222c gameswf::sprite_remove_movieclip(gameswf::fn_call const&) =====
int __fastcall gameswf::sprite_remove_movieclip(gameswf *this, const gameswf::fn_call *a2)
{
  int v2; // r0
  int v3; // r3
  int v4; // r4
  _BYTE *v5; // r0
  int v6; // r0
  int result; // r0

  v2 = gameswf::sprite_getptr(this, a2);
  v3 = *(_DWORD *)(v2 + 64);
  v4 = v2;
  if ( v3 && (v5 = *(_BYTE **)(v2 + 60), !v5[4]) )
  {
    if ( (*(_DWORD *)v5)-- == 1 )
      gameswf::free_internal(v5);
    v6 = 0;
    *(_DWORD *)(v4 + 60) = 0;
    *(_DWORD *)(v4 + 64) = 0;
  }
  else
  {
    v6 = v3;
  }
  result = gameswf::cast_to<gameswf::sprite_instance>(v6);
  if ( result )
    return (*(int (__fastcall **)(int, int))(*(_DWORD *)result + 168))(result, v4);
  return result;
}


// ===== 7c22a0 gameswf::as_global_movieclip_ctor(gameswf::fn_call const&) =====
void __fastcall gameswf::as_global_movieclip_ctor(gameswf *this, const gameswf::fn_call *a2)
{
  int v2; // r5
  gameswf::player *v4; // r0
  _BYTE *v5; // r3
  int root; // r0
  int v7; // r5
  gameswf::root *v8; // r7
  gameswf::player *v9; // r6
  _BYTE *v10; // r0
  gameswf::sprite_definition *v11; // r8
  int v12; // r5
  gameswf::player *v13; // r10
  _BYTE *v14; // r0
  gameswf::character *root_movie; // r6
  gameswf::sprite_instance *v16; // r5
  bool v17; // zf

  v2 = *((_DWORD *)this + 3);
  v4 = *(gameswf::player **)(v2 + 104);
  if ( v4 )
  {
    v5 = *(_BYTE **)(v2 + 100);
    if ( !v5[4] )
    {
      v17 = (*(_DWORD *)v5)-- == 1;
      if ( v17 )
        gameswf::free_internal(v5);
      v4 = nullptr;
      *(_DWORD *)(v2 + 104) = 0;
      *(_DWORD *)(v2 + 100) = 0;
    }
  }
  root = gameswf::player::get_root(v4);
  v7 = *((_DWORD *)this + 3);
  v8 = (gameswf::root *)root;
  v9 = *(gameswf::player **)(v7 + 104);
  if ( v9 )
  {
    v10 = *(_BYTE **)(v7 + 100);
    if ( !v10[4] )
    {
      v17 = (*(_DWORD *)v10)-- == 1;
      if ( v17 )
        gameswf::free_internal(v10);
      v9 = nullptr;
      *(_DWORD *)(v7 + 104) = 0;
      *(_DWORD *)(v7 + 100) = 0;
    }
  }
  v11 = (gameswf::sprite_definition *)operator new(0x5Cu, 0);
  gameswf::sprite_definition::sprite_definition(v11, v9, nullptr);
  v12 = *((_DWORD *)this + 3);
  v13 = *(gameswf::player **)(v12 + 104);
  if ( v13 )
  {
    v14 = *(_BYTE **)(v12 + 100);
    if ( !v14[4] )
    {
      v17 = (*(_DWORD *)v14)-- == 1;
      if ( v17 )
        gameswf::free_internal(v14);
      v13 = nullptr;
      *(_DWORD *)(v12 + 104) = 0;
      *(_DWORD *)(v12 + 100) = 0;
    }
  }
  root_movie = (gameswf::character *)gameswf::root::get_root_movie(v8);
  v16 = (gameswf::sprite_instance *)operator new(0x100u, 0);
  gameswf::sprite_instance::sprite_instance(v16, v13, v11, v8, root_movie, 0);
  gameswf::as_value::set_as_object(*(gameswf::as_value **)this, v16);
}


// ===== 7c23f4 gameswf::sprite_get_bounds(gameswf::fn_call const&) =====
void __fastcall gameswf::sprite_get_bounds(gameswf *this, const gameswf::fn_call *a2)
{
  int v3; // r0
  gameswf::character *v4; // r5
  char *world_matrix; // r0
  gameswf::player *v6; // r8
  _BYTE *v7; // r0
  gameswf::as_object *v8; // r4
  void (__fastcall *v9)(gameswf::as_object *, _BYTE *, _BYTE *, _DWORD, int, int, int, int, int, int); // r8
  void (__fastcall *v10)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v11)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v12)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  int v13; // r3
  gameswf::character *v14; // r9
  gameswf::character *v15; // r0
  _BYTE *v16; // r3
  float *v17; // r0
  char *v18; // r0
  bool v19; // zf
  int v20; // [sp+0h] [bp-CCh] BYREF
  int v21; // [sp+4h] [bp-C8h]
  int v22; // [sp+8h] [bp-C4h]
  int v23; // [sp+Ch] [bp-C0h]
  int v24; // [sp+10h] [bp-BCh]
  int v25; // [sp+14h] [bp-B8h]
  float v26; // [sp+18h] [bp-B4h] BYREF
  float v27; // [sp+1Ch] [bp-B0h]
  float v28; // [sp+20h] [bp-ACh]
  float v29; // [sp+24h] [bp-A8h]
  float v30; // [sp+28h] [bp-A4h] BYREF
  float v31; // [sp+2Ch] [bp-A0h]
  float v32; // [sp+30h] [bp-9Ch]
  float v33; // [sp+34h] [bp-98h]
  _BYTE v34[4]; // [sp+38h] [bp-94h] BYREF
  double v35; // [sp+3Ch] [bp-90h]
  _BYTE v36[4]; // [sp+44h] [bp-88h] BYREF
  double v37; // [sp+48h] [bp-84h]
  _BYTE v38[4]; // [sp+50h] [bp-7Ch] BYREF
  double v39; // [sp+54h] [bp-78h]
  _BYTE v40[4]; // [sp+5Ch] [bp-70h] BYREF
  double v41; // [sp+60h] [bp-6Ch]
  double v42; // [sp+68h] [bp-64h]
  _BYTE v43[8]; // [sp+74h] [bp-58h] BYREF
  void *v44; // [sp+80h] [bp-4Ch]
  _BYTE v45[8]; // [sp+88h] [bp-44h] BYREF
  void *v46; // [sp+94h] [bp-38h]
  _BYTE v47[8]; // [sp+9Ch] [bp-30h] BYREF
  void *v48; // [sp+A8h] [bp-24h]
  _BYTE v49[8]; // [sp+B0h] [bp-1Ch] BYREF
  void *p; // [sp+BCh] [bp-10h]

  v3 = gameswf::sprite_getptr(this, a2);
  v4 = (gameswf::character *)v3;
  if ( *((_DWORD *)this + 4) != 1 )
  {
    (*(void (__fastcall **)(int, float *))(*(_DWORD *)v3 + 300))(v3, &v30);
LABEL_3:
    v22 = 0;
    v23 = 0;
    v25 = 0;
    v24 = 1065353216;
    v21 = 0;
    v20 = 1065353216;
    world_matrix = gameswf::character::get_world_matrix(v4);
    gameswf::matrix::set_inverse((gameswf::matrix *)&v20, (const gameswf::matrix *)world_matrix);
    gameswf::matrix::transform((float *)&v20, &v30);
    goto LABEL_4;
  }
  v13 = **((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5);
  if ( *(_BYTE *)(v13 + 1) != 5
    || (v14 = *(gameswf::character **)(v13 + 4)) == nullptr
    || !(*(int (__fastcall **)(gameswf::character *))(*(_DWORD *)v14 + 8))(v14) )
  {
    v14 = nullptr;
  }
  (*(void (__fastcall **)(gameswf::character *, float *))(*(_DWORD *)v4 + 300))(v4, &v30);
  if ( v14 == v4 )
    goto LABEL_3;
  v26 = v30;
  v27 = v31;
  v28 = v32;
  v29 = v33;
  v15 = *((gameswf::character **)v4 + 16);
  if ( v15 )
  {
    v16 = *((_BYTE **)v4 + 15);
    if ( v16[4] )
    {
      v17 = (float *)gameswf::character::get_world_matrix(v15);
      gameswf::matrix::transform(v17, &v26);
    }
    else
    {
      v19 = (*(_DWORD *)v16)-- == 1;
      if ( v19 )
        gameswf::free_internal(v16);
      *((_DWORD *)v4 + 16) = 0;
      *((_DWORD *)v4 + 15) = 0;
    }
  }
  v22 = 0;
  v23 = 0;
  v25 = 0;
  v21 = 0;
  v24 = 1065353216;
  v20 = 1065353216;
  v18 = gameswf::character::get_world_matrix(v14);
  gameswf::matrix::set_inverse((gameswf::matrix *)&v20, (const gameswf::matrix *)v18);
  gameswf::matrix::transform((float *)&v20, &v26);
  v30 = v26;
  v31 = v27;
  v32 = v28;
  v33 = v29;
LABEL_4:
  v6 = *((gameswf::player **)v4 + 12);
  if ( v6 )
  {
    v7 = *((_BYTE **)v4 + 11);
    if ( !v7[4] )
    {
      v19 = (*(_DWORD *)v7)-- == 1;
      if ( v19 )
        gameswf::free_internal(v7);
      v6 = nullptr;
      *((_DWORD *)v4 + 12) = 0;
      *((_DWORD *)v4 + 11) = 0;
    }
  }
  v8 = (gameswf::as_object *)operator new(0x38u, 0);
  gameswf::as_object::as_object(v8, v6);
  v9 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *, _DWORD, int, int, int, int, int, int))(*(_DWORD *)v8 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v49, "xMin");
  v40[0] = 0;
  v40[1] = 2;
  v42 = (float)(v30 / 20.0);
  v41 = v42;
  v9(v8, v49, v40, HIDWORD(v42), v20, v21, v22, v23, v24, v25);
  gameswf::as_value::drop_refs((gameswf::as_value *)v40);
  if ( v49[0] == -1 )
    gameswf::free_internal(p);
  v10 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v8 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v47, "yMin");
  v38[0] = 0;
  v38[1] = 2;
  v42 = (float)(v32 / 20.0);
  v39 = v42;
  v10(v8, v47, v38);
  gameswf::as_value::drop_refs((gameswf::as_value *)v38);
  if ( v47[0] == -1 )
    gameswf::free_internal(v48);
  v11 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v8 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v45, "xMax");
  v36[0] = 0;
  v36[1] = 2;
  v42 = (float)(v31 / 20.0);
  v37 = v42;
  v11(v8, v45, v36);
  gameswf::as_value::drop_refs((gameswf::as_value *)v36);
  if ( v45[0] == -1 )
    gameswf::free_internal(v46);
  v12 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v8 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v43, "yMax");
  v34[0] = 0;
  v34[1] = 2;
  v42 = (float)(v33 / 20.0);
  v35 = v42;
  v12(v8, v43, v34);
  gameswf::as_value::drop_refs((gameswf::as_value *)v34);
  if ( v43[0] == -1 )
    gameswf::free_internal(v44);
  gameswf::as_value::set_as_object(*(gameswf::as_value **)this, v8);
}


// ===== 7c287c gameswf::as_function::is(int) =====
bool __fastcall gameswf::as_function::is(gameswf::as_function *this, int a2)
{
  return a2 == 4 || a2 == 0;
}


// ===== 7c2894 gameswf::as_function::_typeof(void) =====
const char *__fastcall gameswf::as_function::_typeof(gameswf::as_function *this)
{
  return "function";
}


// ===== 7c28a4 gameswf::as_3_function::is(int) =====
bool __fastcall gameswf::as_3_function::is(gameswf::as_3_function *this, int a2)
{
  return a2 == 7 || a2 == 4 || a2 == 0;
}


// ===== 7c28c8 gameswf::as_function::clear_refs(gameswf::hash<gameswf::as_object *,bool,gameswf::fixed_size_hash<gameswf::as_object *>> *,gameswf::as_object *) =====
void __fastcall gameswf::as_function::clear_refs(int a1, int *a2, int a3)
{
  int v6; // r3
  int v7; // [sp+4h] [bp-4h] BYREF

  v7 = a1;
  if ( gameswf::hash<gameswf::as_object *,bool,gameswf::fixed_size_hash<gameswf::as_object *>>::find_index(a2, &v7) < 0 )
  {
    gameswf::as_object::clear_refs(a1, a2, a3);
    v6 = *(_DWORD *)(a1 + 56);
    if ( v6 )
    {
      if ( a3 == v6 )
        gameswf::smart_ptr<gameswf::as_object>::set_ref((gameswf::ref_counted **)(a1 + 56), nullptr);
      else
        (*(void (__fastcall **)(_DWORD, int *, int))(*(_DWORD *)v6 + 64))(*(_DWORD *)(a1 + 56), a2, a3);
    }
  }
}


// ===== 7c2950 gameswf::smart_ptr<gameswf::except_info>::set_ref(gameswf::except_info*) =====
void __fastcall gameswf::smart_ptr<gameswf::except_info>::set_ref(
        gameswf::ref_counted **a1,
        gameswf::ref_counted *this)
{
  gameswf::ref_counted *v3; // r0

  v3 = *a1;
  if ( v3 != this )
  {
    if ( v3 )
      gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v3);
    *a1 = this;
    if ( this )
      gameswf::ref_counted::add_ref((int)this);
  }
}


// ===== 7c2990 gameswf::as_function::get_member(gameswf::tu_stringi const&,gameswf::as_value *) =====
int __fastcall gameswf::as_function::get_member(int a1, _DWORD *a2, gameswf::as_value *a3)
{
  const char *v5; // r0

  if ( *(char *)a2 == -1 )
    v5 = (const char *)a2[3];
  else
    v5 = (char *)a2 + 1;
  if ( gameswf::tu_string::stricmp(v5, "prototype") )
    return gameswf::as_object::get_member((int *)a1, a2, a3);
  gameswf::as_value::set_as_object(a3, *(gameswf::as_object **)(a1 + 56));
  return 1;
}


// ===== 7c29f0 gameswf::as_function::set_member(gameswf::tu_stringi const&,gameswf::as_value const&) =====
int __fastcall gameswf::as_function::set_member(int a1, char *a2, int a3)
{
  const char *v5; // r0
  gameswf::ref_counted *v7; // r1

  if ( *a2 == -1 )
    v5 = *((const char **)a2 + 3);
  else
    v5 = a2 + 1;
  v7 = (gameswf::ref_counted *)gameswf::tu_string::stricmp(v5, "prototype");
  if ( v7 )
    return gameswf::as_object::set_member((int *)a1, a2, (const gameswf::as_value *)a3);
  if ( *(_BYTE *)(a3 + 1) == 5 )
    v7 = *(gameswf::ref_counted **)(a3 + 4);
  gameswf::smart_ptr<gameswf::as_object>::set_ref((gameswf::ref_counted **)(a1 + 56), v7);
  return 1;
}


// ===== 7c2a58 gameswf::as_function::to_string(void) =====
char *__fastcall gameswf::as_function::to_string(gameswf::as_function *this)
{
  snprintf(gameswf::as_function::to_string(void)::buffer, 0x32u, "<function 0x%p>", this);
  return gameswf::as_function::to_string(void)::buffer;
}


// ===== 7c2a98 gameswf::array<gameswf::smart_ptr<gameswf::except_info>>::reserve(int) =====
void __fastcall gameswf::array<gameswf::smart_ptr<gameswf::except_info>>::reserve(int a1, int a2)
{
  int v3; // r2
  void *v4; // r0

  if ( !*(_BYTE *)(a1 + 12) )
  {
    v3 = *(_DWORD *)(a1 + 8);
    *(_DWORD *)(a1 + 8) = a2;
    if ( a2 )
    {
      if ( *(_DWORD *)a1 )
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 4 * a2, 4 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(4 * a2);
    }
    else
    {
      v4 = *(void **)a1;
      if ( v4 )
        gameswf::free_internal(v4);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 7c2b14 gameswf::array<gameswf::smart_ptr<gameswf::except_info>>::resize(int) =====
void __fastcall gameswf::array<gameswf::smart_ptr<gameswf::except_info>>::resize(_DWORD *a1, int a2)
{
  int v2; // r6
  int v5; // r8
  int v6; // r7
  void (__fastcall ***v7)(_DWORD); // r0
  int v8; // r3
  int v9; // r6

  v2 = a1[1];
  if ( v2 > a2 )
  {
    v5 = 4 * a2;
    v6 = a2;
    do
    {
      ++v6;
      v7 = *(void (__fastcall ****)(_DWORD))(*a1 + v5);
      v5 += 4;
      if ( v7 )
        gameswf::ref_counted::drop_ref(v7);
    }
    while ( v6 != v2 );
  }
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::smart_ptr<gameswf::except_info>>::reserve((int)a1, a2 + (a2 >> 1));
  if ( v2 < a2 )
  {
    v8 = v2;
    v9 = 4 * v2;
    do
    {
      ++v8;
      *(_DWORD *)(*a1 + v9) = 0;
      v9 += 4;
    }
    while ( v8 != a2 );
  }
  a1[1] = a2;
}


// ===== 7c2bb0 gameswf::array<gameswf::option_detail>::reserve(int) =====
void __fastcall gameswf::array<gameswf::option_detail>::reserve(int a1, int a2)
{
  int v3; // r2
  void *v4; // r0

  if ( !*(_BYTE *)(a1 + 12) )
  {
    v3 = *(_DWORD *)(a1 + 8);
    *(_DWORD *)(a1 + 8) = a2;
    if ( a2 )
    {
      if ( *(_DWORD *)a1 )
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 8 * a2, 8 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(8 * a2);
    }
    else
    {
      v4 = *(void **)a1;
      if ( v4 )
        gameswf::free_internal(v4);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 7c2c2c gameswf::except_info::~except_info() =====
void __fastcall gameswf::except_info::~except_info(gameswf::except_info *this)
{
  *(_DWORD *)this = off_991298;
  gameswf::ref_counted::~ref_counted(this);
}


// ===== 7c2c60 gameswf::as_3_function::read_body(gameswf::stream *) =====
void __fastcall gameswf::as_3_function::read_body(gameswf::as_3_function *this, gameswf::stream *a2)
{
  gameswf::membuf *vu32; // r4
  gameswf::membuf *i; // r5
  int v6; // r7
  int v7; // r9
  int j; // r7
  gameswf::except_info *v9; // r0
  gameswf::except_info *v10; // r4
  gameswf::ref_counted **v11; // r0
  int v12; // r9
  int k; // r7
  _DWORD *v14; // r0
  _DWORD *v15; // r5
  gameswf::ref_counted **v16; // r0

  *((_DWORD *)this + 30) = gameswf::stream::read_vu32(a2);
  *((_DWORD *)this + 31) = gameswf::stream::read_vu32(a2);
  *((_DWORD *)this + 32) = gameswf::stream::read_vu32(a2);
  *((_DWORD *)this + 33) = gameswf::stream::read_vu32(a2);
  vu32 = (gameswf::membuf *)gameswf::stream::read_vu32(a2);
  gameswf::membuf::resize((gameswf::as_3_function *)((char *)this + 136), vu32);
  if ( (int)vu32 > 0 )
  {
    for ( i = nullptr; i != vu32; i = (gameswf::membuf *)((char *)i + 1) )
    {
      v6 = *((_DWORD *)this + 36);
      *((_BYTE *)i + v6) = gameswf::stream::read_u8(a2);
    }
  }
  v7 = gameswf::stream::read_vu32(a2);
  gameswf::array<gameswf::smart_ptr<gameswf::except_info>>::resize((_DWORD *)this + 38, v7);
  if ( v7 > 0 )
  {
    for ( j = 0; j != v7; ++j )
    {
      v9 = (gameswf::except_info *)operator new(0x20u, 0);
      *(_DWORD *)v9 = 0;
      *((_DWORD *)v9 + 1) = 0;
      *((_DWORD *)v9 + 2) = 0;
      *((_DWORD *)v9 + 3) = 0;
      *((_DWORD *)v9 + 4) = 0;
      *((_DWORD *)v9 + 5) = 0;
      *((_DWORD *)v9 + 6) = 0;
      *((_DWORD *)v9 + 7) = 0;
      v10 = v9;
      gameswf::ref_counted::ref_counted(v9);
      *(_DWORD *)v10 = off_991298;
      gameswf::except_info::read(v10, a2, *((gameswf::abc_def **)this + 17));
      v11 = (gameswf::ref_counted **)(*((_DWORD *)this + 38) + 4 * j);
      gameswf::smart_ptr<gameswf::except_info>::set_ref(v11, v10);
    }
  }
  v12 = gameswf::stream::read_vu32(a2);
  gameswf::array<gameswf::smart_ptr<gameswf::traits_info>>::resize((_DWORD *)this + 42, v12);
  if ( v12 > 0 )
  {
    for ( k = 0; k != v12; ++k )
    {
      v14 = operator new(0x34u, 0);
      *v14 = 0;
      v14[1] = 0;
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = 0;
      v14[5] = 0;
      v14[6] = 0;
      v14[7] = 0;
      v14[8] = 0;
      v14[9] = 0;
      v14[10] = 0;
      v14[11] = 0;
      v14[12] = 0;
      v15 = v14;
      gameswf::ref_counted::ref_counted(v14);
      v15[9] = 0;
      v15[10] = 0;
      *v15 = off_991240;
      v15[11] = 0;
      *((_BYTE *)v15 + 48) = 0;
      gameswf::traits_info::read((gameswf::traits_info *)v15, a2, *((gameswf::abc_def **)this + 17));
      v16 = (gameswf::ref_counted **)(*((_DWORD *)this + 42) + 4 * k);
      gameswf::smart_ptr<gameswf::traits_info>::set_ref(v16, (gameswf::ref_counted *)v15);
    }
  }
}


// ===== 7c2e50 gameswf::as_3_function::read(gameswf::stream *) =====
void __fastcall gameswf::as_3_function::read(gameswf::as_3_function *this, gameswf::stream *a2)
{
  int vu32; // r6
  int v5; // r4
  int v6; // r3
  int i; // r4
  int v8; // r8
  char u8; // r0
  int v10; // r0
  int v11; // r6
  int v12; // r4
  int v13; // r3
  int v14; // r0
  int j; // r4
  int v16; // r8
  int v17; // r8

  vu32 = gameswf::stream::read_vu32(a2);
  *((_DWORD *)this + 18) = gameswf::stream::read_vu32(a2);
  v5 = *((_DWORD *)this + 20);
  if ( vu32 && vu32 > *((_DWORD *)this + 21) )
    gameswf::array<int>::reserve((int)this + 76, vu32 + (vu32 >> 1));
  if ( vu32 > v5 )
  {
    v6 = 4 * v5;
    do
    {
      ++v5;
      *(_DWORD *)(*((_DWORD *)this + 19) + v6) = 0;
      v6 += 4;
    }
    while ( vu32 != v5 );
  }
  *((_DWORD *)this + 20) = vu32;
  if ( vu32 > 0 )
  {
    for ( i = 0; i != vu32; ++i )
    {
      v8 = *((_DWORD *)this + 19);
      *(_DWORD *)(v8 + 4 * i) = gameswf::stream::read_vu32(a2);
    }
  }
  *((_DWORD *)this + 23) = gameswf::stream::read_vu32(a2);
  u8 = gameswf::stream::read_u8(a2);
  *((_BYTE *)this + 96) = u8;
  if ( (u8 & 8) != 0 )
  {
    v10 = gameswf::stream::read_vu32(a2);
    v11 = v10;
    v12 = *((_DWORD *)this + 26);
    if ( v10 && v10 > *((_DWORD *)this + 27) )
      gameswf::array<gameswf::option_detail>::reserve((int)this + 100, v10 + (v10 >> 1));
    if ( v11 > v12 )
    {
      v13 = 8 * v12;
      do
      {
        ++v12;
        v14 = *((_DWORD *)this + 25) + v13;
        *(_DWORD *)v14 = 0;
        *(_BYTE *)(v14 + 4) = 0;
        v13 += 8;
      }
      while ( v11 != v12 );
    }
    *((_DWORD *)this + 26) = v11;
    if ( v11 > 0 )
    {
      for ( j = 0; j != v11; ++j )
      {
        v16 = *((_DWORD *)this + 25);
        *(_DWORD *)(v16 + 8 * j) = gameswf::stream::read_vu32(a2);
        v17 = *((_DWORD *)this + 25) + 8 * j;
        *(_BYTE *)(v17 + 4) = gameswf::stream::read_u8(a2);
      }
    }
  }
}


// ===== 7c2fc4 gameswf::as_function::~as_function() =====
void __fastcall gameswf::as_function::~as_function(gameswf::as_function *this)
{
  void (__fastcall ***v2)(_DWORD); // r0

  v2 = *((void (__fastcall ****)(_DWORD))this + 14);
  *(_DWORD *)this = off_9912A8;
  if ( v2 )
    gameswf::ref_counted::drop_ref(v2);
  gameswf::as_object::~as_object(this);
}


// ===== 7c300c gameswf::except_info::~except_info() =====
void __fastcall gameswf::except_info::~except_info(gameswf::except_info *this)
{
  *(_DWORD *)this = off_991298;
  gameswf::ref_counted::~ref_counted(this);
  LC_API_FREE_0(this);
}


// ===== 7c3048 gameswf::as_3_function::~as_3_function() =====
void __fastcall gameswf::as_3_function::~as_3_function(gameswf::as_3_function *this)
{
  char *v2; // r6
  int v3; // r2
  _DWORD *v4; // r0
  void (__fastcall ***v5)(_DWORD); // r0
  _DWORD *v6; // r0
  void (__fastcall ***v8)(_DWORD); // r0
  int v9; // r3
  int v10; // lr

  *(_DWORD *)this = off_991318;
  v2 = (char *)this + 168;
  gameswf::array<gameswf::smart_ptr<gameswf::traits_info>>::resize((_DWORD *)this + 42, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::traits_info>>::reserve((int)v2, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::except_info>>::resize((_DWORD *)this + 38, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::except_info>>::reserve((int)this + 152, 0);
  gameswf::membuf::~membuf((void **)this + 34);
  v3 = *((_DWORD *)this + 26);
  v4 = (_DWORD *)((char *)this + 100);
  if ( v3 < 0 )
  {
    v9 = 8 * v3;
    do
    {
      ++v3;
      v10 = *v4 + v9;
      *(_DWORD *)v10 = 0;
      *(_BYTE *)(v10 + 4) = 0;
      v9 += 8;
    }
    while ( v3 );
  }
  *((_DWORD *)this + 26) = 0;
  gameswf::array<gameswf::option_detail>::reserve((int)v4, 0);
  gameswf::array<int>::~array((_DWORD *)this + 19);
  v5 = *((void (__fastcall ****)(_DWORD))this + 17);
  if ( v5 )
    gameswf::ref_counted::drop_ref(v5);
  v6 = *((_DWORD **)this + 15);
  if ( v6 )
  {
    if ( (*v6)-- == 1 )
      gameswf::free_internal(v6);
  }
  v8 = *((void (__fastcall ****)(_DWORD))this + 14);
  *(_DWORD *)this = off_9912A8;
  if ( v8 )
    gameswf::ref_counted::drop_ref(v8);
  gameswf::as_object::~as_object(this);
}


// ===== 7c316c gameswf::as_function::~as_function() =====
void __fastcall gameswf::as_function::~as_function(gameswf::as_function *this)
{
  void (__fastcall ***v2)(_DWORD); // r0

  v2 = *((void (__fastcall ****)(_DWORD))this + 14);
  *(_DWORD *)this = off_9912A8;
  if ( v2 )
    gameswf::ref_counted::drop_ref(v2);
  gameswf::as_object::~as_object(this);
  LC_API_FREE_0(this);
}


// ===== 7c31bc gameswf::as_3_function::~as_3_function() =====
void __fastcall gameswf::as_3_function::~as_3_function(gameswf::as_3_function *this)
{
  char *v2; // r6
  int v3; // r2
  _DWORD *v4; // r0
  void (__fastcall ***v5)(_DWORD); // r0
  _DWORD *v6; // r0
  void (__fastcall ***v8)(_DWORD); // r0
  int v9; // r3
  int v10; // lr

  *(_DWORD *)this = off_991318;
  v2 = (char *)this + 168;
  gameswf::array<gameswf::smart_ptr<gameswf::traits_info>>::resize((_DWORD *)this + 42, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::traits_info>>::reserve((int)v2, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::except_info>>::resize((_DWORD *)this + 38, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::except_info>>::reserve((int)this + 152, 0);
  gameswf::membuf::~membuf((void **)this + 34);
  v3 = *((_DWORD *)this + 26);
  v4 = (_DWORD *)((char *)this + 100);
  if ( v3 < 0 )
  {
    v9 = 8 * v3;
    do
    {
      ++v3;
      v10 = *v4 + v9;
      *(_DWORD *)v10 = 0;
      *(_BYTE *)(v10 + 4) = 0;
      v9 += 8;
    }
    while ( v3 );
  }
  *((_DWORD *)this + 26) = 0;
  gameswf::array<gameswf::option_detail>::reserve((int)v4, 0);
  gameswf::array<int>::~array((_DWORD *)this + 19);
  v5 = *((void (__fastcall ****)(_DWORD))this + 17);
  if ( v5 )
    gameswf::ref_counted::drop_ref(v5);
  v6 = *((_DWORD **)this + 15);
  if ( v6 )
  {
    if ( (*v6)-- == 1 )
      gameswf::free_internal(v6);
  }
  v8 = *((void (__fastcall ****)(_DWORD))this + 14);
  *(_DWORD *)this = off_9912A8;
  if ( v8 )
    gameswf::ref_counted::drop_ref(v8);
  gameswf::as_object::~as_object(this);
}


// ===== 7c32e0 gameswf::as_3_function::~as_3_function() =====
void __fastcall gameswf::as_3_function::~as_3_function(gameswf::as_3_function *this)
{
  gameswf::as_3_function::~as_3_function(this);
  LC_API_FREE_0(this);
}


// ===== 7c32fc gameswf::as_3_function::as_3_function(gameswf::abc_def *,int,gameswf::player *) =====
gameswf::as_3_function *__fastcall gameswf::as_3_function::as_3_function(
        gameswf::as_3_function *this,
        gameswf::abc_def *a2,
        int a3,
        gameswf::player *a4)
{
  gameswf::as_object *v8; // r10
  _BYTE v10[4]; // [sp+4h] [bp-24h] BYREF
  gameswf::as_object *v11; // [sp+8h] [bp-20h]
  _BYTE v12[8]; // [sp+10h] [bp-18h] BYREF
  void *p; // [sp+1Ch] [bp-Ch]

  gameswf::as_object::as_object(this, a4);
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 14) = 0;
  *(_DWORD *)this = off_991318;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 17) = a2;
  if ( a2 )
    gameswf::ref_counted::add_ref((int)a2);
  *((_DWORD *)this + 29) = a3;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_BYTE *)this + 88) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 27) = 0;
  *((_BYTE *)this + 112) = 0;
  gameswf::membuf::membuf((int)this + 136);
  *((_DWORD *)this + 38) = 0;
  *((_DWORD *)this + 39) = 0;
  *((_DWORD *)this + 40) = 0;
  *((_BYTE *)this + 164) = 0;
  *((_DWORD *)this + 42) = 0;
  *((_DWORD *)this + 43) = 0;
  *((_DWORD *)this + 44) = 0;
  *((_BYTE *)this + 180) = 0;
  gameswf::weak_ptr<gameswf::as_object>::operator=((int)this + 32, this);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v12, "prototype");
  v8 = (gameswf::as_object *)operator new(0x38u, 0);
  gameswf::as_object::as_object(v8, a4);
  v10[0] = 0;
  v10[1] = 5;
  v11 = v8;
  if ( v8 )
    gameswf::ref_counted::add_ref((int)v8);
  gameswf::as_object::builtin_member((int)this, (int)v12, v10);
  gameswf::as_value::drop_refs((gameswf::as_value *)v10);
  if ( v12[0] == -1 )
    gameswf::free_internal(p);
  return this;
}


// ===== 7c347c gameswf::as_3_function::as_3_function(gameswf::abc_def *,int,gameswf::player *) =====
gameswf::as_3_function *__fastcall gameswf::as_3_function::as_3_function(
        gameswf::as_3_function *this,
        gameswf::abc_def *a2,
        int a3,
        gameswf::player *a4)
{
  gameswf::as_object *v8; // r10
  _BYTE v10[4]; // [sp+4h] [bp-24h] BYREF
  gameswf::as_object *v11; // [sp+8h] [bp-20h]
  _BYTE v12[8]; // [sp+10h] [bp-18h] BYREF
  void *p; // [sp+1Ch] [bp-Ch]

  gameswf::as_object::as_object(this, a4);
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 14) = 0;
  *(_DWORD *)this = off_991318;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 17) = a2;
  if ( a2 )
    gameswf::ref_counted::add_ref((int)a2);
  *((_DWORD *)this + 29) = a3;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_BYTE *)this + 88) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 27) = 0;
  *((_BYTE *)this + 112) = 0;
  gameswf::membuf::membuf((int)this + 136);
  *((_DWORD *)this + 38) = 0;
  *((_DWORD *)this + 39) = 0;
  *((_DWORD *)this + 40) = 0;
  *((_BYTE *)this + 164) = 0;
  *((_DWORD *)this + 42) = 0;
  *((_DWORD *)this + 43) = 0;
  *((_DWORD *)this + 44) = 0;
  *((_BYTE *)this + 180) = 0;
  gameswf::weak_ptr<gameswf::as_object>::operator=((int)this + 32, this);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v12, "prototype");
  v8 = (gameswf::as_object *)operator new(0x38u, 0);
  gameswf::as_object::as_object(v8, a4);
  v10[0] = 0;
  v10[1] = 5;
  v11 = v8;
  if ( v8 )
    gameswf::ref_counted::add_ref((int)v8);
  gameswf::as_object::builtin_member((int)this, (int)v12, v10);
  gameswf::as_value::drop_refs((gameswf::as_value *)v10);
  if ( v12[0] == -1 )
    gameswf::free_internal(p);
  return this;
}


// ===== 7c35fc gameswf::as_3_function::execute(gameswf::array<gameswf::as_value> &,gameswf::array<gameswf::as_value> &,gameswf::array<gameswf::as_value> &,gameswf::as_value*) =====
int __fastcall gameswf::as_3_function::execute(_DWORD *a1, int a2, int *a3, _DWORD *a4, gameswf::as_value *a5)
{
  _DWORD *v6; // r6
  const unsigned __int8 *v8; // r2
  unsigned __int8 *v9; // r3
  unsigned int v10; // r1
  int v11; // r4
  bool v12; // cc
  int v13; // r0
  int v14; // r3
  int v15; // r1
  int v16; // r3
  int v17; // r0
  int v18; // r2
  int v19; // r1
  int v20; // r2
  const char *v21; // r2
  int v22; // r10
  gameswf::as_value *v23; // r9
  const char *v24; // r6
  gameswf::as_value *v25; // r11
  int *v26; // r11
  int v27; // r10
  const char *v28; // r3
  int vu30; // r0
  int v31; // r3
  int v32; // r1
  int v33; // r3
  int v34; // r2
  int v35; // r1
  int v36; // r2
  int v37; // r3
  const char *v38; // r2
  int v39; // r10
  gameswf::as_value *v40; // r9
  const char *v41; // r6
  gameswf::as_value *v42; // r11
  int *member; // r0
  int *v44; // r11
  int v45; // r10
  int v46; // r3
  int v47; // r12
  int v48; // r4
  char *v49; // r2
  const char *v50; // r10
  int v51; // r0
  gameswf::ref_counted *v52; // r1
  _BYTE *v53; // r0
  int v54; // r3
  int v55; // r9
  int v56; // r1
  int v57; // r3
  int v58; // r9
  const char *v59; // r1
  int (__fastcall *v60)(int, _BYTE *, _BYTE *); // r10
  int v61; // r10
  char *v62; // r3
  const char *v63; // r3
  int v64; // r11
  int v65; // r9
  char *v66; // r2
  const char *v67; // r0
  int v68; // r1
  int v69; // r3
  int v70; // r0
  int v71; // r3
  int v72; // r1
  int v73; // r3
  int v74; // r2
  int v75; // r1
  int v76; // r2
  const char *v77; // r1
  int v78; // r2
  int v79; // r10
  int v80; // r9
  int v81; // r6
  const char *v82; // r5
  gameswf::as_value *v83; // r11
  int *v84; // r11
  int i; // r10
  char *v86; // r2
  const char *v87; // r1
  int v88; // r10
  int v89; // r10
  int v90; // r11
  void (__fastcall *v91)(int, _BYTE *, int); // r9
  void (__fastcall *v93)(int, _BYTE *, int); // [sp+18h] [bp-17Ch]
  gameswf::as_value *v94; // [sp+1Ch] [bp-178h]
  gameswf::as_value *v95; // [sp+1Ch] [bp-178h]
  _DWORD *v96; // [sp+38h] [bp-15Ch]
  _DWORD *v97; // [sp+3Ch] [bp-158h]
  _DWORD *v98; // [sp+3Ch] [bp-158h]
  int *v99; // [sp+3Ch] [bp-158h]
  _DWORD v100[27]; // [sp+54h] [bp-140h] BYREF
  _BYTE v101[12]; // [sp+C0h] [bp-D4h] BYREF
  _BYTE v102[12]; // [sp+CCh] [bp-C8h] BYREF
  _BYTE v103[12]; // [sp+D8h] [bp-BCh] BYREF
  _BYTE v104[12]; // [sp+E4h] [bp-B0h] BYREF
  _BYTE v105[4]; // [sp+F0h] [bp-A4h] BYREF
  int v106; // [sp+F4h] [bp-A0h]
  _BYTE v107[12]; // [sp+FCh] [bp-98h] BYREF
  __int64 v108; // [sp+108h] [bp-8Ch] BYREF
  int v109; // [sp+110h] [bp-84h] BYREF
  _BYTE v110[8]; // [sp+114h] [bp-80h] BYREF
  void *v111; // [sp+120h] [bp-74h]
  _BYTE v112[8]; // [sp+128h] [bp-6Ch] BYREF
  void *v113; // [sp+134h] [bp-60h]
  _BYTE v114[8]; // [sp+13Ch] [bp-58h] BYREF
  void *v115; // [sp+148h] [bp-4Ch]
  _BYTE v116[8]; // [sp+150h] [bp-44h] BYREF
  void *v117; // [sp+15Ch] [bp-38h]
  _BYTE v118[8]; // [sp+164h] [bp-30h] BYREF
  void *p; // [sp+170h] [bp-24h]
  _BYTE v120[8]; // [sp+178h] [bp-1Ch] BYREF
  void *v121; // [sp+184h] [bp-10h]

  v6 = a1;
  v8 = (const unsigned __int8 *)v100;
  v9 = (unsigned __int8 *)a1[36];
  v10 = *v9;
  v11 = 1;
  v12 = v10 > 0x4F;
  if ( v10 == 79 )
    goto LABEL_54;
LABEL_2:
  if ( !v12 )
  {
    if ( v10 == 47 )
    {
      v11 += gameswf::read_vu30((gameswf *)&v109, (int *)&v9[v11], v8);
      v108 = *(_QWORD *)(8 * v109 + *(_DWORD *)(v6[17] + 44));
      gameswf::array<gameswf::as_value>::push_back<double>(a3, &v108);
      goto LABEL_52;
    }
    if ( v10 > 0x2F )
    {
      switch ( v10 )
      {
        case 'G':
          gameswf::as_value::drop_refs(a5);
          *((_BYTE *)a5 + 1) = 0;
          goto LABEL_52;
        case 'I':
          v11 += gameswf::read_vu30((gameswf *)&v109, (int *)&v9[v11], v8);
          gameswf::array<gameswf::as_value>::resize(a3, a3[1] - 1);
          if ( v109 > 0 )
          {
            for ( i = 0; i < v109; ++i )
              gameswf::array<gameswf::as_value>::resize(a3, a3[1] - 1);
          }
          goto LABEL_52;
        case '0':
          gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(a4);
          gameswf::array<gameswf::as_value>::resize(a3, a3[1] - 1);
          goto LABEL_52;
      }
    }
    else
    {
      switch ( v10 )
      {
        case ',':
          v11 += gameswf::read_vu30((gameswf *)&v108, (int *)&v9[v11], v8);
          v62 = (char *)(*(_DWORD *)(v6[17] + 60) + 20 * v108);
          if ( *v62 == -1 )
            v63 = *((const char **)v62 + 3);
          else
            v63 = v62 + 1;
          v109 = (int)v63;
          gameswf::array<gameswf::as_value>::push_back<char const*>(a3, (const char **)&v109);
          goto LABEL_52;
        case '-':
          v11 += gameswf::read_vu30((gameswf *)&v109, (int *)&v9[v11], v8);
          LODWORD(v108) = *(_DWORD *)(*(_DWORD *)(v6[17] + 12) + 4 * v109);
          gameswf::array<gameswf::as_value>::push_back<int>(a3, (int *)&v108);
          goto LABEL_52;
        case '$':
          v11 += gameswf::read_vu30((gameswf *)&v109, (int *)&v9[v11], v8);
          gameswf::array<gameswf::as_value>::push_back<int>(a3, &v109);
          goto LABEL_52;
      }
    }
LABEL_31:
    gameswf::log_msg("TODO opcode 0x%02X\n", (const char *)v10);
    return 16556;
  }
  if ( v10 != 102 )
  {
    if ( v10 > 0x66 )
    {
      if ( v10 == 104 )
      {
        v11 += gameswf::read_vu30((gameswf *)&v108, (int *)&v9[v11], v8);
        v64 = a3[1];
        v65 = *a3;
        v66 = (char *)(*(_DWORD *)(v6[17] + 60) + 20 * *(_DWORD *)(*(_DWORD *)(v6[17] + 108) + 20 * v108 + 16));
        if ( *v66 == -1 )
          v67 = *((const char **)v66 + 3);
        else
          v67 = v66 + 1;
        v68 = v64 - 2;
        v69 = v65 + 12 * (v64 - 2);
        if ( *(_BYTE *)(v69 + 1) == 5 )
        {
          v89 = *(_DWORD *)(v69 + 4);
          if ( v89 )
          {
            v93 = *(void (__fastcall **)(int, _BYTE *, int))(*(_DWORD *)v89 + 28);
            gameswf::tu_string::tu_string((gameswf::tu_string *)v110, v67);
            v93(v89, v110, v65 + 12 * (v64 - 1));
            if ( v110[0] == -1 )
              gameswf::free_internal(v111);
            v68 = a3[1] - 2;
          }
        }
        gameswf::array<gameswf::as_value>::resize(a3, v68);
        goto LABEL_52;
      }
      if ( v10 >= 0x68 && v10 - 208 <= 3 )
      {
        gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(a3);
        goto LABEL_52;
      }
    }
    else
    {
      switch ( v10 )
      {
        case '^':
          vu30 = gameswf::read_vu30((gameswf *)&v109, (int *)&v9[v11], v8);
          v31 = v6[17];
          v11 += vu30;
          v32 = *(_DWORD *)(v31 + 108);
          v33 = *(_DWORD *)(v31 + 60);
          v34 = 20 * *(_DWORD *)(v32 + 20 * v109 + 16);
          v35 = *(char *)(v33 + v34);
          v36 = v33 + v34;
          v37 = a4[1];
          if ( v35 == -1 )
            v38 = *(const char **)(v36 + 12);
          else
            v38 = (const char *)(v36 + 1);
          v95 = (gameswf::as_value *)a4[1];
          LODWORD(v108) = 0;
          if ( v37 - 1 < 0 )
            goto LABEL_50;
          v98 = v6;
          v39 = 12 * (v37 - 1);
          v40 = nullptr;
          v41 = v38;
          while ( 1 )
          {
            v42 = (gameswf::as_value *)(*a4 + v39);
            v102[0] = 0;
            v102[1] = 0;
            gameswf::tu_string::tu_string((gameswf::tu_string *)v116, v41);
            member = gameswf::as_value::get_member(v42, (const gameswf::tu_string *)v116, (gameswf::as_value *)v102);
            v44 = member;
            if ( v116[0] == -1 )
            {
              gameswf::free_internal(v117);
              if ( v44 )
              {
LABEL_46:
                v45 = *a4 + v39;
                v6 = v98;
                if ( *(_BYTE *)(v45 + 1) == 5 )
                  v46 = *(_DWORD *)(v45 + 4);
                else
                  v46 = 0;
                LODWORD(v108) = v46;
                gameswf::as_value::drop_refs((gameswf::as_value *)v102);
LABEL_50:
                gameswf::array<gameswf::as_value>::push_back<gameswf::as_object *>(a3, (int *)&v108);
                goto LABEL_52;
              }
            }
            else if ( member )
            {
              goto LABEL_46;
            }
            gameswf::as_value::drop_refs((gameswf::as_value *)v102);
            v40 = (gameswf::as_value *)((char *)v40 + 1);
            v39 -= 12;
            if ( v40 == v95 )
            {
              v6 = v98;
              gameswf::array<gameswf::as_value>::push_back<gameswf::as_object *>(a3, (int *)&v108);
              goto LABEL_52;
            }
          }
        case '`':
          v70 = gameswf::read_vu30((gameswf *)&v108, (int *)&v9[v11], v8);
          v71 = v6[17];
          v11 += v70;
          v72 = *(_DWORD *)(v71 + 108);
          v73 = *(_DWORD *)(v71 + 60);
          v74 = 20 * *(_DWORD *)(v72 + 20 * v108 + 16);
          v75 = *(char *)(v73 + v74);
          v76 = v73 + v74;
          if ( v75 == -1 )
            v77 = *(const char **)(v76 + 12);
          else
            v77 = (const char *)(v76 + 1);
          v78 = a4[1];
          v101[0] = 0;
          v101[1] = 0;
          if ( v78 - 1 < 0 )
            goto LABEL_91;
          v96 = v6;
          v99 = a3;
          v79 = 12 * (v78 - 1);
          v80 = 0;
          v81 = v78;
          v82 = v77;
          while ( 1 )
          {
            v83 = (gameswf::as_value *)(*a4 + v79);
            gameswf::tu_string::tu_string((gameswf::tu_string *)v114, v82);
            v84 = gameswf::as_value::get_member(v83, (const gameswf::tu_string *)v114, (gameswf::as_value *)v101);
            if ( v114[0] == -1 )
            {
              gameswf::free_internal(v115);
              if ( v84 )
              {
LABEL_90:
                v6 = v96;
                a3 = v99;
LABEL_91:
                gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(a3);
                gameswf::as_value::drop_refs((gameswf::as_value *)v101);
                goto LABEL_52;
              }
            }
            else if ( v84 )
            {
              goto LABEL_90;
            }
            ++v80;
            v79 -= 12;
            if ( v80 == v81 )
              goto LABEL_90;
          }
        case ']':
          v13 = gameswf::read_vu30((gameswf *)&v108, (int *)&v9[v11], v8);
          v14 = v6[17];
          v11 += v13;
          v15 = *(_DWORD *)(v14 + 108);
          v16 = *(_DWORD *)(v14 + 60);
          v17 = a4[1];
          v18 = 20 * *(_DWORD *)(v15 + 20 * v108 + 16);
          v19 = *(char *)(v16 + v18);
          v20 = v16 + v18;
          if ( v19 == -1 )
            v21 = *(const char **)(v20 + 12);
          else
            v21 = (const char *)(v20 + 1);
          v94 = (gameswf::as_value *)a4[1];
          v109 = 0;
          if ( v17 - 1 < 0 )
            goto LABEL_27;
          v22 = 12 * (v17 - 1);
          v97 = v6;
          v23 = nullptr;
          v24 = v21;
          while ( 1 )
          {
            v25 = (gameswf::as_value *)(*a4 + v22);
            v103[0] = 0;
            v103[1] = 0;
            gameswf::tu_string::tu_string((gameswf::tu_string *)v118, v24);
            v26 = gameswf::as_value::get_member(v25, (const gameswf::tu_string *)v118, (gameswf::as_value *)v103);
            if ( v118[0] == -1 )
            {
              gameswf::free_internal(p);
              if ( v26 )
              {
LABEL_23:
                v27 = *a4 + v22;
                v6 = v97;
                if ( *(_BYTE *)(v27 + 1) == 5 )
                  v28 = *(const char **)(v27 + 4);
                else
                  v28 = nullptr;
                v109 = (int)v28;
                gameswf::as_value::drop_refs((gameswf::as_value *)v103);
LABEL_27:
                gameswf::array<gameswf::as_value>::push_back<gameswf::as_object *>(a3, &v109);
                goto LABEL_52;
              }
            }
            else if ( v26 )
            {
              goto LABEL_23;
            }
            gameswf::as_value::drop_refs((gameswf::as_value *)v103);
            v23 = (gameswf::as_value *)((char *)v23 + 1);
            v22 -= 12;
            if ( v23 == v94 )
            {
              v6 = v97;
              gameswf::array<gameswf::as_value>::push_back<gameswf::as_object *>(a3, &v109);
              goto LABEL_52;
            }
          }
      }
    }
    goto LABEL_31;
  }
  v11 += gameswf::read_vu30((gameswf *)&v108, (int *)&v9[v11], v8);
  v86 = (char *)(*(_DWORD *)(v6[17] + 60) + 20 * *(_DWORD *)(*(_DWORD *)(v6[17] + 108) + 20 * v108 + 16));
  if ( *v86 == -1 )
    v87 = *((const char **)v86 + 3);
  else
    v87 = v86 + 1;
  v88 = *a3 + 12 * (a3[1] - 1);
  if ( *(_BYTE *)(v88 + 1) == 5 && (v90 = *(_DWORD *)(v88 + 4)) != 0 )
  {
    v91 = *(void (__fastcall **)(int, _BYTE *, int))(*(_DWORD *)v90 + 32);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v112, v87);
    v91(v90, v112, *a3 + 12 * (a3[1] - 1));
    if ( v112[0] == -1 )
      gameswf::free_internal(v113);
  }
  else
  {
    gameswf::as_value::drop_refs((gameswf::as_value *)(*a3 + 12 * (a3[1] - 1)));
    *(_BYTE *)(v88 + 1) = 0;
  }
LABEL_52:
  while ( v11 < v6[34] )
  {
    v9 = (unsigned __int8 *)v6[36];
    v47 = v11++;
    v10 = v9[v47];
    v12 = v10 > 0x4F;
    if ( v10 != 79 )
      goto LABEL_2;
LABEL_54:
    v48 = gameswf::read_vu30((gameswf *)&v109, (int *)&v9[v11], v8) + v11;
    v49 = (char *)(*(_DWORD *)(v6[17] + 60) + 20 * *(_DWORD *)(*(_DWORD *)(v6[17] + 108) + 20 * v109 + 16));
    if ( *v49 == -1 )
      v50 = *((const char **)v49 + 3);
    else
      v50 = v49 + 1;
    v51 = gameswf::read_vu30((gameswf *)&v108, (int *)(v6[36] + v48), (const unsigned __int8 *)v49);
    v52 = (gameswf::ref_counted *)v6[12];
    v11 = v51 + v48;
    if ( v52 )
    {
      v53 = (_BYTE *)v6[11];
      if ( !v53[4] )
      {
        if ( (*(_DWORD *)v53)-- == 1 )
          gameswf::free_internal(v53);
        v6[11] = 0;
        v6[12] = 0;
        v52 = nullptr;
      }
    }
    gameswf::as_environment::as_environment((int)v100, v52);
    v54 = v108;
    if ( (int)v108 > 0 )
    {
      v55 = 0;
      do
      {
        gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(v100);
        v54 = v108;
        ++v55;
      }
      while ( (int)v108 > v55 );
    }
    gameswf::array<gameswf::as_value>::resize(a3, a3[1] - v54);
    v56 = a3[1] - 1;
    v57 = *a3 + 12 * v56;
    if ( *(_BYTE *)(v57 + 1) == 5 )
      v58 = *(_DWORD *)(v57 + 4);
    else
      v58 = 0;
    gameswf::array<gameswf::as_value>::resize(a3, v56);
    v107[0] = 0;
    v107[1] = 0;
    if ( v58 )
    {
      v59 = v50;
      v60 = *(int (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v58 + 32);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v120, v59);
      v61 = v60(v58, v120, v107);
      if ( v120[0] == -1 )
        gameswf::free_internal(v121);
      if ( v61 )
      {
        v105[1] = 5;
        v106 = v58;
        v105[0] = 0;
        gameswf::ref_counted::add_ref(v58);
        gameswf::call_method(v104, (gameswf::as_value *)v107, (int)v100, (int)v105, v108, v100[1] - 1, (int)"???");
        gameswf::as_value::drop_refs((gameswf::as_value *)v104);
        gameswf::as_value::drop_refs((gameswf::as_value *)v105);
      }
    }
    gameswf::as_value::drop_refs((gameswf::as_value *)v107);
    gameswf::as_environment::~as_environment((gameswf::as_environment *)v100);
  }
  return 16556;
}


// ===== 7c40a4 gameswf::as_function::this_alive(void) =====
void __fastcall gameswf::as_function::this_alive(gameswf::as_function *this)
{
  int v1; // r3
  _BYTE *v3; // r0
  int v4; // r3

  v1 = *((_DWORD *)this + 12);
  if ( v1 )
  {
    v3 = *((_BYTE **)this + 11);
    if ( v3[4] )
    {
      if ( *((_DWORD *)this + 13) == *(_DWORD *)(v1 + 48) )
        return;
    }
    else
    {
      if ( (*(_DWORD *)v3)-- == 1 )
        gameswf::free_internal(v3);
      *((_DWORD *)this + 12) = 0;
      *((_DWORD *)this + 11) = 0;
    }
  }
  gameswf::as_object::this_alive(this);
  v4 = *((_DWORD *)this + 14);
  if ( v4 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v4 + 68))(*((_DWORD *)this + 14));
}


// ===== 7c4130 gameswf::as_3_function::operator()(gameswf::fn_call const&) =====
void __fastcall gameswf::as_3_function::operator()(gameswf::as_object *a1, int a2)
{
  int v2; // r3
  gameswf::as_environment *v3; // r4
  int target; // r0
  int v7; // r4
  _BYTE *v8; // r0
  int v9; // r1
  gameswf::as_value *v10; // r6
  int v11; // r11
  void (__fastcall *v12)(int, _BYTE *, char *); // r10
  int v13; // r11
  void (__fastcall *v14)(int, _BYTE *, char *); // r10
  _DWORD v16[3]; // [sp+10h] [bp-7Ch] BYREF
  char v17; // [sp+1Ch] [bp-70h]
  int v18[3]; // [sp+20h] [bp-6Ch] BYREF
  char v19; // [sp+2Ch] [bp-60h]
  gameswf::as_value *v20[3]; // [sp+30h] [bp-5Ch] BYREF
  char v21; // [sp+3Ch] [bp-50h]
  char v22; // [sp+40h] [bp-4Ch] BYREF
  char v23; // [sp+41h] [bp-4Bh]
  int v24; // [sp+44h] [bp-48h]
  _BYTE v25[4]; // [sp+4Ch] [bp-40h] BYREF
  int v26; // [sp+50h] [bp-3Ch]
  int global; // [sp+58h] [bp-34h] BYREF
  _BYTE v28[8]; // [sp+5Ch] [bp-30h] BYREF
  void *p; // [sp+68h] [bp-24h]
  _BYTE v30[8]; // [sp+70h] [bp-1Ch] BYREF
  void *v31; // [sp+7Ch] [bp-10h]

  v2 = *(_DWORD *)(a2 + 4);
  v3 = *(gameswf::as_environment **)(a2 + 12);
  if ( v2 && (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 88))(*(_DWORD *)(a2 + 4)) )
    v3 = (gameswf::as_environment *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a2 + 4) + 88))(*(_DWORD *)(a2 + 4));
  target = gameswf::as_environment::get_target(v3);
  v7 = *(_DWORD *)(a2 + 4);
  if ( v7 )
  {
    if ( *(_DWORD *)(v7 + 36) )
    {
      v8 = *(_BYTE **)(v7 + 32);
      if ( v8[4] )
      {
        v7 = *(_DWORD *)(v7 + 36);
      }
      else
      {
        if ( (*(_DWORD *)v8)-- == 1 )
          gameswf::free_internal(v8);
        *(_DWORD *)(v7 + 36) = 0;
        *(_DWORD *)(v7 + 32) = 0;
      }
    }
  }
  else
  {
    v7 = target;
  }
  v9 = *((_DWORD *)a1 + 31) + 1;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  gameswf::array<gameswf::as_value>::resize(v20, v9);
  v25[0] = 0;
  v25[1] = 5;
  v26 = v7;
  v10 = v20[0];
  if ( v7 )
    gameswf::ref_counted::add_ref(v7);
  gameswf::as_value::operator=(v10, (int)v25);
  gameswf::as_value::drop_refs((gameswf::as_value *)v25);
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  global = gameswf::as_object::get_global(a1);
  gameswf::array<gameswf::as_value>::push_back<gameswf::as_object *>(v16, &global);
  v23 = 0;
  v22 = 0;
  v11 = gameswf::as_object::get_global(a1);
  v12 = *(void (__fastcall **)(int, _BYTE *, char *))(*(_DWORD *)v11 + 32);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v30, "flash");
  v12(v11, v30, &v22);
  if ( v30[0] == -1 )
    gameswf::free_internal(v31);
  if ( v23 == 5 )
    v13 = v24;
  else
    v13 = 0;
  v14 = *(void (__fastcall **)(int, _BYTE *, char *))(*(_DWORD *)v13 + 32);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v28, "Events");
  v14(v13, v28, &v22);
  if ( v28[0] == -1 )
    gameswf::free_internal(p);
  gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(v16);
  gameswf::as_3_function::execute(a1, (int)v20, v18, v16, *(gameswf::as_value **)a2);
  gameswf::as_value::drop_refs((gameswf::as_value *)&v22);
  gameswf::array<gameswf::as_value>::resize(v16, 0);
  gameswf::array<gameswf::as_value>::reserve((int)v16, 0);
  gameswf::array<gameswf::as_value>::resize(v18, 0);
  gameswf::array<gameswf::as_value>::reserve((int)v18, 0);
  gameswf::array<gameswf::as_value>::resize(v20, 0);
  gameswf::array<gameswf::as_value>::reserve((int)v20, 0);
}


// ===== 7c4418 gameswf::hash<int,gameswf::glyph_entity *,gameswf::fixed_size_hash<int>>::find_index(int const&) =====
int __fastcall gameswf::hash<int,gameswf::glyph_entity *,gameswf::fixed_size_hash<int>>::find_index(
        int *a1,
        _DWORD *a2)
{
  int v2; // r3
  int result; // r0
  int v4; // r2
  int v5; // r0
  int v6; // r0
  int v7; // r4
  int v8; // r12
  int v9; // r5
  int *v10; // r12
  int v11; // r5

  v2 = *a1;
  if ( !*a1 )
    return -1;
  v4 = 5381;
  v5 = 4;
  do
  {
    --v5;
    v4 = 65600 * v4 + *((unsigned __int8 *)a2 + v5) - v4;
  }
  while ( v5 );
  v6 = *(_DWORD *)(v2 + 4);
  if ( v4 == -1 )
    v4 = -32769;
  v7 = v4 & v6;
  v8 = 2 * (v4 & v6) + 1;
  v9 = *(_DWORD *)(v2 + 8 * v8);
  v10 = (int *)(v2 + 8 * v8);
  if ( v9 == -2 )
    return -1;
  v11 = v10[1];
  if ( v11 == -1 )
  {
    result = v4 & v6;
    goto LABEL_14;
  }
  result = v6 & v11;
  if ( result != v7 )
    return -1;
LABEL_14:
  while ( v4 != v11 || v10[2] != *a2 )
  {
    result = *v10;
    if ( *v10 == -1 )
      break;
    v10 = (int *)(v2 + 16 * result + 8);
    v11 = *(_DWORD *)(v2 + 16 * result + 12);
  }
  return result;
}


// ===== 7c44d8 gameswf::texture_cache::lock(void) =====
void *__fastcall gameswf::texture_cache::lock(gameswf::texture_cache *this)
{
  void *v1; // r5
  int v4; // r0
  _DWORD *v5; // r3
  int v6; // r6
  int v7; // r0

  v1 = *((void **)this + 15);
  if ( !v1 )
  {
    v4 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 13) + 24))(*((_DWORD *)this + 13));
    v5 = *((_DWORD **)this + 12);
    v1 = (void *)v4;
    *((_DWORD *)this + 15) = v4;
    if ( !v5 || !*v5 )
    {
      v6 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 13) + 36))(*((_DWORD *)this + 13));
      v7 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 13) + 40))(*((_DWORD *)this + 13));
      LC_API_MEMSET_0(v1, 0, *((_DWORD *)this + 14) * v7 * v6);
      return *((void **)this + 15);
    }
  }
  return v1;
}


// ===== 7c4574 gameswf::bitmap_font_entity::copy_argb(uchar *,int,int,int,uchar *,int,int) =====
char *__fastcall gameswf::bitmap_font_entity::copy_argb(
        char *this,
        unsigned __int8 *a2,
        int a3,
        int a4,
        char *a5,
        size_t a6,
        int a7,
        int a8)
{
  int v10; // r7
  char *v11; // r6

  if ( a7 > 0 )
  {
    v10 = 0;
    v11 = this + 4 * (_DWORD)a2 + a3 * a4;
    do
    {
      ++v10;
      this = (char *)memcpy(a5, v11, a6);
      v11 += a4;
      a5 += a6;
    }
    while ( v10 != a7 );
  }
  return this;
}


// ===== 7c45c8 gameswf::hash<int,gameswf::glyph_entity *,gameswf::fixed_size_hash<int>>::clear(void) =====
void __fastcall gameswf::hash<int,gameswf::glyph_entity *,gameswf::fixed_size_hash<int>>::clear(_DWORD **a1)
{
  _DWORD *v2; // r0
  int v3; // r1
  int v4; // r2
  int v5; // r3
  _DWORD *v6; // r12

  v2 = *a1;
  if ( v2 )
  {
    v3 = v2[1];
    if ( v3 >= 0 )
    {
      v4 = 0;
      v5 = 2;
      do
      {
        ++v4;
        v6 = &v2[v5];
        if ( v2[v5] != -2 && v6[1] != -1 )
        {
          v6[1] = 0;
          *v6 = -2;
          v2 = *a1;
        }
        v5 += 4;
      }
      while ( v3 >= v4 );
    }
    gameswf::free_internal(v2);
    *a1 = nullptr;
  }
}


// ===== 7c4648 gameswf::bitmap_glyph_texture_cache::bitmap_glyph_texture_cache(int,int) =====
gameswf::bitmap_glyph_texture_cache *__fastcall gameswf::bitmap_glyph_texture_cache::bitmap_glyph_texture_cache(
        gameswf::bitmap_glyph_texture_cache *this,
        int a2,
        int *a3)
{
  gameswf::texture_cache::texture_cache(this, a2, a3, 4, 0);
  return this;
}


// ===== 7c4670 gameswf::bitmap_glyph_texture_cache::bitmap_glyph_texture_cache(int,int) =====
gameswf::bitmap_glyph_texture_cache *__fastcall gameswf::bitmap_glyph_texture_cache::bitmap_glyph_texture_cache(
        gameswf::bitmap_glyph_texture_cache *this,
        int a2,
        int *a3)
{
  gameswf::texture_cache::texture_cache(this, a2, a3, 4, 0);
  return this;
}


// ===== 7c4698 gameswf::default_bitmap_font_entity::get_char_image(gameswf::bitmap_glyph_data *,ushort,int,gameswf::bitmap_glyph_metrics *) =====
int __fastcall gameswf::default_bitmap_font_entity::get_char_image(int a1, _DWORD *a2, int a3, int a4, int *a5)
{
  int v6; // r0
  int v8; // r8
  int v9; // r2
  int v10; // r7
  unsigned int v11; // r9
  unsigned int v12; // r12
  int v13; // r6
  int v14; // r3
  unsigned __int8 *v15; // r6
  int v16; // r8
  int v17; // r7
  int v18; // r11
  int v19; // r7
  int v20; // r8
  int v21; // r1
  int v22; // r3
  unsigned __int8 v23; // r12
  int v24; // r2
  int v25; // r5
  int v26; // r0
  int v27; // r12
  unsigned int v28; // r8
  int v29; // r3
  int v30; // r2
  unsigned int v32; // r11
  int v33; // r3
  int v34; // [sp+0h] [bp-44h]
  int v35; // [sp+0h] [bp-44h]
  int v36; // [sp+4h] [bp-40h]
  int v37; // [sp+4h] [bp-40h]
  int v38; // [sp+8h] [bp-3Ch]
  int v39; // [sp+8h] [bp-3Ch]
  int v40; // [sp+Ch] [bp-38h]
  int v41; // [sp+Ch] [bp-38h]
  int v42; // [sp+10h] [bp-34h]
  int v43; // [sp+10h] [bp-34h]
  int v44; // [sp+14h] [bp-30h]
  int v45; // [sp+14h] [bp-30h]
  int v46; // [sp+18h] [bp-2Ch]
  int v47; // [sp+1Ch] [bp-28h]
  int v48; // [sp+20h] [bp-24h]
  int v49; // [sp+24h] [bp-20h]
  int v50; // [sp+28h] [bp-1Ch]
  int v51; // [sp+2Ch] [bp-18h]
  int v52; // [sp+30h] [bp-14h]
  int v53; // [sp+34h] [bp-10h]
  _DWORD *v55; // [sp+3Ch] [bp-8h]

  v6 = *(_DWORD *)(a1 + 84);
  v40 = *(unsigned __int8 *)(v6 + 16);
  v8 = *(unsigned __int8 *)(v6 + 17);
  v9 = a3 - _byteswap_ulong(*(_DWORD *)(v6 + 36));
  v42 = *(unsigned __int8 *)(v6 + 18);
  v44 = *(unsigned __int8 *)(v6 + 19);
  v34 = *(unsigned __int8 *)(v6 + 20);
  v10 = *(unsigned __int8 *)(v6 + 21);
  v36 = *(unsigned __int8 *)(v6 + 22);
  v38 = *(unsigned __int8 *)(v6 + 23);
  v50 = *(unsigned __int8 *)(v6 + 24);
  v51 = *(unsigned __int8 *)(v6 + 25);
  v52 = *(unsigned __int8 *)(v6 + 26);
  v53 = *(unsigned __int8 *)(v6 + 27);
  v46 = *(unsigned __int8 *)(v6 + 32);
  v47 = *(unsigned __int8 *)(v6 + 33);
  v48 = *(unsigned __int8 *)(v6 + 34);
  v49 = *(unsigned __int8 *)(v6 + 35);
  if ( (v9 >= (int)_byteswap_ulong(*(_DWORD *)(v6 + 12))) | ((unsigned int)v9 >> 31) )
    return 0;
  v11 = _byteswap_ulong(*(_DWORD *)(v6 + 4 * (v9 + 10)));
  v12 = _byteswap_ulong(*(_DWORD *)(v6 + 4 * (v9 + 11)));
  v13 = v12 - v11;
  if ( v12 == v11 )
    return 0;
  v14 = *(_DWORD *)(a1 + 92);
  if ( v14 )
  {
    v15 = (unsigned __int8 *)(*(_DWORD *)(v14 + 8) + v11 - *(_DWORD *)(a1 + 76));
  }
  else
  {
    if ( v13 > *(_DWORD *)(a1 + 60) )
      gameswf::membuf::resize((gameswf::membuf *)(a1 + 60), (gameswf::membuf *)(v12 - v11));
    (*(void (__fastcall **)(unsigned int, _DWORD))(*(_DWORD *)(a1 + 96) + 16))(v11, **(_DWORD **)(a1 + 96));
    gameswf::tu_file::read_fully(*(gameswf::tu_file **)(a1 + 96), (gameswf::membuf *)(a1 + 60), v13);
    v15 = *(unsigned __int8 **)(a1 + 68);
  }
  v16 = (v8 << 16) | (v40 << 24) | v44;
  v17 = (v10 << 16) | (v34 << 24) | v38 | (v36 << 8);
  v35 = v17;
  v41 = *v15;
  v18 = v16 | (v42 << 8);
  v43 = v15[1];
  v37 = v15[2];
  v39 = v15[3];
  if ( a2 )
  {
    v19 = v18 * v17;
    v20 = *(_DWORD *)(a1 + 48);
    if ( v19 > v20 )
    {
      if ( v19 && v19 > *(_DWORD *)(a1 + 52) )
        gameswf::array<unsigned int>::reserve(a1 + 44, v19 + (v19 >> 1));
      v33 = 4 * v20;
      do
      {
        ++v20;
        *(_DWORD *)(*(_DWORD *)(a1 + 44) + v33) = 0;
        v33 += 4;
      }
      while ( v20 != v19 );
      *(_DWORD *)(a1 + 48) = v19;
    }
    if ( v19 > 0 )
    {
      v21 = 0;
      v22 = 4;
      v45 = v18;
      v55 = a2;
      do
      {
        v23 = v15[v22];
        v24 = 0;
        ++v22;
        v25 = v23 & 0x7F;
        v26 = 4 * v21;
        v27 = v23 & 0x80;
        v28 = 0;
        do
        {
          if ( !v27 || !v24 )
          {
            v32 = _byteswap_ulong(*(_DWORD *)&v15[v22]);
            v28 = (v32 << 24) | HIBYTE(v32) | ((v32 & 0xFF00) << 8) | ((v32 & 0xFF0000) >> 8);
            v22 += 4;
          }
          ++v24;
          *(_DWORD *)(*(_DWORD *)(a1 + 44) + v26) = v28;
          ++v21;
          v26 += 4;
        }
        while ( v25 >= v24 );
      }
      while ( v19 > v21 );
      v18 = v45;
      a2 = v55;
    }
    *a2 = 4 * v18;
    v29 = *(_DWORD *)(a1 + 44);
    a2[1] = v18;
    a2[3] = v29;
    a2[2] = v35;
  }
  if ( a5 )
  {
    v30 = v43 | (v41 << 8);
    a5[1] = (v51 << 16) | (v50 << 24) | v53 | (v52 << 8);
    a5[2] = v18;
    *a5 = v30;
    a5[3] = v35;
    a5[4] = (int)(float)((float)(((v47 << 16) | (v46 << 24) | v49 | (v48 << 8)) + 1 + (v39 | (v37 << 8)) - v30)
                       * (float)(1024.0 / (float)((float)a4 * 20.0)));
  }
  return 1;
}


// ===== 7c4aa8 gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::find_index(gameswf::tu_stringi const&) =====
int __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::find_index(
        int *a1,
        _DWORD *a2)
{
  char *v2; // r4
  int v3; // r3
  int v6; // r4
  int v8; // r12
  int v9; // r7
  int v10; // r2
  int v11; // r8
  int v12; // r1
  int v13; // r8
  int v14; // r3
  const char *v15; // r0
  const char *v16; // r1
  int v17; // r3
  bool v18; // zf
  int v19; // r3
  int v20; // r2
  char *v21; // r3
  int v22; // r2
  int v23; // r1
  int v24; // r2

  v3 = *a1;
  if ( !*a1 )
    return -1;
  v8 = a2[4];
  if ( (v8 & 0xFFFFFF) == 0xFFFFFF )
  {
    v17 = *(char *)a2;
    v18 = v17 == -1;
    if ( v17 == -1 )
    {
      v19 = a2[1];
    }
    else
    {
      v19 = v17 - 1;
      v2 = (char *)a2 + 1;
    }
    if ( v18 )
    {
      --v19;
      v2 = (char *)a2[3];
    }
    if ( v19 > 0 )
    {
      v21 = &v2[v19];
      v22 = 5381;
      do
      {
        v23 = (unsigned __int8)*--v21;
        v24 = 33 * v22;
        if ( (unsigned __int8)(v23 - 65) <= 0x19u )
          v23 += 32;
        v22 = v23 ^ v24;
      }
      while ( v21 != v2 );
      v20 = v22 << 8 >> 8;
      v9 = v20;
    }
    else
    {
      v9 = 5381;
      v20 = 5381;
    }
    a2[4] = v8 & 0xFF000000 | v20 & 0xFFFFFF;
    v3 = *a1;
  }
  else
  {
    v9 = v8 << 8 >> 8;
  }
  v10 = *(_DWORD *)(v3 + 4);
  if ( v9 == -1 )
    v9 = -32769;
  v6 = v9 & v10;
  v11 = 4 * (v9 & v10) + 1;
  v12 = *(_DWORD *)(v3 + 8 * v11);
  v13 = v3 + 8 * v11;
  if ( v12 == -2 )
    return -1;
  v14 = *(_DWORD *)(v13 + 4);
  if ( v14 != -1 && (v10 & v14) != v6 )
    return -1;
  while ( 1 )
  {
    if ( v9 == v14 )
    {
      if ( a2 == (_DWORD *)(v13 + 8) )
        break;
      v15 = *(char *)(v13 + 8) == -1 ? *(const char **)(v13 + 20) : (const char *)(v13 + 9);
      v16 = *(char *)a2 == -1 ? (const char *)a2[3] : (char *)a2 + 1;
      if ( !gameswf::tu_string::stricmp(v15, v16) )
        break;
    }
    v6 = *(_DWORD *)v13;
    if ( *(_DWORD *)v13 == -1 )
      break;
    v13 = *a1 + 32 * v6 + 8;
    v14 = *(_DWORD *)(v13 + 4);
  }
  return v6;
}


// ===== 7c4c04 gameswf::smart_ptr<gameswf::bitmap_font_entity>::set_ref(gameswf::bitmap_font_entity*) =====
void __fastcall gameswf::smart_ptr<gameswf::bitmap_font_entity>::set_ref(
        gameswf::ref_counted **a1,
        gameswf::ref_counted *this)
{
  gameswf::ref_counted *v3; // r0

  v3 = *a1;
  if ( v3 != this )
  {
    if ( v3 )
      gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v3);
    *a1 = this;
    if ( this )
      gameswf::ref_counted::add_ref((int)this);
  }
}


// ===== 7c4c44 gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::get(gameswf::tu_stringi const&,gameswf::smart_ptr<gameswf::bitmap_font_entity>*) =====
int __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::get(
        int *a1,
        _DWORD *a2,
        gameswf::ref_counted **a3)
{
  int index; // r3

  index = gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::find_index(
            a1,
            a2);
  if ( index < 0 )
    return 0;
  if ( a3 )
    gameswf::smart_ptr<gameswf::bitmap_font_entity>::set_ref(a3, *(gameswf::ref_counted **)(*a1 + 32 * index + 36));
  return 1;
}


// ===== 7c4c90 gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::clear(void) =====
void __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::clear(
        int a1)
{
  void (__fastcall ***v2)(_DWORD); // r0

  if ( *(char *)(a1 + 8) == -1 )
    gameswf::free_internal(*(void **)(a1 + 20));
  v2 = *(void (__fastcall ****)(_DWORD))(a1 + 28);
  if ( v2 )
    gameswf::ref_counted::drop_ref(v2);
  *(_DWORD *)(a1 + 4) = 0;
  *(_DWORD *)a1 = -2;
}


// ===== 7c4cd8 gameswf::bitmap_font_entity::~bitmap_font_entity() =====
void __fastcall gameswf::bitmap_font_entity::~bitmap_font_entity(gameswf::bitmap_font_entity *this)
{
  int *v2; // r5
  int v3; // r3
  int v4; // r1
  int i; // r4
  int v6; // r2
  int v7; // r2
  int v8; // r0
  int v9; // r12
  void (__fastcall ****v10)(_DWORD); // r7
  int v11; // r1
  int v12; // r0
  int v13; // r12

  *(_DWORD *)this = off_9913B8;
  v2 = (int *)((char *)this + 36);
  v3 = *((_DWORD *)this + 9);
  if ( v3 )
  {
    v4 = *(_DWORD *)(v3 + 4);
    if ( v4 >= 0 )
    {
      v7 = 8;
      for ( i = 0; i <= v4; ++i )
      {
        v8 = *(_DWORD *)(v3 + v7);
        v9 = v3 + v7;
        v7 += 16;
        if ( v8 != -2 && *(_DWORD *)(v9 + 4) != -1 )
          break;
      }
    }
    else
    {
      i = 0;
    }
    if ( v2 )
    {
      while ( v3 )
      {
        v6 = *(_DWORD *)(v3 + 4);
        if ( i > v6 )
          break;
        v10 = *(void (__fastcall *****)(_DWORD))(v3 + 16 * i + 20);
        if ( v10 )
        {
          if ( *v10 )
            gameswf::ref_counted::drop_ref(*v10);
          gameswf::free_internal(v10);
          v3 = *v2;
          v6 = *(_DWORD *)(*v2 + 4);
          if ( i > v6 )
            break;
        }
        if ( v6 >= ++i )
        {
          v11 = 16 * i + 8;
          do
          {
            v12 = *(_DWORD *)(v3 + v11);
            v13 = v3 + v11;
            v11 += 16;
            if ( v12 != -2 && *(_DWORD *)(v13 + 4) != -1 )
              break;
            ++i;
          }
          while ( v6 >= i );
        }
      }
    }
  }
  gameswf::hash<int,gameswf::glyph_entity *,gameswf::fixed_size_hash<int>>::clear((_DWORD **)v2);
  if ( *((char *)this + 16) == -1 )
    gameswf::free_internal(*((void **)this + 7));
  gameswf::ref_counted::~ref_counted(this);
}


// ===== 7c4e34 gameswf::bitmap_glyph_provider::~bitmap_glyph_provider() =====
void __fastcall gameswf::bitmap_glyph_provider::~bitmap_glyph_provider(gameswf::bitmap_glyph_provider *this)
{
  _DWORD **v2; // r4
  gameswf::texture_cache *v3; // r0
  void *v4; // r6

  *(_DWORD *)this = off_991388;
  v2 = (_DWORD **)((char *)this + 4);
  gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear((_DWORD **)this + 1);
  v3 = *((gameswf::texture_cache **)this + 3);
  if ( v3 )
  {
    gameswf::texture_cache::reset(v3);
    v4 = *((void **)this + 3);
    if ( v4 )
    {
      gameswf::texture_cache::~texture_cache(*((gameswf::texture_cache **)this + 3));
      gameswf::free_internal(v4);
    }
  }
  gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear(v2);
}


// ===== 7c4ea8 gameswf::bitmap_font_entity::~bitmap_font_entity() =====
void __fastcall gameswf::bitmap_font_entity::~bitmap_font_entity(gameswf::bitmap_font_entity *this)
{
  int *v2; // r5
  int v3; // r3
  int v4; // r1
  int i; // r4
  int v6; // r2
  int v7; // r2
  int v8; // r0
  int v9; // r12
  void (__fastcall ****v10)(_DWORD); // r7
  int v11; // r1
  int v12; // r0
  int v13; // r12

  *(_DWORD *)this = off_9913B8;
  v2 = (int *)((char *)this + 36);
  v3 = *((_DWORD *)this + 9);
  if ( v3 )
  {
    v4 = *(_DWORD *)(v3 + 4);
    if ( v4 >= 0 )
    {
      v7 = 8;
      for ( i = 0; i <= v4; ++i )
      {
        v8 = *(_DWORD *)(v3 + v7);
        v9 = v3 + v7;
        v7 += 16;
        if ( v8 != -2 && *(_DWORD *)(v9 + 4) != -1 )
          break;
      }
    }
    else
    {
      i = 0;
    }
    if ( v2 )
    {
      while ( v3 )
      {
        v6 = *(_DWORD *)(v3 + 4);
        if ( i > v6 )
          break;
        v10 = *(void (__fastcall *****)(_DWORD))(v3 + 16 * i + 20);
        if ( v10 )
        {
          if ( *v10 )
            gameswf::ref_counted::drop_ref(*v10);
          gameswf::free_internal(v10);
          v3 = *v2;
          v6 = *(_DWORD *)(*v2 + 4);
          if ( i > v6 )
            break;
        }
        if ( v6 >= ++i )
        {
          v11 = 16 * i + 8;
          do
          {
            v12 = *(_DWORD *)(v3 + v11);
            v13 = v3 + v11;
            v11 += 16;
            if ( v12 != -2 && *(_DWORD *)(v13 + 4) != -1 )
              break;
            ++i;
          }
          while ( v6 >= i );
        }
      }
    }
  }
  gameswf::hash<int,gameswf::glyph_entity *,gameswf::fixed_size_hash<int>>::clear((_DWORD **)v2);
  if ( *((char *)this + 16) == -1 )
    gameswf::free_internal(*((void **)this + 7));
  gameswf::ref_counted::~ref_counted(this);
}


// ===== 7c5004 gameswf::bitmap_font_entity::~bitmap_font_entity() =====
void __fastcall gameswf::bitmap_font_entity::~bitmap_font_entity(gameswf::bitmap_font_entity *this)
{
  gameswf::bitmap_font_entity::~bitmap_font_entity(this);
  LC_API_FREE_0(this);
}


// ===== 7c5020 gameswf::hash<gameswf::texture_cache::key,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::key>>::set_raw_capacity(int) =====
void __fastcall gameswf::hash<gameswf::texture_cache::key,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::key>>::set_raw_capacity(
        _DWORD **a1,
        int a2)
{
  _DWORD *v2; // r8
  int v3; // r4
  _DWORD *v4; // r3
  int v5; // r5
  int v6; // r3
  _DWORD *v7; // r3
  int v8; // r7
  int v9; // r6
  int v10; // r4
  _DWORD *v11; // r5
  _DWORD v12[2]; // [sp+4h] [bp-8h] BYREF

  v2 = a1;
  if ( a2 <= 0 )
  {
LABEL_17:
    gameswf::hash<gameswf::texture_cache::key,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::key>>::clear(a1);
    return;
  }
  v3 = 1 << (int)(float)((float)(logf((float)(a2 - 1)) / 0.69315) + 1.0);
  v4 = (_DWORD *)*v2;
  if ( v3 < 4 )
    v3 = 4;
  if ( !v4 || v4[1] + 1 != v3 )
  {
    v5 = 0;
    v12[0] = gameswf::malloc_internal(32 * v3 + 8);
    *(_DWORD *)v12[0] = 0;
    *(_DWORD *)(v12[0] + 4) = v3 - 1;
    v6 = 8;
    do
    {
      ++v5;
      *(_DWORD *)(v12[0] + v6) = -2;
      v6 += 32;
    }
    while ( v3 > v5 );
    v7 = (_DWORD *)*v2;
    if ( *v2 )
    {
      v8 = v7[1];
      if ( v8 >= 0 )
      {
        v9 = 0;
        v10 = 2;
        do
        {
          ++v9;
          v11 = &v7[v10];
          if ( v7[v10] != -2 && v11[1] != -1 )
          {
            gameswf::hash<gameswf::texture_cache::key,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::key>>::add(
              v12,
              v11 + 2,
              v11 + 6);
            *v11 = -2;
            v11[1] = 0;
            v7 = (_DWORD *)*v2;
          }
          v10 += 8;
        }
        while ( v8 >= v9 );
      }
      gameswf::free_internal(v7);
    }
    a1 = (_DWORD **)v12;
    *v2 = v12[0];
    v12[0] = 0;
    goto LABEL_17;
  }
}


// ===== 7c5178 gameswf::hash<gameswf::texture_cache::key,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::key>>::check_expand(void) =====
void __fastcall gameswf::hash<gameswf::texture_cache::key,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::key>>::check_expand(
        _DWORD **a1)
{
  _DWORD *v1; // r3
  int v2; // r1

  v1 = *a1;
  if ( *a1 )
  {
    v2 = 2 * (v1[1] + 1);
    if ( 3 * *v1 <= v2 )
      return;
  }
  else
  {
    v2 = 8;
  }
  gameswf::hash<gameswf::texture_cache::key,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::key>>::set_raw_capacity(
    a1,
    v2);
}


// ===== 7c51ac gameswf::hash<gameswf::texture_cache::key,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::key>>::add(gameswf::texture_cache::key const&,gameswf::texture_cache::region * const&) =====
int __fastcall gameswf::hash<gameswf::texture_cache::key,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::key>>::add(
        _DWORD **a1,
        int *a2,
        _DWORD *a3)
{
  int v5; // r12
  int v6; // r3
  _DWORD *v7; // r4
  int v8; // r1
  int v9; // r2
  int v10; // r11
  int v11; // r0
  _DWORD *v12; // r8
  int v13; // r6
  int v14; // r7
  int v15; // r10
  int v16; // r3
  _DWORD *v17; // r10
  int v18; // r1
  int v19; // r9
  int *v20; // r9
  int v21; // r1
  int v22; // r2
  int v23; // r3
  int v24; // r1
  int v25; // r2
  int v26; // r3
  int v27; // r3
  int v28; // r1
  int v29; // r2
  int v30; // r3
  int v31; // r1
  int v32; // r2
  int v33; // r3
  int v34; // r1
  int v35; // r2
  int v36; // r3
  int result; // r0
  int v38; // r1
  int v39; // r2
  int v40; // r3

  gameswf::hash<gameswf::texture_cache::key,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::key>>::check_expand(a1);
  v5 = 5381;
  v6 = 16;
  ++**a1;
  do
  {
    --v6;
    v5 = 65600 * v5 + *((unsigned __int8 *)a2 + v6) - v5;
  }
  while ( v6 );
  v7 = *a1;
  if ( v5 == -1 )
    v5 = -32769;
  v8 = v7[1];
  v9 = v5 & v8;
  v10 = 4 * (v5 & v8) + 1;
  v11 = v7[2 * v10];
  v12 = &v7[2 * v10];
  if ( v11 == -2 )
  {
    v7[2 * v10] = -1;
    v12[1] = v5;
    result = *a2;
    v28 = a2[1];
    v29 = a2[2];
    v30 = a2[3];
    v12[2] = *a2;
    v12[3] = v28;
    v12[4] = v29;
    v12[5] = v30;
    v12[6] = *a3;
  }
  else
  {
    v13 = v12[1];
    if ( v13 == -1 )
    {
      v12[1] = v5;
      result = *a2;
      v38 = a2[1];
      v39 = a2[2];
      v40 = a2[3];
      v12[2] = *a2;
      v12[3] = v38;
      v12[4] = v39;
      v12[5] = v40;
      v12[6] = *a3;
    }
    else
    {
      v14 = v5 & v8;
      do
      {
        v14 = (v14 + 1) & v8;
        v15 = 4 * v14 + 1;
        v16 = v7[2 * v15];
        v17 = &v7[2 * v15];
      }
      while ( v16 != -2 );
      v18 = v8 & v13;
      if ( v18 == v9 )
      {
        *v17 = v11;
        v17[1] = v12[1];
        v31 = v12[3];
        v32 = v12[4];
        v33 = v12[5];
        v17[2] = v12[2];
        v17[3] = v31;
        v17[4] = v32;
        v17[5] = v33;
        v17[6] = v12[6];
        result = *a2;
        v34 = a2[1];
        v35 = a2[2];
        v36 = a2[3];
        v12[2] = *a2;
        v12[3] = v34;
        v12[4] = v35;
        v12[5] = v36;
        v12[6] = *a3;
        v7[2 * v10] = v14;
        v12[1] = v5;
      }
      else
      {
        do
        {
          v19 = 4 * v18 + 1;
          v18 = v7[2 * v19];
          v20 = &v7[2 * v19];
        }
        while ( v18 != v9 );
        *v17 = v11;
        v17[1] = v12[1];
        v21 = v12[3];
        v22 = v12[4];
        v23 = v12[5];
        v17[2] = v12[2];
        v17[3] = v21;
        v17[4] = v22;
        v17[5] = v23;
        v17[6] = v12[6];
        *v20 = v14;
        result = *a2;
        v24 = a2[1];
        v25 = a2[2];
        v26 = a2[3];
        v12[2] = *a2;
        v12[3] = v24;
        v12[4] = v25;
        v12[5] = v26;
        v27 = *a3;
        v12[1] = v5;
        v12[6] = v27;
        v7[2 * v10] = -1;
      }
    }
  }
  return result;
}


// ===== 7c536c gameswf::hash<gameswf::texture_cache::key,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::key>>::operator[](gameswf::texture_cache::key const&) =====
int __fastcall gameswf::hash<gameswf::texture_cache::key,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::key>>::operator[](
        int *a1,
        int *a2)
{
  int index; // r0
  int v6; // [sp+4h] [bp-8h] BYREF

  index = gameswf::hash<gameswf::texture_cache::key,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::key>>::find_index(
            a1,
            a2);
  if ( index < 0 )
  {
    v6 = 0;
    gameswf::hash<gameswf::texture_cache::key,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::key>>::add(
      (_DWORD **)a1,
      a2,
      &v6);
    index = gameswf::hash<gameswf::texture_cache::key,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::key>>::find_index(
              a1,
              a2);
  }
  return *a1 + 32 * index + 32;
}


// ===== 7c53c4 gameswf::bitmap_glyph_texture_cache::add_glyph_region(ushort,void *,int) =====
int __fastcall gameswf::bitmap_glyph_texture_cache::add_glyph_region(
        gameswf::bitmap_glyph_texture_cache *this,
        int a2,
        int a3,
        int a4)
{
  char *v8; // r8
  _QWORD *available_region; // r0
  int v11; // r9
  __int64 v12; // r2
  int v13; // r10
  int v14; // r6
  float v15; // r7
  float v16; // r0
  char *v17; // r8
  int v18; // r5
  char *v19; // r4
  int v20; // r1
  int v21; // r4
  char v22[20]; // [sp+14h] [bp-50h] BYREF
  float v23[4]; // [sp+28h] [bp-3Ch] BYREF
  int v24[4]; // [sp+38h] [bp-2Ch] BYREF
  int v25; // [sp+48h] [bp-1Ch] BYREF
  int v26; // [sp+4Ch] [bp-18h]
  int v27; // [sp+50h] [bp-14h]
  int v28; // [sp+54h] [bp-10h]
  int v29; // [sp+58h] [bp-Ch] BYREF
  int v30; // [sp+5Ch] [bp-8h] BYREF

  v8 = (char *)gameswf::texture_cache::lock(this);
  if ( !(*(int (__fastcall **)(int, int *, int, int, char *))(*(_DWORD *)a3 + 8))(a3, &v25, a2, a4, v22) )
    return 0;
  v30 = v26 + 1;
  v29 = v27 + 1;
  gameswf::texture_cache::get_region_size_requirement((gameswf::texture_cache *)&v30, &v29, (int *)(v26 + 1));
  available_region = (_QWORD *)gameswf::texture_cache::find_available_region(this, v30, v29);
  v11 = (int)available_region;
  if ( !available_region )
    return 0;
  v12 = *(_QWORD *)this + 1LL;
  *available_region = *(_QWORD *)this;
  v13 = 0;
  *(_QWORD *)this = v12;
  v24[0] = a3;
  v24[1] = a2 | ((unsigned __int8)a4 << 16);
  v24[2] = 0;
  v24[3] = 0;
  *(_DWORD *)gameswf::hash<gameswf::texture_cache::key,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::key>>::operator[](
               (int *)this + 12,
               v24) = available_region;
  gameswf::texture_cache::get_region_bounds((int)this, v11, v23);
  v14 = *((_DWORD *)this + 14);
  v15 = v23[2];
  v16 = (float)(v15 * (float)(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 13) + 36))(*((_DWORD *)this + 13)))
      * (float)v14;
  v17 = &v8[(float)(v16 + (float)((float)v14 * v23[0]))];
  v18 = v14 * (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 13) + 36))(*((_DWORD *)this + 13));
  if ( v29 > 0 )
  {
    v19 = v17;
    do
    {
      LC_API_MEMSET_0(v19, 0, v30 * v14);
      ++v13;
      v19 += v18;
    }
    while ( v29 > v13 );
  }
  if ( v27 > 0 )
  {
    v20 = v25;
    v21 = 0;
    while ( 1 )
    {
      memcpy(v17, (const void *)(v28 + v21 * v20), v26 * v14);
      ++v21;
      v17 += v18;
      if ( v27 <= v21 )
        break;
      v20 = v25;
    }
  }
  return 1;
}


// ===== 7c55d8 gameswf::bitmap_glyph_texture_cache::get_glyph_region(ushort,void *,int,gameswf::rect &) =====
float __fastcall gameswf::bitmap_glyph_texture_cache::get_glyph_region(
        gameswf::bitmap_glyph_texture_cache *this,
        int a2,
        int a3,
        int a4,
        gameswf::rect *a5)
{
  int *v9; // r10
  float result; // r0
  int v11; // r1
  _DWORD v12[5]; // [sp+10h] [bp-14h] BYREF

  v9 = (int *)((char *)this + 48);
  v12[0] = a3;
  v12[1] = a2 | ((unsigned __int8)a4 << 16);
  v12[2] = 0;
  v12[3] = 0;
  result = COERCE_FLOAT(
             gameswf::hash<gameswf::texture_cache::key,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::key>>::find_index(
               (int *)this + 12,
               v12));
  if ( result >= 0.0 )
    goto LABEL_2;
  if ( !gameswf::bitmap_glyph_texture_cache::add_glyph_region(this, a2, a3, a4) )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)gameswf::s_render_handler + 148))(gameswf::s_render_handler);
    gameswf::texture_cache::reset(this);
    gameswf::bitmap_glyph_texture_cache::add_glyph_region(this, a2, a3, a4);
  }
  result = COERCE_FLOAT(
             gameswf::hash<gameswf::texture_cache::key,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::key>>::find_index(
               v9,
               v12));
  if ( result >= 0.0 )
  {
LABEL_2:
    LODWORD(result) = *((_DWORD *)this + 12) + 32 * LODWORD(result);
    v11 = *(_DWORD *)(LODWORD(result) + 32);
    if ( v11 )
      return gameswf::texture_cache::get_region_bounds((int)this, v11, (float *)a5);
  }
  return result;
}


// ===== 7c56ec gameswf::hash<int,gameswf::glyph_entity *,gameswf::fixed_size_hash<int>>::set_raw_capacity(int) =====
void __fastcall gameswf::hash<int,gameswf::glyph_entity *,gameswf::fixed_size_hash<int>>::set_raw_capacity(
        _DWORD **a1,
        int a2)
{
  _DWORD *v2; // r8
  int v3; // r4
  _DWORD *v4; // r3
  int v5; // r5
  int v6; // r3
  _DWORD *v7; // r3
  int v8; // r7
  int v9; // r6
  int v10; // r4
  _DWORD *v11; // r5
  _DWORD v12[2]; // [sp+4h] [bp-8h] BYREF

  v2 = a1;
  if ( a2 <= 0 )
  {
LABEL_17:
    gameswf::hash<int,gameswf::glyph_entity *,gameswf::fixed_size_hash<int>>::clear(a1);
    return;
  }
  v3 = 1 << (int)(float)((float)(logf((float)(a2 - 1)) / 0.69315) + 1.0);
  v4 = (_DWORD *)*v2;
  if ( v3 < 4 )
    v3 = 4;
  if ( !v4 || v4[1] + 1 != v3 )
  {
    v5 = 0;
    v12[0] = gameswf::malloc_internal(16 * v3 + 8);
    *(_DWORD *)v12[0] = 0;
    *(_DWORD *)(v12[0] + 4) = v3 - 1;
    v6 = 8;
    do
    {
      ++v5;
      *(_DWORD *)(v12[0] + v6) = -2;
      v6 += 16;
    }
    while ( v3 > v5 );
    v7 = (_DWORD *)*v2;
    if ( *v2 )
    {
      v8 = v7[1];
      if ( v8 >= 0 )
      {
        v9 = 0;
        v10 = 2;
        do
        {
          ++v9;
          v11 = &v7[v10];
          if ( v7[v10] != -2 && v11[1] != -1 )
          {
            gameswf::hash<int,gameswf::glyph_entity *,gameswf::fixed_size_hash<int>>::add(v12, v11 + 2, v11 + 3);
            *v11 = -2;
            v11[1] = 0;
            v7 = (_DWORD *)*v2;
          }
          v10 += 4;
        }
        while ( v8 >= v9 );
      }
      gameswf::free_internal(v7);
    }
    a1 = (_DWORD **)v12;
    *v2 = v12[0];
    v12[0] = 0;
    goto LABEL_17;
  }
}


// ===== 7c5844 gameswf::hash<int,gameswf::glyph_entity *,gameswf::fixed_size_hash<int>>::check_expand(void) =====
void __fastcall gameswf::hash<int,gameswf::glyph_entity *,gameswf::fixed_size_hash<int>>::check_expand(_DWORD **a1)
{
  _DWORD *v1; // r3
  int v2; // r1

  v1 = *a1;
  if ( *a1 )
  {
    v2 = 2 * (v1[1] + 1);
    if ( 3 * *v1 <= v2 )
      return;
  }
  else
  {
    v2 = 8;
  }
  gameswf::hash<int,gameswf::glyph_entity *,gameswf::fixed_size_hash<int>>::set_raw_capacity(a1, v2);
}


// ===== 7c5878 gameswf::hash<int,gameswf::glyph_entity *,gameswf::fixed_size_hash<int>>::add(int const&,gameswf::glyph_entity * const&) =====
_DWORD *__fastcall gameswf::hash<int,gameswf::glyph_entity *,gameswf::fixed_size_hash<int>>::add(
        _DWORD **a1,
        _DWORD *a2,
        _DWORD *a3)
{
  int v6; // r2
  int v7; // r3
  _DWORD *result; // r0
  _DWORD *v9; // r3
  int v10; // r7
  int v11; // r6
  int v12; // r10
  int v13; // r9
  _DWORD *v14; // r8
  int v15; // r11
  int v16; // r1
  int v17; // r0
  int v18; // r12
  int v19; // r7
  int v20; // r11
  int *v21; // r11
  int v22; // r1

  gameswf::hash<int,gameswf::glyph_entity *,gameswf::fixed_size_hash<int>>::check_expand(a1);
  v6 = 5381;
  v7 = 4;
  ++**a1;
  do
  {
    --v7;
    result = (_DWORD *)*((unsigned __int8 *)a2 + v7);
    v6 = (int)&result[16400 * v6] - v6;
  }
  while ( v7 );
  v9 = *a1;
  if ( v6 == -1 )
    v6 = -32769;
  v10 = v9[1];
  v11 = v6 & v10;
  v12 = 2 * (v6 & v10) + 1;
  v13 = v9[2 * v12];
  v14 = &v9[2 * v12];
  if ( v13 == -2 )
  {
    v9[2 * v12] = -1;
LABEL_14:
    v14[1] = v6;
    v14[2] = *a2;
    v14[3] = *a3;
    return result;
  }
  v15 = v14[1];
  if ( v15 == -1 )
    goto LABEL_14;
  v16 = v6 & v10;
  do
  {
    v16 = (v16 + 1) & v10;
    v17 = 2 * v16 + 1;
    v18 = v9[2 * v17];
    result = &v9[2 * v17];
  }
  while ( v18 != -2 );
  v19 = v10 & v15;
  if ( v19 == v11 )
  {
    *result = v13;
    result[1] = v14[1];
    result[2] = v14[2];
    result[3] = v14[3];
    v14[2] = *a2;
    result = (_DWORD *)*a3;
    v14[3] = *a3;
    v9[2 * v12] = v16;
    v14[1] = v6;
  }
  else
  {
    do
    {
      v20 = 2 * v19 + 1;
      v19 = v9[2 * v20];
      v21 = &v9[2 * v20];
    }
    while ( v19 != v11 );
    *result = v13;
    result[1] = v14[1];
    result[2] = v14[2];
    result[3] = v14[3];
    *v21 = v16;
    v14[2] = *a2;
    v22 = *a3;
    v14[1] = v6;
    v14[3] = v22;
    v9[2 * v12] = -1;
  }
  return result;
}


// ===== 7c59dc gameswf::bitmap_font_entity::get_char_image(ushort,int,gameswf::rect *,float *) =====
int __fastcall gameswf::bitmap_font_entity::get_char_image(
        gameswf::bitmap_font_entity *this,
        int a2,
        int a3,
        gameswf::rect *a4,
        float *a5)
{
  _DWORD **v5; // r10
  int index; // r0
  float *v11; // r3
  float *v12; // r12
  int *v13; // r3
  int v14; // r0
  int v15; // r1
  int v16; // r2
  int v17; // r3
  int result; // r0
  const char *v19; // r1
  float *v20; // r0
  _DWORD v21[5]; // [sp+Ch] [bp-34h] BYREF
  _BYTE v22[4]; // [sp+20h] [bp-20h] BYREF
  int v23; // [sp+24h] [bp-1Ch]
  int v24; // [sp+28h] [bp-18h]
  int v25; // [sp+30h] [bp-10h] BYREF
  int v26; // [sp+34h] [bp-Ch] BYREF
  float *v27; // [sp+38h] [bp-8h] BYREF
  int v28; // [sp+3Ch] [bp-4h] BYREF

  v5 = (_DWORD **)((char *)this + 36);
  v28 = a2 | (a3 << 16);
  v27 = nullptr;
  index = gameswf::hash<int,gameswf::glyph_entity *,gameswf::fixed_size_hash<int>>::find_index((int *)this + 9, &v28);
  if ( index >= 0 )
  {
    v11 = *(float **)(*((_DWORD *)this + 9) + 16 * index + 20);
    v27 = v11;
    v12 = v11;
LABEL_3:
    v13 = (int *)(v11 + 2);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = v13[3];
    *(_DWORD *)a4 = v14;
    *((_DWORD *)a4 + 1) = v15;
    *((_DWORD *)a4 + 2) = v16;
    *((_DWORD *)a4 + 3) = v17;
    *a5 = v12[1];
    return *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 3) + 12) + 52);
  }
  result = (*(int (__fastcall **)(gameswf::bitmap_font_entity *, _BYTE *, int, int, _DWORD *))(*(_DWORD *)this + 8))(
             this,
             v22,
             a2,
             a3,
             v21);
  if ( result )
  {
    if ( !*(_DWORD *)(*((_DWORD *)this + 3) + 12) )
    {
      gameswf::log_error("bitmap texture cache not initialized\n", v19);
      return 0;
    }
    v20 = (float *)operator new(0x18u, 0);
    *v20 = 0.0;
    v20[5] = 0.0;
    v20[1] = 0.0;
    v20[2] = 0.0;
    v20[3] = 0.0;
    v20[4] = 0.0;
    v26 = v23 + 1;
    v25 = v24 + 1;
    v27 = v20;
    gameswf::texture_cache::get_region_size_requirement((gameswf::texture_cache *)&v26, &v25, (int *)(v24 + 1));
    v27[3] = (float)v23 / (float)v26;
    v27[5] = (float)v24 / (float)v25;
    v27[2] = (float)-v21[0] / (float)v21[2];
    v27[4] = (float)v21[1] / (float)v21[3];
    v27[2] = v27[2] * COERCE_FLOAT(*((_DWORD *)v27 + 3) + 0x80000000);
    v27[4] = v27[4] * v27[5];
    v27[1] = (float)v21[4] * 20.0;
    gameswf::hash<int,gameswf::glyph_entity *,gameswf::fixed_size_hash<int>>::add(v5, &v28, &v27);
    v12 = v27;
    v11 = v27;
    goto LABEL_3;
  }
  return result;
}


// ===== 7c5c10 gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::entry(gameswf::tu_stringi const&,gameswf::smart_ptr<gameswf::bitmap_font_entity> const&,int,int) =====
_DWORD *__fastcall gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::entry(
        _DWORD *a1,
        const gameswf::tu_string *a2,
        int *a3,
        int a4,
        int a5)
{
  int v7; // r0
  bool v8; // zf

  *a1 = a4;
  a1[1] = a5;
  gameswf::tu_string::tu_string((gameswf::tu_string *)(a1 + 2), a2);
  v7 = *a3;
  v8 = *a3 == 0;
  a1[7] = *a3;
  if ( !v8 )
    gameswf::ref_counted::add_ref(v7);
  return a1;
}


// ===== 7c5c4c gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::entry(gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry const&) =====
_DWORD *__fastcall gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::entry(
        _DWORD *a1,
        _DWORD *a2)
{
  int v4; // r0

  *a1 = *a2;
  a1[1] = a2[1];
  gameswf::tu_string::tu_string((gameswf::tu_string *)(a1 + 2), (const gameswf::tu_string *)(a2 + 2));
  v4 = a2[7];
  a1[7] = v4;
  if ( v4 )
    gameswf::ref_counted::add_ref(v4);
  return a1;
}


// ===== 7c5c90 gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(gameswf::tu_stringi const&,gameswf::smart_ptr<gameswf::bitmap_font_entity> const&) =====
void __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
        _DWORD **a1,
        const gameswf::tu_string *a2,
        int *a3)
{
  char *v6; // r12
  int v7; // lr
  int v8; // r4
  _DWORD *v9; // r6
  int v10; // r12
  int v11; // r2
  int v12; // r11
  int v13; // r3
  gameswf::ref_counted **v14; // r10
  gameswf::ref_counted *v15; // lr
  int v16; // r7
  int v17; // r0
  int v18; // r1
  _DWORD *v19; // r0
  int v20; // r3
  int v21; // r8
  int *v22; // r8
  int v23; // r3
  bool v24; // zf
  int v25; // r3
  int v26; // r2
  char *v27; // r3
  int v28; // r2
  int v29; // r1
  int v30; // r2

  gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::check_expand();
  ++**a1;
  v7 = *((_DWORD *)a2 + 4);
  if ( (v7 & 0xFFFFFF) == 0xFFFFFF )
  {
    v23 = *(char *)a2;
    v24 = v23 == -1;
    if ( v23 == -1 )
    {
      v25 = *((_DWORD *)a2 + 1);
    }
    else
    {
      v25 = v23 - 1;
      v6 = (char *)a2 + 1;
    }
    if ( v24 )
    {
      --v25;
      v6 = *((char **)a2 + 3);
    }
    if ( v25 > 0 )
    {
      v27 = &v6[v25];
      v28 = 5381;
      do
      {
        v29 = (unsigned __int8)*--v27;
        v30 = 33 * v28;
        if ( (unsigned __int8)(v29 - 65) <= 0x19u )
          v29 += 32;
        v28 = v29 ^ v30;
      }
      while ( v27 != v6 );
      v26 = v28 << 8 >> 8;
      v8 = v26;
    }
    else
    {
      v8 = 5381;
      v26 = 5381;
    }
    *((_DWORD *)a2 + 4) = v7 & 0xFF000000 | v26 & 0xFFFFFF;
  }
  else
  {
    v8 = v7 << 8 >> 8;
  }
  v9 = *a1;
  if ( v8 == -1 )
    v8 = -32769;
  v10 = v9[1];
  v11 = v8 & v10;
  v12 = 4 * (v8 & v10) + 1;
  v13 = v9[2 * v12];
  v14 = (gameswf::ref_counted **)&v9[2 * v12];
  if ( v13 == -2 )
  {
    gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::entry(
      &v9[2 * v12],
      a2,
      a3,
      -1,
      v8);
  }
  else
  {
    v15 = v14[1];
    if ( v15 == (gameswf::ref_counted *)-1 )
    {
      gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::entry(
        &v9[2 * v12],
        a2,
        a3,
        v13,
        v8);
    }
    else
    {
      v16 = v8 & v10;
      do
      {
        v16 = (v16 + 1) & v10;
        v17 = 4 * v16 + 1;
        v18 = v9[2 * v17];
        v19 = &v9[2 * v17];
      }
      while ( v18 != -2 );
      v20 = v10 & (unsigned int)v15;
      if ( (v10 & (unsigned int)v15) == v11 )
      {
        gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::entry(
          v19,
          &v9[2 * v12]);
        gameswf::tu_string::operator=((gameswf::tu_string *)(v14 + 2), (char *)a2);
        gameswf::smart_ptr<gameswf::bitmap_font_entity>::set_ref(v14 + 7, (gameswf::ref_counted *)*a3);
        v9[2 * v12] = v16;
        v14[1] = (gameswf::ref_counted *)v8;
      }
      else
      {
        do
        {
          v21 = 4 * v20 + 1;
          v20 = v9[2 * v21];
          v22 = &v9[2 * v21];
        }
        while ( v20 != v11 );
        gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::entry(
          v19,
          &v9[2 * v12]);
        *v22 = v16;
        gameswf::tu_string::operator=((gameswf::tu_string *)(v14 + 2), (char *)a2);
        gameswf::smart_ptr<gameswf::bitmap_font_entity>::set_ref(v14 + 7, (gameswf::ref_counted *)*a3);
        v14[1] = (gameswf::ref_counted *)v8;
        v9[2 * v12] = -1;
      }
    }
  }
}


// ===== 7c5e58 gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set_raw_capacity(int) =====
void __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set_raw_capacity(
        _DWORD **a1,
        int a2)
{
  _DWORD *v2; // r8
  int v3; // r4
  _DWORD *v4; // r3
  int v5; // r5
  int v6; // r3
  _DWORD *v7; // r0
  int v8; // r7
  int v9; // r4
  int v10; // r6
  _DWORD *v11; // r5
  _DWORD *v12[2]; // [sp+4h] [bp-8h] BYREF

  v2 = a1;
  if ( a2 <= 0 )
  {
LABEL_17:
    gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear(a1);
    return;
  }
  v3 = 1 << (int)(float)((float)(logf((float)(a2 - 1)) / 0.69315) + 1.0);
  v4 = (_DWORD *)*v2;
  if ( v3 < 4 )
    v3 = 4;
  if ( !v4 || v4[1] + 1 != v3 )
  {
    v5 = 0;
    v12[0] = gameswf::malloc_internal(32 * v3 + 8);
    *v12[0] = 0;
    v12[0][1] = v3 - 1;
    v6 = 2;
    do
    {
      ++v5;
      v12[0][v6] = -2;
      v6 += 8;
    }
    while ( v3 > v5 );
    v7 = (_DWORD *)*v2;
    if ( *v2 )
    {
      v8 = v7[1];
      if ( v8 >= 0 )
      {
        v9 = 2;
        v10 = 0;
        do
        {
          ++v10;
          v11 = &v7[v9];
          if ( v7[v9] != -2 && v11[1] != -1 )
          {
            gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
              v12,
              (const gameswf::tu_string *)(v11 + 2),
              v11 + 7);
            gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::entry::clear((int)v11);
            v7 = (_DWORD *)*v2;
          }
          v9 += 8;
        }
        while ( v8 >= v10 );
      }
      gameswf::free_internal(v7);
    }
    a1 = v12;
    *v2 = v12[0];
    v12[0] = nullptr;
    goto LABEL_17;
  }
}


// ===== 7c5fac gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::check_expand(void) =====
void __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::check_expand(
        _DWORD **a1)
{
  _DWORD *v1; // r3
  int v2; // r1

  v1 = *a1;
  if ( *a1 )
  {
    v2 = 2 * (v1[1] + 1);
    if ( 3 * *v1 <= v2 )
      return;
  }
  else
  {
    v2 = 8;
  }
  gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set_raw_capacity(
    a1,
    v2);
}


// ===== 7c5fe0 gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::operator[](gameswf::tu_stringi const&) =====
int __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::operator[](
        int *a1,
        const gameswf::tu_string *a2)
{
  int index; // r0
  gameswf::ref_counted *v6; // [sp+4h] [bp-8h] BYREF

  index = gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::find_index(
            a1,
            a2);
  if ( index < 0 )
  {
    v6 = nullptr;
    gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)a1,
      a2,
      (int *)&v6);
    if ( v6 )
      gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v6);
    index = gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::find_index(
              a1,
              a2);
  }
  return *a1 + 32 * index + 36;
}


// ===== 7c6048 gameswf::bitmap_glyph_provider::get_font_entity(gameswf::tu_string const&,bool,bool) =====
gameswf::ref_counted *__fastcall gameswf::bitmap_glyph_provider::get_font_entity(
        gameswf::bitmap_glyph_provider *this,
        const gameswf::tu_string *a2,
        int a3,
        int a4)
{
  int *v7; // r7
  int v8; // r9
  const char *v9; // r0
  int v10; // r9
  int v11; // r3
  int i; // r10
  int (__fastcall *v13)(gameswf::bitmap_glyph_provider *, _BYTE *); // r4
  gameswf::ref_counted *v14; // r0
  gameswf::ref_counted **v15; // r0
  gameswf::ref_counted *v16; // r8
  gameswf::ref_counted *v17; // r0
  int v19; // r2
  int v20; // r11
  const char *v21; // r0
  int v22; // r3
  gameswf::ref_counted *v24; // [sp+18h] [bp-174h] BYREF
  gameswf::ref_counted *v25; // [sp+1Ch] [bp-170h] BYREF
  char v26[256]; // [sp+20h] [bp-16Ch] BYREF
  _BYTE v27[8]; // [sp+120h] [bp-6Ch] BYREF
  void *v28; // [sp+12Ch] [bp-60h]
  _BYTE v29[8]; // [sp+134h] [bp-58h] BYREF
  void *v30; // [sp+140h] [bp-4Ch]
  _BYTE v31[8]; // [sp+148h] [bp-44h] BYREF
  void *v32; // [sp+154h] [bp-38h]
  void *v33[5]; // [sp+15Ch] [bp-30h] BYREF
  _BYTE v34[8]; // [sp+170h] [bp-1Ch] BYREF
  void *p; // [sp+17Ch] [bp-10h]

  gameswf::tu_string::tu_string((gameswf::tu_string *)v34, a2);
  if ( a3 )
    gameswf::tu_string::operator+=((gameswf::tu_string *)v34, "B");
  if ( a4 )
    gameswf::tu_string::operator+=((gameswf::tu_string *)v34, "I");
  v7 = (int *)((char *)this + 4);
  v25 = nullptr;
  gameswf::tu_string::tu_string((gameswf::tu_string *)v33, (const gameswf::tu_string *)v34);
  v8 = gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::get(
         (int *)this + 1,
         v33,
         &v25);
  if ( SLOBYTE(v33[0]) == -1 )
    gameswf::free_internal(v33[3]);
  if ( !v8 )
  {
    LC_API_MEMSET_0(v26, 0, 0x100u);
    if ( *(char *)a2 == -1 )
      v9 = *((const char **)a2 + 3);
    else
      v9 = (char *)a2 + 1;
    if ( get_fontfile(v9, a3, a4, v26, 256) && (LC_API_STRSTR_0(v26, ".fnt") || LC_API_STRSTR_0(v26, ".FNT")) )
    {
      v10 = *((_DWORD *)this + 1);
      if ( v10 )
      {
        v11 = *(_DWORD *)(v10 + 4);
        if ( v11 >= 0 )
        {
          v19 = 8;
          for ( i = 0; i <= v11; ++i )
          {
            if ( *(_DWORD *)(v10 + v19) != -2 && *(_DWORD *)(v10 + v19 + 4) != -1 )
              break;
            v19 += 32;
          }
        }
        else
        {
          i = 0;
        }
        if ( this != (gameswf::bitmap_glyph_provider *)-4 )
        {
          v20 = *(_DWORD *)(v10 + 4);
          while ( v20 >= i )
          {
            v16 = *(gameswf::ref_counted **)(v10 + 32 * i + 36);
            if ( v16 )
            {
              v21 = *((char *)v16 + 16) == -1 ? *((const char **)v16 + 7) : (char *)v16 + 17;
              if ( !LC_API_STRCMP_0(v21, v26) )
              {
                gameswf::tu_string::tu_string((gameswf::tu_string *)v31, (const gameswf::tu_string *)v34);
                v24 = v16;
                gameswf::ref_counted::add_ref((int)v16);
                gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
                  (_DWORD **)v7,
                  (const gameswf::tu_string *)v31,
                  (int *)&v24);
                if ( v24 )
                  gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v24);
                if ( v31[0] == -1 )
                  gameswf::free_internal(v32);
                v17 = v25;
                goto LABEL_24;
              }
            }
            if ( ++i <= v20 )
            {
              v22 = 32 * i + 8;
              do
              {
                if ( *(_DWORD *)(v10 + v22) != -2 && *(_DWORD *)(v10 + v22 + 4) != -1 )
                  break;
                ++i;
                v22 += 32;
              }
              while ( i <= v20 );
            }
          }
        }
      }
      v13 = *(int (__fastcall **)(gameswf::bitmap_glyph_provider *, _BYTE *))(*(_DWORD *)this + 8);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v29, v26);
      v14 = (gameswf::ref_counted *)v13(this, v29);
      gameswf::smart_ptr<gameswf::bitmap_font_entity>::set_ref(&v25, v14);
      if ( v29[0] == -1 )
        gameswf::free_internal(v30);
    }
    gameswf::tu_string::tu_string((gameswf::tu_string *)v27, (const gameswf::tu_string *)v34);
    v15 = (gameswf::ref_counted **)gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::operator[](
                                     v7,
                                     (const gameswf::tu_string *)v27);
    gameswf::smart_ptr<gameswf::bitmap_font_entity>::set_ref(v15, v25);
    if ( v27[0] == -1 )
      gameswf::free_internal(v28);
  }
  v16 = v25;
  v17 = v25;
LABEL_24:
  if ( v17 )
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v17);
  if ( v34[0] == -1 )
    gameswf::free_internal(p);
  return v16;
}


// ===== 7c63f8 gameswf::bitmap_glyph_provider::~bitmap_glyph_provider() =====
void __fastcall gameswf::bitmap_glyph_provider::~bitmap_glyph_provider(gameswf::bitmap_glyph_provider *this)
{
  _DWORD **v2; // r4
  gameswf::texture_cache *v3; // r0
  void *v4; // r6

  *(_DWORD *)this = off_991388;
  v2 = (_DWORD **)((char *)this + 4);
  gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear((_DWORD **)this + 1);
  v3 = *((gameswf::texture_cache **)this + 3);
  if ( v3 )
  {
    gameswf::texture_cache::reset(v3);
    v4 = *((void **)this + 3);
    if ( v4 )
    {
      gameswf::texture_cache::~texture_cache(*((gameswf::texture_cache **)this + 3));
      gameswf::free_internal(v4);
    }
  }
  gameswf::hash<gameswf::tu_stringi,gameswf::smart_ptr<gameswf::bitmap_font_entity>,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear(v2);
}


// ===== 7c646c gameswf::bitmap_glyph_provider::~bitmap_glyph_provider() =====
void __fastcall gameswf::bitmap_glyph_provider::~bitmap_glyph_provider(gameswf::bitmap_glyph_provider *this)
{
  gameswf::bitmap_glyph_provider::~bitmap_glyph_provider(this);
  LC_API_FREE_0(this);
}


// ===== 7c6488 gameswf::default_bitmap_font_entity::~default_bitmap_font_entity() =====
void __fastcall gameswf::default_bitmap_font_entity::~default_bitmap_font_entity(
        gameswf::default_bitmap_font_entity *this)
{
  void **v1; // r5
  void *v3; // r5
  int v4; // r3
  _DWORD *v5; // r0
  int v6; // r2

  v1 = *((void ***)this + 23);
  *(_DWORD *)this = off_9913A0;
  if ( v1 )
  {
    gameswf::membuf::~membuf(v1);
    gameswf::free_internal(v1);
  }
  v3 = *((void **)this + 24);
  if ( v3 )
  {
    gameswf::tu_file::~tu_file(*((gameswf::tu_file **)this + 24));
    gameswf::free_internal(v3);
  }
  gameswf::membuf::~membuf((void **)this + 19);
  gameswf::membuf::~membuf((void **)this + 15);
  v4 = *((_DWORD *)this + 12);
  v5 = (_DWORD *)((char *)this + 44);
  if ( v4 < 0 )
  {
    v6 = 4 * v4;
    do
    {
      ++v4;
      *(_DWORD *)(*v5 + v6) = 0;
      v6 += 4;
    }
    while ( v4 );
  }
  *((_DWORD *)this + 12) = 0;
  gameswf::array<unsigned int>::reserve((int)v5, 0);
  gameswf::bitmap_font_entity::~bitmap_font_entity(this);
}


// ===== 7c6554 gameswf::default_bitmap_font_entity::~default_bitmap_font_entity() =====
void __fastcall gameswf::default_bitmap_font_entity::~default_bitmap_font_entity(
        gameswf::default_bitmap_font_entity *this)
{
  gameswf::default_bitmap_font_entity::~default_bitmap_font_entity(this);
  LC_API_FREE_0(this);
}


// ===== 7c6570 gameswf::default_bitmap_font_entity::~default_bitmap_font_entity() =====
void __fastcall gameswf::default_bitmap_font_entity::~default_bitmap_font_entity(
        gameswf::default_bitmap_font_entity *this)
{
  void **v1; // r5
  void *v3; // r5
  int v4; // r3
  _DWORD *v5; // r0
  int v6; // r2

  v1 = *((void ***)this + 23);
  *(_DWORD *)this = off_9913A0;
  if ( v1 )
  {
    gameswf::membuf::~membuf(v1);
    gameswf::free_internal(v1);
  }
  v3 = *((void **)this + 24);
  if ( v3 )
  {
    gameswf::tu_file::~tu_file(*((gameswf::tu_file **)this + 24));
    gameswf::free_internal(v3);
  }
  gameswf::membuf::~membuf((void **)this + 19);
  gameswf::membuf::~membuf((void **)this + 15);
  v4 = *((_DWORD *)this + 12);
  v5 = (_DWORD *)((char *)this + 44);
  if ( v4 < 0 )
  {
    v6 = 4 * v4;
    do
    {
      ++v4;
      *(_DWORD *)(*v5 + v6) = 0;
      v6 += 4;
    }
    while ( v4 );
  }
  *((_DWORD *)this + 12) = 0;
  gameswf::array<unsigned int>::reserve((int)v5, 0);
  gameswf::bitmap_font_entity::~bitmap_font_entity(this);
}


// ===== 7c663c gameswf::default_bitmap_font_entity::default_bitmap_font_entity(gameswf::bitmap_glyph_provider *,gameswf::tu_string const&) =====
gameswf::default_bitmap_font_entity *__fastcall gameswf::default_bitmap_font_entity::default_bitmap_font_entity(
        gameswf::default_bitmap_font_entity *this,
        gameswf::bitmap_glyph_provider *a2,
        const gameswf::tu_string *a3)
{
  unsigned int v6; // r3
  const char *v7; // r7
  gameswf::tu_file *v8; // r6
  int v9; // r6
  int v10; // r7
  float v11; // r0
  gameswf::membuf *v13; // r5
  int v14; // r1
  void *v15; // r5

  gameswf::ref_counted::ref_counted(this);
  v6 = *((_DWORD *)this + 8) & 0xFF000000 | 0xFFFFFF;
  *(_DWORD *)this = off_9913A0;
  *((_DWORD *)this + 8) = v6;
  *((_DWORD *)this + 3) = a2;
  *((_BYTE *)this + 35) = HIBYTE(v6) & 0xFE;
  *((_BYTE *)this + 16) = 1;
  *((_BYTE *)this + 17) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_BYTE *)this + 56) = 0;
  gameswf::membuf::membuf((int)this + 60);
  gameswf::membuf::membuf((int)this + 76);
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 23) = 0;
  gameswf::tu_string::operator=((gameswf::default_bitmap_font_entity *)((char *)this + 16), (char *)a3);
  *((_DWORD *)this + 10) = 1065353216;
  if ( *(char *)a3 == -1 )
    v7 = *((const char **)a3 + 3);
  else
    v7 = (char *)a3 + 1;
  v8 = (gameswf::tu_file *)operator new(0x28u, 0);
  gameswf::tu_file::tu_file(v8, v7, "rb");
  *((_DWORD *)this + 24) = v8;
  if ( *(_DWORD *)v8 )
  {
    (*((void (__fastcall **)(_DWORD))v8 + 5))(*(_DWORD *)v8);
    v9 = (*(int (__fastcall **)(_DWORD))(*((_DWORD *)this + 24) + 24))(**((_DWORD **)this + 24));
    (*(void (__fastcall **)(_DWORD, _DWORD))(*((_DWORD *)this + 24) + 16))(0, **((_DWORD **)this + 24));
    gameswf::membuf::resize((gameswf::default_bitmap_font_entity *)((char *)this + 76), (gameswf::membuf *)&word_28);
    gameswf::tu_file::read_fully(
      *((gameswf::tu_file **)this + 24),
      (gameswf::default_bitmap_font_entity *)((char *)this + 76),
      -1);
    v10 = *((_DWORD *)this + 21);
    v11 = (float)_byteswap_ulong(*(_DWORD *)(v10 + 28));
    *((float *)this + 10) = v11 * (float)(1024.0 / (float)(v11 * 20.0));
    gameswf::membuf::resize(
      (gameswf::default_bitmap_font_entity *)((char *)this + 76),
      (gameswf::membuf *)(4 * (_byteswap_ulong(*(_DWORD *)(v10 + 12)) + 11)));
    (*(void (__fastcall **)(_DWORD, _DWORD))(*((_DWORD *)this + 24) + 16))(0, **((_DWORD **)this + 24));
    gameswf::tu_file::read_fully(
      *((gameswf::tu_file **)this + 24),
      (gameswf::default_bitmap_font_entity *)((char *)this + 76),
      -1);
    if ( *(_BYTE *)(*((_DWORD *)this + 3) + 8) )
    {
      v13 = (gameswf::membuf *)operator new(0x10u, 0);
      gameswf::membuf::membuf((int)v13);
      v14 = *((_DWORD *)this + 19);
      *((_DWORD *)this + 23) = v13;
      gameswf::membuf::resize(v13, (gameswf::membuf *)(v9 - v14));
      gameswf::tu_file::read_fully(*((gameswf::tu_file **)this + 24), *((gameswf::membuf **)this + 23), -1);
      v15 = *((void **)this + 24);
      if ( v15 )
      {
        gameswf::tu_file::~tu_file(*((gameswf::tu_file **)this + 24));
        gameswf::free_internal(v15);
      }
      *((_DWORD *)this + 24) = 0;
      return this;
    }
    else
    {
      return this;
    }
  }
  else
  {
    gameswf::tu_file::~tu_file(v8);
    gameswf::free_internal(v8);
    *((_DWORD *)this + 24) = 0;
    return this;
  }
}


// ===== 7c68c4 gameswf::default_bitmap_font_entity::default_bitmap_font_entity(gameswf::bitmap_glyph_provider *,gameswf::tu_string const&) =====
gameswf::default_bitmap_font_entity *__fastcall gameswf::default_bitmap_font_entity::default_bitmap_font_entity(
        gameswf::default_bitmap_font_entity *this,
        gameswf::bitmap_glyph_provider *a2,
        const gameswf::tu_string *a3)
{
  unsigned int v6; // r3
  const char *v7; // r7
  gameswf::tu_file *v8; // r6
  int v9; // r6
  int v10; // r7
  float v11; // r0
  gameswf::membuf *v13; // r5
  int v14; // r1
  void *v15; // r5

  gameswf::ref_counted::ref_counted(this);
  v6 = *((_DWORD *)this + 8) & 0xFF000000 | 0xFFFFFF;
  *(_DWORD *)this = off_9913A0;
  *((_DWORD *)this + 8) = v6;
  *((_DWORD *)this + 3) = a2;
  *((_BYTE *)this + 35) = HIBYTE(v6) & 0xFE;
  *((_BYTE *)this + 16) = 1;
  *((_BYTE *)this + 17) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_BYTE *)this + 56) = 0;
  gameswf::membuf::membuf((int)this + 60);
  gameswf::membuf::membuf((int)this + 76);
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 23) = 0;
  gameswf::tu_string::operator=((gameswf::default_bitmap_font_entity *)((char *)this + 16), (char *)a3);
  *((_DWORD *)this + 10) = 1065353216;
  if ( *(char *)a3 == -1 )
    v7 = *((const char **)a3 + 3);
  else
    v7 = (char *)a3 + 1;
  v8 = (gameswf::tu_file *)operator new(0x28u, 0);
  gameswf::tu_file::tu_file(v8, v7, "rb");
  *((_DWORD *)this + 24) = v8;
  if ( *(_DWORD *)v8 )
  {
    (*((void (__fastcall **)(_DWORD))v8 + 5))(*(_DWORD *)v8);
    v9 = (*(int (__fastcall **)(_DWORD))(*((_DWORD *)this + 24) + 24))(**((_DWORD **)this + 24));
    (*(void (__fastcall **)(_DWORD, _DWORD))(*((_DWORD *)this + 24) + 16))(0, **((_DWORD **)this + 24));
    gameswf::membuf::resize((gameswf::default_bitmap_font_entity *)((char *)this + 76), (gameswf::membuf *)&word_28);
    gameswf::tu_file::read_fully(
      *((gameswf::tu_file **)this + 24),
      (gameswf::default_bitmap_font_entity *)((char *)this + 76),
      -1);
    v10 = *((_DWORD *)this + 21);
    v11 = (float)_byteswap_ulong(*(_DWORD *)(v10 + 28));
    *((float *)this + 10) = v11 * (float)(1024.0 / (float)(v11 * 20.0));
    gameswf::membuf::resize(
      (gameswf::default_bitmap_font_entity *)((char *)this + 76),
      (gameswf::membuf *)(4 * (_byteswap_ulong(*(_DWORD *)(v10 + 12)) + 11)));
    (*(void (__fastcall **)(_DWORD, _DWORD))(*((_DWORD *)this + 24) + 16))(0, **((_DWORD **)this + 24));
    gameswf::tu_file::read_fully(
      *((gameswf::tu_file **)this + 24),
      (gameswf::default_bitmap_font_entity *)((char *)this + 76),
      -1);
    if ( *(_BYTE *)(*((_DWORD *)this + 3) + 8) )
    {
      v13 = (gameswf::membuf *)operator new(0x10u, 0);
      gameswf::membuf::membuf((int)v13);
      v14 = *((_DWORD *)this + 19);
      *((_DWORD *)this + 23) = v13;
      gameswf::membuf::resize(v13, (gameswf::membuf *)(v9 - v14));
      gameswf::tu_file::read_fully(*((gameswf::tu_file **)this + 24), *((gameswf::membuf **)this + 23), -1);
      v15 = *((void **)this + 24);
      if ( v15 )
      {
        gameswf::tu_file::~tu_file(*((gameswf::tu_file **)this + 24));
        gameswf::free_internal(v15);
      }
      *((_DWORD *)this + 24) = 0;
      return this;
    }
    else
    {
      return this;
    }
  }
  else
  {
    gameswf::tu_file::~tu_file(v8);
    gameswf::free_internal(v8);
    *((_DWORD *)this + 24) = 0;
    return this;
  }
}


// ===== 7c6b4c gameswf::button_character_instance::has_keypress_event(void) =====
int __fastcall gameswf::button_character_instance::has_keypress_event(gameswf::button_character_instance *this)
{
  int v1; // r3
  int v2; // r0
  _DWORD *v3; // r12
  int v4; // r3
  int v5; // r2
  int v6; // r1

  v1 = *((_DWORD *)this + 40);
  v2 = *(_DWORD *)(v1 + 56);
  if ( v2 <= 0 )
    return 0;
  v3 = *(_DWORD **)(v1 + 52);
  v4 = *v3 & 0xFE00;
  if ( !v4 )
  {
    v5 = 5;
    while ( ++v4 != v2 )
    {
      v6 = v3[v5];
      v5 += 5;
      if ( (v6 & 0xFE00) != 0 )
        return 1;
    }
    return 0;
  }
  return 1;
}


// ===== 7c6ba0 gameswf::button_character_instance::hit_test(float,float) =====
bool __fastcall gameswf::button_character_instance::hit_test(
        gameswf::button_character_instance *this,
        float a2,
        float a3)
{
  return (*(int (__fastcall **)(gameswf::button_character_instance *, _DWORD, _DWORD))(*(_DWORD *)this + 104))(
           this,
           LODWORD(a2),
           LODWORD(a3)) != 0;
}


// ===== 7c6bbc gameswf::button_character_instance::can_handle_mouse_event(void) =====
int __fastcall gameswf::button_character_instance::can_handle_mouse_event(gameswf::button_character_instance *this)
{
  return 1;
}


// ===== 7c6bc4 gameswf::button_character_instance::get_character_def(void) =====
int __fastcall gameswf::button_character_instance::get_character_def(gameswf::button_character_instance *this)
{
  return *((_DWORD *)this + 40);
}


// ===== 7c6bcc gameswf::button_character_instance::get_bound(gameswf::rect *) =====
float __fastcall gameswf::button_character_instance::get_bound(float this, gameswf::rect *a2)
{
  float v2; // r4
  int v3; // r5
  float *v5; // r12
  float v6; // r0
  float v7; // r1
  float v8; // r2
  float v9; // r3
  float v10; // r1
  int v11; // r10
  int v12; // r8
  int v13; // r3
  int v14; // r2
  _BYTE *v15; // r1
  float v16[6]; // [sp+0h] [bp-28h] BYREF
  float v17[4]; // [sp+18h] [bp-10h] BYREF

  v2 = this;
  v3 = *(_DWORD *)(*(_DWORD *)(LODWORD(this) + 160) + 40);
  if ( v3 )
  {
    *((_DWORD *)a2 + 2) = 2139095039;
    *((_DWORD *)a2 + 3) = -8388609;
    *(_DWORD *)a2 = 2139095039;
    *((_DWORD *)a2 + 1) = -8388609;
    v5 = *(float **)(LODWORD(this) + 76);
    v6 = *v5;
    v7 = v5[1];
    v8 = v5[2];
    v9 = v5[3];
    v5 += 4;
    v16[0] = v6;
    v16[1] = v7;
    v16[2] = v8;
    v16[3] = v9;
    this = *v5;
    v10 = v5[1];
    v16[4] = *v5;
    v16[5] = v10;
    if ( v3 > 0 )
    {
      v11 = 0;
      v12 = 0;
      while ( 1 )
      {
        while ( 1 )
        {
          v13 = *(_DWORD *)(*(_DWORD *)(LODWORD(v2) + 164) + 4 * v12);
          if ( !v13 )
            goto LABEL_6;
          v14 = *(_DWORD *)(LODWORD(v2) + 188);
          v15 = (_BYTE *)(*(_DWORD *)(*(_DWORD *)(LODWORD(v2) + 160) + 36) + v11);
          if ( v14 )
            break;
          if ( v15[5] )
            goto LABEL_5;
LABEL_6:
          ++v12;
          v11 += 100;
          if ( v12 == v3 )
            return this;
        }
        if ( v14 == 1 )
          break;
        if ( v14 != 2 )
          goto LABEL_6;
        if ( v15[4] )
          goto LABEL_5;
        ++v12;
        v11 += 100;
        if ( v12 == v3 )
          return this;
      }
      if ( !v15[3] )
        goto LABEL_6;
LABEL_5:
      (*(void (__fastcall **)(_DWORD, float *))(*(_DWORD *)v13 + 300))(
        *(_DWORD *)(*(_DWORD *)(LODWORD(v2) + 164) + 4 * v12),
        v17);
      gameswf::matrix::transform(v16, v17);
      LODWORD(this) = gameswf::rect::expand_to_rect((float *)a2, v17);
      goto LABEL_6;
    }
  }
  return this;
}


// ===== 7c6cec gameswf::button_character_instance::display(void) =====
int __fastcall gameswf::button_character_instance::display(int this)
{
  int v1; // r2
  gameswf::character *v2; // r6
  int v3; // r5
  int v4; // r4
  int v5; // r3
  int v6; // r1
  int v7; // r3

  v1 = *(_DWORD *)(this + 160);
  v2 = (gameswf::character *)this;
  if ( *(int *)(v1 + 40) > 0 )
  {
    v3 = 0;
    v4 = 0;
    while ( 1 )
    {
      while ( 1 )
      {
        this = *(_DWORD *)(v1 + 36);
        v5 = *(_DWORD *)(*((_DWORD *)v2 + 41) + 4 * v4);
        if ( !v5 )
          goto LABEL_5;
        v6 = *((_DWORD *)v2 + 47);
        this += v3;
        if ( v6 )
          break;
        if ( *(_BYTE *)(this + 5) )
          goto LABEL_4;
LABEL_5:
        ++v4;
        v3 += 100;
        if ( v4 >= *(_DWORD *)(v1 + 40) )
          goto LABEL_12;
      }
      if ( v6 == 1 )
        break;
      if ( v6 != 2 )
        goto LABEL_5;
      if ( *(_BYTE *)(this + 4) )
        goto LABEL_4;
      ++v4;
      v3 += 100;
      if ( v4 >= *(_DWORD *)(v1 + 40) )
        goto LABEL_12;
    }
    if ( !*(_BYTE *)(this + 3) )
      goto LABEL_5;
LABEL_4:
    this = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v5 + 288))(*(_DWORD *)(*((_DWORD *)v2 + 41) + 4 * v4));
    v1 = *((_DWORD *)v2 + 40);
    goto LABEL_5;
  }
LABEL_12:
  v7 = *((_DWORD *)v2 + 21);
  if ( v7 )
  {
    if ( *(_DWORD *)(v7 + 96) )
      return gameswf::character::do_display_callback(v2);
  }
  return this;
}


// ===== 7c6dd0 gameswf::button_character_instance::execute_frame_tags(int,bool) =====
void __fastcall gameswf::button_character_instance::execute_frame_tags(
        gameswf::button_character_instance *this,
        int a2,
        int a3)
{
  int v6; // r0
  int v7; // r4
  int v8; // r3

  if ( this )
    gameswf::ref_counted::add_ref((int)this);
  v6 = *((_DWORD *)this + 40);
  if ( *(int *)(v6 + 40) > 0 )
  {
    v7 = 0;
    do
    {
      v8 = *(_DWORD *)(*((_DWORD *)this + 41) + 4 * v7++);
      if ( v8 )
      {
        (*(void (__fastcall **)(int, int, int))(*(_DWORD *)v8 + 200))(v8, a2, a3);
        v6 = *((_DWORD *)this + 40);
      }
    }
    while ( v7 < *(_DWORD *)(v6 + 40) );
  }
  if ( this )
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))this);
}


// ===== 7c6e50 gameswf::button_character_instance::get_topmost_mouse_entity(float,float) =====
gameswf::button_character_instance *__fastcall gameswf::button_character_instance::get_topmost_mouse_entity(
        gameswf::button_character_instance *this,
        float a2,
        float a3)
{
  gameswf::matrix *v5; // r0
  int v6; // r3
  int v7; // r5
  int i; // r6
  int v9; // r4
  int v10; // [sp+0h] [bp-18h] BYREF
  int v11; // [sp+4h] [bp-14h]
  _DWORD v12[2]; // [sp+8h] [bp-10h] BYREF
  _DWORD v13[2]; // [sp+10h] [bp-8h] BYREF

  if ( *((_BYTE *)this + 155) )
  {
    v5 = *((gameswf::matrix **)this + 19);
    *(float *)&v12[1] = a3;
    *(float *)v12 = a2;
    v13[0] = 0;
    v13[1] = 0;
    gameswf::matrix::transform_by_inverse(v5, (gameswf::point *)v13, (const gameswf::point *)v12);
    v6 = *((_DWORD *)this + 40);
    if ( *(int *)(v6 + 40) > 0 )
    {
      v7 = 0;
      for ( i = 0; i < *(_DWORD *)(v6 + 40); ++i )
      {
        v9 = *(_DWORD *)(v6 + 36) + v7;
        if ( *(int *)(v9 + 8) >= 0 && *(_BYTE *)(v9 + 2) )
        {
          v10 = 0;
          v11 = 0;
          gameswf::matrix::transform_by_inverse(
            (gameswf::matrix *)(v9 + 20),
            (gameswf::point *)&v10,
            (const gameswf::point *)v13);
          if ( (*(int (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(v9 + 12) + 16))(*(_DWORD *)(v9 + 12), v10, v11) )
            return this;
          v6 = *((_DWORD *)this + 40);
        }
        v7 += 100;
      }
    }
  }
  return nullptr;
}


// ===== 7c6f40 gameswf::button_character_instance::advance(float) =====
int __fastcall gameswf::button_character_instance::advance(gameswf::button_character_instance *this, float a2)
{
  char *world_matrix; // r0
  float v5; // r1
  float v6; // r2
  float v7; // r3
  float *v8; // r12
  int result; // r0
  float v10; // r1
  int v11; // r9
  int v12; // r6
  int v13; // r4
  int v14; // r0
  int v15; // r12
  int v16; // r7
  _BYTE *v17; // r9
  int v18; // r3
  float v19[6]; // [sp+0h] [bp-34h] BYREF
  float v20; // [sp+18h] [bp-1Ch]
  float v21; // [sp+1Ch] [bp-18h]
  float v22; // [sp+20h] [bp-14h]
  float v23; // [sp+24h] [bp-10h]
  float v24; // [sp+28h] [bp-Ch]
  float v25; // [sp+2Ch] [bp-8h]

  gameswf::character::do_mouse_drag(this);
  world_matrix = gameswf::character::get_world_matrix(this);
  v5 = *((float *)world_matrix + 1);
  v6 = *((float *)world_matrix + 2);
  v7 = *((float *)world_matrix + 3);
  v8 = (float *)(world_matrix + 16);
  v20 = *(float *)world_matrix;
  v21 = v5;
  v22 = v6;
  v23 = v7;
  result = *((_DWORD *)world_matrix + 4);
  v10 = v8[1];
  v11 = *((_DWORD *)this + 40);
  v24 = *v8;
  v25 = v10;
  if ( *(int *)(v11 + 40) > 0 )
  {
    v12 = 0;
    v13 = 0;
    do
    {
      while ( 1 )
      {
        v15 = *(_DWORD *)(v11 + 36);
        v16 = 4 * v13;
        if ( !*(_DWORD *)(*((_DWORD *)this + 41) + 4 * v13) )
          goto LABEL_5;
        v19[0] = v20;
        v19[1] = v21;
        v19[2] = v22;
        v19[3] = v23;
        v17 = (_BYTE *)(v15 + v12);
        v19[4] = v24;
        v19[5] = v25;
        gameswf::matrix::concatenate(v19, (float *)(v15 + v12 + 20));
        v18 = *((_DWORD *)this + 47);
        if ( v18 )
          break;
        if ( !v17[5] )
          goto LABEL_11;
LABEL_4:
        v14 = *(_DWORD *)(*((_DWORD *)this + 41) + 4 * v13);
        result = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v14 + 92))(v14, LODWORD(a2));
        v11 = *((_DWORD *)this + 40);
LABEL_5:
        ++v13;
        v12 += 100;
        if ( v13 >= *(_DWORD *)(v11 + 40) )
          return result;
      }
      if ( v18 != 1 )
      {
        if ( v18 != 2 || !v17[4] )
          goto LABEL_11;
        goto LABEL_4;
      }
      if ( v17[3] )
        goto LABEL_4;
LABEL_11:
      ++v13;
      v12 += 100;
      result = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(*((_DWORD *)this + 41) + v16) + 68))(*(_DWORD *)(*((_DWORD *)this + 41) + v16));
      v11 = *((_DWORD *)this + 40);
    }
    while ( v13 < *(_DWORD *)(v11 + 40) );
  }
  return result;
}


// ===== 7c708c gameswf::button_record::button_record(gameswf::button_record const&) =====
int __fastcall gameswf::button_record::button_record(int a1, int a2)
{
  _DWORD *v2; // lr
  _DWORD *v3; // r4
  int *v6; // r12
  int *v7; // r8
  int v8; // r5
  int v9; // r0
  int v10; // r1
  int v11; // r2
  int v12; // r3
  int v13; // r1
  int v14; // r0
  int v15; // r1
  int v16; // r2
  int v17; // r3
  int v18; // r1
  int v19; // r2
  int v20; // r3
  int v21; // r3
  int v22; // r8
  int *v23; // r12
  int *v24; // r4
  int v25; // r0
  int v26; // r1
  int v27; // r2
  int v28; // r3
  int v29; // r0
  int v30; // r1
  int v31; // r2
  int v32; // r3
  int v33; // r1
  int v34; // r2

  v2 = (_DWORD *)(a1 + 20);
  v3 = (_DWORD *)(a2 + 20);
  *(_BYTE *)a1 = *(_BYTE *)a2;
  *(_BYTE *)(a1 + 1) = *(_BYTE *)(a2 + 1);
  v6 = (int *)(a1 + 44);
  v7 = (int *)(a2 + 44);
  *(_BYTE *)(a1 + 2) = *(_BYTE *)(a2 + 2);
  v8 = 0;
  *(_BYTE *)(a1 + 3) = *(_BYTE *)(a2 + 3);
  *(_BYTE *)(a1 + 4) = *(_BYTE *)(a2 + 4);
  *(_BYTE *)(a1 + 5) = *(_BYTE *)(a2 + 5);
  *(_DWORD *)(a1 + 8) = *(_DWORD *)(a2 + 8);
  *(_DWORD *)(a1 + 12) = *(_DWORD *)(a2 + 12);
  *(_DWORD *)(a1 + 16) = *(_DWORD *)(a2 + 16);
  v9 = *(_DWORD *)(a2 + 20);
  v10 = *(_DWORD *)(a2 + 24);
  v11 = v3[2];
  v12 = v3[3];
  v3 += 4;
  *v2 = v9;
  v2[1] = v10;
  v2[2] = v11;
  v2[3] = v12;
  v2 += 4;
  v13 = v3[1];
  *v2 = *v3;
  v2[1] = v13;
  v14 = *v7;
  v15 = v7[1];
  v16 = v7[2];
  v17 = v7[3];
  v7 += 4;
  *v6 = v14;
  v6[1] = v15;
  v6[2] = v16;
  v6[3] = v17;
  v6 += 4;
  v18 = v7[1];
  v19 = v7[2];
  v20 = v7[3];
  *v6 = *v7;
  v6[1] = v18;
  v6[2] = v19;
  v6[3] = v20;
  v21 = *(_DWORD *)(a2 + 76);
  *(_DWORD *)(a1 + 80) = 0;
  *(_DWORD *)(a1 + 84) = 0;
  *(_DWORD *)(a1 + 76) = v21;
  *(_DWORD *)(a1 + 88) = 0;
  *(_BYTE *)(a1 + 92) = 0;
  gameswf::array<gameswf::filter>::resize((_DWORD *)(a1 + 80), *(_DWORD *)(a2 + 84));
  if ( *(int *)(a1 + 84) > 0 )
  {
    v22 = 0;
    do
    {
      ++v22;
      v23 = (int *)(*(_DWORD *)(a1 + 80) + v8);
      v24 = (int *)(*(_DWORD *)(a2 + 80) + v8);
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      v28 = v24[3];
      v24 += 4;
      *v23 = v25;
      v23[1] = v26;
      v23[2] = v27;
      v23[3] = v28;
      v23 += 4;
      v29 = *v24;
      v30 = v24[1];
      v31 = v24[2];
      v32 = v24[3];
      v24 += 4;
      *v23 = v29;
      v23[1] = v30;
      v23[2] = v31;
      v23[3] = v32;
      v23 += 4;
      v33 = v24[1];
      v34 = v24[2];
      *v23 = *v24;
      v23[1] = v33;
      v23[2] = v34;
      v8 += 44;
    }
    while ( v22 < *(_DWORD *)(a1 + 84) );
  }
  *(_DWORD *)(a1 + 96) = *(_DWORD *)(a2 + 96);
  return a1;
}


// ===== 7c7194 gameswf::array<gameswf::button_record>::reserve(int) =====
void __fastcall gameswf::array<gameswf::button_record>::reserve(int a1, int a2)
{
  int v3; // r2
  void *v4; // r0

  if ( !*(_BYTE *)(a1 + 12) )
  {
    v3 = *(_DWORD *)(a1 + 8);
    *(_DWORD *)(a1 + 8) = a2;
    if ( a2 )
    {
      if ( *(_DWORD *)a1 )
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 100 * a2, 100 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(100 * a2);
    }
    else
    {
      v4 = *(void **)a1;
      if ( v4 )
        gameswf::free_internal(v4);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 7c721c gameswf::array<gameswf::button_record>::push_back<gameswf::button_record>(gameswf::button_record const&) =====
int __fastcall gameswf::array<gameswf::button_record>::push_back<gameswf::button_record>(_DWORD *a1, int a2)
{
  int v2; // r3
  int v4; // r5
  int result; // r0

  v2 = a1[1];
  v4 = v2 + 1;
  if ( v2 + 1 > a1[2] )
  {
    gameswf::array<gameswf::button_record>::reserve((int)a1, v4 + (v4 >> 1));
    v2 = a1[1];
  }
  result = gameswf::button_record::button_record(*a1 + 100 * v2, a2);
  a1[1] = v4;
  return result;
}


// ===== 7c7264 gameswf::array<gameswf::button_action>::reserve(int) =====
void __fastcall gameswf::array<gameswf::button_action>::reserve(int a1, int a2)
{
  int v3; // r2
  void *v4; // r0

  if ( !*(_BYTE *)(a1 + 12) )
  {
    v3 = *(_DWORD *)(a1 + 8);
    *(_DWORD *)(a1 + 8) = a2;
    if ( a2 )
    {
      if ( *(_DWORD *)a1 )
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 20 * a2, 20 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(20 * a2);
    }
    else
    {
      v4 = *(void **)a1;
      if ( v4 )
        gameswf::free_internal(v4);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 7c72ec gameswf::button_character_definition::button_sound_def::~button_sound_def() =====
void __fastcall gameswf::button_character_definition::button_sound_def::~button_sound_def(
        gameswf::button_character_definition::button_sound_def *this)
{
  gameswf::button_character_definition::button_sound_def *v2; // r4

  if ( this )
  {
    v2 = (gameswf::button_character_definition::button_sound_def *)((char *)this + 176);
    do
    {
      v2 = (gameswf::button_character_definition::button_sound_def *)((char *)v2 - 44);
      gameswf::array<gameswf::sound_envelope>::resize((_DWORD *)v2 + 7, 0);
      gameswf::array<gameswf::sound_envelope>::reserve((int)v2 + 28, 0);
    }
    while ( v2 != this );
  }
}


// ===== 7c732c gameswf::button_character_definition::sound_info::read(gameswf::stream *) =====
void __fastcall gameswf::button_character_definition::sound_info::read(
        gameswf::button_character_definition::sound_info *this,
        gameswf::stream *a2)
{
  _BOOL4 v4; // r0
  int u8; // r6
  int v6; // r7
  int v7; // r8
  int v8; // r10
  int v9; // r8
  int v10; // r8

  *((_DWORD *)this + 2) = 0;
  *((_WORD *)this + 8) = 0;
  *((_DWORD *)this + 3) = 0;
  gameswf::stream::read_uint(a2, 2);
  *((_BYTE *)this + 1) = gameswf::stream::read_uint(a2, 1) != 0;
  *(_BYTE *)this = gameswf::stream::read_uint(a2, 1) != 0;
  *((_BYTE *)this + 2) = gameswf::stream::read_uint(a2, 1) != 0;
  *((_BYTE *)this + 3) = gameswf::stream::read_uint(a2, 1) != 0;
  *((_BYTE *)this + 4) = gameswf::stream::read_uint(a2, 1) != 0;
  v4 = gameswf::stream::read_uint(a2, 1) != 0;
  *((_BYTE *)this + 5) = v4;
  if ( v4 )
    *((_DWORD *)this + 2) = gameswf::stream::read_u32(a2);
  if ( *((_BYTE *)this + 4) )
    *((_DWORD *)this + 3) = gameswf::stream::read_u32(a2);
  if ( *((_BYTE *)this + 3) )
    *((_WORD *)this + 8) = gameswf::stream::read_u16(a2);
  if ( *((_BYTE *)this + 2) )
  {
    u8 = gameswf::stream::read_u8(a2);
    gameswf::array<gameswf::sound_envelope>::resize((_DWORD *)this + 5, u8);
    if ( u8 )
    {
      v6 = 0;
      do
      {
        v7 = *((_DWORD *)this + 5);
        *(_DWORD *)(v7 + 8 * v6) = gameswf::stream::read_u32(a2);
        v8 = *((_DWORD *)this + 5);
        v9 = 8 * v6;
        *(_WORD *)(v8 + 8 * v6++ + 4) = gameswf::stream::read_u16(a2);
        v10 = *((_DWORD *)this + 5) + v9;
        *(_WORD *)(v10 + 6) = gameswf::stream::read_u16(a2);
      }
      while ( u8 > v6 );
    }
  }
  else
  {
    gameswf::array<gameswf::sound_envelope>::resize((_DWORD *)this + 5, *((unsigned __int8 *)this + 2));
  }
}


// ===== 7c74c0 gameswf::button_action::read(gameswf::stream *,int) =====
void __fastcall gameswf::button_action::read(gameswf::button_action *this, gameswf::stream *a2, int a3, int a4)
{
  gameswf::action_buffer *v6; // r6
  int v7; // r3
  int v8; // r5

  if ( a3 == 7 )
    a4 = 8;
  if ( a3 == 7 )
    *(_DWORD *)this = a4;
  else
    *(_DWORD *)this = gameswf::stream::read_u16(a2);
  v6 = (gameswf::action_buffer *)operator new(0xCu, 0);
  gameswf::action_buffer::action_buffer(v6);
  gameswf::action_buffer::read((gameswf::membuf ***)v6, a2);
  v7 = *((_DWORD *)this + 2);
  v8 = v7 + 1;
  if ( v7 + 1 > *((_DWORD *)this + 3) )
  {
    gameswf::array<gameswf::action_buffer *>::reserve((int)this + 4, v8 + (v8 >> 1));
    v7 = *((_DWORD *)this + 2);
  }
  *(_DWORD *)(*((_DWORD *)this + 1) + 4 * v7) = v6;
  *((_DWORD *)this + 2) = v8;
}


// ===== 7c753c gameswf::button_record::read(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::button_record::read(
        gameswf::button_record *this,
        gameswf::stream *a2,
        int a3,
        gameswf::movie_definition_sub *a4)
{
  int result; // r0
  gameswf::effect *v8; // r2

  result = gameswf::stream::read_u8(a2);
  if ( result )
  {
    *(_BYTE *)this = (result & 0x20) != 0;
    *((_BYTE *)this + 1) = (result & 0x10) != 0;
    *((_BYTE *)this + 2) = (result & 8) != 0;
    *((_BYTE *)this + 3) = (result & 4) != 0;
    *((_BYTE *)this + 4) = (result & 2) != 0;
    *((_BYTE *)this + 5) = result & 1;
    *((_DWORD *)this + 2) = gameswf::stream::read_u16(a2);
    *((_DWORD *)this + 3) = 0;
    *((_DWORD *)this + 4) = gameswf::stream::read_u16(a2);
    gameswf::matrix::read((gameswf::button_record *)((char *)this + 20), a2);
    if ( a3 != 34 )
      return 1;
    gameswf::cxform::read_rgba((gameswf::button_record *)((char *)this + 44), a2);
    if ( *((_BYTE *)this + 1) )
      gameswf::read_filter_list(a2, (gameswf::button_record *)((char *)this + 76), v8);
    if ( *(_BYTE *)this )
    {
      *((_DWORD *)this + 24) = gameswf::stream::read_u8(a2);
      return 1;
    }
    else
    {
      return 1;
    }
  }
  return result;
}


// ===== 7c7614 gameswf::button_action::~button_action() =====
void __fastcall gameswf::button_action::~button_action(gameswf::button_action *this)
{
  int v1; // r4
  int i; // r5
  gameswf::counted_buffer **v4; // r7
  _DWORD *v5; // r0
  int v6; // r3

  v1 = *((_DWORD *)this + 2);
  if ( v1 <= 0 )
  {
    v5 = (_DWORD *)((char *)this + 4);
LABEL_11:
    if ( v1 < 0 )
    {
      v6 = 4 * v1;
      do
      {
        ++v1;
        *(_DWORD *)(*v5 + v6) = 0;
        v6 += 4;
      }
      while ( v1 );
    }
    goto LABEL_14;
  }
  for ( i = 0; i != v1; ++i )
  {
    v4 = *(gameswf::counted_buffer ***)(*((_DWORD *)this + 1) + 4 * i);
    if ( v4 )
    {
      if ( *v4 )
        gameswf::counted_buffer::drop_ref(*v4);
      gameswf::free_internal(v4);
    }
  }
  v1 = *((_DWORD *)this + 2);
  v5 = (_DWORD *)((char *)this + 4);
  if ( v1 <= 0 )
    goto LABEL_11;
LABEL_14:
  *((_DWORD *)this + 2) = 0;
  gameswf::array<gameswf::action_buffer *>::reserve((int)v5, 0);
}


// ===== 7c76c4 gameswf::array<gameswf::button_action>::resize(int) =====
void __fastcall gameswf::array<gameswf::button_action>::resize(_DWORD *a1, int a2)
{
  int v2; // r6
  int v5; // r8
  int v6; // r7
  int v7; // r1
  int v8; // r2

  v2 = a1[1];
  if ( v2 > a2 )
  {
    v5 = 20 * a2;
    v6 = a2;
    do
    {
      ++v6;
      gameswf::button_action::~button_action((gameswf::button_action *)(*a1 + v5));
      v5 += 20;
    }
    while ( v6 != v2 );
  }
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::button_action>::reserve((int)a1, a2 + (a2 >> 1));
  if ( v2 < a2 )
  {
    v7 = 20 * v2;
    do
    {
      ++v2;
      v8 = *a1 + v7;
      *(_DWORD *)v8 = 0;
      *(_BYTE *)(v8 + 16) = 0;
      *(_DWORD *)(v8 + 4) = 0;
      *(_DWORD *)(v8 + 8) = 0;
      *(_DWORD *)(v8 + 12) = 0;
      v7 += 20;
    }
    while ( v2 != a2 );
  }
  a1[1] = a2;
}


// ===== 7c7770 gameswf::button_action::~button_action() =====
void __fastcall gameswf::button_action::~button_action(gameswf::button_action *this)
{
  int v1; // r4
  int i; // r5
  gameswf::counted_buffer **v4; // r7
  _DWORD *v5; // r0
  int v6; // r3

  v1 = *((_DWORD *)this + 2);
  if ( v1 <= 0 )
  {
    v5 = (_DWORD *)((char *)this + 4);
LABEL_11:
    if ( v1 < 0 )
    {
      v6 = 4 * v1;
      do
      {
        ++v1;
        *(_DWORD *)(*v5 + v6) = 0;
        v6 += 4;
      }
      while ( v1 );
    }
    goto LABEL_14;
  }
  for ( i = 0; i != v1; ++i )
  {
    v4 = *(gameswf::counted_buffer ***)(*((_DWORD *)this + 1) + 4 * i);
    if ( v4 )
    {
      if ( *v4 )
        gameswf::counted_buffer::drop_ref(*v4);
      gameswf::free_internal(v4);
    }
  }
  v1 = *((_DWORD *)this + 2);
  v5 = (_DWORD *)((char *)this + 4);
  if ( v1 <= 0 )
    goto LABEL_11;
LABEL_14:
  *((_DWORD *)this + 2) = 0;
  gameswf::array<gameswf::action_buffer *>::reserve((int)v5, 0);
}


// ===== 7c7820 gameswf::array<gameswf::button_record>::resize(int) [clone] =====
void __fastcall gameswf::array<gameswf::button_record>::resize(_DWORD *a1)
{
  int v1; // r6
  int v3; // r4
  int v4; // r5
  _DWORD *v5; // r7
  int v6; // r7
  _DWORD *v7; // r4

  v1 = a1[1];
  if ( v1 <= 0 )
  {
    if ( v1 < 0 )
    {
      v6 = 100 * v1;
      do
      {
        v7 = (_DWORD *)(*a1 + v6);
        LC_API_MEMSET_0(v7, 0, 0x64u);
        ++v1;
        v7[17] = 1065353216;
        v7[5] = 1065353216;
        v7[9] = 1065353216;
        v7[11] = 1065353216;
        v7[13] = 1065353216;
        v7[15] = 1065353216;
        v6 += 100;
      }
      while ( v1 );
    }
  }
  else
  {
    v3 = 0;
    v4 = 0;
    do
    {
      ++v4;
      v5 = (_DWORD *)(*a1 + v3 + 80);
      gameswf::array<gameswf::filter>::resize(v5, 0);
      gameswf::array<gameswf::filter>::reserve((int)v5, 0);
      v3 += 100;
    }
    while ( v4 != v1 );
  }
  a1[1] = 0;
}


// ===== 7c78d4 gameswf::button_character_definition::~button_character_definition() =====
void __fastcall gameswf::button_character_definition::~button_character_definition(
        gameswf::button_character_definition *this)
{
  gameswf::button_character_definition::button_sound_def *v1; // r5

  v1 = *((gameswf::button_character_definition::button_sound_def **)this + 17);
  *(_DWORD *)this = off_991550;
  if ( v1 )
  {
    gameswf::button_character_definition::button_sound_def::~button_sound_def(v1);
    gameswf::free_internal(v1);
  }
  gameswf::array<gameswf::button_action>::resize((_DWORD *)this + 13, 0);
  gameswf::array<gameswf::button_action>::reserve((int)this + 52, 0);
  gameswf::array<gameswf::button_record>::resize((_DWORD *)this + 9);
  gameswf::array<gameswf::button_record>::reserve((int)this + 36, 0);
  gameswf::character_def::~character_def(this);
}


// ===== 7c7960 gameswf::button_character_definition::~button_character_definition() =====
void __fastcall gameswf::button_character_definition::~button_character_definition(
        gameswf::button_character_definition *this)
{
  gameswf::button_character_definition::~button_character_definition(this);
  LC_API_FREE_0(this);
}


// ===== 7c797c gameswf::button_character_definition::~button_character_definition() =====
void __fastcall gameswf::button_character_definition::~button_character_definition(
        gameswf::button_character_definition *this)
{
  gameswf::button_character_definition::button_sound_def *v1; // r5

  v1 = *((gameswf::button_character_definition::button_sound_def **)this + 17);
  *(_DWORD *)this = off_991550;
  if ( v1 )
  {
    gameswf::button_character_definition::button_sound_def::~button_sound_def(v1);
    gameswf::free_internal(v1);
  }
  gameswf::array<gameswf::button_action>::resize((_DWORD *)this + 13, 0);
  gameswf::array<gameswf::button_action>::reserve((int)this + 52, 0);
  gameswf::array<gameswf::button_record>::resize((_DWORD *)this + 9);
  gameswf::array<gameswf::button_record>::reserve((int)this + 36, 0);
  gameswf::character_def::~character_def(this);
}


// ===== 7c7a08 gameswf::button_character_definition::button_character_definition(gameswf::player *) =====
gameswf::button_character_definition *__fastcall gameswf::button_character_definition::button_character_definition(
        gameswf::button_character_definition *this,
        gameswf::player *a2)
{
  gameswf::character_def::character_def(this, a2);
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 9) = 0;
  *(_DWORD *)this = off_991550;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_BYTE *)this + 48) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_BYTE *)this + 64) = 0;
  return this;
}


// ===== 7c7a64 gameswf::button_character_definition::button_character_definition(gameswf::player *) =====
gameswf::button_character_definition *__fastcall gameswf::button_character_definition::button_character_definition(
        gameswf::button_character_definition *this,
        gameswf::player *a2)
{
  gameswf::character_def::character_def(this, a2);
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 9) = 0;
  *(_DWORD *)this = off_991550;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_BYTE *)this + 48) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_BYTE *)this + 64) = 0;
  return this;
}


// ===== 7c7ac0 gameswf::button_character_instance::~button_character_instance() =====
void __fastcall gameswf::button_character_instance::~button_character_instance(
        gameswf::button_character_instance *this)
{
  char *v2; // r5
  void (__fastcall ***v3)(_DWORD); // r0

  *(_DWORD *)this = off_9913D0;
  v2 = (char *)this + 164;
  gameswf::array<gameswf::smart_ptr<gameswf::character>>::resize((_DWORD *)this + 41, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::character>>::reserve((int)v2, 0);
  v3 = *((void (__fastcall ****)(_DWORD))this + 40);
  if ( v3 )
    gameswf::ref_counted::drop_ref(v3);
  gameswf::character::~character(this);
}


// ===== 7c7b24 gameswf::button_character_instance::~button_character_instance() =====
void __fastcall gameswf::button_character_instance::~button_character_instance(
        gameswf::button_character_instance *this)
{
  gameswf::button_character_instance::~button_character_instance(this);
  LC_API_FREE_0(this);
}


// ===== 7c7b40 gameswf::button_character_instance::on_event(gameswf::event_id const&) =====
int __fastcall gameswf::button_character_instance::on_event(int a1, unsigned __int8 *a2)
{
  void (__fastcall ***v4)(_DWORD); // r6
  _BYTE *v5; // r0
  int v6; // r4
  gameswf *v7; // r0
  int v8; // r12
  unsigned int v9; // r8
  int v10; // r11
  int v13; // r8
  int sound_handler; // r0
  int v15; // r10
  unsigned int v16; // r3
  int v17; // r3
  int v18; // r3
  int v19; // r2
  int v20; // r1
  int v21; // r2
  int v22; // r10
  int v23; // r3
  int v24; // r7
  int v25; // r8
  int v26; // r1
  int v27; // r2
  int v28; // r1
  int v29; // r3
  int v30; // r8
  int v31; // r9
  int v32; // r1
  int d_tag_low; // r0
  unsigned __int32 d_val; // lr
  int v35; // r2
  int v36; // r1
  int v37; // r2
  bool v38; // cc
  Elf32_Dyn *v39; // r12
  int *v40; // r3

  if ( a1 )
    gameswf::ref_counted::add_ref(a1);
  v4 = *(void (__fastcall ****)(_DWORD))(a1 + 64);
  if ( v4 )
  {
    v5 = *(_BYTE **)(a1 + 60);
    if ( v5[4] )
    {
      gameswf::ref_counted::add_ref(*(_DWORD *)(a1 + 64));
      v6 = *(_DWORD *)(a1 + 160);
      if ( !v6 )
      {
        v10 = 0;
        goto LABEL_10;
      }
      v7 = (gameswf *)gameswf::ref_counted::add_ref(*(_DWORD *)(a1 + 160));
      v9 = *a2;
      if ( v9 == 8 )
      {
        if ( (`guard variable for'gameswf::button_character_instance::on_event(gameswf::event_id const&)::s_key & 1) == 0
          && _cxa_guard_acquire(&`guard variable for'gameswf::button_character_instance::on_event(gameswf::event_id const&)::s_key) )
        {
          byte_A2EC31 = 37;
          byte_A2EC39 = 39;
          byte_A2EC41 = 36;
          byte_A2EC49 = 35;
          byte_A2EC51 = 45;
          byte_A2EC59 = 46;
          gameswf::button_character_instance::on_event(gameswf::event_id const&)::s_key = 0;
          byte_A2EC29 = 0;
          word_A2EC2A = 0;
          dword_A2EC2C = 0;
          byte_A2EC30 = 8;
          word_A2EC32 = 0;
          dword_A2EC34 = 0;
          byte_A2EC38 = 8;
          word_A2EC3A = 0;
          dword_A2EC3C = 0;
          byte_A2EC40 = 8;
          word_A2EC42 = 0;
          dword_A2EC44 = 0;
          byte_A2EC48 = 8;
          word_A2EC4A = 0;
          dword_A2EC4C = 0;
          byte_A2EC50 = 8;
          word_A2EC52 = 0;
          dword_A2EC54 = 0;
          byte_A2EC58 = 8;
          word_A2EC5A = 0;
          dword_A2EC5C = 0;
          byte_A2EC60 = 0;
          byte_A2EC61 = 0;
          word_A2EC62 = 0;
          dword_A2EC64 = 0;
          byte_A2EC68 = 8;
          byte_A2EC91 = 13;
          byte_A2EC99 = 38;
          byte_A2ECA1 = 40;
          byte_A2ECA9 = 34;
          byte_A2EC89 = 0;
          byte_A2EC69 = 8;
          word_A2EC6A = 0;
          dword_A2EC6C = 0;
          byte_A2EC70 = 0;
          byte_A2EC71 = 0;
          word_A2EC72 = 0;
          dword_A2EC74 = 0;
          byte_A2EC78 = 0;
          byte_A2EC79 = 0;
          word_A2EC7A = 0;
          dword_A2EC7C = 0;
          byte_A2EC80 = 0;
          byte_A2EC81 = 0;
          word_A2EC82 = 0;
          dword_A2EC84 = 0;
          byte_A2EC88 = 0;
          word_A2EC8A = 0;
          dword_A2EC8C = 0;
          byte_A2EC90 = 8;
          word_A2EC92 = 0;
          dword_A2EC94 = 0;
          byte_A2EC98 = 8;
          word_A2EC9A = 0;
          dword_A2EC9C = 0;
          byte_A2ECA0 = 8;
          word_A2ECA2 = 0;
          dword_A2ECA4 = 0;
          byte_A2ECA8 = 8;
          word_A2ECAA = 0;
          byte_A2ECB1 = 33;
          byte_A2ECB8 = 8;
          byte_A2ECB9 = 9;
          dword_A2ECAC = 0;
          byte_A2ECB0 = 8;
          word_A2ECB2 = 0;
          dword_A2ECB4 = 0;
          word_A2ECBA = 0;
          dword_A2ECBC = 0;
          v40 = (int *)&unk_A2ECC8;
          do
          {
            *((_BYTE *)v40 - 8) = 0;
            *((_BYTE *)v40 - 7) = 0;
            *((_WORD *)v40 - 3) = 0;
            *(v40 - 1) = 0;
            v40 += 2;
          }
          while ( v40 != &dword_A2ED30 );
          _cxa_guard_release(&`guard variable for'gameswf::button_character_instance::on_event(gameswf::event_id const&)::s_key);
        }
        v29 = *(_DWORD *)(v6 + 56);
        if ( v29 > 0 )
        {
          v30 = 0;
          v31 = 0;
          v10 = 0;
          do
          {
            v32 = *(_DWORD *)(v6 + 52);
            d_tag_low = 8;
            d_val = 0;
            v35 = *(_DWORD *)(v32 + v30);
            ++v31;
            v36 = v32 + v30;
            v37 = (unsigned __int16)v35 >> 9;
            v38 = v37 <= 31;
            if ( v37 > 31 )
              v37 = (unsigned __int8)v37;
            else
              v8 = 14956;
            if ( v38 )
            {
              v39 = &(*(Elf32_Dyn **)((char *)&__GLOBAL_OFFSET_TABLE_ + v8))[v37];
              d_tag_low = LOBYTE(v39->d_tag);
              v37 = BYTE1(v39->d_tag);
              d_val = v39->d_un.d_val;
            }
            v8 = *(unsigned __int16 *)a2;
            if ( v8 == (d_tag_low | (v37 << 8)) && d_val == *((_DWORD *)a2 + 1) )
            {
              ((void (__fastcall *)(void (__fastcall ***)(_DWORD), int))(*v4)[52])(v4, v36 + 4);
              v10 = 1;
              v29 = *(_DWORD *)(v6 + 56);
            }
            v30 += 20;
          }
          while ( v31 < v29 );
          goto LABEL_9;
        }
        goto LABEL_8;
      }
      if ( v9 > 7 )
      {
LABEL_8:
        v10 = 0;
LABEL_9:
        gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v6);
LABEL_10:
        gameswf::ref_counted::drop_ref(v4);
        goto LABEL_16;
      }
      v13 = 1 << v9;
      if ( (v13 & 0x94) != 0 )
      {
        *(_DWORD *)(a1 + 188) = 2;
      }
      else if ( (v13 & 0x28) != 0 )
      {
        *(_DWORD *)(a1 + 188) = 0;
      }
      else
      {
        if ( (v13 & 0x42) == 0 )
          goto LABEL_8;
        *(_DWORD *)(a1 + 188) = 1;
      }
      if ( *(_DWORD *)(v6 + 68) )
      {
        sound_handler = gameswf::get_sound_handler(v7);
        if ( sound_handler )
        {
          v15 = *a2;
          v16 = (unsigned __int8)(v15 - 1);
          if ( v16 > 4 )
            goto LABEL_33;
          v17 = CSWTCH_502[v16];
          if ( v17 < 0
            || (v18 = 44 * v17, v19 = *(_DWORD *)(v6 + 68),
                                v20 = *(unsigned __int16 *)(v19 + v18),
                                v21 = v19 + v18,
                                !v20) )
          {
LABEL_31:
            if ( v15 == 4 )
            {
              v22 = 1;
              goto LABEL_46;
            }
            goto LABEL_33;
          }
          if ( *(_BYTE *)(v21 + 9) )
          {
            (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)sound_handler + 20))(
              sound_handler,
              *(_DWORD *)(*(_DWORD *)(v21 + 4) + 32));
            v15 = *a2;
            goto LABEL_31;
          }
          (*(void (__fastcall **)(int, _DWORD, _DWORD))(*(_DWORD *)sound_handler + 12))(
            sound_handler,
            *(_DWORD *)(*(_DWORD *)(v21 + 4) + 32),
            *(unsigned __int16 *)(v21 + 24));
        }
      }
      v15 = *a2;
      if ( v15 == 4 )
      {
        v22 = 1;
        goto LABEL_46;
      }
LABEL_33:
      switch ( v15 )
      {
        case 5:
          v22 = 2;
          break;
        case 1:
          v22 = 4;
          break;
        case 2:
          v22 = 8;
          break;
        case 7:
          v22 = 16;
          break;
        case 6:
          v22 = 32;
          break;
        case 3:
          v22 = 64;
          break;
        default:
          v22 = 0;
          break;
      }
LABEL_46:
      v23 = *(_DWORD *)(v6 + 56);
      if ( v23 > 0 )
      {
        v24 = 0;
        v25 = 0;
        v10 = 0;
        do
        {
          v26 = *(_DWORD *)(v6 + 52);
          ++v25;
          v27 = *(_DWORD *)(v26 + v24);
          v28 = v26 + v24;
          v24 += 20;
          if ( (v22 & v27) != 0 )
          {
            ((void (__fastcall *)(void (__fastcall ***)(_DWORD), int))(*v4)[52])(v4, v28 + 4);
            v10 = 1;
            v23 = *(_DWORD *)(v6 + 56);
          }
        }
        while ( v25 < v23 );
        goto LABEL_9;
      }
      goto LABEL_8;
    }
    if ( (*(_DWORD *)v5)-- == 1 )
      gameswf::free_internal(v5);
    *(_DWORD *)(a1 + 64) = 0;
    *(_DWORD *)(a1 + 60) = 0;
  }
  v10 = 0;
LABEL_16:
  if ( a1 )
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))a1);
  return v10;
}


// ===== 7c8020 gameswf::button_character_instance::get_root_movie(void) =====
int __fastcall gameswf::button_character_instance::get_root_movie(gameswf::button_character_instance *this)
{
  int v1; // r3
  _BYTE *v3; // r0

  v1 = *((_DWORD *)this + 16);
  if ( !v1 )
    return (*(int (__fastcall **)(int))(*(_DWORD *)v1 + 308))(v1);
  v3 = *((_BYTE **)this + 15);
  if ( v3[4] )
    return (*(int (__fastcall **)(int))(*(_DWORD *)v1 + 308))(v1);
  if ( (*(_DWORD *)v3)-- == 1 )
    gameswf::free_internal(v3);
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 15) = 0;
  return MEMORY[0x464C46B3](0);
}


// ===== 7c8090 gameswf::button_character_definition::read(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
void __fastcall gameswf::button_character_definition::read(
        gameswf::button_character_definition *this,
        gameswf::stream *a2,
        int a3,
        gameswf::movie_definition_sub *a4)
{
  gameswf::button_character_definition *v7; // r10
  int v8; // r4
  int v9; // r5
  int v10; // r9
  _WORD *v11; // r4
  int v12; // r2
  _WORD *v13; // r3
  int u16; // r0
  int v15; // r6
  int v16; // r5
  _WORD *v17; // r7
  _DWORD *v18; // [sp+18h] [bp-7Ch]
  int v20; // [sp+1Ch] [bp-78h]
  int position; // [sp+24h] [bp-70h]
  _BYTE v22[20]; // [sp+2Ch] [bp-68h] BYREF
  int v23; // [sp+40h] [bp-54h]
  int v24; // [sp+44h] [bp-50h]
  int v25; // [sp+48h] [bp-4Ch]
  int v26; // [sp+4Ch] [bp-48h]
  int v27; // [sp+50h] [bp-44h]
  int v28; // [sp+54h] [bp-40h]
  int v29; // [sp+58h] [bp-3Ch]
  int v30; // [sp+5Ch] [bp-38h]
  int v31; // [sp+60h] [bp-34h]
  int v32; // [sp+64h] [bp-30h]
  int v33; // [sp+68h] [bp-2Ch]
  int v34; // [sp+6Ch] [bp-28h]
  int v35; // [sp+70h] [bp-24h]
  int v36; // [sp+74h] [bp-20h]
  int v37; // [sp+78h] [bp-1Ch]
  int v38; // [sp+7Ch] [bp-18h] BYREF
  int v39; // [sp+80h] [bp-14h]
  int v40; // [sp+84h] [bp-10h]
  char v41; // [sp+88h] [bp-Ch]

  switch ( a3 )
  {
    case 7:
      v18 = (_DWORD *)((char *)this + 36);
      while ( 1 )
      {
        v28 = 0;
        v24 = 0;
        v37 = 0;
        v25 = 0;
        v38 = 0;
        v39 = 0;
        v26 = 0;
        v40 = 0;
        v23 = 1065353216;
        v27 = 1065353216;
        v29 = 1065353216;
        v31 = 1065353216;
        v33 = 1065353216;
        v35 = 1065353216;
        v30 = 0;
        v32 = 0;
        v34 = 0;
        v36 = 0;
        v41 = 0;
        if ( !gameswf::button_record::read((gameswf::button_record *)v22, a2, 7, a4) )
          break;
        gameswf::array<gameswf::button_record>::push_back<gameswf::button_record>(v18, (int)v22);
        gameswf::array<gameswf::filter>::resize(&v38, 0);
        gameswf::array<gameswf::filter>::reserve((int)&v38, 0);
      }
      v7 = this;
      gameswf::array<gameswf::filter>::resize(&v38, 0);
      gameswf::array<gameswf::filter>::reserve((int)&v38, 0);
      gameswf::array<gameswf::button_action>::resize((_DWORD *)v7 + 13, *((_DWORD *)v7 + 14) + 1);
      gameswf::button_action::read(
        (gameswf::button_action *)(*((_DWORD *)v7 + 13) + 20 * (*((_DWORD *)v7 + 14) - 1)),
        a2,
        7,
        *((_DWORD *)v7 + 13));
      break;
    case 17:
      v11 = operator new(0xB0u, 0);
      LC_API_MEMSET_0(v11, 0, 0xB0u);
      v12 = 0;
      v13 = v11;
      do
      {
        v12 += 44;
        *((_DWORD *)v13 + 7) = 0;
        *((_DWORD *)v13 + 8) = 0;
        *((_DWORD *)v13 + 9) = 0;
        *((_BYTE *)v13 + 40) = 0;
        v13 += 22;
      }
      while ( v12 != 176 );
      *((_DWORD *)this + 17) = v11;
      u16 = gameswf::stream::read_u16(a2);
      v15 = 0;
      v16 = 1;
      *v11 = u16;
      v17 = v11;
      if ( u16 )
        goto LABEL_22;
      while ( v16 != 4 )
      {
        v11 = *((_WORD **)this + 17);
        u16 = gameswf::stream::read_u16(a2);
        v15 = 22 * v16++;
        v11[v15] = u16;
        v17 = &v11[v15];
        if ( u16 )
        {
LABEL_22:
          *((_DWORD *)v17 + 1) = (*(int (__fastcall **)(gameswf::movie_definition_sub *, int))(*(_DWORD *)a4 + 160))(
                                   a4,
                                   u16);
          gameswf::button_character_definition::sound_info::read(
            (gameswf::button_character_definition::sound_info *)&v11[v15 + 4],
            a2);
        }
      }
      break;
    case 34:
      *((_BYTE *)this + 32) = gameswf::stream::read_u8(a2) != 0;
      v20 = gameswf::stream::read_u16(a2);
      position = gameswf::stream::get_position(a2);
      while ( 1 )
      {
        v28 = 0;
        v24 = 0;
        v37 = 0;
        v25 = 0;
        v38 = 0;
        v39 = 0;
        v26 = 0;
        v40 = 0;
        v23 = 1065353216;
        v27 = 1065353216;
        v29 = 1065353216;
        v31 = 1065353216;
        v33 = 1065353216;
        v35 = 1065353216;
        v30 = 0;
        v32 = 0;
        v34 = 0;
        v36 = 0;
        v41 = 0;
        if ( !gameswf::button_record::read((gameswf::button_record *)v22, a2, 34, a4) )
          break;
        gameswf::array<gameswf::button_record>::push_back<gameswf::button_record>((_DWORD *)this + 9, (int)v22);
        gameswf::array<gameswf::filter>::resize(&v38, 0);
        gameswf::array<gameswf::filter>::reserve((int)&v38, 0);
      }
      gameswf::array<gameswf::filter>::resize(&v38, 0);
      gameswf::array<gameswf::filter>::reserve((int)&v38, 0);
      if ( v20 )
      {
        gameswf::stream::set_position(a2, position - 2 + v20);
        while ( 1 )
        {
          v8 = gameswf::stream::read_u16(a2);
          v9 = gameswf::stream::get_position(a2);
          gameswf::array<gameswf::button_action>::resize((_DWORD *)this + 13, *((_DWORD *)this + 14) + 1);
          gameswf::button_action::read(
            (gameswf::button_action *)(*((_DWORD *)this + 13) + 20 * (*((_DWORD *)this + 14) - 1)),
            a2,
            34,
            *((_DWORD *)this + 13));
          if ( !v8 )
            break;
          v10 = gameswf::stream::get_position(a2);
          if ( v10 >= gameswf::stream::get_tag_end_position(a2) )
            break;
          gameswf::stream::set_position(a2, v9 - 2 + v8);
        }
      }
      break;
  }
}


// ===== 7c84d8 gameswf::button_character_instance::button_character_instance(gameswf::player *,gameswf::button_character_definition *,gameswf::character *,int) =====
gameswf::button_character_instance *__fastcall gameswf::button_character_instance::button_character_instance(
        gameswf::button_character_instance *this,
        gameswf::player *a2,
        gameswf::button_character_definition *a3,
        gameswf::character *a4,
        int a5)
{
  int v7; // r2
  int v8; // r10
  int movie_definition; // r0
  int v10; // r5
  int v11; // r6
  int v12; // r7
  int v13; // r8
  _DWORD *v14; // r5
  int v15; // r3
  int v16; // r0
  gameswf::ref_counted *v17; // r9
  int *v18; // r11
  int *v19; // r5
  int v21; // r0
  int v22; // [sp+Ch] [bp-8h]

  gameswf::character::character(this, a2, a4, a5, 1);
  *((_DWORD *)this + 40) = a3;
  *(_DWORD *)this = off_9913D0;
  if ( a3 )
    gameswf::ref_counted::add_ref((int)a3);
  v7 = *((_DWORD *)this + 40);
  *((_DWORD *)this + 47) = 0;
  *((_DWORD *)this + 41) = 0;
  *((_DWORD *)this + 42) = 0;
  *((_DWORD *)this + 43) = 0;
  *((_BYTE *)this + 176) = 0;
  *((_DWORD *)this + 45) = 0;
  *((_DWORD *)this + 46) = 0;
  v8 = *(_DWORD *)(v7 + 40);
  gameswf::array<gameswf::smart_ptr<gameswf::character>>::resize((_DWORD *)this + 41, v8);
  movie_definition = gameswf::character::get_movie_definition(this);
  v10 = movie_definition;
  if ( movie_definition && (*(int (__fastcall **)(int, int))(*(_DWORD *)movie_definition + 8))(movie_definition, 9) )
    v22 = v10;
  else
    v22 = 0;
  if ( v8 > 0 )
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      while ( 1 )
      {
        v14 = (_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 40) + 36) + v12);
        v15 = v14[3];
        if ( !v15 )
        {
          v21 = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v22 + 92))(v22, v14[2]);
          v14[3] = v21;
          v15 = v21;
          v14 = (_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 40) + 36) + v12);
        }
        v16 = (*(int (__fastcall **)(int, gameswf::button_character_instance *, int))(*(_DWORD *)v15 + 24))(
                v15,
                this,
                a5);
        v17 = (gameswf::ref_counted *)v16;
        v18 = v14 + 11;
        v19 = v14 + 5;
        if ( !v16 )
          break;
        gameswf::ref_counted::add_ref(v16);
        ++v13;
        gameswf::smart_ptr<gameswf::character>::set_ref((gameswf::ref_counted **)(*((_DWORD *)this + 41) + v11), v17);
        gameswf::character::set_matrix((int)v17, v19);
        gameswf::character::set_cxform((int)v17, v18);
        gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v17);
        v12 += 100;
        v11 += 4;
        if ( v13 == v8 )
          return this;
      }
      ++v13;
      gameswf::smart_ptr<gameswf::character>::set_ref((gameswf::ref_counted **)(*((_DWORD *)this + 41) + v11), nullptr);
      gameswf::character::set_matrix(0, v19);
      gameswf::character::set_cxform(0, v18);
      v12 += 100;
      v11 += 4;
    }
    while ( v13 != v8 );
  }
  return this;
}


// ===== 7c86b4 gameswf::button_character_definition::create_character_instance(gameswf::character *,int) =====
gameswf::button_character_instance *__fastcall gameswf::button_character_definition::create_character_instance(
        gameswf::button_character_definition *this,
        gameswf::character *a2,
        int a3)
{
  gameswf::player *v3; // r7
  _BYTE *v7; // r0
  gameswf::button_character_instance *v8; // r4

  v3 = *((gameswf::player **)this + 7);
  if ( v3 )
  {
    v7 = *((_BYTE **)this + 6);
    if ( !v7[4] )
    {
      if ( (*(_DWORD *)v7)-- == 1 )
        gameswf::free_internal(v7);
      v3 = nullptr;
      *((_DWORD *)this + 6) = 0;
      *((_DWORD *)this + 7) = 0;
    }
  }
  v8 = (gameswf::button_character_instance *)operator new(0xC0u, 0);
  gameswf::button_character_instance::button_character_instance(v8, v3, this, a2, a3);
  return v8;
}


// ===== 7c873c gameswf::button_character_instance::get_mouse_state(int *,int *,int *) =====
int __fastcall gameswf::button_character_instance::get_mouse_state(
        gameswf::button_character_instance *this,
        int *a2,
        int *a3,
        int *a4)
{
  int v4; // r12
  _BYTE *v7; // r0

  v4 = *((_DWORD *)this + 16);
  if ( v4 )
  {
    v7 = *((_BYTE **)this + 15);
    if ( !v7[4] )
    {
      if ( (*(_DWORD *)v7)-- == 1 )
        gameswf::free_internal(v7);
      v4 = 0;
      *((_DWORD *)this + 16) = 0;
      *((_DWORD *)this + 15) = 0;
    }
  }
  return (*(int (__fastcall **)(int, int *))(*(_DWORD *)v4 + 112))(v4, a2);
}


// ===== 7c87bc gameswf::canvas::is(int) =====
bool __fastcall gameswf::canvas::is(gameswf::canvas *this, int a2)
{
  return a2 == 20 || a2 == 10;
}


// ===== 7c87d8 gameswf::canvas::close_path(void) =====
float __fastcall gameswf::canvas::close_path(float this)
{
  int v1; // r4
  int v2; // r3
  int v3; // r7
  float v4; // r5
  int v5; // r12
  int v6; // r5
  float v7; // r1
  float v8; // r2
  float v9; // r3
  int v10; // r12
  float v11[5]; // [sp+8h] [bp-14h] BYREF

  v1 = *(_DWORD *)(LODWORD(this) + 68) + 40 * *(_DWORD *)(LODWORD(this) + 152);
  v2 = *(_DWORD *)(v1 + 24);
  if ( v2 > 0 )
  {
    v3 = *(_DWORD *)(v1 + 20) + 16 * (v2 - 1);
    if ( *(float *)(v3 + 8) == *(float *)(v1 + 12) )
    {
      v4 = *(float *)(v1 + 16);
      LODWORD(this) = *(float *)(v3 + 12) == v4;
      if ( *(float *)(v3 + 12) == v4 )
        return this;
    }
    else
    {
      v4 = *(float *)(v1 + 16);
    }
    gameswf::edge::edge(v11, *(float *)(v1 + 12), v4, *(float *)(v1 + 12), v4);
    v5 = *(_DWORD *)(v1 + 24);
    v6 = v5 + 1;
    if ( v5 + 1 > *(_DWORD *)(v1 + 28) )
    {
      gameswf::array<gameswf::edge>::reserve(v1 + 20, v6 + (v6 >> 1));
      v5 = *(_DWORD *)(v1 + 24);
    }
    this = v11[0];
    v7 = v11[1];
    v8 = v11[2];
    v9 = v11[3];
    v10 = *(_DWORD *)(v1 + 20) + 16 * v5;
    *(float *)v10 = v11[0];
    *(float *)(v10 + 4) = v7;
    *(float *)(v10 + 8) = v8;
    *(float *)(v10 + 12) = v9;
    *(_DWORD *)(v1 + 24) = v6;
  }
  return this;
}


// ===== 7c889c gameswf::canvas::end_fill(void) =====
float __fastcall gameswf::canvas::end_fill(float this)
{
  float v1; // r4

  v1 = this;
  if ( *(int *)(LODWORD(this) + 152) >= 0 )
    this = gameswf::canvas::close_path(this);
  *(_DWORD *)(LODWORD(v1) + 144) = 0;
  *(_DWORD *)(LODWORD(v1) + 152) = -1;
  return this;
}


// ===== 7c88c8 gameswf::canvas::add_path(bool) =====
void __fastcall gameswf::canvas::add_path(gameswf::canvas *this, bool a2)
{
  int v4; // r3
  _BYTE v5[20]; // [sp+8h] [bp-2Ch] BYREF
  _DWORD v6[4]; // [sp+1Ch] [bp-18h] BYREF
  bool v7; // [sp+2Ch] [bp-8h]

  if ( *((int *)this + 38) < 0 )
    goto LABEL_4;
  v4 = *((_DWORD *)this + 36);
  if ( v4 > 0 )
  {
    gameswf::canvas::close_path(*(float *)&this);
LABEL_4:
    v4 = *((_DWORD *)this + 36);
  }
  gameswf::path::path((gameswf::path *)v5, *((float *)this + 34), *((float *)this + 35), v4, 0, *((_DWORD *)this + 37));
  v7 = a2;
  gameswf::array<gameswf::path>::push_back<gameswf::path>((_DWORD *)this + 17, (gameswf::path *)v5);
  *((_DWORD *)this + 38) = *((_DWORD *)this + 18) - 1;
  gameswf::shape_character_def::flush_cache(this);
  gameswf::array<gameswf::edge>::resize(v6, 0);
  gameswf::array<gameswf::edge>::reserve((int)v6, 0);
}


// ===== 7c8960 gameswf::canvas::move_to(float,float) =====
void __fastcall gameswf::canvas::move_to(gameswf::canvas *this, float a2, float a3)
{
  if ( *((float *)this + 34) != a2 || *((float *)this + 35) != a3 )
  {
    *((float *)this + 34) = a2;
    *((float *)this + 35) = a3;
    gameswf::canvas::add_path(this, 0);
  }
}


// ===== 7c89b0 gameswf::canvas::set_line_style(ushort,gameswf::rgba const&) =====
void __fastcall gameswf::canvas::set_line_style(gameswf::canvas *this, unsigned __int16 a2, const gameswf::rgba *a3)
{
  void (**v6)(gameswf::line_style *__hidden); // [sp+4h] [bp-70h] BYREF
  unsigned __int16 v7; // [sp+8h] [bp-6Ch]
  _BYTE v8[4]; // [sp+Ah] [bp-6Ah] BYREF
  int v9; // [sp+10h] [bp-64h] BYREF

  gameswf::line_style::line_style((gameswf::line_style *)&v6);
  memcpy(v8, a3, sizeof(v8));
  v7 = a2;
  gameswf::array<gameswf::line_style>::push_back<gameswf::line_style>((int *)this + 13, (int)&v6);
  *((_DWORD *)this + 37) = *((_DWORD *)this + 14);
  gameswf::canvas::add_path(this, 0);
  v6 = off_9908E8;
  gameswf::fill_style::~fill_style((gameswf::fill_style *)&v9);
}


// ===== 7c8a34 gameswf::canvas::begin_fill(gameswf::rgba const&) =====
void __fastcall gameswf::canvas::begin_fill(gameswf::canvas *this, const gameswf::rgba *a2)
{
  _BYTE v4[4]; // [sp+4h] [bp-54h] BYREF
  int v5; // [sp+8h] [bp-50h]
  _BYTE v6[4]; // [sp+Ch] [bp-4Ch] BYREF

  gameswf::fill_style::fill_style((int)v4);
  v5 = 0;
  memcpy(v6, a2, sizeof(v6));
  gameswf::array<gameswf::fill_style>::push_back<gameswf::fill_style>((_DWORD *)this + 9, (gameswf::fill_style *)v4);
  *((_DWORD *)this + 36) = *((_DWORD *)this + 10);
  gameswf::canvas::add_path(this, 1);
  gameswf::fill_style::~fill_style((gameswf::fill_style *)v4);
}


// ===== 7c8a98 `non-virtual thunk to'gameswf::canvas::~canvas() =====
void __fastcall `non-virtual thunk to'gameswf::canvas::~canvas(gameswf::canvas *this)
{
  gameswf::canvas::~canvas((gameswf::canvas *)((char *)this - 32));
}


// ===== 7c8aa0 gameswf::canvas::~canvas() =====
void __fastcall gameswf::canvas::~canvas(gameswf::canvas *this)
{
  *(_DWORD *)this = off_991588;
  *((_DWORD *)this + 8) = off_9915C4;
  gameswf::shape_character_def::~shape_character_def(this);
}


// ===== 7c8adc `non-virtual thunk to'gameswf::canvas::~canvas() =====
void __fastcall `non-virtual thunk to'gameswf::canvas::~canvas(gameswf::canvas *this)
{
  gameswf::canvas::~canvas((gameswf::canvas *)((char *)this - 32));
}


// ===== 7c8ae4 gameswf::canvas::~canvas() =====
void __fastcall gameswf::canvas::~canvas(gameswf::canvas *this)
{
  gameswf::canvas::~canvas(this);
  LC_API_FREE_0(this);
}


// ===== 7c8b00 gameswf::canvas::~canvas() =====
void __fastcall gameswf::canvas::~canvas(gameswf::canvas *this)
{
  *(_DWORD *)this = off_991588;
  *((_DWORD *)this + 8) = off_9915C4;
  gameswf::shape_character_def::~shape_character_def(this);
}


// ===== 7c8b3c gameswf::canvas::canvas(gameswf::player *) =====
gameswf::canvas *__fastcall gameswf::canvas::canvas(gameswf::canvas *this, gameswf::player *a2)
{
  gameswf::shape_character_def::shape_character_def(this, a2);
  *((_DWORD *)this + 35) = 0;
  *(_DWORD *)this = off_991588;
  *((_DWORD *)this + 8) = off_9915C4;
  *((_DWORD *)this + 37) = 0;
  *((_DWORD *)this + 38) = -1;
  *((_DWORD *)this + 34) = 0;
  *((_DWORD *)this + 36) = 0;
  return this;
}


// ===== 7c8b98 gameswf::canvas::canvas(gameswf::player *) =====
gameswf::canvas *__fastcall gameswf::canvas::canvas(gameswf::canvas *this, gameswf::player *a2)
{
  gameswf::shape_character_def::shape_character_def(this, a2);
  *((_DWORD *)this + 35) = 0;
  *(_DWORD *)this = off_991588;
  *((_DWORD *)this + 8) = off_9915C4;
  *((_DWORD *)this + 37) = 0;
  *((_DWORD *)this + 38) = -1;
  *((_DWORD *)this + 34) = 0;
  *((_DWORD *)this + 36) = 0;
  return this;
}


// ===== 7c8bf4 gameswf::canvas::line_to(float,float) =====
_DWORD *__fastcall gameswf::canvas::line_to(gameswf::canvas *this, float a2, float a3)
{
  _DWORD *v6; // r6
  int v7; // r12
  int v8; // r7
  float v9; // r1
  float v10; // r2
  float v11; // r3
  int v12; // r12
  float v14[5]; // [sp+8h] [bp-14h] BYREF

  if ( *((int *)this + 38) < 0 )
    gameswf::canvas::add_path(this, 1);
  *((float *)this + 34) = a2;
  *((float *)this + 35) = a3;
  gameswf::edge::edge(v14, a2, a3, a2, a3);
  v6 = (_DWORD *)(*((_DWORD *)this + 17) + 40 * *((_DWORD *)this + 38));
  v7 = v6[6];
  v8 = v7 + 1;
  if ( v7 + 1 > v6[7] )
  {
    gameswf::array<gameswf::edge>::reserve((int)(v6 + 5), v8 + (v8 >> 1));
    v7 = v6[6];
  }
  v9 = v14[1];
  v10 = v14[2];
  v11 = v14[3];
  v12 = v6[5] + 16 * v7;
  *(float *)v12 = v14[0];
  *(float *)(v12 + 4) = v9;
  *(float *)(v12 + 8) = v10;
  *(float *)(v12 + 12) = v11;
  v6[6] = v8;
  return gameswf::shape_character_def::flush_cache(this);
}


// ===== 7c8c9c gameswf::canvas::curve_to(float,float,float,float) =====
_DWORD *__fastcall gameswf::canvas::curve_to(gameswf::canvas *this, float a2, float a3, float a4, float a5)
{
  int v5; // r12
  _DWORD *v8; // r6
  int v9; // r12
  int v10; // r7
  float v11; // r1
  float v12; // r2
  float v13; // r3
  int v14; // r12
  float v16; // [sp+8h] [bp-18h]
  float v17; // [sp+Ch] [bp-14h]
  float v18[4]; // [sp+10h] [bp-10h] BYREF

  v5 = *((_DWORD *)this + 38);
  if ( v5 < 0 )
  {
    v17 = a3;
    v16 = a4;
    gameswf::canvas::add_path(this, 1);
    v5 = *((_DWORD *)this + 38);
    a4 = v16;
    a3 = v17;
  }
  v8 = (_DWORD *)(*((_DWORD *)this + 17) + 40 * v5);
  *((float *)this + 34) = a4;
  *((float *)this + 35) = a5;
  gameswf::edge::edge(v18, a2, a3, a4, a5);
  v9 = v8[6];
  v10 = v9 + 1;
  if ( v9 + 1 > v8[7] )
  {
    gameswf::array<gameswf::edge>::reserve((int)(v8 + 5), v10 + (v10 >> 1));
    v9 = v8[6];
  }
  v11 = v18[1];
  v12 = v18[2];
  v13 = v18[3];
  v14 = v8[5] + 16 * v9;
  *(float *)v14 = v18[0];
  *(float *)(v14 + 4) = v11;
  *(float *)(v14 + 8) = v12;
  *(float *)(v14 + 12) = v13;
  v8[6] = v10;
  return gameswf::shape_character_def::flush_cache(this);
}


// ===== 7c8d4c gameswf::read_vu30(int &,uchar const*) =====
int __fastcall gameswf::read_vu30(gameswf *this, int *a2, const unsigned __int8 *a3)
{
  int v3; // r3
  int result; // r0
  int v6; // r3
  int v7; // r3
  int v8; // r3
  bool v9; // zf

  v3 = *(unsigned __int8 *)a2;
  *(_DWORD *)this = v3;
  if ( (v3 & 0x80) == 0 )
    return 1;
  v6 = v3 & 0x7F | (*((unsigned __int8 *)a2 + 1) << 7);
  *(_DWORD *)this = v6;
  if ( (v6 & 0x4000) == 0 )
    return 2;
  v7 = v6 & 0x3FFF | (*((unsigned __int8 *)a2 + 2) << 14);
  *(_DWORD *)this = v7;
  if ( (v7 & 0x200000) == 0 )
    return 3;
  result = *((unsigned __int8 *)a2 + 3);
  v8 = v7 & 0x1FFFFF | (result << 21);
  v9 = (v8 & 0x10000000) == 0;
  *(_DWORD *)this = v8;
  if ( (v8 & 0x10000000) != 0 )
  {
    a2 = (int *)*((unsigned __int8 *)a2 + 4);
    v8 &= 0xFFFFFFFu;
  }
  else
  {
    result = 4;
  }
  if ( !v9 )
  {
    *(_DWORD *)this = v8 | ((_DWORD)a2 << 28);
    return 5;
  }
  return result;
}


// ===== 7c8dd4 `global constructor keyed to'.._.._src_gameswf_gameswf_disasm.cpp =====
int `global constructor keyed to'.._.._src_gameswf_gameswf_disasm.cpp()
{
  gameswf::s_instr = 0;
  return _aeabi_atexit(
           (int)&gameswf::s_instr,
           (int)gameswf::hash<int,gameswf::inst_info_avm2,gameswf::fixed_size_hash<int>>::~hash,
           (int)&_dso_handle);
}


// ===== 7c8e10 gameswf::array<gameswf::arg_format_avm2>::reserve(int) =====
void __fastcall gameswf::array<gameswf::arg_format_avm2>::reserve(int a1, int a2)
{
  int v3; // r2
  void *v4; // r0

  if ( !*(_BYTE *)(a1 + 12) )
  {
    v3 = *(_DWORD *)(a1 + 8);
    *(_DWORD *)(a1 + 8) = a2;
    if ( a2 )
    {
      if ( *(_DWORD *)a1 )
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 4 * a2, 4 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(4 * a2);
    }
    else
    {
      v4 = *(void **)a1;
      if ( v4 )
        gameswf::free_internal(v4);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 7c8e8c gameswf::inst_info_avm2::process(gameswf::abc_def const*,uchar const*) =====
int __fastcall gameswf::inst_info_avm2::process(
        gameswf::inst_info_avm2 *this,
        const gameswf::abc_def *a2,
        const unsigned __int8 *a3)
{
  int v3; // r3
  int v7; // r4
  int v8; // r5
  const unsigned __int8 *v9; // r2
  const unsigned __int8 *v11; // r2
  const unsigned __int8 *v12; // r10
  const char *i; // r8
  int v14; // r3
  int v15; // r1
  int v16; // t1
  int v17; // r0
  int v18; // r3
  int v19; // r2
  int v20; // r1
  int v21; // r3
  char *v22; // r3
  const char *v23; // r1
  char *v24; // r1
  int vu30; // r0
  int v26; // r3
  int v27; // r2
  int v28; // r1
  int v29; // r2
  char *v30; // r3
  int v31; // [sp+10h] [bp-Ch] BYREF
  char *v32[2]; // [sp+14h] [bp-8h] BYREF

  v3 = *((_DWORD *)this + 2);
  if ( v3 <= 0 )
    return 1;
  v8 = 0;
  v7 = 1;
  while ( 2 )
  {
    v9 = (const unsigned __int8 *)(*(_DWORD *)(*((_DWORD *)this + 1) + 4 * v8) - 1);
    switch ( *(_DWORD *)(*((_DWORD *)this + 1) + 4 * v8) )
    {
      case 1:
        v7 += gameswf::read_vu30((gameswf *)v32, (int *)&a3[v7], v9);
        if ( (int)v32[0] >= *((_DWORD *)a2 + 28) )
        {
          gameswf::log_msg("\t\tmultiname: runtime %i\n", v32[0]);
          v3 = *((_DWORD *)this + 2);
          goto LABEL_7;
        }
        ++v8;
        v30 = (char *)(*((_DWORD *)a2 + 15) + 20 * *(_DWORD *)(*((_DWORD *)a2 + 27) + 20 * (int)v32[0] + 16));
        if ( *v30 == -1 )
          gameswf::log_msg("\t\tmultiname: %s\n", *((const char **)v30 + 3));
        else
          gameswf::log_msg("\t\tmultiname: %s\n", v30 + 1);
        v3 = *((_DWORD *)this + 2);
        if ( v8 < v3 )
          continue;
        break;
      case 2:
        vu30 = gameswf::read_vu30((gameswf *)v32, (int *)&a3[v7], v9);
        v26 = *((_DWORD *)a2 + 15);
        v7 += vu30;
        v27 = 20 * *(_DWORD *)(*((_DWORD *)a2 + 19) + 8 * (int)v32[0] + 4);
        v28 = *(char *)(v26 + v27);
        v29 = v26 + v27;
        ++v8;
        if ( v28 == -1 )
          gameswf::log_msg("\t\tnamespace: %s\n", *(const char **)(v29 + 12));
        else
          gameswf::log_msg("\t\tnamespace: %s\n", (const char *)(v29 + 1));
        v3 = *((_DWORD *)this + 2);
        if ( v8 < v3 )
          continue;
        break;
      case 3:
        ++v8;
        v24 = (char *)a3[v7];
        v32[0] = v24;
        gameswf::log_msg("\t\tvalue: %i\n", v24);
        v3 = *((_DWORD *)this + 2);
        ++v7;
        if ( v8 < v3 )
          continue;
        break;
      case 4:
        v7 += gameswf::read_vu30((gameswf *)v32, (int *)&a3[v7], v9);
        ++v8;
        gameswf::log_msg("\t\tvalue: %i\n", v32[0]);
        v3 = *((_DWORD *)this + 2);
        if ( v8 < v3 )
          continue;
        break;
      case 5:
        v7 += gameswf::read_vu30((gameswf *)v32, (int *)&a3[v7], v9);
        ++v8;
        gameswf::log_msg("\t\tvalue: %i\n", *(const char **)(*((_DWORD *)a2 + 3) + 4 * (int)v32[0]));
        v3 = *((_DWORD *)this + 2);
        if ( v8 < v3 )
          continue;
        break;
      case 6:
        v7 += gameswf::read_vu30((gameswf *)v32, (int *)&a3[v7], v9);
        ++v8;
        gameswf::log_msg("\t\tvalue: %ui\n", *(const char **)(*((_DWORD *)a2 + 7) + 4 * (int)v32[0]));
        v3 = *((_DWORD *)this + 2);
        if ( v8 < v3 )
          continue;
        break;
      case 7:
        v7 += gameswf::read_vu30((gameswf *)v32, (int *)&a3[v7], v9);
        gameswf::log_msg("\t\tvalue: %d\n", v23, *(_QWORD *)(8 * (int)v32[0] + *((_DWORD *)a2 + 11)));
        v3 = *((_DWORD *)this + 2);
        if ( ++v8 < v3 )
          continue;
        break;
      case 8:
        v7 += gameswf::read_vu30((gameswf *)v32, (int *)&a3[v7], v9);
        v22 = (char *)(*((_DWORD *)a2 + 15) + 20 * (int)v32[0]);
        if ( *v22 == -1 )
          gameswf::log_msg("\t\tstring: %s\n", *((const char **)v22 + 3));
        else
          gameswf::log_msg("\t\tstring: %s\n", v22 + 1);
        v3 = *((_DWORD *)this + 2);
        if ( ++v8 < v3 )
          continue;
        break;
      case 9:
        v7 += gameswf::read_vu30((gameswf *)v32, (int *)&a3[v7], v9);
        ++v8;
        gameswf::log_msg("\t\tcount: %i\n", v32[0]);
        v3 = *((_DWORD *)this + 2);
        if ( v8 < v3 )
          continue;
        break;
      case 0xA:
        v7 += gameswf::read_vu30((gameswf *)v32, (int *)&a3[v7], v9);
        ++v8;
        gameswf::log_msg("\t\tclass: %i\n", v32[0]);
        v3 = *((_DWORD *)this + 2);
        if ( v8 < v3 )
          continue;
        break;
      case 0xB:
        v17 = gameswf::read_vu30((gameswf *)v32, (int *)&a3[v7], v9);
        v18 = *((_DWORD *)a2 + 15);
        v7 += v17;
        ++v8;
        v19 = 20 * *(_DWORD *)(*(_DWORD *)(*((_DWORD *)a2 + 31) + 4 * (int)v32[0]) + 92);
        v20 = *(char *)(v18 + v19);
        v21 = v18 + v19;
        if ( v20 == -1 )
          gameswf::log_msg("\t\tfunction: %s\n", *(const char **)(v21 + 12));
        else
          gameswf::log_msg("\t\tfunction: %s\n", (const char *)(v21 + 1));
        v3 = *((_DWORD *)this + 2);
        if ( v8 < v3 )
          continue;
        break;
      case 0xC:
        v7 += gameswf::read_vu30((gameswf *)v32, (int *)&a3[v7], v9);
        ++v8;
        gameswf::log_msg("\t\texception: %i\n", v32[0]);
        v3 = *((_DWORD *)this + 2);
        if ( v8 < v3 )
          continue;
        break;
      case 0xD:
        v7 += gameswf::read_vu30((gameswf *)v32, (int *)&a3[v7], v9);
        ++v8;
        gameswf::log_msg("\t\tregister: %i\n", v32[0]);
        v3 = *((_DWORD *)this + 2);
        if ( v8 < v3 )
          continue;
        break;
      case 0xE:
        v7 += gameswf::read_vu30((gameswf *)v32, (int *)&a3[v7], v9);
        gameswf::log_msg("\t\tslot index: %i\n", v32[0]);
        v3 = *((_DWORD *)this + 2);
        if ( ++v8 < v3 )
          continue;
        break;
      case 0xF:
        v32[0] = (char *)((a3[v7 + 2] << 16) | (a3[v7 + 1] << 8) | a3[v7]);
        gameswf::log_msg("\t\toffset: %i\n", v32[0]);
        v3 = *((_DWORD *)this + 2);
        ++v8;
        v7 += 3;
        if ( v8 < v3 )
          continue;
        break;
      case 0x10:
        v32[0] = (char *)(a3[v7] | (a3[v7 + 1] << 8) | ((char)a3[v7 + 2] << 16));
        gameswf::log_msg("\t\tdefault offset: %i\n", v32[0]);
        v7 += gameswf::read_vu30((gameswf *)&v31, (int *)&a3[v7 + 3], v11) + 3;
        if ( v31 >= 0 )
        {
          v12 = &a3[v7];
          for ( i = nullptr; (int)i <= v31; ++i )
          {
            v14 = *((char *)v12 + 2);
            v15 = v12[1];
            v16 = *v12;
            v12 += 3;
            v32[0] = (char *)((v14 << 16) | (v15 << 8) | v16);
            gameswf::log_msg("\t\toffset %i: %i\n", i, v32[0]);
            v7 += 3;
          }
        }
        v3 = *((_DWORD *)this + 2);
        if ( ++v8 < v3 )
          continue;
        break;
      default:
LABEL_7:
        if ( ++v8 < v3 )
          continue;
        break;
    }
    return v7;
  }
}


// ===== 7c9434 gameswf::log_disasm(uchar const*) =====
const char *__fastcall gameswf::log_disasm(gameswf *this, const unsigned __int8 *a2)
{
  gameswf *v2; // r4
  const char *v3; // r5
  int v4; // r3
  int v5; // r1
  char *v6; // r6
  const char *v7; // r2
  const char *result; // r0
  const char *v9; // r1
  int v10; // r3
  int v11; // r5
  int i; // r6
  const char *v13; // r1
  int j; // r6
  unsigned int v15; // r1
  size_t v16; // r5
  int v17; // r7
  char *v18; // r6
  size_t v19; // r5
  unsigned int v20; // r2
  const char *m; // r6
  const char *v22; // r10
  int v23; // r9
  size_t v24; // r5
  const char *v25; // r1
  const char *v26; // r1
  int v27; // r6
  int v28; // r10
  int v29; // r3
  char *v30; // r2
  const char *v31; // r1
  int v32; // r3
  char *v33; // r10
  const char *v34; // r9
  const char *v35; // r1
  const char *v36; // r10
  int k; // r6
  char *v38; // r7
  const char *v39; // r1
  const char *v40; // r1
  const char *v41; // r1
  const char *v42; // r1
  const char *v43; // r1
  const char *v44; // r1
  int v45; // r3
  int v46; // r1
  const char *v47; // r1
  int v48; // [sp+18h] [bp-24h]
  int v49; // [sp+28h] [bp-14h] BYREF
  _DWORD v50[2]; // [sp+2Ch] [bp-10h] BYREF
  float v51[2]; // [sp+34h] [bp-8h] BYREF

  v2 = this;
  v3 = (const char *)*(unsigned __int8 *)this;
  v4 = 0;
  v5 = 0;
  v6 = nullptr;
  while ( 1 )
  {
    v7 = *(const char **)((char *)&gameswf::log_disasm(unsigned char const*)::s_instruction_table + v4);
    v4 += 12;
    if ( v7 == v3 )
      v6 = (char *)&gameswf::log_disasm(unsigned char const*)::s_instruction_table + 12 * v5;
    if ( !v7 )
      break;
    ++v5;
  }
  if ( v6 )
  {
    result = gameswf::log_msg("%-15s", *((const char **)v6 + 1));
    v10 = *((_DWORD *)v6 + 2);
  }
  else
  {
    result = gameswf::log_msg("<unknown>[0x%02X]", v3);
    v10 = 2;
  }
  if ( ((unsigned __int8)v3 & 0x80) == 0 )
    return gameswf::log_msg("\n", v9);
  v11 = *((unsigned __int8 *)v2 + 1) | (*((unsigned __int8 *)v2 + 2) << 8);
  switch ( v10 )
  {
    case 2:
      if ( v11 > 0 )
      {
        for ( i = 0; i != v11; ++i )
        {
          gameswf::log_msg(" 0x%02X", (const char *)*((unsigned __int8 *)v2 + 3));
          v2 = (gameswf *)((char *)v2 + 1);
        }
      }
      return gameswf::log_msg("\n", v9);
    case 1:
      gameswf::log_msg(" \"", v9);
      if ( v11 > 0 )
      {
        for ( j = 0; j != v11; ++j )
        {
          gameswf::log_msg("%c", (const char *)*((unsigned __int8 *)v2 + 3));
          v2 = (gameswf *)((char *)v2 + 1);
        }
      }
      return gameswf::log_msg("\"\n", v13);
    case 3:
      return gameswf::log_msg(" %d\n", (const char *)*((unsigned __int8 *)v2 + 3));
    case 4:
      return gameswf::log_msg(
               " %d\n",
               (const char *)(*((unsigned __int8 *)v2 + 3) | (*((unsigned __int8 *)v2 + 4) << 8)));
    case 5:
      v15 = *((unsigned __int8 *)v2 + 3) | (*((unsigned __int8 *)v2 + 4) << 8);
      if ( (v15 & 0x8000) != 0 )
        v15 = ~(~(v15 << 17) >> 17);
      return gameswf::log_msg(" %d\n", (const char *)v15);
    case 6:
      result = gameswf::log_msg("\n", v9);
      if ( v11 > 0 )
      {
        v27 = 0;
        do
        {
          v28 = *((unsigned __int8 *)v2 + v27 + 3);
          result = gameswf::log_msg("\t\t", v26);
          v29 = v27++;
          if ( v28 )
          {
            switch ( v28 )
            {
              case 1:
                memcpy(v51, (char *)v2 + v27 + 3, 4u);
                v27 += 4;
                result = gameswf::log_msg(
                           "(float) %f\n",
                           (const char *)(const char *)HIDWORD(COERCE_UNSIGNED_INT64(v51[0])),
                           v51[0]);
                break;
              case 2:
                result = gameswf::log_msg("NULL\n", v26);
                break;
              case 3:
                result = gameswf::log_msg("undef\n", v26);
                break;
              case 4:
                v41 = (const char *)*((unsigned __int8 *)v2 + v27++ + 3);
                result = gameswf::log_msg("reg[%d]\n", v41);
                break;
              case 5:
                v44 = (const char *)*((unsigned __int8 *)v2 + v27++ + 3);
                result = gameswf::log_msg("bool(%d)\n", v44);
                break;
              case 6:
                memcpy(v50, (char *)v2 + v27 + 3, 4u);
                memcpy(&v49, (char *)v2 + v27 + 7, sizeof(v49));
                v27 += 8;
                result = gameswf::log_msg("(double) %f\n", v43, v49, v50[0]);
                break;
              case 7:
                v42 = (const char *)((*((unsigned __int8 *)v2 + v27 + 5) << 16)
                                   | (*((unsigned __int8 *)v2 + v27 + 4) << 8)
                                   | *((unsigned __int8 *)v2 + v27 + 3)
                                   | (*((unsigned __int8 *)v2 + v27 + 6) << 24));
                v27 += 4;
                result = gameswf::log_msg("(int) %d\n", v42);
                break;
              case 8:
                v47 = (const char *)*((unsigned __int8 *)v2 + v27++ + 3);
                result = gameswf::log_msg("dict_lookup[%d]\n", v47);
                break;
              case 9:
                v45 = *((unsigned __int8 *)v2 + v27 + 3);
                v46 = *((unsigned __int8 *)v2 + v27 + 4);
                v27 += 2;
                result = gameswf::log_msg("dict_lookup_lg[%d]\n", (const char *)(v45 | (v46 << 8)));
                break;
            }
          }
          else
          {
            v48 = v29;
            gameswf::log_msg("\"", v26);
            v30 = (char *)v2 + v27;
            v31 = (const char *)*((unsigned __int8 *)v2 + v27 + 3);
            v32 = v48;
            if ( *((_BYTE *)v2 + v27 + 3) )
            {
              v33 = (char *)v2 + v48;
              do
              {
                gameswf::log_msg("%c", v31, v30, v32);
                v31 = (const char *)(unsigned __int8)v33[5];
                ++v27;
                ++v33;
              }
              while ( v31 );
            }
            ++v27;
            result = gameswf::log_msg("\"\n", v31, v30, v32);
          }
        }
        while ( v11 > v27 );
      }
      break;
    case 7:
      v34 = (const char *)(*((unsigned __int8 *)v2 + 3) | (*((unsigned __int8 *)v2 + 4) << 8));
      result = gameswf::log_msg(" [%d]\n", v34);
      if ( (int)v34 > 0 )
      {
        v36 = nullptr;
        for ( k = 2; ; ++k )
        {
          gameswf::log_msg("\t\t", v35);
          v38 = (char *)v2 + k;
          gameswf::log_msg("\"", v39);
          v40 = (const char *)*((unsigned __int8 *)v2 + k + 3);
          if ( *((_BYTE *)v2 + k + 3) )
          {
            if ( v11 > k )
            {
              while ( 1 )
              {
                gameswf::log_msg("%c", v40);
                v40 = (const char *)(unsigned __int8)v38[4];
                ++k;
                ++v38;
                if ( !v40 )
                  break;
                if ( k == v11 )
                  goto LABEL_66;
              }
            }
            else
            {
LABEL_66:
              gameswf::log_msg("<disasm error -- length exceeded>\n", v40);
            }
          }
          ++v36;
          result = gameswf::log_msg("\"\n", v40);
          if ( v36 == v34 )
            break;
        }
      }
      break;
    case 8:
      v16 = LC_API_STRLEN_0((const char *)v2 + 3);
      v17 = *((unsigned __int8 *)v2 + v16 + 4) | (*((unsigned __int8 *)v2 + v16 + 5) << 8);
      v18 = (char *)v2 + v16 + 4;
      gameswf::log_msg(
        "\n\t\tname = '%s', arg_count = %d, reg_count = %d\n",
        (const char *)v2 + 3,
        v17,
        *((unsigned __int8 *)v2 + v16 + 6));
      v19 = v16 + 6;
      v20 = (unsigned __int8)v18[3] | ((unsigned __int8)v18[4] << 8);
      gameswf::log_msg(
        "\t\t        pg = %d\n"
        "\t\t        pp = %d\n"
        "\t\t        pr = %d\n"
        "\t\tss = %d, ps = %d\n"
        "\t\tsa = %d, pa = %d\n"
        "\t\tst = %d, pt = %d\n",
        (const char *)((v20 >> 8) & 1),
        (v20 >> 7) & 1,
        (v20 >> 6) & 1,
        (v20 >> 5) & 1,
        (v20 >> 4) & 1,
        (v20 >> 3) & 1,
        (v20 >> 2) & 1,
        (v20 >> 1) & 1,
        v18[3] & 1);
      if ( v17 > 0 )
      {
        for ( m = nullptr; m != (const char *)v17; ++m )
        {
          v22 = (char *)v2 + v19 + 4;
          v23 = *((unsigned __int8 *)v2 + v19 + 3);
          v24 = v19 + 1 + LC_API_STRLEN_0(v22);
          v25 = m;
          gameswf::log_msg("\t\targ[%d] - reg[%d] - '%s'\n", v25, v23, v22);
          v19 = v24 + 1;
        }
      }
      return gameswf::log_msg(
               "\t\tfunction length = %d\n",
               (const char *)(*((unsigned __int8 *)v2 + v19 + 3) | (*((unsigned __int8 *)v2 + v19 + 4) << 8)));
  }
  return result;
}


// ===== 7c9acc gameswf::inst_info_avm2::inst_info_avm2(char const*,gameswf::arg_format_avm2,...) =====
void __fastcall __noreturn gameswf::inst_info_avm2::inst_info_avm2(int a1, int a2, int a3, int a4)
{
  *(_DWORD *)a1 = a2;
  *(_BYTE *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 4) = 0;
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)(a1 + 12) = 0;
  gameswf::array<gameswf::arg_format_avm2>::reserve(a1 + 4, 1);
  *(_DWORD *)(*(_DWORD *)(a1 + 4) + 4 * *(_DWORD *)(a1 + 8)) = a3;
  *(_DWORD *)(a1 + 8) = 1;
  abort();
}


// ===== 7c9b24 gameswf::inst_info_avm2::operator=(gameswf::inst_info_avm2 const&) =====
_DWORD *__fastcall gameswf::inst_info_avm2::operator=(_DWORD *a1, _DWORD *a2)
{
  _DWORD *v3; // r7
  int v4; // r6
  int v6; // r4
  int v7; // r3
  int v8; // r3

  *a1 = *a2;
  v3 = a1 + 1;
  v4 = a2[2];
  v6 = a1[2];
  if ( v4 && v4 > a1[3] )
    gameswf::array<gameswf::arg_format_avm2>::reserve((int)(a1 + 1), v4 + (v4 >> 1));
  if ( v4 > v6 )
  {
    v7 = 4 * v6;
    do
    {
      ++v6;
      *(_DWORD *)(*v3 + v7) = 0;
      v7 += 4;
    }
    while ( v6 != v4 );
  }
  a1[2] = v4;
  if ( v4 > 0 )
  {
    v8 = 0;
    do
    {
      *(_DWORD *)(a1[1] + 4 * v8) = *(_DWORD *)(a2[1] + 4 * v8);
      ++v8;
    }
    while ( v8 < a1[2] );
  }
  return a1;
}


// ===== 7c9bc8 gameswf::inst_info_avm2::~inst_info_avm2() =====
void __fastcall gameswf::inst_info_avm2::~inst_info_avm2(gameswf::inst_info_avm2 *this)
{
  int v1; // r3
  _DWORD *v3; // r0
  int v4; // r2

  v1 = *((_DWORD *)this + 2);
  v3 = (_DWORD *)((char *)this + 4);
  if ( v1 < 0 )
  {
    v4 = 4 * v1;
    do
    {
      ++v1;
      *(_DWORD *)(*v3 + v4) = 0;
      v4 += 4;
    }
    while ( v1 );
  }
  *((_DWORD *)this + 2) = 0;
  gameswf::array<gameswf::arg_format_avm2>::reserve((int)v3, 0);
}


// ===== 7c9c28 gameswf::hash<int,gameswf::inst_info_avm2,gameswf::fixed_size_hash<int>>::clear(void) =====
void __fastcall gameswf::hash<int,gameswf::inst_info_avm2,gameswf::fixed_size_hash<int>>::clear(_DWORD **a1)
{
  _DWORD *v1; // r3
  int v3; // r8
  int v4; // r7
  int v5; // r5
  _DWORD *v6; // r6

  v1 = *a1;
  if ( *a1 )
  {
    v3 = v1[1];
    if ( v3 >= 0 )
    {
      v4 = 0;
      v5 = 2;
      do
      {
        ++v4;
        v6 = &v1[v5];
        if ( v1[v5] != -2 && v6[1] != -1 )
        {
          gameswf::inst_info_avm2::~inst_info_avm2((gameswf::inst_info_avm2 *)(v6 + 3));
          *v6 = -2;
          v6[1] = 0;
          v1 = *a1;
        }
        v5 += 8;
      }
      while ( v3 >= v4 );
    }
    gameswf::free_internal(v1);
    *a1 = nullptr;
  }
}


// ===== 7c9cb4 gameswf::hash<int,gameswf::inst_info_avm2,gameswf::fixed_size_hash<int>>::~hash() =====
_DWORD **__fastcall gameswf::hash<int,gameswf::inst_info_avm2,gameswf::fixed_size_hash<int>>::~hash(_DWORD **a1)
{
  gameswf::hash<int,gameswf::inst_info_avm2,gameswf::fixed_size_hash<int>>::clear(a1);
  return a1;
}


// ===== 7c9cc8 gameswf::clear_disasm(void) =====
void __fastcall gameswf::clear_disasm(gameswf *this)
{
  gameswf::hash<int,gameswf::inst_info_avm2,gameswf::fixed_size_hash<int>>::clear((_DWORD **)&gameswf::s_instr);
}


// ===== 7c9cd8 gameswf::hash<int,gameswf::inst_info_avm2,gameswf::fixed_size_hash<int>>::entry::entry(gameswf::hash<int,gameswf::inst_info_avm2,gameswf::fixed_size_hash<int>>::entry const&) =====
int __fastcall gameswf::hash<int,gameswf::inst_info_avm2,gameswf::fixed_size_hash<int>>::entry::entry(
        int result,
        _DWORD *a2)
{
  int v2; // r8
  int v4; // r4
  int v5; // r3
  int v6; // r6
  _DWORD *v7; // r7
  int v8; // r3

  v2 = 0;
  *(_DWORD *)result = *a2;
  v4 = result;
  *(_DWORD *)(result + 4) = a2[1];
  *(_DWORD *)(result + 8) = a2[2];
  v5 = a2[3];
  *(_DWORD *)(result + 16) = 0;
  *(_DWORD *)(result + 20) = 0;
  *(_DWORD *)(result + 12) = v5;
  *(_DWORD *)(result + 24) = 0;
  *(_BYTE *)(result + 28) = 0;
  v6 = a2[5];
  if ( v6 > 0 )
  {
    v7 = (_DWORD *)(result + 16);
    gameswf::array<gameswf::arg_format_avm2>::reserve(result + 16, v6 + (v6 >> 1));
    v8 = 0;
    do
      *(_DWORD *)(*v7 + 4 * v2++) = 0;
    while ( v2 != v6 );
    *(_DWORD *)(v4 + 20) = v2;
    do
    {
      *(_DWORD *)(*(_DWORD *)(v4 + 16) + 4 * v8) = *(_DWORD *)(a2[4] + 4 * v8);
      ++v8;
    }
    while ( v8 < *(_DWORD *)(v4 + 20) );
    return v4;
  }
  else
  {
    *(_DWORD *)(result + 20) = v6;
  }
  return result;
}


// ===== 7c9d8c gameswf::hash<int,gameswf::inst_info_avm2,gameswf::fixed_size_hash<int>>::add(int const&,gameswf::inst_info_avm2 const&) =====
void __fastcall gameswf::hash<int,gameswf::inst_info_avm2,gameswf::fixed_size_hash<int>>::add(
        _DWORD **a1,
        _DWORD *a2,
        int *a3)
{
  int v5; // r7
  int v6; // r5
  _DWORD *v7; // r12
  _DWORD *v8; // r4
  int v9; // r3
  int v10; // r2
  int v11; // r1
  _DWORD *v12; // r6
  int v13; // r0
  int v14; // r8
  int v15; // r5
  int v16; // r9
  int v17; // r5
  int v18; // r0
  int v19; // r3
  int *v20; // r3
  int v21; // r1
  int v22; // r9
  int v23; // r5
  int v24; // r9
  int v25; // r3
  int v26; // r3
  int v27; // r3
  int v28; // r4
  int v29; // r3
  int v30; // r3
  int v31; // r2
  int v32; // r0
  int v33; // r3
  int *v35; // [sp+8h] [bp-Ch]
  int v36; // [sp+Ch] [bp-8h]

  gameswf::hash<int,gameswf::inst_info_avm2,gameswf::fixed_size_hash<int>>::check_expand();
  v5 = 5381;
  v6 = 4;
  ++**a1;
  v7 = a2;
  do
  {
    --v6;
    v5 = 65600 * v5 + *((unsigned __int8 *)a2 + v6) - v5;
  }
  while ( v6 );
  v8 = *a1;
  if ( v5 == -1 )
    v5 = -32769;
  v9 = v8[1];
  v10 = v5 & v9;
  v36 = 4 * (v5 & v9) + 1;
  v11 = v8[2 * v36];
  v12 = &v8[2 * v36];
  if ( v11 == -2 )
  {
    v8[2 * v36] = -1;
    v12[1] = v5;
    v12[2] = *a2;
    v27 = *a3;
    v12[4] = 0;
    v12[5] = 0;
    v12[3] = v27;
    v12[6] = 0;
    *((_BYTE *)v12 + 28) = 0;
    v28 = a3[2];
    if ( v28 > 0 )
    {
      gameswf::array<gameswf::arg_format_avm2>::reserve((int)(v12 + 4), v28 + (v28 >> 1));
      v33 = 0;
      do
        *(_DWORD *)(v12[4] + 4 * v6++) = 0;
      while ( v6 != v28 );
      v12[5] = v6;
      do
      {
        *(_DWORD *)(v12[4] + 4 * v33) = *(_DWORD *)(a3[1] + 4 * v33);
        ++v33;
      }
      while ( v33 < v12[5] );
      return;
    }
LABEL_25:
    v12[5] = v28;
    return;
  }
  v13 = v12[1];
  if ( v13 == -1 )
  {
    v12[1] = v5;
    v12[2] = *a2;
    v29 = *a3;
    v12[4] = 0;
    v12[5] = 0;
    v12[3] = v29;
    v12[6] = 0;
    *((_BYTE *)v12 + 28) = 0;
    v28 = a3[2];
    if ( v28 > 0 )
    {
      gameswf::array<gameswf::arg_format_avm2>::reserve((int)(v12 + 4), v28 + (v28 >> 1));
      v30 = 0;
      do
        *(_DWORD *)(v12[4] + 4 * v6++) = 0;
      while ( v6 != v28 );
      v12[5] = v6;
      do
      {
        *(_DWORD *)(v12[4] + 4 * v30) = *(_DWORD *)(a3[1] + 4 * v30);
        ++v30;
      }
      while ( v30 < v12[5] );
      return;
    }
    goto LABEL_25;
  }
  v14 = v5 & v9;
  do
  {
    v14 = (v14 + 1) & v9;
    v15 = 4 * v14 + 1;
    v16 = v8[2 * v15];
    v17 = (int)&v8[2 * v15];
  }
  while ( v16 != -2 );
  v18 = v9 & v13;
  if ( v18 == v10 )
  {
    gameswf::hash<int,gameswf::inst_info_avm2,gameswf::fixed_size_hash<int>>::entry::entry(v17, v12);
    v12[2] = *a2;
    gameswf::inst_info_avm2::operator=(v12 + 3, a3);
    v8[2 * v36] = v14;
    v12[1] = v5;
  }
  else
  {
    do
    {
      v19 = 4 * v18 + 1;
      v18 = v8[2 * v19];
      v20 = &v8[2 * v19];
    }
    while ( v18 != v10 );
    *(_DWORD *)v17 = v11;
    *(_DWORD *)(v17 + 4) = v12[1];
    *(_DWORD *)(v17 + 8) = v12[2];
    v21 = v12[3];
    *(_DWORD *)(v17 + 16) = 0;
    *(_DWORD *)(v17 + 20) = 0;
    *(_DWORD *)(v17 + 12) = v21;
    *(_DWORD *)(v17 + 24) = 0;
    *(_BYTE *)(v17 + 28) = 0;
    v22 = v12[5];
    if ( v22 > 0 )
    {
      v35 = v20;
      gameswf::array<gameswf::arg_format_avm2>::reserve(v17 + 16, v22 + (v22 >> 1));
      v31 = 0;
      v20 = v35;
      v7 = a2;
      v32 = 0;
      do
        *(_DWORD *)(*(_DWORD *)(v17 + 16) + 4 * v31++) = 0;
      while ( v31 != v22 );
      *(_DWORD *)(v17 + 20) = v31;
      do
      {
        *(_DWORD *)(*(_DWORD *)(v17 + 16) + 4 * v32) = *(_DWORD *)(v12[4] + 4 * v32);
        ++v32;
      }
      while ( v32 < *(_DWORD *)(v17 + 20) );
    }
    else
    {
      *(_DWORD *)(v17 + 20) = v22;
    }
    *v20 = v14;
    v12[2] = *v7;
    v23 = v12[5];
    v12[3] = *a3;
    v24 = a3[2];
    if ( v24 && v24 > v12[6] )
      gameswf::array<gameswf::arg_format_avm2>::reserve((int)(v12 + 4), v24 + (v24 >> 1));
    if ( v24 > v23 )
    {
      v25 = 4 * v23;
      do
      {
        ++v23;
        *(_DWORD *)(v12[4] + v25) = 0;
        v25 += 4;
      }
      while ( v23 != v24 );
    }
    v12[5] = v24;
    if ( v24 > 0 )
    {
      v26 = 0;
      do
      {
        *(_DWORD *)(v12[4] + 4 * v26) = *(_DWORD *)(a3[1] + 4 * v26);
        ++v26;
      }
      while ( v26 < v12[5] );
    }
    v12[1] = v5;
    v8[2 * v36] = -1;
  }
}


// ===== 7ca120 gameswf::hash<int,gameswf::inst_info_avm2,gameswf::fixed_size_hash<int>>::set_raw_capacity(int) =====
void __fastcall gameswf::hash<int,gameswf::inst_info_avm2,gameswf::fixed_size_hash<int>>::set_raw_capacity(
        _DWORD **a1,
        int a2)
{
  _DWORD *v2; // r10
  int v3; // r4
  _DWORD *v4; // r3
  int v5; // r5
  int v6; // r3
  _DWORD *v7; // r0
  int v8; // r8
  int v9; // r6
  int v10; // r5
  _DWORD *v11; // r4
  _DWORD *v12[2]; // [sp+4h] [bp-8h] BYREF

  v2 = a1;
  if ( a2 <= 0 )
  {
LABEL_17:
    gameswf::hash<int,gameswf::inst_info_avm2,gameswf::fixed_size_hash<int>>::clear(a1);
    return;
  }
  v3 = 1 << (int)(float)((float)(logf((float)(a2 - 1)) / 0.69315) + 1.0);
  v4 = (_DWORD *)*v2;
  if ( v3 < 4 )
    v3 = 4;
  if ( !v4 || v4[1] + 1 != v3 )
  {
    v5 = 0;
    v12[0] = gameswf::malloc_internal(32 * v3 + 8);
    *v12[0] = 0;
    v12[0][1] = v3 - 1;
    v6 = 2;
    do
    {
      ++v5;
      v12[0][v6] = -2;
      v6 += 8;
    }
    while ( v3 > v5 );
    v7 = (_DWORD *)*v2;
    if ( *v2 )
    {
      v8 = v7[1];
      if ( v8 >= 0 )
      {
        v9 = 0;
        v10 = 2;
        do
        {
          ++v9;
          v11 = &v7[v10];
          if ( v7[v10] != -2 && v11[1] != -1 )
          {
            gameswf::hash<int,gameswf::inst_info_avm2,gameswf::fixed_size_hash<int>>::add(v12, v11 + 2, v11 + 3);
            gameswf::inst_info_avm2::~inst_info_avm2((gameswf::inst_info_avm2 *)(v11 + 3));
            v11[1] = 0;
            *v11 = -2;
            v7 = (_DWORD *)*v2;
          }
          v10 += 8;
        }
        while ( v8 >= v9 );
      }
      gameswf::free_internal(v7);
    }
    a1 = v12;
    *v2 = v12[0];
    v12[0] = nullptr;
    goto LABEL_17;
  }
}


// ===== 7ca284 gameswf::hash<int,gameswf::inst_info_avm2,gameswf::fixed_size_hash<int>>::check_expand(void) =====
void __fastcall gameswf::hash<int,gameswf::inst_info_avm2,gameswf::fixed_size_hash<int>>::check_expand(_DWORD **a1)
{
  _DWORD *v1; // r3
  int v2; // r1

  v1 = *a1;
  if ( *a1 )
  {
    v2 = 2 * (v1[1] + 1);
    if ( 3 * *v1 <= v2 )
      return;
  }
  else
  {
    v2 = 8;
  }
  gameswf::hash<int,gameswf::inst_info_avm2,gameswf::fixed_size_hash<int>>::set_raw_capacity(a1, v2);
}


// ===== 7ca2b8 gameswf::log_disasm_avm2(gameswf::membuf const&,gameswf::abc_def const*) =====
void __fastcall gameswf::log_disasm_avm2(gameswf *this, const gameswf::membuf *a2, const gameswf::abc_def *a3)
{
  int v4; // r6
  const char *v5; // r1
  int v6; // r3
  int v7; // r0
  int v8; // lr
  int v9; // r0
  int v10; // r12
  int v11; // r9
  int *v12; // r12
  int v13; // r9
  int v14; // r11
  int v15; // r9
  int i; // r3
  int v17; // r3
  const char *v19; // [sp+18h] [bp-D54h] BYREF
  int v20; // [sp+1Ch] [bp-D50h] BYREF
  int v21; // [sp+20h] [bp-D4Ch]
  int v22; // [sp+24h] [bp-D48h]
  char v23; // [sp+28h] [bp-D44h]
  int v24; // [sp+B08h] [bp-264h] BYREF
  int v25[4]; // [sp+B1Ch] [bp-250h] BYREF
  char v26; // [sp+B2Ch] [bp-240h]
  _DWORD v27[141]; // [sp+B30h] [bp-23Ch]
  int v28; // [sp+D64h] [bp-8h] BYREF

  if ( !gameswf::s_instr || !*(_DWORD *)gameswf::s_instr )
  {
    v25[0] = (int)"throw";
    v28 = 3;
    memset(&v25[1], 0, 12);
    v26 = 0;
    gameswf::hash<int,gameswf::inst_info_avm2,gameswf::fixed_size_hash<int>>::add(
      (_DWORD **)&gameswf::s_instr,
      &v28,
      v25);
    gameswf::inst_info_avm2::~inst_info_avm2((gameswf::inst_info_avm2 *)v25);
    v27[140] = 4;
    gameswf::inst_info_avm2::inst_info_avm2((int)&v24, (int)"getsuper", 1, 0);
  }
  v4 = 0;
  do
  {
    while ( 1 )
    {
      v5 = (const char *)*(unsigned __int8 *)(*((_DWORD *)this + 2) + v4);
      v19 = nullptr;
      v27[0] = v5;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      if ( gameswf::s_instr )
      {
        v6 = 5381;
        v7 = 4;
        do
        {
          --v7;
          v6 = 65600 * v6 + *((unsigned __int8 *)v27 + v7) - v6;
        }
        while ( v7 );
        v8 = *(_DWORD *)(gameswf::s_instr + 4);
        if ( v6 == -1 )
          v6 = -32769;
        v9 = v6 & v8;
        v10 = 4 * (v6 & v8) + 1;
        v11 = *(_DWORD *)(gameswf::s_instr + 8 * v10);
        v12 = (int *)(gameswf::s_instr + 8 * v10);
        if ( v11 != -2 )
        {
          v13 = v12[1];
          if ( v13 == -1 || v9 == (v8 & v13) )
          {
            while ( v6 != v13 || v5 != (const char *)v12[2] )
            {
              v9 = *v12;
              if ( *v12 == -1 )
                goto LABEL_6;
              v12 = (int *)(gameswf::s_instr + 32 * v9 + 8);
              v13 = *(_DWORD *)(gameswf::s_instr + 32 * v9 + 12);
            }
            if ( v9 >= 0 )
              break;
          }
        }
      }
LABEL_6:
      gameswf::log_msg(":\tunknown opcode 0x%02X\n", v5);
      ++v4;
LABEL_7:
      gameswf::inst_info_avm2::~inst_info_avm2((gameswf::inst_info_avm2 *)&v19);
      if ( v4 >= *(_DWORD *)this )
        return;
    }
    v14 = gameswf::s_instr + 32 * v9 + 20;
    v19 = *(const char **)v14;
    v15 = *(_DWORD *)(gameswf::s_instr + 32 * v9 + 28);
    if ( v15 > 0 )
    {
      gameswf::array<gameswf::arg_format_avm2>::reserve((int)&v20, v15 + (v15 >> 1));
      for ( i = 0; i != v15; ++i )
        *(_DWORD *)(v20 + 4 * i) = 0;
      v21 = i;
      v17 = 0;
      do
      {
        *(_DWORD *)(v20 + 4 * v17) = *(_DWORD *)(*(_DWORD *)(v14 + 4) + 4 * v17);
        ++v17;
      }
      while ( v17 < v21 );
    }
    else
    {
      v21 = *(_DWORD *)(gameswf::s_instr + 32 * v9 + 28);
    }
    printf(":\t%s\n", v19);
    if ( !v21 )
    {
      ++v4;
      goto LABEL_7;
    }
    v4 += gameswf::inst_info_avm2::process(
            (gameswf::inst_info_avm2 *)&v19,
            a2,
            (const unsigned __int8 *)(*((_DWORD *)this + 2) + v4));
    gameswf::inst_info_avm2::~inst_info_avm2((gameswf::inst_info_avm2 *)&v19);
  }
  while ( v4 < *(_DWORD *)this );
}


// ===== 7cce08 gameswf::next_slash_or_dot(char const*) =====
unsigned __int8 *__fastcall gameswf::next_slash_or_dot(unsigned __int8 *this, const char *a2)
{
  int v2; // r3
  unsigned __int8 *v3; // r2

  v2 = *this;
  if ( *this )
  {
    do
    {
      while ( v2 != 46 )
      {
        if ( (unsigned __int8)(v2 - 46) <= 1u )
          return this;
        v2 = *++this;
        if ( !v2 )
          return nullptr;
      }
      v3 = this + 1;
      if ( *(this + 1) != 46 )
        return this;
      v2 = *(this + 2);
      this += 2;
    }
    while ( v3[1] );
  }
  return nullptr;
}


// ===== 7cce6c gameswf::as_environment::set_member(gameswf::tu_stringi const&,gameswf::as_value const&) =====
int __fastcall gameswf::as_environment::set_member(int a1)
{
  int v1; // r3

  v1 = *(_DWORD *)(a1 + 80);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 28))(*(_DWORD *)(a1 + 80));
  else
    return 0;
}


// ===== 7cce98 gameswf::as_environment::get_member(gameswf::tu_stringi const&,gameswf::as_value *) =====
int __fastcall gameswf::as_environment::get_member(int a1)
{
  int v1; // r3

  v1 = *(_DWORD *)(a1 + 80);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 32))(*(_DWORD *)(a1 + 80));
  else
    return 0;
}


// ===== 7ccec4 gameswf::as_environment::get_target(void) =====
int __fastcall gameswf::as_environment::get_target(gameswf::as_environment *this)
{
  return gameswf::cast_to<gameswf::character>(*((_DWORD *)this + 20));
}


// ===== 7ccecc gameswf::as_environment::set_target(gameswf::character *) =====
void __fastcall gameswf::as_environment::set_target(gameswf::ref_counted **this, gameswf::character *a2)
{
  gameswf::smart_ptr<gameswf::as_object>::set_ref(this + 20, a2);
}


// ===== 7cced4 gameswf::as_environment::clear_refs(gameswf::hash<gameswf::as_object *,bool,gameswf::fixed_size_hash<gameswf::as_object *>> *,gameswf::as_object *) =====
void __fastcall gameswf::as_environment::clear_refs(int a1, int a2, int a3)
{
  int v6; // r8
  int v7; // r6
  int v8; // r7
  int v9; // r3
  int v10; // r10
  int v11; // r6
  int v12; // r7
  int v13; // r8
  int v14; // r3
  int v15; // r7
  int v16; // r6
  int v17; // r10
  int v18; // r6
  int v19; // r7
  int v20; // r8
  int v21; // r3
  int v22; // r3

  if ( a3 == *(_DWORD *)(a1 + 80) )
    gameswf::smart_ptr<gameswf::as_object>::set_ref((gameswf::ref_counted **)(a1 + 80), nullptr);
  v6 = *(_DWORD *)(a1 + 88);
  if ( v6 > 0 )
  {
    v7 = 0;
    while ( 1 )
    {
      v8 = *(_DWORD *)(a1 + 84) + 32 * v7;
      if ( *(_BYTE *)(v8 + 21) != 5 )
        goto LABEL_5;
      v9 = *(_DWORD *)(v8 + 24);
      if ( !v9 )
        goto LABEL_5;
      if ( a3 == v9 )
      {
        gameswf::as_value::drop_refs((gameswf::as_value *)(v8 + 20));
        *(_BYTE *)(v8 + 21) = 0;
LABEL_5:
        if ( ++v7 == v6 )
          break;
      }
      else
      {
        ++v7;
        (*(void (__fastcall **)(_DWORD, int, int))(*(_DWORD *)v9 + 64))(*(_DWORD *)(v8 + 24), a2, a3);
        if ( v7 == v6 )
          break;
      }
    }
  }
  v10 = *(_DWORD *)(a1 + 4);
  if ( v10 > 0 )
  {
    v11 = 0;
    v12 = 0;
    while ( 1 )
    {
      v13 = *(_DWORD *)a1 + v11;
      if ( *(_BYTE *)(v13 + 1) != 5 )
        goto LABEL_12;
      v14 = *(_DWORD *)(v13 + 4);
      if ( !v14 )
        goto LABEL_12;
      if ( a3 == v14 )
      {
        gameswf::as_value::drop_refs((gameswf::as_value *)(*(_DWORD *)a1 + v11));
        *(_BYTE *)(v13 + 1) = 0;
LABEL_12:
        ++v12;
        v11 += 12;
        if ( v12 == v10 )
          break;
      }
      else
      {
        ++v12;
        (*(void (__fastcall **)(_DWORD, int, int))(*(_DWORD *)v14 + 64))(*(_DWORD *)(v13 + 4), a2, a3);
        v11 += 12;
        if ( v12 == v10 )
          break;
      }
    }
  }
  v15 = 0;
  v16 = a1;
  do
  {
    if ( *(_BYTE *)(v16 + 17) == 5 )
    {
      v22 = *(_DWORD *)(v16 + 20);
      if ( v22 )
      {
        if ( a3 == v22 )
        {
          gameswf::as_value::drop_refs((gameswf::as_value *)(a1 + 12 * v15 + 16));
          *(_BYTE *)(v16 + 17) = 0;
        }
        else
        {
          (*(void (__fastcall **)(_DWORD, int, int))(*(_DWORD *)v22 + 64))(*(_DWORD *)(v16 + 20), a2, a3);
        }
      }
    }
    ++v15;
    v16 += 12;
  }
  while ( v15 != 4 );
  v17 = *(_DWORD *)(a1 + 68);
  if ( v17 > 0 )
  {
    v18 = 0;
    v19 = 0;
    while ( 1 )
    {
      v20 = *(_DWORD *)(a1 + 64) + v18;
      if ( *(_BYTE *)(v20 + 1) != 5 )
        goto LABEL_22;
      v21 = *(_DWORD *)(v20 + 4);
      if ( !v21 )
        goto LABEL_22;
      if ( a3 == v21 )
      {
        gameswf::as_value::drop_refs((gameswf::as_value *)(*(_DWORD *)(a1 + 64) + v18));
        *(_BYTE *)(v20 + 1) = 0;
LABEL_22:
        ++v19;
        v18 += 12;
        if ( v19 == v17 )
          return;
      }
      else
      {
        ++v19;
        (*(void (__fastcall **)(_DWORD, int, int))(*(_DWORD *)v21 + 64))(*(_DWORD *)(v20 + 4), a2, a3);
        v18 += 12;
        if ( v19 == v17 )
          return;
      }
    }
  }
}


// ===== 7cd110 gameswf::as_environment::find_target(char const*) =====
gameswf::player **__fastcall gameswf::as_environment::find_target(gameswf::as_environment *this, const char *a2)
{
  gameswf::player **result; // r0

  result = *((gameswf::player ***)this + 20);
  if ( result )
    return (gameswf::player **)gameswf::as_object::find_target(result, a2);
  return result;
}


// ===== 7cd120 gameswf::as_environment::find_target(gameswf::as_value const&) =====
gameswf::player **__fastcall gameswf::as_environment::find_target(
        gameswf::as_environment *this,
        const gameswf::as_value *a2)
{
  gameswf::player **result; // r0

  result = *((gameswf::player ***)this + 20);
  if ( result )
    return (gameswf::player **)gameswf::as_object::find_target(result, a2);
  return result;
}


// ===== 7cd130 gameswf::as_environment::parse_path(gameswf::tu_string const&,gameswf::tu_string*,gameswf::tu_string*) =====
int __fastcall gameswf::as_environment::parse_path(
        gameswf::as_environment *this,
        const gameswf::tu_string *a2,
        gameswf::tu_string *a3,
        gameswf::tu_string *a4)
{
  int v4; // r6
  const char *v7; // r0
  char *v9; // r7
  char *v10; // r3
  char *v11; // r6
  gameswf::tu_string *v12; // r0
  char *v13; // r1
  const char *v15; // r0

  v4 = *(char *)this;
  if ( v4 == -1 )
    v7 = *((const char **)this + 3);
  else
    v7 = (char *)this + 1;
  v9 = strrchr(v7, 58);
  if ( v9 )
  {
    gameswf::tu_string::operator=((char *)a3, v9 + 1);
    if ( *(char *)this == -1 )
      v10 = *((char **)this + 3);
    else
      v10 = (char *)this + 1;
    if ( v9 <= v10 + 1 || (v11 = v9 - 1, *(v9 - 1) != 47) )
      v11 = v9;
    gameswf::tu_string::operator=(a2, (char *)this);
    v12 = a2;
    if ( *(char *)this == -1 )
      v13 = *((char **)this + 3);
    else
      v13 = (char *)this + 1;
    goto LABEL_13;
  }
  if ( v4 == -1 )
    v15 = *((const char **)this + 3);
  else
    v15 = (char *)this + 1;
  v11 = strrchr(v15, 46);
  if ( v11 )
  {
    gameswf::tu_string::operator=((char *)a3, v11 + 1);
    gameswf::tu_string::operator=(a2, (char *)this);
    v12 = a2;
    if ( *(char *)this == -1 )
      v13 = *((char **)this + 3);
    else
      v13 = (char *)this + 1;
LABEL_13:
    gameswf::tu_string::resize(v12, v11 - v13);
    return 1;
  }
  return 0;
}


// ===== 7cd230 gameswf::get_full_url(gameswf::tu_string const&,char const*) =====
gameswf *__fastcall gameswf::get_full_url(gameswf *this, const gameswf::tu_string *a2, char *a3)
{
  unsigned int v3; // r3

  v3 = *((_DWORD *)this + 4) & 0xFF000000 | 0xFFFFFF;
  *(_BYTE *)this = 1;
  *((_DWORD *)this + 4) = v3;
  *((_BYTE *)this + 1) = 0;
  *((_BYTE *)this + 19) = HIBYTE(v3) & 0xFE;
  if ( a3[1] == 58 || *a3 == 47 )
  {
    gameswf::tu_string::operator=((char *)this, "");
    gameswf::tu_string::operator+=(this, a3);
    return this;
  }
  else
  {
    gameswf::tu_string::operator=(this, (char *)a2);
    gameswf::tu_string::operator+=(this, a3);
    return this;
  }
}


// ===== 7cd2c0 gameswf::as_environment::find_local(gameswf::tu_string const&,bool) =====
int __fastcall gameswf::as_environment::find_local(gameswf::as_environment *this, const gameswf::tu_string *a2, int a3)
{
  int v5; // r6
  int v6; // r7
  char *v7; // r8
  int i; // r5
  int v9; // r3
  const gameswf::tu_string *v10; // r0
  int v11; // r2
  const char *v12; // r0
  const char *v13; // r1

  v5 = *((_DWORD *)this + 22) - 1;
  if ( v5 >= 0 )
  {
    v6 = *((_DWORD *)this + 21);
    v7 = (char *)a2 + 1;
    for ( i = 32 * v5; ; i -= 32 )
    {
      v9 = *(char *)(v6 + i);
      v10 = (const gameswf::tu_string *)(v6 + i);
      v11 = v9 == -1 ? *((_DWORD *)v10 + 1) : *(char *)(v6 + i);
      if ( v11 == 1 && !a3 )
        break;
      if ( v10 == a2 )
        return v5;
      v12 = v9 == -1 ? *((const char **)v10 + 3) : (char *)v10 + 1;
      v13 = *(char *)a2 == -1 ? *((const char **)a2 + 3) : v7;
      if ( !LC_API_STRCMP_0(v12, v13) )
        return v5;
      if ( --v5 == -1 )
        return -1;
    }
  }
  return -1;
}


// ===== 7cd360 gameswf::array<gameswf::as_environment::frame_slot>::push_back<gameswf::as_environment::frame_slot>(gameswf::as_environment::frame_slot const&) =====
void __fastcall gameswf::array<gameswf::as_environment::frame_slot>::push_back<gameswf::as_environment::frame_slot>(
        _DWORD *a1,
        gameswf::tu_string *a2)
{
  int v2; // r3
  int v4; // r6
  _BYTE *v6; // r5

  v2 = a1[1];
  v4 = v2 + 1;
  if ( v2 + 1 > a1[2] )
  {
    gameswf::array<gameswf::as_environment::frame_slot>::reserve((int)a1, v4 + (v4 >> 1));
    v2 = a1[1];
  }
  v6 = (_BYTE *)(*a1 + 32 * v2);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v6, a2);
  v6[21] = 0;
  v6[20] = 0;
  gameswf::as_value::operator=((gameswf::as_value *)(v6 + 20), (int)a2 + 20);
  a1[1] = v4;
}


// ===== 7cd3c4 gameswf::as_environment::add_local(gameswf::tu_string const&,gameswf::as_value const&) =====
void __fastcall gameswf::as_environment::add_local(
        gameswf::as_environment *this,
        const gameswf::tu_string *a2,
        const gameswf::as_value *a3)
{
  _DWORD *v4; // r8
  _BYTE v5[8]; // [sp+4h] [bp-14h] BYREF
  void *p; // [sp+10h] [bp-8h]
  _BYTE v7[12]; // [sp+18h] [bp+0h] BYREF

  v4 = (_DWORD *)((char *)this + 84);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v5, a2);
  v7[1] = 0;
  v7[0] = 0;
  gameswf::as_value::operator=((gameswf::as_value *)v7, (int)a3);
  gameswf::array<gameswf::as_environment::frame_slot>::push_back<gameswf::as_environment::frame_slot>(
    v4,
    (gameswf::tu_string *)v5);
  gameswf::as_value::drop_refs((gameswf::as_value *)v7);
  if ( v5[0] == -1 )
    gameswf::free_internal(p);
}


// ===== 7cd46c gameswf::as_environment::declare_local(gameswf::tu_string const&) =====
void __fastcall gameswf::as_environment::declare_local(gameswf::as_environment *this, const gameswf::tu_string *a2)
{
  _BYTE v4[12]; // [sp+4h] [bp-Ch] BYREF

  if ( gameswf::as_environment::find_local(this, a2, 0) < 0 )
  {
    v4[1] = 0;
    v4[0] = 0;
    gameswf::as_environment::add_local(this, a2, (const gameswf::as_value *)v4);
    gameswf::as_value::drop_refs((gameswf::as_value *)v4);
  }
}


// ===== 7cd4bc gameswf::as_environment::set_local(gameswf::tu_string const&,gameswf::as_value const&) =====
void __fastcall gameswf::as_environment::set_local(
        gameswf::as_environment *this,
        const gameswf::tu_string *a2,
        const gameswf::as_value *a3)
{
  int local; // r0

  local = gameswf::as_environment::find_local(this, a2, 0);
  if ( local < 0 )
    gameswf::as_environment::add_local(this, a2, a3);
  else
    gameswf::as_value::operator=((gameswf::as_value *)(*((_DWORD *)this + 21) + 32 * local + 20), (int)a3);
}


// ===== 7cd508 gameswf::as_environment::set_variable_raw(gameswf::tu_string const&,gameswf::as_value const&,gameswf::array<gameswf::with_stack_entry> const&) =====
void __fastcall gameswf::as_environment::set_variable_raw(
        gameswf::as_environment *a1,
        gameswf::tu_string *a2,
        const gameswf::as_value *a3,
        _DWORD *a4)
{
  int v4; // r11
  int v7; // r5
  int v8; // r6
  int v9; // r4
  int local; // r0
  int v11; // r3
  _BYTE v14[16]; // [sp+Ch] [bp-10h] BYREF

  v4 = a4[1];
  if ( v4 - 1 < 0 )
  {
LABEL_8:
    local = gameswf::as_environment::find_local(a1, a2, 1);
    if ( local >= 0 )
    {
      gameswf::as_value::operator=((gameswf::as_value *)(*((_DWORD *)a1 + 21) + 32 * local + 20), (int)a3);
    }
    else
    {
      v11 = *((_DWORD *)a1 + 20);
      if ( v11 )
        (*(void (__fastcall **)(_DWORD, gameswf::tu_string *, const gameswf::as_value *))(*(_DWORD *)v11 + 28))(
          *((_DWORD *)a1 + 20),
          a2,
          a3);
      else
        gameswf::as_environment::add_local(a1, a2, a3);
    }
  }
  else
  {
    v7 = 0;
    v8 = 8 * (v4 - 1);
    while ( 1 )
    {
      v9 = *(_DWORD *)(*a4 + v8);
      ++v7;
      v14[0] = 0;
      v14[1] = 0;
      if ( v9 )
      {
        if ( (*(int (__fastcall **)(int, gameswf::tu_string *, _BYTE *))(*(_DWORD *)v9 + 32))(v9, a2, v14) )
          break;
      }
      gameswf::as_value::drop_refs((gameswf::as_value *)v14);
      v8 -= 8;
      if ( v7 == v4 )
        goto LABEL_8;
    }
    (*(void (__fastcall **)(int, gameswf::tu_string *, const gameswf::as_value *))(*(_DWORD *)v9 + 28))(v9, a2, a3);
    gameswf::as_value::drop_refs((gameswf::as_value *)v14);
  }
}


// ===== 7cd620 gameswf::get_file_type(char const*) =====
int __fastcall gameswf::get_file_type(gameswf *this, const char *a2)
{
  int v2; // r3
  int v3; // r2
  int v4; // r6
  int v5; // r3
  char *v6; // r0
  char *v7; // r0
  char *v8; // r0
  _BYTE v10[8]; // [sp+0h] [bp-44h] BYREF
  void *p; // [sp+Ch] [bp-38h]
  char v12; // [sp+14h] [bp-30h] BYREF
  _BYTE v13[7]; // [sp+15h] [bp-2Fh] BYREF
  char *v14; // [sp+20h] [bp-24h]
  char v15[4]; // [sp+28h] [bp-1Ch] BYREF
  int v16; // [sp+2Ch] [bp-18h]
  void *v17; // [sp+34h] [bp-10h]

  gameswf::tu_string::tu_string((gameswf::tu_string *)v15, (const char *)this);
  v2 = v15[0];
  if ( v15[0] == -1 )
    v3 = v16;
  else
    v3 = v15[0];
  if ( v3 - 1 > 4 )
  {
    if ( v15[0] == -1 )
      v5 = v16;
    else
      v5 = v15[0];
    gameswf::tu_string::utf8_substring((gameswf::tu_string *)v10, v15, v5 - 5, v5 - 1);
    gameswf::tu_string::tu_string((gameswf::tu_string *)&v12, (const gameswf::tu_string *)v10);
    if ( v10[0] == -1 )
      gameswf::free_internal(p);
    if ( v12 == -1 )
      v6 = v14;
    else
      v6 = v13;
    if ( gameswf::tu_string::stricmp(v6, ".swf") )
    {
      if ( v12 == -1 )
        v7 = v14;
      else
        v7 = v13;
      if ( gameswf::tu_string::stricmp(v7, ".jpg") )
      {
        if ( v12 == -1 )
          v8 = v14;
        else
          v8 = v13;
        if ( gameswf::tu_string::stricmp(v8, ".3ds") )
          v4 = 0;
        else
          v4 = 3;
      }
      else
      {
        v4 = 2;
      }
    }
    else
    {
      v4 = 1;
    }
    if ( v12 == -1 )
      gameswf::free_internal(v14);
    v2 = v15[0];
  }
  else
  {
    v4 = 0;
  }
  if ( v2 == -1 )
    gameswf::free_internal(v17);
  return v4;
}


// ===== 7cd7a8 gameswf::as_environment::set_variable(gameswf::tu_string const&,gameswf::as_value const&,gameswf::array<gameswf::with_stack_entry> const&) =====
void __fastcall gameswf::as_environment::set_variable(
        gameswf::as_environment *a1,
        gameswf::tu_string *a2,
        const gameswf::as_value *a3,
        _DWORD *a4)
{
  char *v5; // r1
  gameswf::player **target; // r0
  int v7; // r7
  void (__fastcall *v8)(int, _BYTE *, const gameswf::as_value *); // r6
  _BYTE v12[8]; // [sp+10h] [bp-44h] BYREF
  void *v13; // [sp+1Ch] [bp-38h]
  _BYTE v14[8]; // [sp+24h] [bp-30h] BYREF
  void *p; // [sp+30h] [bp-24h]
  unsigned int v16; // [sp+34h] [bp-20h]
  char v17; // [sp+38h] [bp-1Ch] BYREF
  char v18; // [sp+39h] [bp-1Bh] BYREF
  char *v19; // [sp+44h] [bp-10h]
  unsigned int v20; // [sp+48h] [bp-Ch]

  gameswf::as_environment::get_target(a1);
  v20 = v20 & 0xFF000000 | 0xFFFFFF;
  v16 = v16 & 0xFF000000 | 0xFFFFFF;
  v14[0] = 1;
  HIBYTE(v20) &= ~1u;
  HIBYTE(v16) &= ~1u;
  v17 = 1;
  v18 = 0;
  v14[1] = 0;
  if ( gameswf::as_environment::parse_path(a2, (const gameswf::tu_string *)&v17, (gameswf::tu_string *)v14, nullptr) )
  {
    if ( v17 == -1 )
      v5 = v19;
    else
      v5 = &v18;
    target = gameswf::as_environment::find_target(a1, v5);
    v7 = gameswf::cast_to<gameswf::character>((int)target);
    if ( v7 )
    {
      v8 = *(void (__fastcall **)(int, _BYTE *, const gameswf::as_value *))(*(_DWORD *)v7 + 28);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v12, (const gameswf::tu_string *)v14);
      v8(v7, v12, a3);
      if ( v12[0] == -1 )
        gameswf::free_internal(v13);
    }
    if ( v14[0] != -1 )
    {
LABEL_9:
      if ( v17 != -1 )
        return;
LABEL_13:
      gameswf::free_internal(v19);
      return;
    }
  }
  else
  {
    gameswf::as_environment::set_variable_raw(a1, a2, a3, a4);
    if ( v14[0] != -1 )
      goto LABEL_9;
  }
  gameswf::free_internal(p);
  if ( v17 == -1 )
    goto LABEL_13;
}


// ===== 7cd934 gameswf::as_environment::set_target(gameswf::as_value &,gameswf::character *) =====
void __fastcall gameswf::as_environment::set_target(
        gameswf::ref_counted **this,
        gameswf::as_value *a2,
        gameswf::character *a3)
{
  int v3; // r3
  gameswf::player **v5; // r0
  gameswf::character *v6; // r1
  char *v7; // r0
  int v8; // r1
  const char *v9; // r1
  gameswf::player **target; // r0
  gameswf::character *v11; // r1
  void *v13[2]; // [sp+8h] [bp-1Ch] BYREF
  void *p; // [sp+14h] [bp-10h]

  v3 = *((unsigned __int8 *)a2 + 1);
  if ( (unsigned __int8)(v3 - 3) <= 1u )
  {
    v7 = gameswf::as_value::to_tu_string(a2);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v13, (const gameswf::tu_string *)v7);
    if ( SLOBYTE(v13[0]) == -1 )
      v8 = (int)v13[1];
    else
      v8 = SLOBYTE(v13[0]);
    if ( v8 - 1 <= 0 )
    {
      gameswf::as_environment::set_target(this, a3);
    }
    else
    {
      if ( SLOBYTE(v13[0]) == -1 )
        v9 = (const char *)p;
      else
        v9 = (char *)v13 + 1;
      target = gameswf::as_environment::find_target((gameswf::as_environment *)this, v9);
      v11 = (gameswf::character *)gameswf::cast_to<gameswf::character>((int)target);
      if ( !v11 )
      {
        gameswf::tu_string::~tu_string(v13);
        return;
      }
      gameswf::as_environment::set_target(this, v11);
    }
    if ( SLOBYTE(v13[0]) == -1 )
      gameswf::free_internal(p);
  }
  else if ( v3 == 5 )
  {
    v5 = gameswf::as_environment::find_target((gameswf::as_environment *)this, a2);
    v6 = (gameswf::character *)gameswf::cast_to<gameswf::character>((int)v5);
    if ( v6 )
      gameswf::as_environment::set_target(this, v6);
  }
}


// ===== 7cda54 gameswf::as_environment::get_root(void) =====
int __fastcall gameswf::as_environment::get_root(gameswf::as_environment *this)
{
  gameswf::player *v2; // r0
  _BYTE *v3; // r3

  v2 = *((gameswf::player **)this + 26);
  if ( v2 )
  {
    v3 = *((_BYTE **)this + 25);
    if ( !v3[4] )
    {
      if ( (*(_DWORD *)v3)-- == 1 )
        gameswf::free_internal(v3);
      v2 = nullptr;
      *((_DWORD *)this + 26) = 0;
      *((_DWORD *)this + 25) = 0;
    }
  }
  return gameswf::player::get_root(v2);
}


// ===== 7cdaac gameswf::as_environment::load_file(char const*,gameswf::as_value const&) =====
gameswf::ref_counted **__fastcall gameswf::as_environment::load_file(
        gameswf::player **this,
        char *a2,
        const gameswf::as_value *a3)
{
  gameswf::player **target; // r0
  int v6; // r0
  int v7; // r5
  gameswf::ref_counted **generic_character; // r7
  int v9; // r3
  _BYTE *v10; // r0
  gameswf::player *v12; // r0
  int v13; // r3
  gameswf::player *v14; // r7
  char *workdir; // r0
  const char *v16; // r1
  gameswf *v17; // r0
  int file_type; // r0
  const char *v19; // r1
  gameswf::character *v20; // r10
  int v21; // r3
  int v22; // r9
  void *v23; // r0
  int v24; // r9
  gameswf::ref_counted *v25; // r11
  float *v26; // r7
  int v27; // r3
  float v28; // r0
  int v29; // r3
  gameswf::player *v30; // r0
  int v31; // r3
  gameswf::player *v32; // r9
  char *v33; // r2
  char *v34; // r2
  gameswf::player *player; // r0
  const char *v37; // r1
  gameswf::movie_def_impl *movie; // r1
  gameswf::player *v39; // r3
  int v40; // r2
  gameswf::player *v41; // r9
  int v42; // r3
  char *v43; // r2
  glitch::IReferenceCounted *v44; // [sp+20h] [bp-34h] BYREF
  _BYTE v45[8]; // [sp+24h] [bp-30h] BYREF
  void *v46; // [sp+30h] [bp-24h]
  char v47; // [sp+38h] [bp-1Ch] BYREF
  _BYTE v48[7]; // [sp+39h] [bp-1Bh] BYREF
  void *p; // [sp+44h] [bp-10h]

  target = gameswf::as_environment::find_target((gameswf::as_environment *)this, a3);
  v6 = gameswf::cast_to<gameswf::character>((int)target);
  v7 = v6;
  if ( !v6 )
    return nullptr;
  generic_character = (gameswf::ref_counted **)*a2;
  if ( !*a2 )
  {
    v9 = *(_DWORD *)(v6 + 64);
    if ( v9 )
    {
      v10 = *(_BYTE **)(v6 + 60);
      if ( v10[4] )
      {
        (*(void (__fastcall **)(_DWORD, int))(*(_DWORD *)v9 + 168))(*(_DWORD *)(v7 + 64), v7);
        return generic_character;
      }
      if ( (*(_DWORD *)v10)-- == 1 )
        gameswf::free_internal(v10);
      *(_DWORD *)(v7 + 64) = 0;
      *(_DWORD *)(v7 + 60) = 0;
    }
    (*(void (__fastcall **)(int))(*(_DWORD *)v7 + 164))(v7);
    return nullptr;
  }
  v12 = *(this + 26);
  if ( v12 )
  {
    v13 = (int)*(this + 25);
    v14 = (gameswf::player *)*(unsigned __int8 *)(v13 + 4);
    if ( !*(_BYTE *)(v13 + 4) )
    {
      gameswf::smart_ptr_proxy::operator=((_DWORD **)this + 25, (_DWORD *)*(unsigned __int8 *)(v13 + 4));
      *(this + 26) = v14;
      v12 = v14;
    }
  }
  workdir = gameswf::player::get_workdir(v12);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v45, workdir);
  gameswf::get_full_url((gameswf *)&v47, (const gameswf::tu_string *)v45, a2);
  if ( v45[0] == -1 )
    gameswf::free_internal(v46);
  if ( v47 == -1 )
    v17 = (gameswf *)p;
  else
    v17 = (gameswf *)v48;
  file_type = gameswf::get_file_type(v17, v16);
  switch ( file_type )
  {
    case 2:
      generic_character = nullptr;
      gameswf::log_error("gameswf is not linked to jpeglib -- can't load jpeg image data!\n", v19);
      goto LABEL_41;
    case 3:
      generic_character = nullptr;
      gameswf::log_error("gameswf is not linked to lib3ds -- can't load 3DS file\n", v19);
      goto LABEL_41;
    case 1:
      player = (gameswf::player *)gameswf::as_environment::get_player((gameswf::as_environment *)this);
      if ( v47 == -1 )
        v37 = (const char *)p;
      else
        v37 = v48;
      movie = gameswf::player::create_movie(player, v37);
      if ( movie )
      {
        generic_character = (gameswf::ref_counted **)(*(int (__fastcall **)(int, gameswf::movie_def_impl *))(*(_DWORD *)v7 + 176))(
                                                       v7,
                                                       movie);
        goto LABEL_41;
      }
      goto LABEL_49;
  }
  v20 = *(gameswf::character **)(v7 + 64);
  if ( v20 )
  {
    v21 = *(_DWORD *)(v7 + 60);
    v22 = *(unsigned __int8 *)(v21 + 4);
    if ( *(_BYTE *)(v21 + 4) )
    {
      if ( gameswf::s_texture_loader_callback )
      {
        v23 = v47 == -1 ? p : v48;
        if ( ((int (__fastcall *)(void *, _DWORD, _DWORD))gameswf::s_texture_loader_callback)(v23, 0, 0) )
          goto LABEL_26;
      }
      v39 = *(this + 26);
      if ( v39 )
      {
        v40 = (int)*(this + 25);
        v41 = (gameswf::player *)*(unsigned __int8 *)(v40 + 4);
        if ( !*(_BYTE *)(v40 + 4) )
        {
          gameswf::smart_ptr_proxy::operator=((_DWORD **)this + 25, (_DWORD *)*(unsigned __int8 *)(v40 + 4));
          *(this + 26) = v41;
          v39 = v41;
        }
      }
      v42 = *(_DWORD *)(*((_DWORD *)v39 + 43) + 40);
      if ( v47 == -1 )
        v43 = (char *)p;
      else
        v43 = v48;
      glitch::video::CTextureManager::getTexture(&v44, *(char **)(v42 + 224), v43, nullptr);
      if ( v44 )
      {
        glitch::IReferenceCounted::drop(v44);
LABEL_26:
        v24 = (*(int (__fastcall **)(int))(*(_DWORD *)gameswf::s_render_handler + 24))(gameswf::s_render_handler);
        v25 = (gameswf::ref_counted *)gameswf::as_environment::get_player((gameswf::as_environment *)this);
        v26 = (float *)operator new(0x34u, 0);
        gameswf::character_def::character_def(v26, v25);
        *((_DWORD *)v26 + 8) = v24;
        *(_DWORD *)v26 = off_98FBF8;
        if ( v24 )
          gameswf::ref_counted::add_ref(v24);
        v27 = *((_DWORD *)v26 + 8);
        v26[9] = 0.0;
        v26[11] = 0.0;
        v28 = (float)(*(int (__fastcall **)(int))(*(_DWORD *)v27 + 36))(v27) * 20.0;
        v29 = *((_DWORD *)v26 + 8);
        v26[10] = v28;
        v26[12] = (float)(*(int (__fastcall **)(int))(*(_DWORD *)v29 + 40))(v29) * 20.0;
        v30 = *(this + 26);
        if ( v30 )
        {
          v31 = (int)*(this + 25);
          v32 = (gameswf::player *)*(unsigned __int8 *)(v31 + 4);
          if ( !*(_BYTE *)(v31 + 4) )
          {
            gameswf::smart_ptr_proxy::operator=((_DWORD **)this + 25, (_DWORD *)*(unsigned __int8 *)(v31 + 4));
            *(this + 26) = v32;
            v30 = v32;
          }
        }
        generic_character = gameswf::player::create_generic_character(v30, (gameswf::character_def *)v26, v20, 0);
        gameswf::weak_ptr<gameswf::character>::operator=((int)(generic_character + 15), v20);
        v33 = *(char **)(v7 + 68);
        if ( *v33 == -1 )
          v34 = *((char **)v33 + 3);
        else
          v34 = v33 + 1;
        (*(void (__fastcall **)(gameswf::character *, gameswf::ref_counted **, char *, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD))(*(_DWORD *)v20 + 192))(
          v20,
          generic_character,
          v34,
          *(unsigned __int16 *)(v7 + 148),
          0,
          0,
          0,
          *(_DWORD *)(v7 + 144),
          *(unsigned __int16 *)(v7 + 150));
        goto LABEL_41;
      }
LABEL_49:
      generic_character = nullptr;
      goto LABEL_41;
    }
    gameswf::smart_ptr_proxy::operator=((_DWORD **)(v7 + 60), (_DWORD *)*(unsigned __int8 *)(v21 + 4));
    *(_DWORD *)(v7 + 64) = v22;
  }
  generic_character = nullptr;
  gameswf::log_error("character can't replace _root\n", v19);
LABEL_41:
  if ( v47 == -1 )
    gameswf::free_internal(p);
  return generic_character;
}


// ===== 7cdf2c gameswf::as_environment::get_variable_raw(gameswf::tu_string const&,gameswf::array<gameswf::with_stack_entry> const&,int *) =====
gameswf::as_value *__fastcall gameswf::as_environment::get_variable_raw(
        gameswf::as_value *a1,
        gameswf::as_environment *this,
        gameswf::tu_string *a3,
        _DWORD *a4,
        int *a5)
{
  int v6; // r5
  int v10; // r4
  int v11; // r3
  int local; // r0
  int v15; // r1
  int v16; // r3
  gameswf::player *v17; // r0
  gameswf::as_object *stage; // r0
  gameswf::player *player; // r0
  gameswf::as_object *global; // r0
  gameswf::root *root; // r0
  gameswf::as_object *root_movie; // r0
  gameswf::as_object *target; // r0
  gameswf::player *v24; // r0
  int v25; // r0
  _BYTE v26[16]; // [sp+4h] [bp-10h] BYREF

  v6 = a4[1] - 1;
  v26[1] = 0;
  v26[0] = 0;
  if ( v6 < 0 )
  {
LABEL_10:
    local = gameswf::as_environment::find_local(this, a3, 1);
    if ( local >= 0 )
    {
      v15 = *((_DWORD *)this + 21);
      *((_BYTE *)a1 + 1) = 0;
      *(_BYTE *)a1 = 0;
      gameswf::as_value::operator=(a1, v15 + 32 * local + 20);
      goto LABEL_8;
    }
    v16 = *((_DWORD *)this + 20);
    if ( !v16
      || !(*(int (__fastcall **)(_DWORD, gameswf::tu_string *, _BYTE *))(*(_DWORD *)v16 + 32))(
            *((_DWORD *)this + 20),
            a3,
            v26) )
    {
      switch ( gameswf::get_standard_member(a3) )
      {
        case '!':
          target = (gameswf::as_object *)gameswf::as_environment::get_target(this);
          gameswf::as_value::set_as_object((gameswf::as_value *)v26, target);
          break;
        case '"':
        case '%':
          root = (gameswf::root *)gameswf::as_environment::get_root(this);
          root_movie = (gameswf::as_object *)gameswf::root::get_root_movie(root);
          gameswf::as_value::set_as_object((gameswf::as_value *)v26, root_movie);
          break;
        case '&':
          player = (gameswf::player *)gameswf::as_environment::get_player(this);
          global = (gameswf::as_object *)gameswf::player::get_global(player);
          gameswf::as_value::set_as_object((gameswf::as_value *)v26, global);
          break;
        case '\'':
          v17 = (gameswf::player *)gameswf::as_environment::get_player(this);
          stage = (gameswf::as_object *)gameswf::player::get_stage(v17);
          gameswf::as_value::set_as_object((gameswf::as_value *)v26, stage);
          break;
        default:
          v24 = (gameswf::player *)gameswf::as_environment::get_player(this);
          v25 = gameswf::player::get_global(v24);
          (*(int (__fastcall **)(int, gameswf::tu_string *, _BYTE *))(*(_DWORD *)v25 + 32))(v25, a3, v26);
          break;
      }
    }
  }
  else
  {
    v10 = 8 * v6;
    while ( 1 )
    {
      v11 = *(_DWORD *)(*a4 + v10);
      v10 -= 8;
      if ( v11 )
      {
        if ( (*(int (__fastcall **)(int, gameswf::tu_string *, _BYTE *))(*(_DWORD *)v11 + 32))(v11, a3, v26) )
          break;
      }
      if ( v6-- == 0 )
        goto LABEL_10;
    }
    if ( a5 )
      *a5 = v6;
  }
  *((_BYTE *)a1 + 1) = 0;
  *(_BYTE *)a1 = 0;
  gameswf::as_value::operator=(a1, (int)v26);
LABEL_8:
  gameswf::as_value::drop_refs((gameswf::as_value *)v26);
  return a1;
}


// ===== 7ce120 gameswf::as_environment::get_variable(gameswf::tu_string const&,gameswf::array<gameswf::with_stack_entry> const&,int *) =====
gameswf::as_value *__fastcall gameswf::as_environment::get_variable(
        gameswf::as_value *a1,
        gameswf::as_environment *this,
        gameswf::tu_string *a3,
        _DWORD *a4,
        int *a5)
{
  const char *v7; // r1
  _BYTE *v8; // r3
  gameswf::player **target; // r7
  void (__fastcall *v10)(gameswf::player **, _BYTE *, _BYTE *); // r8
  gameswf::player *player; // r0
  gameswf::player **global; // r0
  const char *v14; // r1
  _BYTE *v15; // r12
  gameswf::as_object *v16; // r10
  void (__fastcall *v17)(gameswf::as_object *, void **, _BYTE *); // r8
  _BYTE v20[12]; // [sp+24h] [bp-70h] BYREF
  _BYTE v21[12]; // [sp+30h] [bp-64h] BYREF
  void *v22[5]; // [sp+3Ch] [bp-58h] BYREF
  _BYTE v23[8]; // [sp+50h] [bp-44h] BYREF
  void *v24; // [sp+5Ch] [bp-38h]
  _BYTE v25[8]; // [sp+64h] [bp-30h] BYREF
  void *p; // [sp+70h] [bp-24h]
  unsigned int v27; // [sp+74h] [bp-20h]
  _BYTE v28[8]; // [sp+78h] [bp-1Ch] BYREF
  void *v29; // [sp+84h] [bp-10h]
  unsigned int v30; // [sp+88h] [bp-Ch]

  gameswf::as_environment::get_target(this);
  v30 = v30 & 0xFF000000 | 0xFFFFFF;
  v27 = v27 & 0xFF000000 | 0xFFFFFF;
  v25[0] = 1;
  HIBYTE(v30) &= ~1u;
  HIBYTE(v27) &= ~1u;
  v28[0] = 1;
  v28[1] = 0;
  v25[1] = 0;
  if ( !gameswf::as_environment::parse_path(a3, (const gameswf::tu_string *)v28, (gameswf::tu_string *)v25, nullptr) )
  {
    gameswf::as_environment::get_variable_raw(a1, this, a3, a4, a5);
    if ( v25[0] != -1 )
      goto LABEL_12;
LABEL_15:
    gameswf::free_internal(p);
    if ( v28[0] != -1 )
      return a1;
LABEL_16:
    gameswf::free_internal(v29);
    return a1;
  }
  v8 = (_BYTE *)v28[0];
  if ( v28[0] == -1 )
    v7 = (const char *)v29;
  else
    v8 = v28;
  if ( v28[0] != -1 )
    v7 = v8 + 1;
  target = gameswf::as_environment::find_target(this, v7);
  if ( target )
  {
    v21[1] = 0;
    v21[0] = 0;
    v10 = *((void (__fastcall **)(gameswf::player **, _BYTE *, _BYTE *))*target + 8);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v23, (const gameswf::tu_string *)v25);
    v10(target, v23, v21);
    if ( v23[0] == -1 )
      gameswf::free_internal(v24);
    *((_BYTE *)a1 + 1) = 0;
    *(_BYTE *)a1 = 0;
    gameswf::as_value::operator=(a1, (int)v21);
    gameswf::as_value::drop_refs((gameswf::as_value *)v21);
  }
  else
  {
    player = (gameswf::player *)gameswf::as_environment::get_player(this);
    global = (gameswf::player **)gameswf::player::get_global(player);
    if ( v28[0] == -1 )
      v14 = (const char *)v29;
    else
      v15 = v28;
    if ( v28[0] != -1 )
      v14 = v15 + 1;
    v16 = gameswf::as_object::find_target(global, v14);
    if ( v16 )
    {
      v20[0] = 0;
      v20[1] = 0;
      v17 = *(void (__fastcall **)(gameswf::as_object *, void **, _BYTE *))(*(_DWORD *)v16 + 32);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v22, (const gameswf::tu_string *)v25);
      v17(v16, v22, v20);
      gameswf::tu_string::~tu_string(v22);
      *((_BYTE *)a1 + 1) = 0;
      *(_BYTE *)a1 = 0;
      gameswf::as_value::operator=(a1, (int)v20);
      gameswf::as_value::drop_refs((gameswf::as_value *)v20);
    }
    else
    {
      *((_BYTE *)a1 + 1) = 0;
      *(_BYTE *)a1 = 0;
    }
  }
  if ( v25[0] == -1 )
    goto LABEL_15;
LABEL_12:
  if ( v28[0] == -1 )
    goto LABEL_16;
  return a1;
}


// ===== 7ce39c gameswf::font::is(int) =====
bool __fastcall gameswf::font::is(gameswf::font *this, int a2)
{
  return a2 == 19 || a2 == 10;
}


// ===== 7ce3b8 gameswf::font::get_glyph_by_index(int) =====
int __fastcall gameswf::font::get_glyph_by_index(int this, int a2)
{
  int v2; // r3
  bool v3; // cc

  v2 = *(_DWORD *)(this + 36);
  v3 = a2 < v2;
  if ( a2 >= v2 )
    this = 0;
  else
    v2 = *(_DWORD *)(this + 32);
  if ( v3 )
    return *(_DWORD *)(v2 + 4 * a2);
  return this;
}


// ===== 7ce3d0 gameswf::font::output_cached_data(gameswf::tu_file *,gameswf::cache_options const&) =====
void gameswf::font::output_cached_data()
{
  ;
}


// ===== 7ce3d4 gameswf::font::input_cached_data(gameswf::tu_file *) =====
void __fastcall gameswf::font::input_cached_data(gameswf::font *this, gameswf::tu_file *a2)
{
  ;
}


// ===== 7ce3d8 gameswf::hash<gameswf::font::kerning_pair,float,gameswf::fixed_size_hash<gameswf::font::kerning_pair>>::find_index(gameswf::font::kerning_pair const&) =====
int __fastcall gameswf::hash<gameswf::font::kerning_pair,float,gameswf::fixed_size_hash<gameswf::font::kerning_pair>>::find_index(
        int *a1,
        unsigned __int16 *a2)
{
  int v2; // r3
  int result; // r0
  int v4; // r2
  int v5; // r0
  int v6; // r0
  int v7; // r4
  int v8; // r12
  int v9; // r5
  int v10; // r12
  int v11; // r5

  v2 = *a1;
  if ( !*a1 )
    return -1;
  v4 = 5381;
  v5 = 4;
  do
  {
    --v5;
    v4 = 65600 * v4 + *((unsigned __int8 *)a2 + v5) - v4;
  }
  while ( v5 );
  v6 = *(_DWORD *)(v2 + 4);
  if ( v4 == -1 )
    v4 = -32769;
  v7 = v4 & v6;
  v8 = 2 * (v4 & v6) + 1;
  v9 = *(_DWORD *)(v2 + 8 * v8);
  v10 = v2 + 8 * v8;
  if ( v9 == -2 )
    return -1;
  v11 = *(_DWORD *)(v10 + 4);
  if ( v11 == -1 )
  {
    result = v4 & v6;
    goto LABEL_15;
  }
  result = v6 & v11;
  if ( result != v7 )
    return -1;
LABEL_15:
  while ( v4 != v11 || *(unsigned __int16 *)(v10 + 8) != *a2 || *(unsigned __int16 *)(v10 + 10) != a2[1] )
  {
    result = *(_DWORD *)v10;
    if ( *(_DWORD *)v10 == -1 )
      break;
    v10 = v2 + 16 * result + 8;
    v11 = *(_DWORD *)(v2 + 16 * result + 12);
  }
  return result;
}


// ===== 7ce4a8 gameswf::font::get_kerning_adjustment(int,int) =====
int __fastcall gameswf::font::get_kerning_adjustment(gameswf::font *this, unsigned __int16 a2, unsigned __int16 a3)
{
  int result; // r0
  int v5; // r3
  bool v6; // nf
  unsigned __int16 v7[2]; // [sp+4h] [bp-4h] BYREF

  v7[0] = a2;
  v7[1] = a3;
  result = gameswf::hash<gameswf::font::kerning_pair,float,gameswf::fixed_size_hash<gameswf::font::kerning_pair>>::find_index(
             (int *)this + 28,
             v7);
  v6 = result < 0;
  if ( result < 0 )
    result = 0;
  else
    v5 = *((_DWORD *)this + 28);
  if ( !v6 )
    return *(_DWORD *)(v5 + 16 * result + 20);
  return result;
}


// ===== 7ce4e4 gameswf::hash<ushort,short,gameswf::font::simple_code_hash<ushort>>::clear(void) =====
void __fastcall gameswf::hash<unsigned short,short,gameswf::font::simple_code_hash<unsigned short>>::clear(_DWORD **a1)
{
  _DWORD *v2; // r0
  int v3; // r5
  int v4; // r2
  int v5; // r3
  _DWORD *v6; // r12

  v2 = *a1;
  if ( v2 )
  {
    v3 = v2[1];
    if ( v3 >= 0 )
    {
      v4 = 0;
      v5 = 2;
      do
      {
        ++v4;
        v6 = &v2[v5];
        if ( v2[v5] != -2 && v6[1] != -1 )
        {
          v6[1] = 0;
          *v6 = -2;
          v2 = *a1;
        }
        v5 += 3;
      }
      while ( v3 >= v4 );
    }
    gameswf::free_internal(v2);
    *a1 = nullptr;
  }
}


// ===== 7ce568 gameswf::hash<gameswf::font::kerning_pair,float,gameswf::fixed_size_hash<gameswf::font::kerning_pair>>::clear(void) =====
void __fastcall gameswf::hash<gameswf::font::kerning_pair,float,gameswf::fixed_size_hash<gameswf::font::kerning_pair>>::clear(
        _DWORD **a1)
{
  _DWORD *v2; // r0
  int v3; // r1
  int v4; // r2
  int v5; // r3
  _DWORD *v6; // r12

  v2 = *a1;
  if ( v2 )
  {
    v3 = v2[1];
    if ( v3 >= 0 )
    {
      v4 = 0;
      v5 = 2;
      do
      {
        ++v4;
        v6 = &v2[v5];
        if ( v2[v5] != -2 && v6[1] != -1 )
        {
          v6[1] = 0;
          *v6 = -2;
          v2 = *a1;
        }
        v5 += 4;
      }
      while ( v3 >= v4 );
    }
    gameswf::free_internal(v2);
    *a1 = nullptr;
  }
}


// ===== 7ce5e8 gameswf::smart_ptr<gameswf::shape_character_def>::set_ref(gameswf::shape_character_def*) =====
void __fastcall gameswf::smart_ptr<gameswf::shape_character_def>::set_ref(
        gameswf::ref_counted **a1,
        gameswf::ref_counted *this)
{
  gameswf::ref_counted *v3; // r0

  v3 = *a1;
  if ( v3 != this )
  {
    if ( v3 )
      gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v3);
    *a1 = this;
    if ( this )
      gameswf::ref_counted::add_ref((int)this);
  }
}


// ===== 7ce628 gameswf::font::copy_from(gameswf::font*) =====
gameswf::tu_string *__fastcall gameswf::font::copy_from(gameswf::font *this, gameswf::font *a2)
{
  gameswf::tu_string *result; // r0

  result = gameswf::tu_string::operator=((gameswf::font *)((char *)this + 48), (char *)a2 + 48);
  *((_BYTE *)this + 73) = *((_BYTE *)a2 + 73);
  *((_BYTE *)this + 74) = *((_BYTE *)a2 + 74);
  *((_BYTE *)this + 75) = *((_BYTE *)a2 + 75);
  *((_BYTE *)this + 76) = *((_BYTE *)a2 + 76);
  *((_BYTE *)this + 77) = *((_BYTE *)a2 + 77);
  *((_BYTE *)this + 78) = *((_BYTE *)a2 + 78);
  *((_DWORD *)this + 21) = *((_DWORD *)a2 + 21);
  *((_DWORD *)this + 22) = *((_DWORD *)a2 + 22);
  *((_DWORD *)this + 23) = *((_DWORD *)a2 + 23);
  *((_BYTE *)this + 116) = *((_BYTE *)a2 + 116);
  return result;
}


// ===== 7ce694 gameswf::hash<ushort,short,gameswf::font::simple_code_hash<ushort>>::set_raw_capacity(int) =====
void __fastcall gameswf::hash<unsigned short,short,gameswf::font::simple_code_hash<unsigned short>>::set_raw_capacity(
        _DWORD **a1,
        int a2)
{
  _DWORD *v2; // r8
  int v3; // r4
  _DWORD *v4; // r3
  int v5; // r5
  int v6; // r3
  _DWORD *v7; // r3
  int v8; // r7
  int v9; // r6
  int v10; // r4
  _DWORD *v11; // r5
  _DWORD v12[2]; // [sp+4h] [bp-8h] BYREF

  v2 = a1;
  if ( a2 <= 0 )
  {
LABEL_17:
    gameswf::hash<unsigned short,short,gameswf::font::simple_code_hash<unsigned short>>::clear(a1);
    return;
  }
  v3 = 1 << (int)(float)((float)(logf((float)(a2 - 1)) / 0.69315) + 1.0);
  v4 = (_DWORD *)*v2;
  if ( v3 < 4 )
    v3 = 4;
  if ( !v4 || v4[1] + 1 != v3 )
  {
    v5 = 0;
    v12[0] = gameswf::malloc_internal(12 * v3 + 8);
    *(_DWORD *)v12[0] = 0;
    *(_DWORD *)(v12[0] + 4) = v3 - 1;
    v6 = 8;
    do
    {
      ++v5;
      *(_DWORD *)(v12[0] + v6) = -2;
      v6 += 12;
    }
    while ( v3 > v5 );
    v7 = (_DWORD *)*v2;
    if ( *v2 )
    {
      v8 = v7[1];
      if ( v8 >= 0 )
      {
        v9 = 0;
        v10 = 2;
        do
        {
          ++v9;
          v11 = &v7[v10];
          if ( v7[v10] != -2 && v11[1] != -1 )
          {
            gameswf::hash<unsigned short,short,gameswf::font::simple_code_hash<unsigned short>>::add(
              v12,
              v11 + 2,
              (char *)v11 + 10);
            *v11 = -2;
            v11[1] = 0;
            v7 = (_DWORD *)*v2;
          }
          v10 += 3;
        }
        while ( v8 >= v9 );
      }
      gameswf::free_internal(v7);
    }
    a1 = (_DWORD **)v12;
    *v2 = v12[0];
    v12[0] = 0;
    goto LABEL_17;
  }
}


// ===== 7ce7f4 gameswf::hash<ushort,short,gameswf::font::simple_code_hash<ushort>>::check_expand(void) =====
void __fastcall gameswf::hash<unsigned short,short,gameswf::font::simple_code_hash<unsigned short>>::check_expand(
        _DWORD **a1)
{
  _DWORD *v1; // r3
  int v2; // r1

  v1 = *a1;
  if ( *a1 )
  {
    v2 = 2 * (v1[1] + 1);
    if ( 3 * *v1 <= v2 )
      return;
  }
  else
  {
    v2 = 8;
  }
  gameswf::hash<unsigned short,short,gameswf::font::simple_code_hash<unsigned short>>::set_raw_capacity(a1, v2);
}


// ===== 7ce828 gameswf::hash<ushort,short,gameswf::font::simple_code_hash<ushort>>::add(ushort const&,short const&) =====
void __fastcall gameswf::hash<unsigned short,short,gameswf::font::simple_code_hash<unsigned short>>::add(
        _DWORD **a1,
        _WORD *a2,
        _WORD *a3)
{
  _DWORD *v5; // r3
  int v6; // r10
  int v7; // r5
  int v8; // r12
  int v9; // r8
  int v10; // r9
  char *v11; // r6
  int v12; // r11
  int v13; // r2
  int v14; // r1
  int v15; // r0
  char *v16; // r1
  int v17; // r5
  int v18; // r11
  int *v19; // r11
  __int16 v20; // r1

  gameswf::hash<unsigned short,short,gameswf::font::simple_code_hash<unsigned short>>::check_expand(a1);
  ++**a1;
  v5 = *a1;
  v6 = (unsigned __int16)*a2;
  v7 = (*a1)[1];
  v8 = v6 & v7;
  v9 = 12 * (v6 & v7) + 8;
  v10 = *(_DWORD *)((char *)v5 + v9);
  v11 = (char *)v5 + v9;
  if ( v10 == -2 )
  {
    *(_DWORD *)((char *)v5 + v9) = -1;
    *((_DWORD *)v11 + 1) = v6;
    *((_WORD *)v11 + 4) = *a2;
    *((_WORD *)v11 + 5) = *a3;
  }
  else
  {
    v12 = *((_DWORD *)v11 + 1);
    if ( v12 == -1 )
    {
      *((_DWORD *)v11 + 1) = v6;
      *((_WORD *)v11 + 4) = *a2;
      *((_WORD *)v11 + 5) = *a3;
    }
    else
    {
      v13 = v6 & v7;
      do
      {
        v13 = (v13 + 1) & v7;
        v14 = 12 * v13 + 8;
        v15 = *(_DWORD *)((char *)v5 + v14);
        v16 = (char *)v5 + v14;
      }
      while ( v15 != -2 );
      v17 = v7 & v12;
      if ( v17 == v8 )
      {
        *(_DWORD *)v16 = v10;
        *((_DWORD *)v16 + 1) = *((_DWORD *)v11 + 1);
        *((_WORD *)v16 + 4) = *((_WORD *)v11 + 4);
        *((_WORD *)v16 + 5) = *((_WORD *)v11 + 5);
        *((_WORD *)v11 + 4) = *a2;
        *((_WORD *)v11 + 5) = *a3;
        *(_DWORD *)((char *)v5 + v9) = v13;
        *((_DWORD *)v11 + 1) = v6;
      }
      else
      {
        do
        {
          v18 = 12 * v17 + 8;
          v17 = *(_DWORD *)((char *)v5 + v18);
          v19 = (_DWORD *)((char *)v5 + v18);
        }
        while ( v17 != v8 );
        *(_DWORD *)v16 = v10;
        *((_DWORD *)v16 + 1) = *((_DWORD *)v11 + 1);
        *((_WORD *)v16 + 4) = *((_WORD *)v11 + 4);
        *((_WORD *)v16 + 5) = *((_WORD *)v11 + 5);
        *v19 = v13;
        *((_WORD *)v11 + 4) = *a2;
        v20 = *a3;
        *((_DWORD *)v11 + 1) = v6;
        *((_WORD *)v11 + 5) = v20;
        *(_DWORD *)((char *)v5 + v9) = -1;
      }
    }
  }
}


// ===== 7ce998 gameswf::hash<gameswf::font::kerning_pair,float,gameswf::fixed_size_hash<gameswf::font::kerning_pair>>::set_raw_capacity(int) =====
void __fastcall gameswf::hash<gameswf::font::kerning_pair,float,gameswf::fixed_size_hash<gameswf::font::kerning_pair>>::set_raw_capacity(
        _DWORD **a1,
        int a2)
{
  _DWORD *v2; // r8
  int v3; // r4
  _DWORD *v4; // r3
  int v5; // r5
  int v6; // r3
  _DWORD *v7; // r3
  int v8; // r7
  int v9; // r6
  int v10; // r4
  _DWORD *v11; // r5
  _DWORD v12[2]; // [sp+4h] [bp-8h] BYREF

  v2 = a1;
  if ( a2 <= 0 )
  {
LABEL_17:
    gameswf::hash<gameswf::font::kerning_pair,float,gameswf::fixed_size_hash<gameswf::font::kerning_pair>>::clear(a1);
    return;
  }
  v3 = 1 << (int)(float)((float)(logf((float)(a2 - 1)) / 0.69315) + 1.0);
  v4 = (_DWORD *)*v2;
  if ( v3 < 4 )
    v3 = 4;
  if ( !v4 || v4[1] + 1 != v3 )
  {
    v5 = 0;
    v12[0] = gameswf::malloc_internal(16 * v3 + 8);
    *(_DWORD *)v12[0] = 0;
    *(_DWORD *)(v12[0] + 4) = v3 - 1;
    v6 = 8;
    do
    {
      ++v5;
      *(_DWORD *)(v12[0] + v6) = -2;
      v6 += 16;
    }
    while ( v3 > v5 );
    v7 = (_DWORD *)*v2;
    if ( *v2 )
    {
      v8 = v7[1];
      if ( v8 >= 0 )
      {
        v9 = 0;
        v10 = 2;
        do
        {
          ++v9;
          v11 = &v7[v10];
          if ( v7[v10] != -2 && v11[1] != -1 )
          {
            gameswf::hash<gameswf::font::kerning_pair,float,gameswf::fixed_size_hash<gameswf::font::kerning_pair>>::add(
              v12,
              v11 + 2,
              v11 + 3);
            *v11 = -2;
            v11[1] = 0;
            v7 = (_DWORD *)*v2;
          }
          v10 += 4;
        }
        while ( v8 >= v9 );
      }
      gameswf::free_internal(v7);
    }
    a1 = (_DWORD **)v12;
    *v2 = v12[0];
    v12[0] = 0;
    goto LABEL_17;
  }
}


// ===== 7ceaf0 gameswf::hash<gameswf::font::kerning_pair,float,gameswf::fixed_size_hash<gameswf::font::kerning_pair>>::check_expand(void) =====
void __fastcall gameswf::hash<gameswf::font::kerning_pair,float,gameswf::fixed_size_hash<gameswf::font::kerning_pair>>::check_expand(
        _DWORD **a1)
{
  _DWORD *v1; // r3
  int v2; // r1

  v1 = *a1;
  if ( *a1 )
  {
    v2 = 2 * (v1[1] + 1);
    if ( 3 * *v1 <= v2 )
      return;
  }
  else
  {
    v2 = 8;
  }
  gameswf::hash<gameswf::font::kerning_pair,float,gameswf::fixed_size_hash<gameswf::font::kerning_pair>>::set_raw_capacity(
    a1,
    v2);
}


// ===== 7ceb24 gameswf::hash<gameswf::font::kerning_pair,float,gameswf::fixed_size_hash<gameswf::font::kerning_pair>>::add(gameswf::font::kerning_pair const&,float const&) =====
_DWORD *__fastcall gameswf::hash<gameswf::font::kerning_pair,float,gameswf::fixed_size_hash<gameswf::font::kerning_pair>>::add(
        _DWORD **a1,
        unsigned __int16 *a2,
        _DWORD *a3)
{
  int v6; // r2
  int v7; // r3
  _DWORD *result; // r0
  _DWORD *v9; // r3
  int v10; // r8
  int v11; // r6
  int v12; // r10
  int v13; // r9
  _DWORD *v14; // r7
  int v15; // r11
  int v16; // r1
  int v17; // r0
  int v18; // r12
  int v19; // r8
  int v20; // r11
  int *v21; // r11
  int v22; // r1

  gameswf::hash<gameswf::font::kerning_pair,float,gameswf::fixed_size_hash<gameswf::font::kerning_pair>>::check_expand(a1);
  v6 = 5381;
  v7 = 4;
  ++**a1;
  do
  {
    --v7;
    result = (_DWORD *)*((unsigned __int8 *)a2 + v7);
    v6 = (int)&result[16400 * v6] - v6;
  }
  while ( v7 );
  v9 = *a1;
  if ( v6 == -1 )
    v6 = -32769;
  v10 = v9[1];
  v11 = v6 & v10;
  v12 = 2 * (v6 & v10) + 1;
  v13 = v9[2 * v12];
  v14 = &v9[2 * v12];
  if ( v13 == -2 )
  {
    v9[2 * v12] = -1;
    v14[1] = v6;
    result = (_DWORD *)*a2;
    *((_WORD *)v14 + 4) = (_WORD)result;
    *((_WORD *)v14 + 5) = a2[1];
    v14[3] = *a3;
  }
  else
  {
    v15 = v14[1];
    if ( v15 == -1 )
    {
      v14[1] = v6;
      *((_WORD *)v14 + 4) = *a2;
      *((_WORD *)v14 + 5) = a2[1];
      v14[3] = *a3;
    }
    else
    {
      v16 = v6 & v10;
      do
      {
        v16 = (v16 + 1) & v10;
        v17 = 2 * v16 + 1;
        v18 = v9[2 * v17];
        result = &v9[2 * v17];
      }
      while ( v18 != -2 );
      v19 = v10 & v15;
      if ( v19 == v11 )
      {
        *result = v13;
        result[1] = v14[1];
        result[2] = v14[2];
        result[3] = v14[3];
        *((_WORD *)v14 + 4) = *a2;
        *((_WORD *)v14 + 5) = a2[1];
        result = (_DWORD *)*a3;
        v14[3] = *a3;
        v9[2 * v12] = v16;
        v14[1] = v6;
      }
      else
      {
        do
        {
          v20 = 2 * v19 + 1;
          v19 = v9[2 * v20];
          v21 = &v9[2 * v20];
        }
        while ( v19 != v11 );
        *result = v13;
        result[1] = v14[1];
        result[2] = v14[2];
        result[3] = v14[3];
        *v21 = v16;
        *((_WORD *)v14 + 4) = *a2;
        *((_WORD *)v14 + 5) = a2[1];
        v22 = *a3;
        v14[1] = v6;
        v14[3] = v22;
        v9[2 * v12] = -1;
      }
    }
  }
  return result;
}


// ===== 7cecc0 gameswf::hash<gameswf::font::kerning_pair,float,gameswf::fixed_size_hash<gameswf::font::kerning_pair>>::operator[](gameswf::font::kerning_pair const&) =====
int __fastcall gameswf::hash<gameswf::font::kerning_pair,float,gameswf::fixed_size_hash<gameswf::font::kerning_pair>>::operator[](
        int *a1,
        unsigned __int16 *a2)
{
  int index; // r0
  int v6; // [sp+4h] [bp-8h] BYREF

  index = gameswf::hash<gameswf::font::kerning_pair,float,gameswf::fixed_size_hash<gameswf::font::kerning_pair>>::find_index(
            a1,
            a2);
  if ( index < 0 )
  {
    v6 = 0;
    gameswf::hash<gameswf::font::kerning_pair,float,gameswf::fixed_size_hash<gameswf::font::kerning_pair>>::add(
      (_DWORD **)a1,
      a2,
      &v6);
    index = gameswf::hash<gameswf::font::kerning_pair,float,gameswf::fixed_size_hash<gameswf::font::kerning_pair>>::find_index(
              a1,
              a2);
  }
  return *a1 + 16 * index + 20;
}


// ===== 7ced18 gameswf::array<gameswf::font::zone_record::zone_data>::reserve(int) =====
void __fastcall gameswf::array<gameswf::font::zone_record::zone_data>::reserve(int a1, int a2)
{
  int v3; // r2
  void *v4; // r0

  if ( !*(_BYTE *)(a1 + 12) )
  {
    v3 = *(_DWORD *)(a1 + 8);
    *(_DWORD *)(a1 + 8) = a2;
    if ( a2 )
    {
      if ( *(_DWORD *)a1 )
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 8 * a2, 8 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(8 * a2);
    }
    else
    {
      v4 = *(void **)a1;
      if ( v4 )
        gameswf::free_internal(v4);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 7ced94 gameswf::array<gameswf::font::zone_record>::reserve(int) =====
void __fastcall gameswf::array<gameswf::font::zone_record>::reserve(int a1, int a2)
{
  int v3; // r2
  void *v4; // r0

  if ( !*(_BYTE *)(a1 + 12) )
  {
    v3 = *(_DWORD *)(a1 + 8);
    *(_DWORD *)(a1 + 8) = a2;
    if ( a2 )
    {
      if ( *(_DWORD *)a1 )
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 20 * a2, 20 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(20 * a2);
    }
    else
    {
      v4 = *(void **)a1;
      if ( v4 )
        gameswf::free_internal(v4);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 7cee1c gameswf::array<gameswf::smart_ptr<gameswf::shape_character_def>>::reserve(int) =====
void __fastcall gameswf::array<gameswf::smart_ptr<gameswf::shape_character_def>>::reserve(int a1, int a2)
{
  int v3; // r2
  void *v4; // r0

  if ( !*(_BYTE *)(a1 + 12) )
  {
    v3 = *(_DWORD *)(a1 + 8);
    *(_DWORD *)(a1 + 8) = a2;
    if ( a2 )
    {
      if ( *(_DWORD *)a1 )
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 4 * a2, 4 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(4 * a2);
    }
    else
    {
      v4 = *(void **)a1;
      if ( v4 )
        gameswf::free_internal(v4);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 7cee98 gameswf::array<gameswf::smart_ptr<gameswf::shape_character_def>>::resize(int) =====
void __fastcall gameswf::array<gameswf::smart_ptr<gameswf::shape_character_def>>::resize(_DWORD *a1, int a2)
{
  int v2; // r6
  int v5; // r8
  int v6; // r7
  void (__fastcall ***v7)(_DWORD); // r0
  int v8; // r3
  int v9; // r6

  v2 = a1[1];
  if ( v2 > a2 )
  {
    v5 = 4 * a2;
    v6 = a2;
    do
    {
      ++v6;
      v7 = *(void (__fastcall ****)(_DWORD))(*a1 + v5);
      v5 += 4;
      if ( v7 )
        gameswf::ref_counted::drop_ref(v7);
    }
    while ( v6 != v2 );
  }
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::smart_ptr<gameswf::shape_character_def>>::reserve((int)a1, a2 + (a2 >> 1));
  if ( v2 < a2 )
  {
    v8 = v2;
    v9 = 4 * v2;
    do
    {
      ++v8;
      *(_DWORD *)(*a1 + v9) = 0;
      v9 += 4;
    }
    while ( v8 != a2 );
  }
  a1[1] = a2;
}


// ===== 7cef34 gameswf::tu_string::tu_string(char const*) [clone] =====
gameswf::tu_string *__fastcall gameswf::tu_string::tu_string(gameswf::tu_string *this, const char *a2)
{
  char *v3; // r0
  unsigned int v5; // r3

  *(_BYTE *)this = 1;
  *((_BYTE *)this + 1) = 0;
  gameswf::tu_string::resize(this, 15);
  if ( *(char *)this == -1 )
    v3 = *((char **)this + 3);
  else
    v3 = (char *)this + 1;
  strcpy(v3, "Times New Roman");
  v5 = *((_DWORD *)this + 4) & 0xFF000000 | 0xFFFFFF;
  *((_DWORD *)this + 4) = v5;
  *((_BYTE *)this + 19) = HIBYTE(v5) & 0xFE;
  return this;
}


// ===== 7cef9c gameswf::array<gameswf::font::zone_record>::resize(int) =====
void __fastcall gameswf::array<gameswf::font::zone_record>::resize(_DWORD *a1, int a2)
{
  int v2; // r9
  int v5; // r6
  int v6; // r5
  _DWORD *v7; // r0
  int v8; // r2
  int v9; // r3
  _DWORD *v10; // r12
  int v11; // r1
  int v12; // r2

  v2 = a1[1];
  if ( v2 > a2 )
  {
    v5 = 20 * a2;
    v6 = a2;
    do
    {
      while ( 1 )
      {
        v7 = (_DWORD *)(*a1 + v5);
        v8 = v7[1];
        if ( v8 < 0 )
          break;
        v7[1] = 0;
        ++v6;
        gameswf::array<gameswf::font::zone_record::zone_data>::reserve((int)v7, 0);
        v5 += 20;
        if ( v6 == v2 )
          goto LABEL_8;
      }
      v9 = 8 * v8;
      do
      {
        ++v8;
        v10 = (_DWORD *)(*v7 + v9);
        *v10 = 0;
        v10[1] = 0;
        v9 += 8;
      }
      while ( v8 );
      v7[1] = 0;
      ++v6;
      gameswf::array<gameswf::font::zone_record::zone_data>::reserve((int)v7, 0);
      v5 += 20;
    }
    while ( v6 != v2 );
  }
LABEL_8:
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::font::zone_record>::reserve((int)a1, a2 + (a2 >> 1));
  if ( v2 < a2 )
  {
    v11 = 20 * v2;
    do
    {
      ++v2;
      v12 = *a1 + v11;
      *(_DWORD *)v12 = 0;
      *(_BYTE *)(v12 + 17) = 0;
      *(_DWORD *)(v12 + 4) = 0;
      *(_DWORD *)(v12 + 8) = 0;
      *(_BYTE *)(v12 + 12) = 0;
      *(_BYTE *)(v12 + 16) = 0;
      v11 += 20;
    }
    while ( v2 != a2 );
  }
  a1[1] = a2;
}


// ===== 7cf0ac gameswf::font::read_font_alignzones(gameswf::stream *,int) =====
void __fastcall gameswf::font::read_font_alignzones(gameswf::font *this, gameswf::stream *a2, int a3)
{
  int v5; // r5
  int i; // r11
  int u8; // r0
  int v8; // r6
  _DWORD *v9; // r9
  int v10; // r4
  int v11; // r3
  _DWORD *v12; // r1
  int v13; // r4
  int v14; // r9
  int v15; // r9
  int v16; // r4
  int v17; // r4
  int v18; // [sp+0h] [bp-Ch]
  int v19; // [sp+4h] [bp-8h]

  *((_BYTE *)this + 116) = gameswf::stream::read_uint(a2, 2);
  gameswf::stream::read_uint(a2, 6);
  gameswf::array<gameswf::font::zone_record>::resize((_DWORD *)this + 30, *((_DWORD *)this + 9));
  v19 = *((_DWORD *)this + 9);
  if ( v19 > 0 )
  {
    v5 = 0;
    for ( i = 0; i != v19; ++i )
    {
      u8 = gameswf::stream::read_u8(a2);
      v8 = u8;
      v9 = (_DWORD *)(*((_DWORD *)this + 30) + v5);
      v10 = v9[1];
      if ( u8 && u8 > v9[2] )
        gameswf::array<gameswf::font::zone_record::zone_data>::reserve(*((_DWORD *)this + 30) + v5, u8 + (u8 >> 1));
      if ( v8 > v10 )
      {
        v11 = 8 * v10;
        do
        {
          ++v10;
          v12 = (_DWORD *)(*v9 + v11);
          *v12 = 0;
          v12[1] = 0;
          v11 += 8;
        }
        while ( v8 > v10 );
      }
      v9[1] = v8;
      if ( v8 )
      {
        v13 = 0;
        do
        {
          v14 = 8 * v13;
          v18 = *(_DWORD *)(*((_DWORD *)this + 30) + v5);
          *(_DWORD *)(v18 + 8 * v13++) = gameswf::stream::read_float16(a2);
          v15 = *(_DWORD *)(*((_DWORD *)this + 30) + v5) + v14;
          *(_DWORD *)(v15 + 4) = gameswf::stream::read_float16(a2);
        }
        while ( v8 > v13 );
      }
      v16 = *((_DWORD *)this + 30);
      *(_BYTE *)(v16 + v5 + 16) = gameswf::stream::read_uint(a2, 1) == 1;
      v17 = *((_DWORD *)this + 30);
      *(_BYTE *)(v17 + v5 + 17) = gameswf::stream::read_uint(a2, 1) == 1;
      gameswf::stream::read_uint(a2, 6);
      v5 += 20;
    }
  }
}


// ===== 7cf228 gameswf::font::~font() =====
void __fastcall gameswf::font::~font(gameswf::font *this)
{
  _DWORD *v2; // r5
  int v3; // r3
  _DWORD *v4; // r0
  int v5; // r2

  *(_DWORD *)this = off_9915E0;
  v2 = (_DWORD *)((char *)this + 32);
  gameswf::array<gameswf::smart_ptr<gameswf::shape_character_def>>::resize((_DWORD *)this + 8, 0);
  gameswf::array<gameswf::font::zone_record>::resize((_DWORD *)this + 30, 0);
  gameswf::array<gameswf::font::zone_record>::reserve((int)this + 120, 0);
  gameswf::hash<gameswf::font::kerning_pair,float,gameswf::fixed_size_hash<gameswf::font::kerning_pair>>::clear((_DWORD **)this + 28);
  v3 = *((_DWORD *)this + 25);
  v4 = (_DWORD *)((char *)this + 96);
  if ( v3 < 0 )
  {
    v5 = 4 * v3;
    do
    {
      ++v3;
      *(_DWORD *)(*v4 + v5) = 0;
      v5 += 4;
    }
    while ( v3 );
  }
  *((_DWORD *)this + 25) = 0;
  gameswf::array<float>::reserve((int)v4, 0);
  gameswf::hash<unsigned short,short,gameswf::font::simple_code_hash<unsigned short>>::clear((_DWORD **)this + 20);
  if ( *((char *)this + 48) == -1 )
    gameswf::free_internal(*((void **)this + 15));
  gameswf::array<gameswf::smart_ptr<gameswf::shape_character_def>>::resize(v2, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::shape_character_def>>::reserve((int)v2, 0);
  gameswf::character_def::~character_def(this);
}


// ===== 7cf314 gameswf::font::~font() =====
void __fastcall gameswf::font::~font(gameswf::font *this)
{
  _DWORD *v2; // r5
  int v3; // r3
  _DWORD *v4; // r0
  int v5; // r2

  *(_DWORD *)this = off_9915E0;
  v2 = (_DWORD *)((char *)this + 32);
  gameswf::array<gameswf::smart_ptr<gameswf::shape_character_def>>::resize((_DWORD *)this + 8, 0);
  gameswf::array<gameswf::font::zone_record>::resize((_DWORD *)this + 30, 0);
  gameswf::array<gameswf::font::zone_record>::reserve((int)this + 120, 0);
  gameswf::hash<gameswf::font::kerning_pair,float,gameswf::fixed_size_hash<gameswf::font::kerning_pair>>::clear((_DWORD **)this + 28);
  v3 = *((_DWORD *)this + 25);
  v4 = (_DWORD *)((char *)this + 96);
  if ( v3 < 0 )
  {
    v5 = 4 * v3;
    do
    {
      ++v3;
      *(_DWORD *)(*v4 + v5) = 0;
      v5 += 4;
    }
    while ( v3 );
  }
  *((_DWORD *)this + 25) = 0;
  gameswf::array<float>::reserve((int)v4, 0);
  gameswf::hash<unsigned short,short,gameswf::font::simple_code_hash<unsigned short>>::clear((_DWORD **)this + 20);
  if ( *((char *)this + 48) == -1 )
    gameswf::free_internal(*((void **)this + 15));
  gameswf::array<gameswf::smart_ptr<gameswf::shape_character_def>>::resize(v2, 0);
  gameswf::array<gameswf::smart_ptr<gameswf::shape_character_def>>::reserve((int)v2, 0);
  gameswf::character_def::~character_def(this);
}


// ===== 7cf400 gameswf::font::~font() =====
void __fastcall gameswf::font::~font(gameswf::font *this)
{
  gameswf::font::~font(this);
  LC_API_FREE_0(this);
}


// ===== 7cf41c gameswf::font::get_units_per_em(void) =====
float __fastcall gameswf::font::get_units_per_em(gameswf::font *this)
{
  int v1; // r3
  _BYTE *v3; // r0
  gameswf::bitmap_glyph_provider *v4; // r0
  _BYTE *v6; // r0
  gameswf::glyph_provider *v7; // r0
  int face_entity; // r0
  bool v9; // zf

  v1 = *((_DWORD *)this + 7);
  if ( v1 )
  {
    v3 = *((_BYTE **)this + 6);
    if ( !v3[4] )
    {
      v9 = (*(_DWORD *)v3)-- == 1;
      if ( v9 )
        gameswf::free_internal(v3);
      v1 = 0;
      *((_DWORD *)this + 6) = 0;
      *((_DWORD *)this + 7) = 0;
    }
  }
  v4 = *(gameswf::bitmap_glyph_provider **)(*(_DWORD *)(v1 + 172) + 16);
  if ( v4 )
  {
    if ( gameswf::bitmap_glyph_provider::get_font_entity(
           v4,
           (gameswf::font *)((char *)this + 48),
           *((unsigned __int8 *)this + 77),
           *((unsigned __int8 *)this + 76)) )
    {
      return 1024.0;
    }
    v1 = *((_DWORD *)this + 7);
  }
  if ( v1 )
  {
    v6 = *((_BYTE **)this + 6);
    if ( !v6[4] )
    {
      v9 = (*(_DWORD *)v6)-- == 1;
      if ( v9 )
        gameswf::free_internal(v6);
      v1 = 0;
      *((_DWORD *)this + 6) = 0;
      *((_DWORD *)this + 7) = 0;
    }
  }
  v7 = *(gameswf::glyph_provider **)(*(_DWORD *)(v1 + 172) + 12);
  if ( v7
    && (face_entity = gameswf::glyph_provider::get_face_entity(
                        v7,
                        (gameswf::font *)((char *)this + 48),
                        *((_BYTE *)this + 77),
                        *((_BYTE *)this + 76))) != 0 )
  {
    return (float)*(unsigned __int16 *)(*(_DWORD *)(face_entity + 36) + 68);
  }
  else
  {
    return 1.0;
  }
}


// ===== 7cf520 gameswf::font::get_height(void) =====
float __fastcall gameswf::font::get_height(gameswf::font *this)
{
  int v1; // r3
  _BYTE *v3; // r0
  gameswf::bitmap_glyph_provider *v4; // r0
  gameswf::ref_counted *font_entity; // r0
  _BYTE *v7; // r0
  gameswf::glyph_provider *v8; // r0
  int face_entity; // r0
  bool v10; // zf

  v1 = *((_DWORD *)this + 7);
  if ( v1 )
  {
    v3 = *((_BYTE **)this + 6);
    if ( !v3[4] )
    {
      v10 = (*(_DWORD *)v3)-- == 1;
      if ( v10 )
        gameswf::free_internal(v3);
      v1 = 0;
      *((_DWORD *)this + 6) = 0;
      *((_DWORD *)this + 7) = 0;
    }
  }
  v4 = *(gameswf::bitmap_glyph_provider **)(*(_DWORD *)(v1 + 172) + 16);
  if ( v4 )
  {
    font_entity = gameswf::bitmap_glyph_provider::get_font_entity(
                    v4,
                    (gameswf::font *)((char *)this + 48),
                    *((unsigned __int8 *)this + 77),
                    *((unsigned __int8 *)this + 76));
    if ( font_entity )
      return *((float *)font_entity + 10) * 20.0;
    v1 = *((_DWORD *)this + 7);
  }
  if ( v1 )
  {
    v7 = *((_BYTE **)this + 6);
    if ( !v7[4] )
    {
      v10 = (*(_DWORD *)v7)-- == 1;
      if ( v10 )
        gameswf::free_internal(v7);
      v1 = 0;
      *((_DWORD *)this + 6) = 0;
      *((_DWORD *)this + 7) = 0;
    }
  }
  v8 = *(gameswf::glyph_provider **)(*(_DWORD *)(v1 + 172) + 12);
  if ( v8
    && (face_entity = gameswf::glyph_provider::get_face_entity(
                        v8,
                        (gameswf::font *)((char *)this + 48),
                        *((_BYTE *)this + 77),
                        *((_BYTE *)this + 76))) != 0 )
  {
    return (float)(*(__int16 *)(*(_DWORD *)(face_entity + 36) + 70) - *(__int16 *)(*(_DWORD *)(face_entity + 36) + 72));
  }
  else
  {
    return 0.0;
  }
}


// ===== 7cf634 gameswf::hash<ushort,short,gameswf::font::simple_code_hash<ushort>>::operator[](ushort const&) =====
int __fastcall gameswf::hash<unsigned short,short,gameswf::font::simple_code_hash<unsigned short>>::operator[](
        _DWORD **a1,
        _WORD *a2)
{
  _DWORD *v2; // r3
  int v5; // r0
  int v7; // r1
  int v8; // r12
  int v9; // r0
  int v10; // r2
  int v11; // r6
  char *v12; // r2
  int v13; // r6
  int v14; // r1
  int v15; // r4
  int v16; // r2
  int v17; // r12
  char *v18; // r2
  int v19; // r12
  __int16 v20; // [sp+6h] [bp-6h] BYREF

  v2 = *a1;
  if ( *a1 )
  {
    v7 = (unsigned __int16)*a2;
    v8 = v2[1];
    v9 = v7 & v8;
    v10 = 12 * (v7 & v8) + 8;
    v11 = *(_DWORD *)((char *)v2 + v10);
    v12 = (char *)v2 + v10;
    if ( v11 != -2 )
    {
      v13 = *((_DWORD *)v12 + 1);
      if ( v13 == -1 || v9 == (v8 & v13) )
      {
        while ( v7 != v13 || *((unsigned __int16 *)v12 + 4) != v7 )
        {
          v9 = *(_DWORD *)v12;
          if ( *(_DWORD *)v12 == -1 )
            goto LABEL_2;
          v12 = (char *)&v2[3 * v9 + 2];
          v13 = *((_DWORD *)v12 + 1);
        }
        if ( v9 >= 0 )
          return (int)&v2[3 * v9 + 4] + 2;
      }
    }
  }
LABEL_2:
  v20 = 0;
  gameswf::hash<unsigned short,short,gameswf::font::simple_code_hash<unsigned short>>::add(a1, a2, &v20);
  v2 = *a1;
  if ( !*a1
    || (v14 = (unsigned __int16)*a2,
        v15 = v2[1],
        v9 = v14 & v15,
        v16 = 12 * (v14 & v15) + 8,
        v17 = *(_DWORD *)((char *)v2 + v16),
        v18 = (char *)v2 + v16,
        v17 == -2)
    || (v19 = *((_DWORD *)v18 + 1), v19 != -1) && v9 != (v15 & v19) )
  {
LABEL_3:
    v5 = -4;
    return (int)v2 + v5 + 10;
  }
  while ( v19 != v14 || *((unsigned __int16 *)v18 + 4) != v19 )
  {
    v9 = *(_DWORD *)v18;
    if ( *(_DWORD *)v18 == -1 )
      goto LABEL_3;
    v18 = (char *)&v2[3 * v9 + 2];
    v19 = *((_DWORD *)v18 + 1);
  }
  if ( v9 < 0 )
  {
    v5 = 12 * v9 + 8;
    return (int)v2 + v5 + 10;
  }
  return (int)&v2[3 * v9 + 4] + 2;
}


// ===== 7cf7ac gameswf::font::read_code_table(gameswf::stream *) =====
void __fastcall gameswf::font::read_code_table(gameswf::font *this, gameswf::stream *a2)
{
  int v2; // r4
  _DWORD **v5; // r10
  _DWORD **v6; // r8
  int v7; // r4
  __int16 v8; // [sp+2h] [bp-Ah] BYREF
  __int16 u8; // [sp+4h] [bp-8h] BYREF
  _WORD v10[3]; // [sp+6h] [bp-6h] BYREF

  v2 = *((unsigned __int8 *)this + 78);
  if ( *((_BYTE *)this + 78) )
  {
    if ( *((int *)this + 9) > 0 )
    {
      v6 = (_DWORD **)((char *)this + 80);
      v7 = 0;
      do
      {
        v10[0] = gameswf::stream::read_u16(a2);
        *(_WORD *)gameswf::hash<unsigned short,short,gameswf::font::simple_code_hash<unsigned short>>::operator[](
                    v6,
                    v10) = v7++;
      }
      while ( v7 < *((_DWORD *)this + 9) );
    }
  }
  else if ( *((int *)this + 9) > 0 )
  {
    v5 = (_DWORD **)((char *)this + 80);
    do
    {
      u8 = gameswf::stream::read_u8(a2);
      v8 = v2;
      gameswf::hash<unsigned short,short,gameswf::font::simple_code_hash<unsigned short>>::add(v5, &u8, &v8);
      ++v2;
    }
    while ( v2 < *((_DWORD *)this + 9) );
  }
}


// ===== 7cf860 gameswf::font::read_font_info(gameswf::stream *,int) =====
void __fastcall gameswf::font::read_font_info(gameswf::font *this, gameswf::stream *a2, int a3)
{
  char u8; // r0

  gameswf::stream::read_string_with_length(a2, (gameswf::font *)((char *)this + 48));
  u8 = gameswf::stream::read_u8(a2);
  *((_BYTE *)this + 73) = (u8 & 0x20) != 0;
  *((_BYTE *)this + 74) = (u8 & 0x10) != 0;
  *((_BYTE *)this + 75) = (u8 & 8) != 0;
  *((_BYTE *)this + 76) = (u8 & 4) != 0;
  *((_BYTE *)this + 77) = (u8 & 2) != 0;
  *((_BYTE *)this + 78) = u8 & 1;
  if ( a3 == 62 )
    gameswf::stream::read_u8(a2);
  gameswf::font::read_code_table(this, a2);
}


// ===== 7cf8d8 gameswf::font::font(gameswf::player *) =====
gameswf::font *__fastcall gameswf::font::font(gameswf::font *this, gameswf::player *a2)
{
  const char *v3; // r1

  gameswf::character_def::character_def(this, a2);
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *(_DWORD *)this = off_9915E0;
  *((_DWORD *)this + 10) = 0;
  *((_BYTE *)this + 44) = 0;
  gameswf::tu_string::tu_string((gameswf::font *)((char *)this + 48), v3);
  *((_BYTE *)this + 75) = 1;
  *((_DWORD *)this + 23) = 0;
  *((_BYTE *)this + 132) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_BYTE *)this + 73) = 0;
  *((_BYTE *)this + 74) = 0;
  *((_BYTE *)this + 76) = 0;
  *((_BYTE *)this + 77) = 0;
  *((_BYTE *)this + 78) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_BYTE *)this + 108) = 0;
  *((_DWORD *)this + 28) = 0;
  *((_BYTE *)this + 116) = 0;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 31) = 0;
  *((_DWORD *)this + 32) = 0;
  return this;
}


// ===== 7cf984 gameswf::font::font(gameswf::player *) =====
gameswf::font *__fastcall gameswf::font::font(gameswf::font *this, gameswf::player *a2)
{
  const char *v3; // r1

  gameswf::character_def::character_def(this, a2);
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *(_DWORD *)this = off_9915E0;
  *((_DWORD *)this + 10) = 0;
  *((_BYTE *)this + 44) = 0;
  gameswf::tu_string::tu_string((gameswf::font *)((char *)this + 48), v3);
  *((_BYTE *)this + 75) = 1;
  *((_DWORD *)this + 23) = 0;
  *((_BYTE *)this + 132) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_BYTE *)this + 73) = 0;
  *((_BYTE *)this + 74) = 0;
  *((_BYTE *)this + 76) = 0;
  *((_BYTE *)this + 77) = 0;
  *((_BYTE *)this + 78) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_BYTE *)this + 108) = 0;
  *((_DWORD *)this + 28) = 0;
  *((_BYTE *)this + 116) = 0;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 31) = 0;
  *((_DWORD *)this + 32) = 0;
  return this;
}


// ===== 7cfa30 gameswf::font::read(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
void __fastcall gameswf::font::read(
        gameswf::font *this,
        gameswf::stream *a2,
        int a3,
        gameswf::movie_definition_sub *a4)
{
  gameswf::font *v4; // r7
  bool v7; // zf
  int v8; // r6
  int u16; // r10
  int v10; // r8
  int v11; // r8
  int v12; // r0
  int v13; // r3
  int v14; // r9
  int v15; // r6
  int v16; // r6
  gameswf::font *v17; // r8
  int v18; // r9
  gameswf::shape_character_def *v19; // r7
  int v20; // r10
  int v21; // r1
  gameswf::player *v22; // r11
  int v23; // r3
  void *v24; // r0
  int v25; // r2
  int u32; // r0
  int v27; // r9
  int v28; // r6
  int v29; // r3
  int v30; // r8
  int v31; // r8
  int v32; // r10
  int v33; // r0
  int v34; // r3
  int v35; // r9
  int v36; // r6
  int v37; // r6
  int v38; // r9
  gameswf::font *v39; // r8
  gameswf::shape_character_def *v40; // r7
  int v41; // r10
  int v42; // r1
  gameswf::player *v43; // r11
  int v44; // r3
  void *v45; // r0
  int v46; // r2
  int v47; // r3
  int v48; // r3
  int v49; // r2
  __int16 s16; // r0
  int v51; // r6
  int v52; // r5
  int v53; // r3
  int i; // r5
  int v55; // r8
  int v56; // r6
  int j; // r5
  int v58; // r9
  int v59; // r5
  __int16 u8; // r8
  __int16 v61; // r6
  __int16 v62; // r10
  int v63; // r2
  int v64; // r2
  int position; // [sp+8h] [bp-44h]
  int v66; // [sp+8h] [bp-44h]
  int v67; // [sp+Ch] [bp-40h]
  int uint; // [sp+14h] [bp-38h]
  _BYTE v69[16]; // [sp+18h] [bp-34h] BYREF
  int v70; // [sp+28h] [bp-24h] BYREF
  int v71; // [sp+2Ch] [bp-20h]
  int v72; // [sp+30h] [bp-1Ch]
  char v73; // [sp+34h] [bp-18h]
  int *v74; // [sp+38h] [bp-14h] BYREF
  int v75; // [sp+3Ch] [bp-10h]
  int v76; // [sp+40h] [bp-Ch]
  char v77; // [sp+44h] [bp-8h]

  v4 = this;
  *((_DWORD *)this + 17) = a4;
  if ( a3 != 10 )
  {
    v7 = a3 == 48;
    if ( a3 != 48 )
      v7 = a3 == 75;
    if ( !v7 )
      return;
    uint = gameswf::stream::read_uint(a2, 1);
    *((_BYTE *)v4 + 74) = gameswf::stream::read_uint(a2, 1) != 0;
    *((_BYTE *)v4 + 73) = gameswf::stream::read_uint(a2, 1) != 0;
    *((_BYTE *)v4 + 75) = gameswf::stream::read_uint(a2, 1) != 0;
    v8 = gameswf::stream::read_uint(a2, 1);
    *((_BYTE *)v4 + 78) = gameswf::stream::read_uint(a2, 1) != 0;
    *((_BYTE *)v4 + 76) = gameswf::stream::read_uint(a2, 1) != 0;
    *((_BYTE *)v4 + 77) = gameswf::stream::read_uint(a2, 1) != 0;
    gameswf::stream::read_u8(a2);
    gameswf::stream::read_string_with_length(a2, (gameswf::font *)((char *)v4 + 48));
    u16 = gameswf::stream::read_u16(a2);
    v10 = 0;
    position = gameswf::stream::get_position(a2);
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    if ( v8 )
    {
      if ( u16 )
      {
        do
        {
          while ( 1 )
          {
            u32 = gameswf::stream::read_u32(a2);
            v27 = u32;
            v28 = v71 + 1;
            ++v10;
            if ( v71 + 1 > v72 )
              break;
            *(_DWORD *)(v70 + 4 * v71) = u32;
            v71 = v28;
            if ( u16 <= v10 )
              goto LABEL_27;
          }
          gameswf::array<int>::reserve((int)&v70, v28 + (v28 >> 1));
          *(_DWORD *)(v70 + 4 * v71) = v27;
          v71 = v28;
        }
        while ( u16 > v10 );
      }
LABEL_27:
      v67 = gameswf::stream::read_u32(a2);
    }
    else
    {
      if ( u16 )
      {
        v11 = 0;
        do
        {
          v12 = gameswf::stream::read_u16(a2);
          v13 = v71;
          v14 = v12;
          v15 = v71 + 1;
          ++v11;
          if ( v71 + 1 > v72 )
          {
            gameswf::array<int>::reserve((int)&v70, v15 + (v15 >> 1));
            v13 = v71;
          }
          *(_DWORD *)(v70 + 4 * v13) = v14;
          v71 = v15;
        }
        while ( u16 > v11 );
      }
      v67 = gameswf::stream::read_u16(a2);
    }
    gameswf::array<gameswf::smart_ptr<gameswf::shape_character_def>>::resize((_DWORD *)v4 + 8, u16);
    v16 = (*(int (__fastcall **)(gameswf::movie_definition_sub *))(*(_DWORD *)a4 + 184))(a4);
    if ( v16 )
    {
      if ( v67 + position >= gameswf::stream::get_tag_end_position(a2) )
      {
LABEL_30:
        v29 = v71;
        if ( v71 < 0 )
        {
          v63 = 4 * v71;
          do
          {
            ++v29;
            *(_DWORD *)(v70 + v63) = 0;
            v63 += 4;
          }
          while ( v29 );
        }
LABEL_31:
        v71 = 0;
        gameswf::array<int>::reserve((int)&v70, 0);
        return;
      }
      gameswf::stream::set_position(a2, v67 + position);
    }
    else
    {
      if ( u16 )
      {
        v17 = v4;
        v18 = u16;
        do
        {
          v20 = 4 * v16;
          v21 = *(_DWORD *)(v70 + 4 * v16++);
          gameswf::stream::set_position(a2, position + v21);
          v22 = *((gameswf::player **)a4 + 7);
          if ( v22 )
          {
            v23 = *((_DWORD *)a4 + 6);
            if ( !*(_BYTE *)(v23 + 4) )
            {
              v22 = nullptr;
              v24 = *((void **)a4 + 6);
              v25 = *(_DWORD *)v23 - 1;
              *(_DWORD *)v23 = v25;
              if ( !v25 )
                gameswf::free_internal(v24);
              *((_DWORD *)a4 + 6) = 0;
              *((_DWORD *)a4 + 7) = 0;
            }
          }
          v19 = (gameswf::shape_character_def *)operator new(0x88u, 0);
          gameswf::shape_character_def::shape_character_def(v19, v22);
          gameswf::shape_character_def::read(v19, a2, 22, 0, a4);
          gameswf::smart_ptr<gameswf::shape_character_def>::set_ref(
            (gameswf::ref_counted **)(*((_DWORD *)v17 + 8) + v20),
            v19);
        }
        while ( v18 > v16 );
        v4 = v17;
      }
      if ( gameswf::stream::get_position(a2) != v67 + position )
        goto LABEL_30;
    }
    gameswf::font::read_code_table(v4, a2);
    if ( uint )
    {
      *((float *)v4 + 21) = (float)(__int16)gameswf::stream::read_s16(a2);
      *((float *)v4 + 22) = (float)(__int16)gameswf::stream::read_s16(a2);
      s16 = gameswf::stream::read_s16(a2);
      v51 = *((_DWORD *)v4 + 9);
      *((float *)v4 + 23) = (float)s16;
      v52 = *((_DWORD *)v4 + 25);
      if ( v51 && v51 > *((_DWORD *)v4 + 26) )
        gameswf::array<float>::reserve((int)v4 + 96, v51 + (v51 >> 1));
      if ( v51 > v52 )
      {
        v53 = 4 * v52;
        do
        {
          ++v52;
          *(_DWORD *)(*((_DWORD *)v4 + 24) + v53) = 0;
          v53 += 4;
        }
        while ( v52 != v51 );
      }
      *((_DWORD *)v4 + 25) = v51;
      if ( v51 > 0 )
      {
        for ( i = 0; i != v51; ++i )
        {
          v55 = *((_DWORD *)v4 + 24);
          *(float *)(v55 + 4 * i) = (float)(__int16)gameswf::stream::read_s16(a2);
        }
      }
      v56 = *((_DWORD *)v4 + 9);
      if ( v56 > 0 )
      {
        for ( j = 0; j != v56; ++j )
          gameswf::rect::read((gameswf::rect *)v69, a2);
      }
      v58 = gameswf::stream::read_u16(a2);
      if ( v58 )
      {
        v59 = 0;
        do
        {
          if ( *((_BYTE *)v4 + 78) )
          {
            u8 = gameswf::stream::read_u16(a2);
            v61 = gameswf::stream::read_u16(a2);
          }
          else
          {
            u8 = gameswf::stream::read_u8(a2);
            v61 = gameswf::stream::read_u8(a2);
          }
          v62 = gameswf::stream::read_s16(a2);
          HIWORD(v74) = v61;
          LOWORD(v74) = u8;
          ++v59;
          *(float *)gameswf::hash<gameswf::font::kerning_pair,float,gameswf::fixed_size_hash<gameswf::font::kerning_pair>>::operator[](
                      (int *)v4 + 28,
                      (unsigned __int16 *)&v74) = (float)v62;
        }
        while ( v58 > v59 );
      }
    }
    v48 = v71;
    if ( v71 < 0 )
    {
      v49 = 4 * v71;
      do
      {
        ++v48;
        *(_DWORD *)(v70 + v49) = 0;
        v49 += 4;
      }
      while ( v48 );
    }
    goto LABEL_31;
  }
  v66 = gameswf::stream::get_position(a2);
  v77 = 0;
  v74 = nullptr;
  v75 = 0;
  v76 = 0;
  v30 = gameswf::stream::read_u16(a2);
  gameswf::array<int>::reserve((int)&v74, 1);
  v74[v75] = v30;
  v75 = 1;
  v31 = *v74 >> 1;
  if ( v31 > 1 )
  {
    v32 = 1;
    do
    {
      v33 = gameswf::stream::read_u16(a2);
      v34 = v75;
      v35 = v33;
      v36 = v75 + 1;
      ++v32;
      if ( v75 + 1 > v76 )
      {
        gameswf::array<int>::reserve((int)&v74, v36 + (v36 >> 1));
        v34 = v75;
      }
      v74[v34] = v35;
      v75 = v36;
    }
    while ( v32 != v31 );
  }
  gameswf::array<gameswf::smart_ptr<gameswf::shape_character_def>>::resize((_DWORD *)v4 + 8, v31);
  v37 = (*(int (__fastcall **)(gameswf::movie_definition_sub *))(*(_DWORD *)a4 + 184))(a4);
  if ( !v37 && v31 > 0 )
  {
    v38 = v31;
    v39 = v4;
    do
    {
      v41 = 4 * v37;
      v42 = v74[v37++];
      gameswf::stream::set_position(a2, v66 + v42);
      v43 = *((gameswf::player **)a4 + 7);
      if ( v43 )
      {
        v44 = *((_DWORD *)a4 + 6);
        if ( !*(_BYTE *)(v44 + 4) )
        {
          v43 = nullptr;
          v45 = *((void **)a4 + 6);
          v46 = *(_DWORD *)v44 - 1;
          *(_DWORD *)v44 = v46;
          if ( !v46 )
            gameswf::free_internal(v45);
          *((_DWORD *)a4 + 6) = 0;
          *((_DWORD *)a4 + 7) = 0;
        }
      }
      v40 = (gameswf::shape_character_def *)operator new(0x88u, 0);
      gameswf::shape_character_def::shape_character_def(v40, v43);
      gameswf::shape_character_def::read(v40, a2, 2, 0, a4);
      gameswf::smart_ptr<gameswf::shape_character_def>::set_ref(
        (gameswf::ref_counted **)(*((_DWORD *)v39 + 8) + v41),
        v40);
    }
    while ( v37 != v38 );
  }
  v47 = v75;
  if ( v75 < 0 )
  {
    v64 = v75;
    do
    {
      ++v47;
      v74[v64++] = 0;
    }
    while ( v47 );
  }
  v75 = 0;
  gameswf::array<int>::reserve((int)&v74, 0);
}


// ===== 7d01bc gameswf::font::get_glyph(gameswf::glyph *,ushort,int) =====
int __fastcall gameswf::font::get_glyph(gameswf::font *this, glyph *a2, int a3, int a4)
{
  int v5; // r1
  _BYTE *v9; // r0
  gameswf::bitmap_glyph_provider *v10; // r0
  gameswf::ref_counted *font_entity; // r0
  gameswf::ref_counted *char_image; // r0
  _BYTE *v14; // r0
  gameswf::glyph_provider *v15; // r8
  gameswf::ref_counted *v16; // r0
  int face_entity; // r0
  int height; // r3
  int v19; // r3
  bool v20; // zf
  int v21; // r12
  int v22; // r1
  int v23; // r0
  int v24; // r7
  int v25; // r0
  int v26; // r7
  __int16 v27; // r3

  a2->width = 1140850688;
  HIWORD(a2[1].height) = -1;
  v5 = *((_DWORD *)this + 7);
  if ( v5 )
  {
    v9 = *((_BYTE **)this + 6);
    if ( !v9[4] )
    {
      v20 = (*(_DWORD *)v9)-- == 1;
      if ( v20 )
        gameswf::free_internal(v9);
      v5 = 0;
      *((_DWORD *)this + 6) = 0;
      *((_DWORD *)this + 7) = 0;
    }
  }
  v10 = *(gameswf::bitmap_glyph_provider **)(*(_DWORD *)(v5 + 172) + 16);
  if ( v10 )
  {
    BYTE2(a2[1].x) = 0;
    font_entity = gameswf::bitmap_glyph_provider::get_font_entity(
                    v10,
                    (gameswf::font *)((char *)this + 48),
                    *((unsigned __int8 *)this + 77),
                    *((unsigned __int8 *)this + 76));
    a2[1].width = (int)font_entity;
    if ( font_entity )
    {
      char_image = (gameswf::ref_counted *)gameswf::bitmap_font_entity::get_char_image(
                                             font_entity,
                                             a3,
                                             a4,
                                             (gameswf::rect *)&a2->x,
                                             (float *)&a2->width);
      gameswf::smart_ptr<gameswf::bitmap_info>::set_ref((gameswf::ref_counted **)&a2->height, char_image);
      if ( a2->height )
        goto LABEL_6;
    }
    v5 = *((_DWORD *)this + 7);
  }
  if ( v5 )
  {
    v14 = *((_BYTE **)this + 6);
    if ( !v14[4] )
    {
      v20 = (*(_DWORD *)v14)-- == 1;
      if ( v20 )
        gameswf::free_internal(v14);
      v5 = 0;
      *((_DWORD *)this + 6) = 0;
      *((_DWORD *)this + 7) = 0;
    }
  }
  v15 = *(gameswf::glyph_provider **)(*(_DWORD *)(v5 + 172) + 12);
  if ( !v15
    || (BYTE2(a2[1].x) = 0,
        v16 = (gameswf::ref_counted *)gameswf::glyph_provider::get_char_image(
                                        v15,
                                        a3,
                                        (gameswf::font *)((char *)this + 48),
                                        *((_BYTE *)this + 77),
                                        *((_BYTE *)this + 76),
                                        a4,
                                        (gameswf::rect *)&a2->x,
                                        (float *)&a2->width),
        gameswf::smart_ptr<gameswf::bitmap_info>::set_ref((gameswf::ref_counted **)&a2->height, v16),
        face_entity = gameswf::glyph_provider::get_face_entity(
                        v15,
                        (gameswf::font *)((char *)this + 48),
                        *((_BYTE *)this + 77),
                        *((_BYTE *)this + 76)),
        height = a2->height,
        a2[1].width = face_entity,
        !height) )
  {
    v19 = *((_DWORD *)this + 20);
    if ( !v19 )
      return 0;
    v21 = *(_DWORD *)(v19 + 4);
    v22 = a3 & v21;
    v23 = 12 * (a3 & v21) + 8;
    v24 = *(_DWORD *)(v19 + v23);
    v25 = v19 + v23;
    if ( v24 == -2 )
      return 0;
    v26 = *(_DWORD *)(v25 + 4);
    if ( v26 != -1 && v22 != (v21 & v26) )
      return 0;
    while ( a3 != v26 || *(unsigned __int16 *)(v25 + 8) != a3 )
    {
      v22 = *(_DWORD *)v25;
      if ( *(_DWORD *)v25 == -1 )
        return 0;
      v25 = *((_DWORD *)this + 20) + 12 * v22 + 8;
      v26 = *(_DWORD *)(v25 + 4);
    }
    if ( v22 < 0 )
      return 0;
    v27 = *(_WORD *)(v19 + 12 * v22 + 18);
    HIWORD(a2[1].height) = v27;
    if ( v27 < *((_DWORD *)this + 25) )
    {
      a2->width = *(_DWORD *)(*((_DWORD *)this + 24) + 4 * v27);
      return 1;
    }
  }
LABEL_6:
  if ( *((_DWORD *)this + 31) )
    *(float *)&a2->width = *(float *)&a2->width * 20.0;
  return 1;
}


// ===== 7d043c gameswf::glyph_provider::get_char_def(ushort,char const*,bool,bool,int,gameswf::rect *,float *) =====
int gameswf::glyph_provider::get_char_def()
{
  return 0;
}


// ===== 7d0444 gameswf::destruct<gameswf::image_alpha>(gameswf::image_alpha const*) =====
void __fastcall gameswf::destruct<gameswf::image_alpha>(void (__fastcall ***a1)(_DWORD))
{
  if ( a1 )
  {
    (**a1)(a1);
    gameswf::free_internal(a1);
  }
}


// ===== 7d0470 gameswf::glyph_provider::cubic_to_callback(FT_Vector_ *,FT_Vector_ *,FT_Vector_ *,void *) =====
int __fastcall gameswf::glyph_provider::cubic_to_callback(
        gameswf::glyph_provider *this,
        FT_Vector_ *a2,
        FT_Vector_ *a3,
        FT_Vector_ *a4,
        void *a5)
{
  int v5; // r5
  float v6; // r4
  float v7; // r0
  float v8; // r7
  float v9; // r0

  v5 = *((_DWORD *)this + 1);
  v6 = *(float *)&a4->y;
  v7 = (double)*(int *)this + (double)(a2->x - *(_DWORD *)this) * 0.5;
  v8 = v6 * v7;
  v9 = (double)v5 + (double)(a2->y - v5) * 0.5;
  gameswf::canvas::curve_to(
    (gameswf::canvas *)a4[4].x,
    v8,
    v6 * COERCE_FLOAT(LODWORD(v9) + 0x80000000),
    v6 * (float)a3->x,
    v6 * (float)-a3->y);
  return 0;
}


// ===== 7d0580 gameswf::glyph_provider::conic_to_callback(FT_Vector_ *,FT_Vector_ *,void *) =====
int __fastcall gameswf::glyph_provider::conic_to_callback(
        gameswf::glyph_provider *this,
        FT_Vector_ *a2,
        FT_Vector_ *a3,
        void *a4)
{
  gameswf::canvas::curve_to(
    (gameswf::canvas *)a3[4].x,
    (float)*(int *)this * *(float *)&a3->y,
    *(float *)&a3->y * (float)-*((_DWORD *)this + 1),
    *(float *)&a3->y * (float)a2->x,
    *(float *)&a3->y * (float)-a2->y);
  return 0;
}


// ===== 7d061c gameswf::glyph_provider::line_to_callback(FT_Vector_ *,void *) =====
int __fastcall gameswf::glyph_provider::line_to_callback(gameswf::glyph_provider *this, FT_Vector_ *a2, void *a3)
{
  gameswf::canvas::line_to(
    (gameswf::canvas *)a2[4].x,
    (float)*(int *)this * *(float *)&a2->y,
    *(float *)&a2->y * (float)-*((_DWORD *)this + 1));
  return 0;
}


// ===== 7d0670 gameswf::glyph_provider::move_to_callback(FT_Vector_ *,void *) =====
int __fastcall gameswf::glyph_provider::move_to_callback(gameswf::glyph_provider *this, FT_Vector_ *a2, void *a3)
{
  gameswf::canvas::move_to(
    (gameswf::canvas *)a2[4].x,
    (float)*(int *)this * *(float *)&a2->y,
    *(float *)&a2->y * (float)-*((_DWORD *)this + 1));
  return 0;
}


// ===== 7d06c4 gameswf::glyph_provider::draw_bitmap(FT_Bitmap_ const&) =====
gameswf::image_alpha *__fastcall gameswf::glyph_provider::draw_bitmap(
        gameswf::glyph_provider *this,
        const FT_Bitmap_ *a2,
        int a3)
{
  int pitch; // r3
  int v5; // r0
  bool v6; // cc
  int rows; // r3
  int v8; // r1
  gameswf::image_alpha *alpha; // r5
  int v10; // r3
  int v11; // r7
  int v12; // r0
  int v13; // r6
  int width; // r1
  unsigned __int8 *v15; // r12
  int v16; // r0
  int i; // r3

  pitch = a2->pitch;
  v5 = 1;
  do
  {
    v5 *= 2;
    v6 = v5 <= pitch;
    if ( v5 >= pitch )
      v6 = v5 <= 3;
  }
  while ( v6 );
  rows = a2->rows;
  if ( a2->rows > 1 )
  {
    v8 = 1;
    do
      v8 *= 2;
    while ( v8 < rows );
  }
  else
  {
    v8 = 1;
  }
  alpha = gameswf::create_alpha((gameswf *)v5, v8, a3);
  LC_API_MEMSET_0(*((void **)alpha + 2), 0, *((_DWORD *)alpha + 3) * *((_DWORD *)alpha + 4));
  v10 = a2->rows;
  if ( a2->rows > 0 )
  {
    v11 = a2->pitch;
    v12 = *((_DWORD *)alpha + 5);
    v13 = 0;
    while ( 1 )
    {
      width = a2->width;
      if ( width > 0 )
      {
        v15 = &a2->buffer[v13 * v11];
        v16 = *((_DWORD *)alpha + 2) + v13 * v12;
        for ( i = 0; i != width; ++i )
          *(_BYTE *)(v16 + i) = v15[i];
        v10 = a2->rows;
      }
      if ( v10 <= ++v13 )
        break;
      v11 = a2->pitch;
      v12 = *((_DWORD *)alpha + 5);
    }
  }
  return alpha;
}


// ===== 7d0794 gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::entry::clear(void) =====
void __fastcall gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::entry::clear(
        int a1)
{
  void (__fastcall ***v2)(_DWORD); // r0

  if ( *(char *)(a1 + 8) == -1 )
    gameswf::free_internal(*(void **)(a1 + 20));
  v2 = *(void (__fastcall ****)(_DWORD))(a1 + 28);
  if ( v2 )
    gameswf::ref_counted::drop_ref(v2);
  *(_DWORD *)(a1 + 4) = 0;
  *(_DWORD *)a1 = -2;
}


// ===== 7d07dc gameswf::smart_ptr<gameswf::face_entity>::set_ref(gameswf::face_entity*) =====
void __fastcall gameswf::smart_ptr<gameswf::face_entity>::set_ref(
        gameswf::ref_counted **a1,
        gameswf::ref_counted *this)
{
  gameswf::ref_counted *v3; // r0

  v3 = *a1;
  if ( v3 != this )
  {
    if ( v3 )
      gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v3);
    *a1 = this;
    if ( this )
      gameswf::ref_counted::add_ref((int)this);
  }
}


// ===== 7d081c gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::entry::entry(gameswf::tu_string const&,gameswf::smart_ptr<gameswf::face_entity> const&,int,int) =====
_DWORD *__fastcall gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::entry::entry(
        _DWORD *a1,
        const gameswf::tu_string *a2,
        int *a3,
        int a4,
        int a5)
{
  int v7; // r0
  bool v8; // zf

  *a1 = a4;
  a1[1] = a5;
  gameswf::tu_string::tu_string((gameswf::tu_string *)(a1 + 2), a2);
  v7 = *a3;
  v8 = *a3 == 0;
  a1[7] = *a3;
  if ( !v8 )
    gameswf::ref_counted::add_ref(v7);
  return a1;
}


// ===== 7d0858 gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::entry::entry(gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::entry const&) =====
_DWORD *__fastcall gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::entry::entry(
        _DWORD *a1,
        _DWORD *a2)
{
  int v4; // r0

  *a1 = *a2;
  a1[1] = a2[1];
  gameswf::tu_string::tu_string((gameswf::tu_string *)(a1 + 2), (const gameswf::tu_string *)(a2 + 2));
  v4 = a2[7];
  a1[7] = v4;
  if ( v4 )
    gameswf::ref_counted::add_ref(v4);
  return a1;
}


// ===== 7d089c gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::add(gameswf::tu_string const&,gameswf::smart_ptr<gameswf::face_entity> const&) =====
void __fastcall gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::add(
        _DWORD **a1,
        const gameswf::tu_string *a2,
        int *a3)
{
  char *v6; // r1
  int v7; // r3
  bool v8; // zf
  int v9; // r3
  int v10; // r4
  char *v11; // r3
  int v12; // t1
  _DWORD *v13; // r6
  int v14; // r12
  int v15; // r2
  int v16; // r11
  int v17; // r3
  gameswf::ref_counted **v18; // r10
  gameswf::ref_counted *v19; // lr
  int v20; // r7
  int v21; // r0
  int v22; // r1
  _DWORD *v23; // r0
  int v24; // r3
  int v25; // r8
  int *v26; // r8

  gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::check_expand();
  ++**a1;
  v7 = *(char *)a2;
  v8 = v7 == -1;
  if ( v7 == -1 )
  {
    v9 = *((_DWORD *)a2 + 1);
  }
  else
  {
    v9 = v7 - 1;
    v6 = (char *)a2 + 1;
  }
  if ( v8 )
  {
    --v9;
    v6 = *((char **)a2 + 3);
  }
  if ( v9 > 0 )
  {
    v11 = &v6[v9];
    v10 = 5381;
    do
    {
      v12 = (unsigned __int8)*--v11;
      v10 = (33 * v10) ^ v12;
    }
    while ( v11 != v6 );
    if ( v10 == -1 )
      v10 = -32769;
  }
  else
  {
    v10 = 5381;
  }
  v13 = *a1;
  v14 = v13[1];
  v15 = v10 & v14;
  v16 = 4 * (v10 & v14) + 1;
  v17 = v13[2 * v16];
  v18 = (gameswf::ref_counted **)&v13[2 * v16];
  if ( v17 == -2 )
  {
    gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::entry::entry(
      &v13[2 * v16],
      a2,
      a3,
      -1,
      v10);
  }
  else
  {
    v19 = v18[1];
    if ( v19 == (gameswf::ref_counted *)-1 )
    {
      gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::entry::entry(
        &v13[2 * v16],
        a2,
        a3,
        v17,
        v10);
    }
    else
    {
      v20 = v10 & v14;
      do
      {
        v20 = (v20 + 1) & v14;
        v21 = 4 * v20 + 1;
        v22 = v13[2 * v21];
        v23 = &v13[2 * v21];
      }
      while ( v22 != -2 );
      v24 = v14 & (unsigned int)v19;
      if ( (v14 & (unsigned int)v19) == v15 )
      {
        gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::entry::entry(
          v23,
          &v13[2 * v16]);
        gameswf::tu_string::operator=((gameswf::tu_string *)(v18 + 2), (char *)a2);
        gameswf::smart_ptr<gameswf::face_entity>::set_ref(v18 + 7, (gameswf::ref_counted *)*a3);
        v13[2 * v16] = v20;
        v18[1] = (gameswf::ref_counted *)v10;
      }
      else
      {
        do
        {
          v25 = 4 * v24 + 1;
          v24 = v13[2 * v25];
          v26 = &v13[2 * v25];
        }
        while ( v24 != v15 );
        gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::entry::entry(
          v23,
          &v13[2 * v16]);
        *v26 = v20;
        gameswf::tu_string::operator=((gameswf::tu_string *)(v18 + 2), (char *)a2);
        gameswf::smart_ptr<gameswf::face_entity>::set_ref(v18 + 7, (gameswf::ref_counted *)*a3);
        v18[1] = (gameswf::ref_counted *)v10;
        v13[2 * v16] = -1;
      }
    }
  }
}


// ===== 7d0a20 gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::set_raw_capacity(int) =====
void __fastcall gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::set_raw_capacity(
        _DWORD **a1,
        int a2)
{
  _DWORD *v2; // r8
  int v3; // r4
  _DWORD *v4; // r3
  int v5; // r5
  int v6; // r3
  _DWORD *v7; // r0
  int v8; // r7
  int v9; // r4
  int v10; // r6
  _DWORD *v11; // r5
  _DWORD *v12[2]; // [sp+4h] [bp-8h] BYREF

  v2 = a1;
  if ( a2 <= 0 )
  {
LABEL_17:
    gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::clear(a1);
    return;
  }
  v3 = 1 << (int)(float)((float)(logf((float)(a2 - 1)) / 0.69315) + 1.0);
  v4 = (_DWORD *)*v2;
  if ( v3 < 4 )
    v3 = 4;
  if ( !v4 || v4[1] + 1 != v3 )
  {
    v5 = 0;
    v12[0] = gameswf::malloc_internal(32 * v3 + 8);
    *v12[0] = 0;
    v12[0][1] = v3 - 1;
    v6 = 2;
    do
    {
      ++v5;
      v12[0][v6] = -2;
      v6 += 8;
    }
    while ( v3 > v5 );
    v7 = (_DWORD *)*v2;
    if ( *v2 )
    {
      v8 = v7[1];
      if ( v8 >= 0 )
      {
        v9 = 2;
        v10 = 0;
        do
        {
          ++v10;
          v11 = &v7[v9];
          if ( v7[v9] != -2 && v11[1] != -1 )
          {
            gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::add(
              v12,
              (const gameswf::tu_string *)(v11 + 2),
              v11 + 7);
            gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::entry::clear((int)v11);
            v7 = (_DWORD *)*v2;
          }
          v9 += 8;
        }
        while ( v8 >= v10 );
      }
      gameswf::free_internal(v7);
    }
    a1 = v12;
    *v2 = v12[0];
    v12[0] = nullptr;
    goto LABEL_17;
  }
}


// ===== 7d0b74 gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::check_expand(void) =====
void __fastcall gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::check_expand(
        _DWORD **a1)
{
  _DWORD *v1; // r3
  int v2; // r1

  v1 = *a1;
  if ( *a1 )
  {
    v2 = 2 * (v1[1] + 1);
    if ( 3 * *v1 <= v2 )
      return;
  }
  else
  {
    v2 = 8;
  }
  gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::set_raw_capacity(
    a1,
    v2);
}


// ===== 7d0ba8 gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::find_index(gameswf::tu_string const&) =====
int __fastcall gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::find_index(
        int *a1,
        char *a2)
{
  int v2; // r5
  int v4; // r6
  int v6; // r10
  char *v7; // r1
  int v8; // r3
  int v9; // t1
  int v10; // r3
  int v11; // r4
  char *v12; // r3
  int v13; // t1
  int v14; // r3
  int v15; // r8
  int v16; // r2
  int v17; // r8
  int v18; // r2
  const char *v19; // r0
  const char *v20; // r1

  v2 = *a1;
  if ( !*a1 )
    return -1;
  v6 = *a2;
  if ( v6 == -1 )
  {
    v8 = *((_DWORD *)a2 + 1);
    v7 = *((char **)a2 + 3);
  }
  else
  {
    v9 = *a2;
    v7 = a2 + 1;
    v8 = v9;
  }
  v10 = v8 - 1;
  if ( v10 > 0 )
  {
    v12 = &v7[v10];
    v11 = 5381;
    do
    {
      v13 = (unsigned __int8)*--v12;
      v11 = (33 * v11) ^ v13;
    }
    while ( v12 != v7 );
    if ( v11 == -1 )
      v11 = -32769;
  }
  else
  {
    v11 = 5381;
  }
  v14 = *(_DWORD *)(v2 + 4);
  v4 = v11 & v14;
  v15 = 4 * (v11 & v14) + 1;
  v16 = *(_DWORD *)(v2 + 8 * v15);
  v17 = v2 + 8 * v15;
  if ( v16 == -2 )
    return -1;
  v18 = *(_DWORD *)(v17 + 4);
  if ( v18 != -1 && (v14 & v18) != v4 )
    return -1;
  while ( 1 )
  {
    if ( v11 == v18 )
    {
      if ( a2 == (char *)(v17 + 8) )
        break;
      v19 = *(char *)(v17 + 8) == -1 ? *(const char **)(v17 + 20) : (const char *)(v17 + 9);
      v20 = v6 == -1 ? *((const char **)a2 + 3) : a2 + 1;
      if ( !LC_API_STRCMP_0(v19, v20) )
        break;
    }
    v4 = *(_DWORD *)v17;
    if ( *(_DWORD *)v17 == -1 )
      break;
    v17 = v2 + 32 * v4 + 8;
    v18 = *(_DWORD *)(v2 + 32 * v4 + 12);
  }
  return v4;
}


// ===== 7d0cac gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::get(gameswf::tu_string const&,gameswf::smart_ptr<gameswf::face_entity>*) =====
int __fastcall gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::get(
        int *a1,
        char *a2,
        gameswf::ref_counted **a3)
{
  int index; // r3

  index = gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::find_index(
            a1,
            a2);
  if ( index < 0 )
    return 0;
  if ( a3 )
    gameswf::smart_ptr<gameswf::face_entity>::set_ref(a3, *(gameswf::ref_counted **)(*a1 + 32 * index + 36));
  return 1;
}


// ===== 7d0cf8 gameswf::face_entity::face_entity(FT_FaceRec_ *,gameswf::membuf *,gameswf::tu_string &) =====
gameswf::face_entity *__fastcall gameswf::face_entity::face_entity(
        gameswf::face_entity *this,
        FT_FaceRec_ *a2,
        gameswf::membuf *a3,
        gameswf::tu_string *a4)
{
  unsigned int v8; // r2

  gameswf::ref_counted::ref_counted(this);
  v8 = *((_DWORD *)this + 7) & 0xFF000000 | 0xFFFFFF;
  *(_DWORD *)this = off_991618;
  *((_BYTE *)this + 12) = 1;
  *((_DWORD *)this + 7) = v8;
  *((_DWORD *)this + 8) = a3;
  *((_BYTE *)this + 31) = HIBYTE(v8) & 0xFE;
  *((_DWORD *)this + 9) = a2;
  *((_DWORD *)this + 10) = 0;
  *((_BYTE *)this + 13) = 0;
  gameswf::tu_string::operator=((gameswf::face_entity *)((char *)this + 12), (char *)a4);
  return this;
}


// ===== 7d0d7c gameswf::face_entity::face_entity(FT_FaceRec_ *,gameswf::tu_string &) =====
gameswf::face_entity *__fastcall gameswf::face_entity::face_entity(
        gameswf::face_entity *this,
        FT_FaceRec_ *a2,
        gameswf::tu_string *a3)
{
  unsigned int v6; // r2

  gameswf::ref_counted::ref_counted(this);
  v6 = *((_DWORD *)this + 7) & 0xFF000000 | 0xFFFFFF;
  *(_DWORD *)this = off_991618;
  *((_BYTE *)this + 12) = 1;
  *((_DWORD *)this + 7) = v6;
  *((_DWORD *)this + 9) = a2;
  *((_BYTE *)this + 31) = HIBYTE(v6) & 0xFE;
  *((_DWORD *)this + 10) = 0;
  *((_BYTE *)this + 13) = 0;
  *((_DWORD *)this + 8) = 0;
  gameswf::tu_string::operator=((gameswf::face_entity *)((char *)this + 12), (char *)a3);
  return this;
}


// ===== 7d0dfc gameswf::glyph_provider::glyph_provider(int,int,bool,float) =====
gameswf::glyph_provider *__fastcall gameswf::glyph_provider::glyph_provider(
        gameswf::glyph_provider *this,
        int a2,
        int *a3,
        bool a4,
        float a5)
{
  unsigned int v5; // lr
  int inited; // r0
  bool v10; // cc
  gameswf::texture_cache *v11; // r6

  v5 = *((_DWORD *)this + 7) & 0xFF000000 | 0xFFFFFF;
  *((float *)this + 1) = a5;
  *((_BYTE *)this + 8) = a4;
  *((_DWORD *)this + 7) = v5;
  *((_DWORD *)this + 10) = 0;
  *((_BYTE *)this + 31) = HIBYTE(v5) & 0xFE;
  *(_DWORD *)this = 0;
  *((_BYTE *)this + 12) = 1;
  *((_BYTE *)this + 13) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  inited = FT_Init_FreeType((int *)this);
  if ( inited )
  {
    fprintf((FILE *)&_sF + 2, "can't init FreeType!  error = %d\n", inited);
    exit(1);
  }
  v10 = (int)a3 <= 0;
  if ( (int)a3 > 0 )
    v10 = a2 <= 0;
  if ( !v10 )
  {
    v11 = (gameswf::texture_cache *)operator new(0x58u, 0);
    gameswf::texture_cache::texture_cache(v11, a2, a3, 4, 0);
    *((_BYTE *)v11 + 76) = 0;
    *((_DWORD *)v11 + 16) = 0;
    *((_DWORD *)v11 + 17) = 0;
    *((_DWORD *)v11 + 18) = 0;
    *((_DWORD *)v11 + 20) = this;
    *((_DWORD *)this + 10) = v11;
  }
  return this;
}


// ===== 7d0ef0 gameswf::glyph_provider::glyph_provider(int,int,bool,float) =====
gameswf::glyph_provider *__fastcall gameswf::glyph_provider::glyph_provider(
        gameswf::glyph_provider *this,
        int a2,
        int *a3,
        bool a4,
        float a5)
{
  unsigned int v5; // lr
  int inited; // r0
  bool v10; // cc
  gameswf::texture_cache *v11; // r6

  v5 = *((_DWORD *)this + 7) & 0xFF000000 | 0xFFFFFF;
  *((float *)this + 1) = a5;
  *((_BYTE *)this + 8) = a4;
  *((_DWORD *)this + 7) = v5;
  *((_DWORD *)this + 10) = 0;
  *((_BYTE *)this + 31) = HIBYTE(v5) & 0xFE;
  *(_DWORD *)this = 0;
  *((_BYTE *)this + 12) = 1;
  *((_BYTE *)this + 13) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  inited = FT_Init_FreeType((int *)this);
  if ( inited )
  {
    fprintf((FILE *)&_sF + 2, "can't init FreeType!  error = %d\n", inited);
    exit(1);
  }
  v10 = (int)a3 <= 0;
  if ( (int)a3 > 0 )
    v10 = a2 <= 0;
  if ( !v10 )
  {
    v11 = (gameswf::texture_cache *)operator new(0x58u, 0);
    gameswf::texture_cache::texture_cache(v11, a2, a3, 4, 0);
    *((_BYTE *)v11 + 76) = 0;
    *((_DWORD *)v11 + 16) = 0;
    *((_DWORD *)v11 + 17) = 0;
    *((_DWORD *)v11 + 18) = 0;
    *((_DWORD *)v11 + 20) = this;
    *((_DWORD *)this + 10) = v11;
  }
  return this;
}


// ===== 7d0fe4 gameswf::get_fontfile(char const*,gameswf::tu_string &,bool,bool) =====
int __fastcall gameswf::get_fontfile(gameswf *this, char *a2, gameswf::tu_string *a3, int a4, bool a5)
{
  char v10[256]; // [sp+Ch] [bp-108h] BYREF

  if ( !this )
    return 0;
  LC_API_MEMSET_0(v10, 0, 0x100u);
  if ( !get_fontfile((const char *)this, (int)a3, a4, v10, 256) )
  {
    if ( LC_API_STRSTR_0((const char *)this, "Times New Roman") )
    {
      gameswf::tu_string::operator=(a2, "/usr/share/fonts/truetype/times");
      if ( a3 )
      {
        if ( a4 )
        {
          gameswf::tu_string::operator+=((gameswf::tu_string *)a2, "bi");
          goto LABEL_9;
        }
      }
      else if ( !a4 )
      {
        goto LABEL_9;
      }
      gameswf::tu_string::operator+=((gameswf::tu_string *)a2, "b");
LABEL_9:
      gameswf::tu_string::operator+=((gameswf::tu_string *)a2, ".ttf");
      return 1;
    }
    return 0;
  }
  gameswf::tu_string::operator=(a2, v10);
  return 1;
}


// ===== 7d113c gameswf::glyph_provider::get_face_entity(gameswf::tu_string const&,bool,bool) =====
gameswf::ref_counted *__fastcall gameswf::glyph_provider::get_face_entity(
        gameswf::glyph_provider *this,
        const gameswf::tu_string *a2,
        gameswf::tu_string *a3,
        int a4)
{
  gameswf::tu_string *v5; // r6
  gameswf::ref_counted *v8; // r8
  gameswf::ref_counted *v9; // r0
  bool v11; // zf
  gameswf *v12; // r0
  const char *v13; // r1
  int v14; // r10
  int v15; // r3
  int i; // r7
  char *v17; // r2
  int v18; // r3
  gameswf::membuf *v19; // r10
  int *v20; // r7
  gameswf::face_entity *v21; // r10
  gameswf::ref_counted *v22; // r0
  int v23; // r2
  char *v24; // r3
  gameswf::face_entity *v25; // r7
  int v26; // r9
  const char *v27; // r0
  const char *v28; // r1
  int v29; // r3
  bool v30; // [sp+0h] [bp-6Ch]
  _DWORD **v32; // [sp+14h] [bp-58h]
  _DWORD v33[10]; // [sp+18h] [bp-54h] BYREF
  FT_FaceRec_ *v34; // [sp+40h] [bp-2Ch] BYREF
  gameswf::ref_counted *v35; // [sp+44h] [bp-28h] BYREF
  gameswf::ref_counted *v36; // [sp+48h] [bp-24h] BYREF
  gameswf::ref_counted *v37; // [sp+4Ch] [bp-20h] BYREF
  char v38; // [sp+50h] [bp-1Ch] BYREF
  char v39[7]; // [sp+51h] [bp-1Bh] BYREF
  void *p; // [sp+5Ch] [bp-10h]
  unsigned int v41; // [sp+60h] [bp-Ch]

  v5 = (gameswf::glyph_provider *)((char *)this + 12);
  gameswf::tu_string::operator=((gameswf::glyph_provider *)((char *)this + 12), (char *)a2);
  if ( a3 )
    gameswf::tu_string::operator+=(v5, "B");
  if ( a4 )
    gameswf::tu_string::operator+=(v5, "I");
  v37 = nullptr;
  v32 = (_DWORD **)((char *)this + 36);
  if ( gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::get(
         (int *)this + 9,
         (char *)v5,
         &v37) )
  {
    v8 = v37;
    v9 = v37;
    goto LABEL_7;
  }
  v11 = *(char *)a2 == -1;
  v41 = v41 & 0xFF000000 | 0xFFFFFF;
  v38 = 1;
  HIBYTE(v41) &= ~1u;
  v39[0] = 0;
  if ( v11 )
    v12 = *((gameswf **)a2 + 3);
  else
    v12 = (const gameswf::tu_string *)((char *)a2 + 1);
  if ( !gameswf::get_fontfile(v12, &v38, a3, a4, v30) )
  {
    if ( *(char *)a2 == -1 )
      gameswf::log_error("can't find font file '%s'\n", *((const char **)a2 + 3));
    else
      gameswf::log_error("can't find font file '%s'\n", (const char *)a2 + 1);
    v8 = nullptr;
    v36 = nullptr;
    gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::add(
      v32,
      v5,
      (int *)&v36);
    v22 = v36;
    if ( v36 )
LABEL_36:
      gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v22);
    else
      v8 = nullptr;
LABEL_37:
    if ( v38 != -1 )
      goto LABEL_30;
    goto LABEL_38;
  }
  v14 = *((_DWORD *)this + 9);
  if ( v14 )
  {
    v15 = *(_DWORD *)(v14 + 4);
    if ( v15 >= 0 )
    {
      v23 = 8;
      for ( i = 0; i <= v15; ++i )
      {
        v13 = *(const char **)(v14 + v23);
        if ( v13 != (const char *)-2 )
        {
          v13 = *(const char **)(v14 + v23 + 4);
          if ( v13 != (const char *)-1 )
            break;
        }
        v23 += 32;
      }
    }
    else
    {
      i = 0;
    }
    if ( this != (gameswf::glyph_provider *)-36 )
    {
      v26 = *(_DWORD *)(v14 + 4);
      while ( v26 >= i )
      {
        v8 = *(gameswf::ref_counted **)(v14 + 32 * i + 36);
        if ( &v38 == (char *)v8 + 12
          || (*((char *)v8 + 12) == -1 ? (v27 = *((const char **)v8 + 6)) : (v27 = (char *)v8 + 13),
              v38 == -1 ? (v28 = (const char *)p) : (v28 = v39),
              !LC_API_STRCMP_0(v27, v28)) )
        {
          v35 = v8;
          if ( v8 )
            gameswf::ref_counted::add_ref((int)v8);
          gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::add(
            v32,
            v5,
            (int *)&v35);
          v22 = v35;
          if ( v35 )
            goto LABEL_36;
          goto LABEL_37;
        }
        if ( ++i <= v26 )
        {
          v29 = 32 * i + 8;
          do
          {
            v13 = (const char *)(v14 + v29);
            if ( *(_DWORD *)(v14 + v29) != -2 && *((_DWORD *)v13 + 1) != -1 )
              break;
            ++i;
            v29 += 32;
          }
          while ( i <= v26 );
        }
      }
    }
  }
  v17 = nullptr;
  v18 = *((unsigned __int8 *)this + 8);
  v34 = nullptr;
  if ( v18 )
  {
    if ( v38 == -1 )
      v13 = (const char *)p;
    else
      v17 = &v38;
    if ( v38 != -1 )
      v13 = v17 + 1;
    gameswf::tu_file::tu_file((gameswf::tu_file *)v33, v13, "rb");
    if ( v33[0] )
    {
      ((void (*)(void))v33[5])();
      v19 = (gameswf::membuf *)((int (__fastcall *)(_DWORD))v33[6])(v33[0]);
      ((void (__fastcall *)(_DWORD, _DWORD))v33[4])(0, v33[0]);
      v20 = (int *)operator new(0x10u, 0);
      gameswf::membuf::membuf((int)v20);
      gameswf::membuf::resize((gameswf::membuf *)v20, v19);
      gameswf::tu_file::read_fully((gameswf::tu_file *)v33, (gameswf::membuf *)v20, -1);
      FT_New_Memory_Face(*(int **)this, v20[2], (int)v19, 0, (_DWORD **)&v34);
      if ( v34 )
      {
        v21 = (gameswf::face_entity *)operator new(0x2Cu, 0);
        gameswf::face_entity::face_entity(v21, v34, (gameswf::membuf *)v20, (gameswf::tu_string *)&v38);
        gameswf::smart_ptr<gameswf::face_entity>::set_ref(&v37, v21);
        gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::add(
          v32,
          v5,
          (int *)&v37);
        gameswf::tu_file::~tu_file((gameswf::tu_file *)v33);
        v8 = v37;
        goto LABEL_29;
      }
      gameswf::membuf::~membuf((void **)v20);
      gameswf::free_internal(v20);
    }
    gameswf::tu_file::~tu_file((gameswf::tu_file *)v33);
    if ( v38 == -1 )
      gameswf::log_error("some error opening font '%s'\n", (const char *)p);
    else
      gameswf::log_error("some error opening font '%s'\n", v39);
    v8 = v37;
  }
  else
  {
    v24 = (char *)v38;
    if ( v38 == -1 )
      v13 = (const char *)p;
    else
      v24 = &v38;
    if ( v38 != -1 )
      v13 = v24 + 1;
    FT_New_Face(*(int **)this, (int)v13, 0, (_DWORD **)&v34);
    v25 = (gameswf::face_entity *)operator new(0x2Cu, 0);
    gameswf::face_entity::face_entity(v25, v34, (gameswf::tu_string *)&v38);
    gameswf::smart_ptr<gameswf::face_entity>::set_ref(&v37, v25);
    gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::add(
      v32,
      v5,
      (int *)&v37);
    v8 = v37;
  }
LABEL_29:
  if ( v38 != -1 )
  {
LABEL_30:
    v9 = v37;
    goto LABEL_7;
  }
LABEL_38:
  gameswf::free_internal(p);
  v9 = v37;
LABEL_7:
  if ( v9 )
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v9);
  return v8;
}


// ===== 7d1614 gameswf::glyph_provider::get_char_image(ushort,gameswf::tu_string const&,bool,bool,int,gameswf::rect *,float *) =====
int __fastcall gameswf::glyph_provider::get_char_image(
        gameswf::glyph_provider *this,
        int a2,
        const gameswf::tu_string *a3,
        gameswf::tu_string *a4,
        bool a5,
        int a6,
        gameswf::rect *a7,
        float *a8)
{
  gameswf::ref_counted *face_entity; // r0
  gameswf::ref_counted *v11; // r6
  int index; // r0
  gameswf::ref_counted **v13; // r3
  float *v14; // r12
  int *v15; // r3
  int v16; // r0
  int v17; // r1
  int v18; // r2
  int v19; // r3
  int v20; // r3
  gameswf::ref_counted **v22; // r0
  int v23; // r3
  int v24; // r3
  int v25; // r7
  float v26; // r0
  int v27; // r3
  int v28; // r7
  float v29; // r0
  gameswf::ref_counted **v30; // r0
  gameswf::image_alpha *v31; // r5
  unsigned __int8 *v32; // r3
  gameswf::ref_counted *bitmap_info_alpha; // r0
  float v34; // r7
  float v35; // r7
  int v36; // [sp+8h] [bp-14h] BYREF
  int v37; // [sp+Ch] [bp-10h] BYREF
  gameswf::ref_counted **v38; // [sp+10h] [bp-Ch] BYREF
  int v39; // [sp+14h] [bp-8h] BYREF

  face_entity = gameswf::glyph_provider::get_face_entity(this, a3, a4, a5);
  v11 = face_entity;
  if ( !face_entity )
    return 0;
  v39 = a2 | (a6 << 16);
  v38 = nullptr;
  index = gameswf::hash<int,gameswf::glyph_entity *,gameswf::fixed_size_hash<int>>::find_index(
            (int *)face_entity + 10,
            &v39);
  if ( index < 0 )
  {
    FT_Set_Pixel_Sizes(*((_DWORD **)v11 + 9), 0, (int)(float)((float)a6 * *((float *)this + 1)));
    if ( *((_DWORD *)this + 10) )
    {
      if ( !FT_Load_Char(*((_DWORD **)v11 + 9), a2, 0) )
      {
        v22 = (gameswf::ref_counted **)operator new(0x18u, 0);
        *v22 = nullptr;
        v22[5] = nullptr;
        v22[1] = nullptr;
        v22[2] = nullptr;
        v22[3] = nullptr;
        v22[4] = nullptr;
        v38 = v22;
        v37 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)v11 + 9) + 84) + 24) / 64 + 1;
        v23 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)v11 + 9) + 84) + 28);
        v36 = v23 / 64 + 1;
        gameswf::texture_cache::get_region_size_requirement((gameswf::texture_cache *)&v37, &v36, (int *)(v23 + 63));
        *((float *)v38 + 3) = (float)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)v11 + 9) + 84) + 24) / 64) / (float)v37;
        *((float *)v38 + 5) = (float)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)v11 + 9) + 84) + 28) / 64) / (float)v36;
LABEL_11:
        v24 = *(_DWORD *)(*((_DWORD *)v11 + 9) + 84);
        v25 = *(_DWORD *)(v24 + 24);
        if ( v25 > 0 )
          v26 = (float)*(int *)(v24 + 32) / (float)v25;
        else
          v26 = 0.0;
        *((float *)v38 + 2) = v26;
        v27 = *(_DWORD *)(*((_DWORD *)v11 + 9) + 84);
        v28 = *(_DWORD *)(v27 + 28);
        if ( v28 > 0 )
          v29 = (float)*(int *)(v27 + 36) / (float)v28;
        else
          v29 = 0.0;
        *((float *)v38 + 4) = v29;
        *((float *)v38 + 2) = *((float *)v38 + 2) * COERCE_FLOAT((gameswf::ref_counted *)((char *)v38[3] + 0x80000000));
        *((float *)v38 + 4) = *((float *)v38 + 4) * *((float *)v38 + 5);
        *((float *)v38 + 1) = (float)*(int *)(*(_DWORD *)(*((_DWORD *)v11 + 9) + 84) + 40) * (float)(16.0 / (float)a6);
        gameswf::hash<int,gameswf::glyph_entity *,gameswf::fixed_size_hash<int>>::add((_DWORD **)v11 + 10, &v39, &v38);
        v14 = (float *)v38;
        v13 = v38;
        goto LABEL_4;
      }
    }
    else if ( !FT_Load_Char(*((_DWORD **)v11 + 9), a2, 4u) )
    {
      v30 = (gameswf::ref_counted **)operator new(0x18u, 0);
      *v30 = nullptr;
      v30[5] = nullptr;
      v30[1] = nullptr;
      v30[2] = nullptr;
      v30[3] = nullptr;
      v30[4] = nullptr;
      v38 = v30;
      v31 = gameswf::glyph_provider::draw_bitmap(
              this,
              (const FT_Bitmap_ *)(*(_DWORD *)(*((_DWORD *)v11 + 9) + 84) + 76),
              0);
      bitmap_info_alpha = (gameswf::ref_counted *)gameswf::render::create_bitmap_info_alpha(
                                                    *((gameswf::render **)v31 + 3),
                                                    *((_DWORD *)v31 + 4),
                                                    *((_DWORD *)v31 + 2),
                                                    v32);
      gameswf::smart_ptr<gameswf::bitmap_info>::set_ref(v38, bitmap_info_alpha);
      gameswf::destruct<gameswf::image_alpha>((void (__fastcall ***)(_DWORD))v31);
      v34 = (float)*(int *)(*(_DWORD *)(*((_DWORD *)v11 + 9) + 84) + 80);
      *((float *)v38 + 3) = v34 / (float)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)*v38 + 36))(*v38);
      v35 = (float)*(int *)(*(_DWORD *)(*((_DWORD *)v11 + 9) + 84) + 76);
      *((float *)v38 + 5) = v35 / (float)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)*v38 + 40))(*v38);
      goto LABEL_11;
    }
    return 0;
  }
  v13 = *(gameswf::ref_counted ***)(*((_DWORD *)v11 + 10) + 16 * index + 20);
  v38 = v13;
  v14 = (float *)v13;
LABEL_4:
  v15 = (int *)(v13 + 2);
  v16 = *v15;
  v17 = v15[1];
  v18 = v15[2];
  v19 = v15[3];
  *(_DWORD *)a7 = v16;
  *((_DWORD *)a7 + 1) = v17;
  *((_DWORD *)a7 + 2) = v18;
  *((_DWORD *)a7 + 3) = v19;
  *a8 = v14[1];
  v20 = *((_DWORD *)this + 10);
  if ( v20 )
    return *(_DWORD *)(v20 + 52);
  else
    return *(_DWORD *)v14;
}


// ===== 7d1a28 gameswf::glyph_texture_cache::~glyph_texture_cache() =====
void __fastcall gameswf::glyph_texture_cache::~glyph_texture_cache(gameswf::glyph_texture_cache *this)
{
  int v1; // r3
  _DWORD *v3; // r0

  v1 = *((_DWORD *)this + 17);
  v3 = (_DWORD *)((char *)this + 64);
  if ( v1 < 0 )
  {
    do
      *(_BYTE *)(*v3 + v1++) = 0;
    while ( v1 );
  }
  *((_DWORD *)this + 17) = 0;
  gameswf::array<unsigned char>::reserve((int)v3, 0);
  gameswf::texture_cache::~texture_cache(this);
}


// ===== 7d1a7c gameswf::glyph_provider::~glyph_provider() =====
void __fastcall gameswf::glyph_provider::~glyph_provider(gameswf::glyph_provider *this)
{
  _DWORD **v1; // r6
  gameswf::texture_cache *v3; // r0
  void *v4; // r7
  int done; // r2
  void (__fastcall ***v6)(_DWORD); // r0

  v1 = (_DWORD **)((char *)this + 36);
  gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::clear((_DWORD **)this + 9);
  v3 = *((gameswf::texture_cache **)this + 10);
  if ( v3 )
  {
    gameswf::texture_cache::reset(v3);
    v4 = *((void **)this + 10);
    if ( v4 )
    {
      gameswf::glyph_texture_cache::~glyph_texture_cache(*((gameswf::glyph_texture_cache **)this + 10));
      gameswf::free_internal(v4);
    }
  }
  done = FT_Done_FreeType(*(int **)this);
  if ( done )
    fprintf((FILE *)&_sF + 2, "can't close FreeType!  error = %d\n", done);
  gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::clear(v1);
  v6 = *((void (__fastcall ****)(_DWORD))this + 8);
  if ( v6 )
    gameswf::ref_counted::drop_ref(v6);
  if ( *((char *)this + 12) == -1 )
    gameswf::free_internal(*((void **)this + 6));
}


// ===== 7d1b40 gameswf::glyph_provider::~glyph_provider() =====
void __fastcall gameswf::glyph_provider::~glyph_provider(gameswf::glyph_provider *this)
{
  _DWORD **v1; // r6
  gameswf::texture_cache *v3; // r0
  void *v4; // r7
  int done; // r2
  void (__fastcall ***v6)(_DWORD); // r0

  v1 = (_DWORD **)((char *)this + 36);
  gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::clear((_DWORD **)this + 9);
  v3 = *((gameswf::texture_cache **)this + 10);
  if ( v3 )
  {
    gameswf::texture_cache::reset(v3);
    v4 = *((void **)this + 10);
    if ( v4 )
    {
      gameswf::glyph_texture_cache::~glyph_texture_cache(*((gameswf::glyph_texture_cache **)this + 10));
      gameswf::free_internal(v4);
    }
  }
  done = FT_Done_FreeType(*(int **)this);
  if ( done )
    fprintf((FILE *)&_sF + 2, "can't close FreeType!  error = %d\n", done);
  gameswf::hash<gameswf::tu_string,gameswf::smart_ptr<gameswf::face_entity>,gameswf::string_hash_functor<gameswf::tu_string>>::clear(v1);
  v6 = *((void (__fastcall ****)(_DWORD))this + 8);
  if ( v6 )
    gameswf::ref_counted::drop_ref(v6);
  if ( *((char *)this + 12) == -1 )
    gameswf::free_internal(*((void **)this + 6));
}


// ===== 7d1c04 gameswf::face_entity::~face_entity() =====
void __fastcall gameswf::face_entity::~face_entity(gameswf::face_entity *this)
{
  _DWORD *v2; // r0
  int v3; // r3
  char *v4; // r5
  int v5; // r1
  int i; // r4
  int v7; // r2
  void *v8; // r4
  int v9; // r2
  int v10; // r0
  int v11; // r12
  void (__fastcall ****v12)(_DWORD); // r7
  int v13; // r1
  int v14; // r0
  int v15; // r12

  v2 = *((_DWORD **)this + 9);
  *(_DWORD *)this = off_991618;
  FT_Done_Face(v2);
  v3 = *((_DWORD *)this + 10);
  v4 = (char *)this + 40;
  if ( v3 )
  {
    v5 = *(_DWORD *)(v3 + 4);
    if ( v5 >= 0 )
    {
      v9 = 8;
      for ( i = 0; i <= v5; ++i )
      {
        v10 = *(_DWORD *)(v3 + v9);
        v11 = v3 + v9;
        v9 += 16;
        if ( v10 != -2 && *(_DWORD *)(v11 + 4) != -1 )
          break;
      }
    }
    else
    {
      i = 0;
    }
    if ( this != (gameswf::face_entity *)-40 )
    {
      while ( v3 )
      {
        v7 = *(_DWORD *)(v3 + 4);
        if ( i > v7 )
          break;
        v12 = *(void (__fastcall *****)(_DWORD))(v3 + 16 * i + 20);
        if ( v12 )
        {
          if ( *v12 )
            gameswf::ref_counted::drop_ref(*v12);
          gameswf::free_internal(v12);
          v3 = *(_DWORD *)v4;
          v7 = *(_DWORD *)(*(_DWORD *)v4 + 4);
          if ( i > v7 )
            break;
        }
        if ( ++i <= v7 )
        {
          v13 = 16 * i + 8;
          do
          {
            v14 = *(_DWORD *)(v3 + v13);
            v15 = v3 + v13;
            v13 += 16;
            if ( v14 != -2 && *(_DWORD *)(v15 + 4) != -1 )
              break;
            ++i;
          }
          while ( i <= v7 );
        }
      }
    }
  }
  v8 = *((void **)this + 8);
  if ( v8 )
  {
    gameswf::membuf::~membuf(*((void ***)this + 8));
    gameswf::free_internal(v8);
  }
  gameswf::hash<int,gameswf::glyph_entity *,gameswf::fixed_size_hash<int>>::clear((_DWORD **)this + 10);
  if ( *((char *)this + 12) == -1 )
    gameswf::free_internal(*((void **)this + 6));
  gameswf::ref_counted::~ref_counted(this);
}


// ===== 7d1d88 gameswf::face_entity::~face_entity() =====
void __fastcall gameswf::face_entity::~face_entity(gameswf::face_entity *this)
{
  gameswf::face_entity::~face_entity(this);
  LC_API_FREE_0(this);
}


// ===== 7d1da4 gameswf::glyph_texture_cache::add_glyph_region(ushort,void *,int,gameswf::glyph_texture_cache::filter_info &,bool) =====
int __fastcall gameswf::glyph_texture_cache::add_glyph_region(
        int a1,
        int a2,
        int a3,
        int a4,
        unsigned __int8 *a5,
        char a6)
{
  float v6; // r8
  int v7; // r11
  int Char; // r7
  int v11; // r4
  int *v12; // r4
  int v13; // r11
  unsigned int v14; // r7
  unsigned int v15; // r0
  unsigned int v16; // r8
  int *v17; // r2
  int v18; // r3
  _QWORD *v19; // r10
  __int64 v20; // r0
  int v21; // lr
  __int64 v22; // r2
  float v23; // r10
  int v24; // r0
  int v25; // r0
  int v26; // r3
  int v27; // r0
  int v28; // r6
  char *v29; // r5
  int v30; // r9
  char *v31; // r6
  int v32; // r5
  signed int v33; // r9
  int v34; // r10
  char *v35; // r7
  int j; // r8
  char *v37; // r3
  int k; // r2
  char v39; // r1
  signed int v41; // r5
  signed int v42; // r6
  int v43; // r9
  int v44; // r11
  int v45; // r3
  int v46; // r0
  float v47; // r8
  int v48; // r7
  int v49; // r0
  float v50; // r8
  int v51; // r0
  float v52; // r8
  int v53; // r10
  char *v54; // r6
  int v55; // r3
  int i; // r5
  int v57; // r0
  int v58; // r3
  int v59; // r3
  int v60; // r9
  int v61; // r5
  int v62; // r6
  int v63; // r3
  int v64; // r3
  int v65; // r4
  int v66; // r12
  bool v67; // nf
  int v68; // [sp+8h] [bp-134h]
  int v69; // [sp+8h] [bp-134h]
  int v71; // [sp+14h] [bp-128h]
  float v73; // [sp+18h] [bp-124h]
  char *v74; // [sp+24h] [bp-118h]
  int v75; // [sp+24h] [bp-118h]
  int v76; // [sp+28h] [bp-114h]
  int v77; // [sp+34h] [bp-108h]
  int v78; // [sp+3Ch] [bp-100h]
  int v79; // [sp+40h] [bp-FCh]
  int v80; // [sp+44h] [bp-F8h]
  int v81; // [sp+48h] [bp-F4h]
  int v82; // [sp+4Ch] [bp-F0h]
  char *v83; // [sp+50h] [bp-ECh]
  _BOOL4 v84; // [sp+54h] [bp-E8h]
  _DWORD v85[8]; // [sp+58h] [bp-E4h] BYREF
  char *v86; // [sp+78h] [bp-C4h]
  int v87; // [sp+7Ch] [bp-C0h]
  int v88; // [sp+80h] [bp-BCh]
  int v89; // [sp+84h] [bp-B8h]
  int v90; // [sp+88h] [bp-B4h]
  int v91; // [sp+8Ch] [bp-B0h]
  int v92; // [sp+90h] [bp-ACh]
  _DWORD v93[11]; // [sp+94h] [bp-A8h] BYREF
  _DWORD v94[7]; // [sp+C0h] [bp-7Ch] BYREF
  _DWORD v95[7]; // [sp+DCh] [bp-60h] BYREF
  int v96; // [sp+F8h] [bp-44h] BYREF
  int v97; // [sp+FCh] [bp-40h]
  int v98; // [sp+104h] [bp-38h]
  float v99[4]; // [sp+110h] [bp-2Ch] BYREF
  _QWORD v100[2]; // [sp+120h] [bp-1Ch] BYREF
  int v101; // [sp+130h] [bp-Ch] BYREF
  int v102; // [sp+134h] [bp-8h] BYREF

  v6 = *(float *)(*(_DWORD *)(a1 + 80) + 4);
  v7 = *a5;
  v76 = a5[1];
  v68 = a5[2];
  v74 = (char *)gameswf::texture_cache::lock((gameswf::texture_cache *)a1);
  FT_Set_Pixel_Sizes(*(_DWORD **)(a3 + 36), 0, (int)(float)((float)a4 * v6));
  Char = FT_Load_Char(*(_DWORD **)(a3 + 36), a2, 4u);
  if ( Char )
    return 0;
  v11 = *(_DWORD *)(*(_DWORD *)(a3 + 36) + 84);
  v84 = *(char *)(v11 + 94) == 1;
  if ( *(_BYTE *)(v11 + 94) == 1 )
  {
    v12 = &v96;
    FT_Bitmap_New((int)&v96);
    FT_Bitmap_Convert(**(int ***)(a1 + 80), (int *)(*(_DWORD *)(*(_DWORD *)(a3 + 36) + 84) + 76), &v96, 1);
    v59 = v97 * v96;
    if ( v97 * v96 > 0 )
    {
      do
      {
        *(_BYTE *)(v98 + Char) = -*(_BYTE *)(v98 + Char);
        ++Char;
      }
      while ( Char != v59 );
    }
  }
  else
  {
    v12 = (int *)(v11 + 76);
  }
  v13 = (unsigned __int8)(unsigned int)(float)((float)v7 * v6);
  v14 = (unsigned __int8)(unsigned int)(float)((float)v76 * v6);
  v15 = (unsigned int)(float)((float)v68 * v6);
  v16 = (unsigned __int8)v15;
  v17 = (int *)(v12[2] + 1);
  v102 = (int)v17;
  v18 = *v12 + 1;
  v101 = v18;
  if ( v13 )
  {
    v17 = (int *)((char *)v17 + 2 * v13);
    v102 = (int)v17;
    v101 = 2 * v13 + v18;
  }
  else if ( (unsigned __int8)v15 | v14 )
  {
    v17 = (int *)((char *)v17 + 2 * v14);
    v102 = (int)v17;
    v101 = v18 + 2 * (unsigned __int8)v15;
  }
  gameswf::texture_cache::get_region_size_requirement((gameswf::texture_cache *)&v102, &v101, v17);
  v19 = (_QWORD *)(a6
                 ? gameswf::texture_cache::find_used_region((gameswf::texture_cache *)a1, v102, v101)
                 : gameswf::texture_cache::find_available_region((gameswf::texture_cache *)a1, v102, v101));
  if ( !v19 )
    return 0;
  v20 = *(_QWORD *)a1 + 1LL;
  *v19 = *(_QWORD *)a1;
  *(_QWORD *)a1 = v20;
  v21 = (a5[2] << 8) | (a5[1] << 16) | *a5;
  LODWORD(v22) = a3;
  HIDWORD(v22) = a2 | ((unsigned __int8)a4 << 16);
  v100[0] = v22;
  v100[1] = v21;
  *(_DWORD *)gameswf::hash<gameswf::texture_cache::key,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::key>>::operator[](
               (int *)(a1 + 48),
               (int *)v100) = v19;
  gameswf::texture_cache::get_region_bounds(a1, (int)v19, v99);
  v23 = v99[2];
  v79 = *(_DWORD *)(a1 + 56);
  v24 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 52) + 36))(*(_DWORD *)(a1 + 52));
  v83 = &v74[(float)((float)((float)(v23 * (float)v24) * (float)v79) + (float)((float)v79 * v99[0]))];
  v25 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 52) + 36))(*(_DWORD *)(a1 + 52));
  v26 = v101;
  v27 = v79 * v25;
  v78 = v27;
  if ( v101 > 0 )
  {
    v28 = 0;
    v29 = v83;
    v30 = v27;
    do
    {
      LC_API_MEMSET_0(v29, 0, v102 * v79);
      v26 = v101;
      ++v28;
      v29 += v30;
    }
    while ( v101 > v28 );
  }
  v31 = (char *)v12[3];
  v32 = v12[2];
  v33 = v12[1];
  v34 = *v12;
  if ( v13 )
  {
    v41 = v102 * v26;
    v42 = *(_DWORD *)(a1 + 68);
    if ( v102 * v26 && v41 > *(_DWORD *)(a1 + 72) )
      gameswf::array<unsigned char>::reserve(a1 + 64, v41 + (v41 >> 1));
    if ( v41 > v42 )
    {
      do
        *(_BYTE *)(*(_DWORD *)(a1 + 64) + v42++) = 0;
      while ( v42 != v41 );
    }
    *(_DWORD *)(a1 + 68) = v41;
    LC_API_MEMSET_0(*(void **)(a1 + 64), 0, v41);
    v43 = v102;
    v73 = (float)v13 + (float)v13;
    v81 = v13 + 1;
    v82 = 2 * v13 + 1;
    v80 = v13 + 1;
    v75 = v82;
    v44 = *v12;
    v31 = *(char **)(a1 + 64);
    do
    {
      v45 = v80;
      if ( v80 < 0 )
        v45 = -v80;
      v77 = v45;
      v32 = v43;
      v71 = v81;
      v69 = v82;
      do
      {
        v46 = v71;
        if ( v71 < 0 )
          v46 = -v71;
        v47 = (float)((float)((float)(v73 - (float)v46) - (float)v77) / v73) * 255.0;
        v48 = v12[3];
        if ( v47 >= 0.0 )
        {
          if ( v47 < 255.0 )
            v49 = (int)v47;
          else
            v49 = 255;
        }
        else
        {
          v49 = 0;
        }
        v50 = (float)((float)gameswf::sqrt_table[v49] / 255.0) * 255.0;
        if ( v50 >= 0.0 )
        {
          if ( v50 < 255.0 )
            v51 = (int)v50;
          else
            v51 = 255;
        }
        else
        {
          v51 = 0;
        }
        v52 = (float)gameswf::sqrt_table[v51] / 255.0;
        if ( v44 > 0 )
        {
          v53 = 0;
          v54 = &v31[v69 + v75 * v43];
          v55 = v12[1];
          while ( 1 )
          {
            if ( v55 > 0 )
            {
              for ( i = 0; i < v55; ++i )
              {
                v57 = (int)(float)((float)*(unsigned __int8 *)(v48 + i) * v52);
                v58 = (unsigned __int8)v54[i];
                if ( v57 >= 255 )
                  v57 = 255;
                if ( v57 >= v58 )
                  LOBYTE(v58) = v57;
                v54[i] = v58;
                v55 = v12[1];
              }
              v44 = *v12;
              v43 = v102;
            }
            ++v53;
            v32 = v43;
            if ( v44 <= v53 )
              break;
            v48 += v12[2];
            v54 += v43;
          }
          v31 = *(char **)(a1 + 64);
        }
        v67 = --v69 < 0;
        --v71;
      }
      while ( !v67 );
      v67 = --v75 < 0;
      --v80;
    }
    while ( !v67 );
    v33 = v43 - 1;
    v34 = v101 - 1;
  }
  else if ( v16 | v14 )
  {
    v60 = (v102 + 2 * v14) * (v26 + 2 * v16);
    v61 = 2 * v60;
    v62 = *(_DWORD *)(a1 + 68);
    if ( 2 * v60 && v61 > *(_DWORD *)(a1 + 72) )
      gameswf::array<unsigned char>::reserve(a1 + 64, v61 + (v61 >> 1));
    while ( v61 > v62 )
      *(_BYTE *)(*(_DWORD *)(a1 + 64) + v62++) = 0;
    *(_DWORD *)(a1 + 68) = v61;
    LC_API_MEMSET_0(*(void **)(a1 + 64), 0, 2 * v60);
    v95[6] = 1;
    v63 = v12[3];
    v95[2] = 0;
    v95[1] = 0;
    v95[0] = v63;
    v95[5] = v12[2];
    v64 = *(_DWORD *)(a1 + 64);
    v95[3] = v12[1];
    v65 = *v12;
    v94[0] = v64;
    v94[3] = v102 - 1;
    v94[4] = v101 - 1;
    v94[5] = v102;
    v94[6] = 1;
    v95[4] = v65;
    v94[1] = v14;
    v94[2] = v16;
    gameswf::filter_engine::copy(v95, v94);
    v93[0] = 1;
    *(float *)&v93[8] = (float)v14;
    v66 = *(_DWORD *)(a1 + 64);
    *(float *)&v93[9] = (float)v16;
    v92 = 1;
    v86 = (char *)(v66 + v60);
    v88 = 0;
    v93[10] = 1;
    v85[7] = 1;
    v85[2] = 0;
    v85[3] = 0;
    v87 = 0;
    v85[0] = v93;
    v91 = v102;
    v89 = v102 - 1;
    v90 = v101 - 1;
    v85[1] = v66;
    v85[6] = v102;
    v85[4] = v102 - 1;
    v85[5] = v101 - 1;
    gameswf::filter_engine::apply((char *)v85);
    v32 = v102;
    v31 = v86;
    v33 = v102 - 1;
    v34 = v101 - 1;
  }
  if ( v34 > 0 )
  {
    v35 = v83;
    for ( j = 0; j != v34; ++j )
    {
      v37 = v35;
      if ( v79 == 1 )
      {
        memcpy(v35, v31, v33);
      }
      else if ( v33 > 0 )
      {
        for ( k = 0; k != v33; ++k )
        {
          *v37 = -1;
          v37[1] = -1;
          v37[2] = -1;
          v39 = v31[k];
          v37[3] = v39;
          v37 += 4;
        }
      }
      v35 += v78;
      v31 += v32;
    }
  }
  if ( v84 )
    FT_Bitmap_Done(**(int ***)(a1 + 80), (int)&v96);
  return 1;
}


// ===== 7d266c gameswf::glyph_texture_cache::get_glyph_region(ushort,void *,int,gameswf::glyph_texture_cache::filter_info &,gameswf::rect &) =====
float __fastcall gameswf::glyph_texture_cache::get_glyph_region(
        int *a1,
        int a2,
        int a3,
        int a4,
        unsigned __int8 *a5,
        float *a6)
{
  int v8; // r12
  float result; // r0
  int v10; // r1
  _DWORD v13[2]; // [sp+20h] [bp+0h] BYREF
  __int64 v14; // [sp+28h] [bp+8h]

  v8 = (a5[2] << 8) | (a5[1] << 16) | *a5;
  v13[0] = a3;
  v13[1] = a2 | ((unsigned __int8)a4 << 16);
  v14 = v8;
  result = COERCE_FLOAT(
             gameswf::hash<gameswf::texture_cache::key,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::key>>::find_index(
               a1 + 12,
               v13));
  if ( result >= 0.0 )
    goto LABEL_2;
  if ( !gameswf::glyph_texture_cache::add_glyph_region((int)a1, a2, a3, a4, a5, 0) )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)gameswf::s_render_handler + 148))(gameswf::s_render_handler);
    if ( !gameswf::glyph_texture_cache::add_glyph_region((int)a1, a2, a3, a4, a5, 1) )
    {
      gameswf::texture_cache::reset((gameswf::texture_cache *)a1);
      gameswf::glyph_texture_cache::add_glyph_region((int)a1, a2, a3, a4, a5, 0);
    }
  }
  result = COERCE_FLOAT(
             gameswf::hash<gameswf::texture_cache::key,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::key>>::find_index(
               a1 + 12,
               v13));
  if ( result >= 0.0 )
  {
LABEL_2:
    LODWORD(result) = a1[12] + 32 * LODWORD(result);
    v10 = *(_DWORD *)(LODWORD(result) + 32);
    if ( v10 )
      return gameswf::texture_cache::get_region_bounds((int)a1, v10, a6);
  }
  return result;
}


// ===== 7d27d4 gameswf::as_c_function::is(int) =====
bool __fastcall gameswf::as_c_function::is(gameswf::as_c_function *this, int a2)
{
  return a2 == 5 || a2 == 4 || a2 == 0;
}


// ===== 7d27f8 gameswf::as_s_function::is(int) =====
bool __fastcall gameswf::as_s_function::is(gameswf::as_s_function *this, int a2)
{
  return a2 == 6 || a2 == 4 || a2 == 0;
}


// ===== 7d281c gameswf::as_c_function::operator()(gameswf::fn_call const&) =====
int __fastcall gameswf::as_c_function::operator()(int result, int a2)
{
  int (__fastcall *v2)(int); // r3

  v2 = *(int (__fastcall **)(int))(result + 60);
  if ( v2 )
    return v2(a2);
  return result;
}


// ===== 7d2838 gameswf::smart_ptr<gameswf::as_array>::set_ref(gameswf::as_array*) =====
void __fastcall gameswf::smart_ptr<gameswf::as_array>::set_ref(gameswf::ref_counted **a1, gameswf::ref_counted *this)
{
  gameswf::ref_counted *v3; // r0

  v3 = *a1;
  if ( v3 != this )
  {
    if ( v3 )
      gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v3);
    *a1 = this;
    if ( this )
      gameswf::ref_counted::add_ref((int)this);
  }
}


// ===== 7d2878 gameswf::as_s_function::get_member(gameswf::tu_stringi const&,gameswf::as_value *) =====
int __fastcall gameswf::as_s_function::get_member(int a1, _DWORD *a2, gameswf::as_value *a3)
{
  if ( gameswf::get_builtin(5, a2, a3) )
    return 1;
  else
    return gameswf::as_function::get_member(a1, a2, a3);
}


// ===== 7d28b4 gameswf::as_c_function::as_c_function(gameswf::player *,void (*)(gameswf::fn_call const&)) =====
gameswf::ref_counted **__fastcall gameswf::as_c_function::as_c_function(
        gameswf::ref_counted **this,
        gameswf::player *a2,
        gameswf::ref_counted *a3)
{
  gameswf::as_object *v6; // r6

  gameswf::as_object::as_object((gameswf::as_object *)this, a2);
  *(this + 15) = a3;
  *(this + 14) = nullptr;
  *this = (gameswf::ref_counted *)off_991698;
  v6 = (gameswf::as_object *)operator new(0x38u, 0);
  gameswf::as_object::as_object(v6, a2);
  gameswf::smart_ptr<gameswf::as_object>::set_ref(this + 14, v6);
  return this;
}


// ===== 7d291c gameswf::as_c_function::as_c_function(gameswf::player *,void (*)(gameswf::fn_call const&)) =====
gameswf::ref_counted **__fastcall gameswf::as_c_function::as_c_function(
        gameswf::ref_counted **this,
        gameswf::player *a2,
        gameswf::ref_counted *a3)
{
  gameswf::as_object *v6; // r6

  gameswf::as_object::as_object((gameswf::as_object *)this, a2);
  *(this + 15) = a3;
  *(this + 14) = nullptr;
  *this = (gameswf::ref_counted *)off_991698;
  v6 = (gameswf::as_object *)operator new(0x38u, 0);
  gameswf::as_object::as_object(v6, a2);
  gameswf::smart_ptr<gameswf::as_object>::set_ref(this + 14, v6);
  return this;
}


// ===== 7d2984 gameswf::as_c_function::~as_c_function() =====
void __fastcall gameswf::as_c_function::~as_c_function(gameswf::as_c_function *this)
{
  void (__fastcall ***v2)(_DWORD); // r0

  v2 = *((void (__fastcall ****)(_DWORD))this + 14);
  *(_DWORD *)this = off_9912A8;
  if ( v2 )
    gameswf::ref_counted::drop_ref(v2);
  gameswf::as_object::~as_object(this);
  LC_API_FREE_0(this);
}


// ===== 7d29d4 gameswf::array<gameswf::as_environment::frame_slot>::resize(int) =====
void __fastcall gameswf::array<gameswf::as_environment::frame_slot>::resize(int *a1, int a2)
{
  int v2; // r10
  int v5; // r4
  int v6; // r5
  int v7; // r9
  int v8; // r6
  int v9; // r3
  int v10; // r0
  int v11; // r10
  int v12; // r3
  int v13; // r3
  int v14; // r2
  unsigned int v15; // r2

  v2 = a1[1];
  if ( v2 > a2 )
  {
    v5 = 32 * a2;
    v6 = a2;
    do
    {
      while ( 1 )
      {
        v7 = *a1;
        ++v6;
        v8 = *a1 + v5;
        gameswf::as_value::drop_refs((gameswf::as_value *)(v8 + 20));
        v9 = *(char *)(v7 + v5);
        v5 += 32;
        if ( v9 == -1 )
          break;
        if ( v6 == v2 )
          goto LABEL_6;
      }
      gameswf::free_internal(*(void **)(v8 + 12));
    }
    while ( v6 != v2 );
  }
LABEL_6:
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::as_environment::frame_slot>::reserve((int)a1, a2 + (a2 >> 1));
  if ( v2 < a2 )
  {
    v10 = v2;
    v11 = 32 * v2;
    do
    {
      v12 = *a1;
      ++v10;
      *(_BYTE *)(v12 + v11) = 1;
      v13 = v12 + v11;
      v14 = *(_DWORD *)(v13 + 16);
      *(_BYTE *)(v13 + 21) = 0;
      *(_BYTE *)(v13 + 1) = 0;
      v15 = v14 & 0xFF000000 | 0xFFFFFF;
      *(_DWORD *)(v13 + 16) = v15;
      *(_BYTE *)(v13 + 20) = 0;
      *(_BYTE *)(v13 + 19) = HIBYTE(v15) & 0xFE;
      v11 += 32;
    }
    while ( v10 != a2 );
  }
  a1[1] = a2;
}


// ===== 7d2ac0 gameswf::array<gameswf::as_s_function::arg_spec>::resize(int) [clone] =====
void __fastcall gameswf::array<gameswf::as_s_function::arg_spec>::resize(_DWORD *a1)
{
  int v1; // r4
  int v3; // r5
  int v4; // r6
  int v5; // r3
  int v6; // r0
  int v7; // r1
  int v8; // r3
  unsigned int v9; // r3

  v1 = a1[1];
  if ( v1 <= 0 )
  {
    if ( v1 < 0 )
    {
      v6 = 24 * v1;
      do
      {
        ++v1;
        v7 = *a1 + v6;
        *(_DWORD *)v7 = 0;
        *(_DWORD *)(v7 + 4) = 0;
        *(_DWORD *)(v7 + 8) = 0;
        *(_DWORD *)(v7 + 12) = 0;
        *(_DWORD *)(v7 + 16) = 0;
        *(_DWORD *)(v7 + 20) = 0;
        v8 = *(_DWORD *)(v7 + 20);
        *(_BYTE *)(v7 + 4) = 1;
        v6 += 24;
        v9 = v8 & 0xFF000000 | 0xFFFFFF;
        *(_DWORD *)(v7 + 20) = v9;
        *(_BYTE *)(v7 + 23) = HIBYTE(v9) & 0xFE;
      }
      while ( v1 );
    }
  }
  else
  {
    v3 = 0;
    v4 = 0;
    do
    {
      while ( 1 )
      {
        ++v4;
        v5 = *a1 + v3;
        v3 += 24;
        if ( *(char *)(v5 + 4) == -1 )
          break;
        if ( v4 == v1 )
          goto LABEL_10;
      }
      gameswf::free_internal(*(void **)(v5 + 16));
    }
    while ( v4 != v1 );
  }
LABEL_10:
  a1[1] = 0;
}


// ===== 7d2b94 gameswf::as_environment::add_frame_barrier(void) =====
void __fastcall gameswf::as_environment::add_frame_barrier(gameswf::as_environment *this)
{
  _BYTE v1[8]; // [sp+4h] [bp-24h] BYREF
  void *p; // [sp+10h] [bp-18h]
  unsigned int v3; // [sp+14h] [bp-14h]
  _BYTE v4[12]; // [sp+18h] [bp-10h] BYREF

  v4[1] = 0;
  v3 = v3 & 0xFF000000 | 0xFFFFFF;
  v1[1] = 0;
  v4[0] = 0;
  v1[0] = 1;
  HIBYTE(v3) &= ~1u;
  gameswf::array<gameswf::as_environment::frame_slot>::push_back<gameswf::as_environment::frame_slot>(
    (_DWORD *)this + 21,
    (gameswf::tu_string *)v1);
  gameswf::as_value::drop_refs((gameswf::as_value *)v4);
  if ( v1[0] == -1 )
    gameswf::free_internal(p);
}


// ===== 7d2c44 gameswf::as_c_function::~as_c_function() =====
void __fastcall gameswf::as_c_function::~as_c_function(gameswf::as_c_function *this)
{
  void (__fastcall ***v2)(_DWORD); // r0

  v2 = *((void (__fastcall ****)(_DWORD))this + 14);
  *(_DWORD *)this = off_9912A8;
  if ( v2 )
    gameswf::ref_counted::drop_ref(v2);
  gameswf::as_object::~as_object(this);
}


// ===== 7d2c8c gameswf::as_s_function::~as_s_function() =====
void __fastcall gameswf::as_s_function::~as_s_function(gameswf::as_s_function *this)
{
  _DWORD *v2; // r0
  gameswf::counted_buffer *v4; // r0
  void (__fastcall ***v5)(_DWORD); // r0

  v2 = *((_DWORD **)this + 29);
  *(_DWORD *)this = off_991628;
  if ( v2 )
  {
    if ( (*v2)-- == 1 )
      gameswf::free_internal(v2);
  }
  gameswf::array<gameswf::as_s_function::arg_spec>::resize((_DWORD *)this + 24);
  gameswf::array<gameswf::as_s_function::arg_spec>::reserve((int)this + 96, 0);
  gameswf::array<gameswf::with_stack_entry>::resize((_DWORD *)this + 18, 0);
  gameswf::array<gameswf::with_stack_entry>::reserve((int)this + 72, 0);
  v4 = *((gameswf::counted_buffer **)this + 15);
  if ( v4 )
    gameswf::counted_buffer::drop_ref(v4);
  v5 = *((void (__fastcall ****)(_DWORD))this + 14);
  *(_DWORD *)this = off_9912A8;
  if ( v5 )
    gameswf::ref_counted::drop_ref(v5);
  gameswf::as_object::~as_object(this);
}


// ===== 7d2d54 gameswf::as_s_function::~as_s_function() =====
void __fastcall gameswf::as_s_function::~as_s_function(gameswf::as_s_function *this)
{
  gameswf::as_s_function::~as_s_function(this);
  LC_API_FREE_0(this);
}


// ===== 7d2d70 gameswf::as_s_function::~as_s_function() =====
void __fastcall gameswf::as_s_function::~as_s_function(gameswf::as_s_function *this)
{
  _DWORD *v2; // r0
  gameswf::counted_buffer *v4; // r0
  void (__fastcall ***v5)(_DWORD); // r0

  v2 = *((_DWORD **)this + 29);
  *(_DWORD *)this = off_991628;
  if ( v2 )
  {
    if ( (*v2)-- == 1 )
      gameswf::free_internal(v2);
  }
  gameswf::array<gameswf::as_s_function::arg_spec>::resize((_DWORD *)this + 24);
  gameswf::array<gameswf::as_s_function::arg_spec>::reserve((int)this + 96, 0);
  gameswf::array<gameswf::with_stack_entry>::resize((_DWORD *)this + 18, 0);
  gameswf::array<gameswf::with_stack_entry>::reserve((int)this + 72, 0);
  v4 = *((gameswf::counted_buffer **)this + 15);
  if ( v4 )
    gameswf::counted_buffer::drop_ref(v4);
  v5 = *((void (__fastcall ****)(_DWORD))this + 14);
  *(_DWORD *)this = off_9912A8;
  if ( v5 )
    gameswf::ref_counted::drop_ref(v5);
  gameswf::as_object::~as_object(this);
}


// ===== 7d2e38 gameswf::as_s_function::as_s_function(gameswf::player *,gameswf::action_buffer const*,int,gameswf::array<gameswf::with_stack_entry> const&) =====
int __fastcall gameswf::as_s_function::as_s_function(
        int a1,
        gameswf::player *a2,
        gameswf::counted_buffer **a3,
        int a4,
        _DWORD *a5)
{
  gameswf::as_object *v9; // r4

  gameswf::as_object::as_object((gameswf::as_object *)a1, a2);
  *(_DWORD *)(a1 + 56) = 0;
  *(_DWORD *)a1 = off_991628;
  gameswf::action_buffer::action_buffer((gameswf::action_buffer *)(a1 + 60));
  *(_DWORD *)(a1 + 72) = 0;
  *(_DWORD *)(a1 + 76) = 0;
  *(_DWORD *)(a1 + 80) = 0;
  *(_BYTE *)(a1 + 84) = 0;
  gameswf::array<gameswf::with_stack_entry>::operator=((_DWORD *)(a1 + 72), a5);
  *(_DWORD *)(a1 + 88) = a4;
  *(_DWORD *)(a1 + 92) = 0;
  *(_DWORD *)(a1 + 96) = 0;
  *(_DWORD *)(a1 + 100) = 0;
  *(_DWORD *)(a1 + 104) = 0;
  *(_BYTE *)(a1 + 108) = 0;
  *(_BYTE *)(a1 + 112) = 0;
  *(_BYTE *)(a1 + 113) = 0;
  *(_WORD *)(a1 + 114) = 0;
  *(_DWORD *)(a1 + 116) = 0;
  *(_DWORD *)(a1 + 120) = 0;
  gameswf::action_buffer::operator=(a1 + 60, a3);
  gameswf::weak_ptr<gameswf::as_object>::operator=(a1 + 32, (gameswf::ref_counted *)a1);
  v9 = (gameswf::as_object *)operator new(0x38u, 0);
  gameswf::as_object::as_object(v9, a2);
  gameswf::smart_ptr<gameswf::as_object>::set_ref((gameswf::ref_counted **)(a1 + 56), v9);
  return a1;
}


// ===== 7d2f10 gameswf::as_s_function::as_s_function(gameswf::player *,gameswf::action_buffer const*,int,gameswf::array<gameswf::with_stack_entry> const&) =====
int __fastcall gameswf::as_s_function::as_s_function(
        int a1,
        gameswf::player *a2,
        gameswf::counted_buffer **a3,
        int a4,
        _DWORD *a5)
{
  gameswf::as_object *v9; // r4

  gameswf::as_object::as_object((gameswf::as_object *)a1, a2);
  *(_DWORD *)(a1 + 56) = 0;
  *(_DWORD *)a1 = off_991628;
  gameswf::action_buffer::action_buffer((gameswf::action_buffer *)(a1 + 60));
  *(_DWORD *)(a1 + 72) = 0;
  *(_DWORD *)(a1 + 76) = 0;
  *(_DWORD *)(a1 + 80) = 0;
  *(_BYTE *)(a1 + 84) = 0;
  gameswf::array<gameswf::with_stack_entry>::operator=((_DWORD *)(a1 + 72), a5);
  *(_DWORD *)(a1 + 88) = a4;
  *(_DWORD *)(a1 + 92) = 0;
  *(_DWORD *)(a1 + 96) = 0;
  *(_DWORD *)(a1 + 100) = 0;
  *(_DWORD *)(a1 + 104) = 0;
  *(_BYTE *)(a1 + 108) = 0;
  *(_BYTE *)(a1 + 112) = 0;
  *(_BYTE *)(a1 + 113) = 0;
  *(_WORD *)(a1 + 114) = 0;
  *(_DWORD *)(a1 + 116) = 0;
  *(_DWORD *)(a1 + 120) = 0;
  gameswf::action_buffer::operator=(a1 + 60, a3);
  gameswf::weak_ptr<gameswf::as_object>::operator=(a1 + 32, (gameswf::ref_counted *)a1);
  v9 = (gameswf::as_object *)operator new(0x38u, 0);
  gameswf::as_object::as_object(v9, a2);
  gameswf::smart_ptr<gameswf::as_object>::set_ref((gameswf::ref_counted **)(a1 + 56), v9);
  return a1;
}


// ===== 7d2fe8 gameswf::as_s_function::operator()(gameswf::fn_call const&) =====
int __fastcall gameswf::as_s_function::operator()(int a1, int a2)
{
  _BYTE *v4; // r0
  int v5; // r3
  int v6; // r6
  int target; // r0
  gameswf::as_object *v8; // r11
  _BYTE *v9; // r0
  int v10; // r7
  _BYTE *v11; // r0
  int v12; // r8
  int v13; // r10
  int v14; // r7
  const gameswf::as_value *v15; // r2
  int v16; // r0
  gameswf::as_value *v17; // lr
  int v18; // r4
  int v20; // r3
  _BYTE *v21; // r0
  int v22; // r9
  int v23; // r7
  int i; // r8
  const gameswf::as_value *v25; // r2
  int v26; // r1
  int v27; // r2
  int v28; // r1
  int v29; // r1
  __int16 v30; // r3
  int v31; // r10
  gameswf::player *v32; // r7
  int v33; // r3
  gameswf::as_array *v34; // r8
  int v35; // r7
  int v36; // r3
  int v37; // r8
  bool v38; // zf
  gameswf::root *root; // r0
  gameswf::as_object *root_movie; // r0
  gameswf::as_object *v41; // r0
  gameswf::as_object *v42; // r0
  gameswf::as_object *global; // r0
  gameswf::ref_counted *v44; // [sp+14h] [bp-128h]
  int v45; // [sp+1Ch] [bp-120h]
  _DWORD v46[3]; // [sp+24h] [bp-118h] BYREF
  char v47; // [sp+30h] [bp-10Ch]
  _BYTE v48[12]; // [sp+34h] [bp-108h] BYREF
  _BYTE v49[12]; // [sp+40h] [bp-FCh] BYREF
  _BYTE v50[12]; // [sp+4Ch] [bp-F0h] BYREF
  _BYTE v51[12]; // [sp+58h] [bp-E4h] BYREF
  _BYTE v52[12]; // [sp+64h] [bp-D8h] BYREF
  _BYTE v53[12]; // [sp+70h] [bp-CCh] BYREF
  _BYTE v54[12]; // [sp+7Ch] [bp-C0h] BYREF
  _BYTE v55[12]; // [sp+88h] [bp-B4h] BYREF
  _BYTE v56[12]; // [sp+94h] [bp-A8h] BYREF
  _BYTE v57[4]; // [sp+A0h] [bp-9Ch] BYREF
  int v58; // [sp+A4h] [bp-98h]
  _BYTE v59[4]; // [sp+ACh] [bp-90h] BYREF
  gameswf::as_object *v60; // [sp+B0h] [bp-8Ch]
  gameswf::ref_counted *v61; // [sp+B8h] [bp-84h] BYREF
  _BYTE v62[8]; // [sp+BCh] [bp-80h] BYREF
  void *v63; // [sp+C8h] [bp-74h]
  _BYTE v64[8]; // [sp+D0h] [bp-6Ch] BYREF
  void *v65; // [sp+DCh] [bp-60h]
  _BYTE v66[8]; // [sp+E4h] [bp-58h] BYREF
  void *v67; // [sp+F0h] [bp-4Ch]
  _BYTE v68[8]; // [sp+F8h] [bp-44h] BYREF
  void *v69; // [sp+104h] [bp-38h]
  _BYTE v70[8]; // [sp+10Ch] [bp-30h] BYREF
  void *p; // [sp+118h] [bp-24h]
  _BYTE v72[8]; // [sp+120h] [bp-1Ch] BYREF
  void *v73; // [sp+12Ch] [bp-10h]

  v44 = *(gameswf::ref_counted **)(a1 + 120);
  if ( !v44 )
  {
LABEL_84:
    v44 = nullptr;
    goto LABEL_4;
  }
  v4 = *(_BYTE **)(a1 + 116);
  if ( !v4[4] )
  {
    v38 = (*(_DWORD *)v4)-- == 1;
    if ( v38 )
      gameswf::free_internal(v4);
    *(_DWORD *)(a1 + 120) = 0;
    *(_DWORD *)(a1 + 116) = 0;
    goto LABEL_84;
  }
  gameswf::ref_counted::add_ref((int)v44);
LABEL_4:
  v5 = *(_DWORD *)(a2 + 4);
  v6 = *(_DWORD *)(a2 + 12);
  if ( v5 && (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v5 + 88))(*(_DWORD *)(a2 + 4)) )
    v6 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a2 + 4) + 88))(*(_DWORD *)(a2 + 4));
  target = gameswf::as_environment::get_target((gameswf::as_environment *)v6);
  v8 = *(gameswf::as_object **)(a2 + 4);
  if ( v8 )
  {
    if ( *((_DWORD *)v8 + 9) )
    {
      v9 = *((_BYTE **)v8 + 8);
      if ( v9[4] )
      {
        v8 = *((gameswf::as_object **)v8 + 9);
      }
      else
      {
        v38 = (*(_DWORD *)v9)-- == 1;
        if ( v38 )
          gameswf::free_internal(v9);
        *((_DWORD *)v8 + 9) = 0;
        *((_DWORD *)v8 + 8) = 0;
      }
    }
  }
  else
  {
    v8 = (gameswf::as_object *)target;
  }
  v10 = *(_DWORD *)(a1 + 120);
  if ( v10 )
  {
    v11 = *(_BYTE **)(a1 + 116);
    if ( v11[4] )
    {
      if ( !(*(int (__fastcall **)(_DWORD, int))(*(_DWORD *)v10 + 8))(*(_DWORD *)(a1 + 120), 1) )
        goto LABEL_16;
      if ( *(_WORD *)(v10 + 148) )
      {
LABEL_39:
        v20 = *(_DWORD *)(a1 + 120);
        if ( v20 )
        {
          v21 = *(_BYTE **)(a1 + 116);
          if ( !v21[4] )
          {
            v38 = (*(_DWORD *)v21)-- == 1;
            if ( v38 )
              gameswf::free_internal(v21);
            v20 = 0;
            *(_DWORD *)(a1 + 116) = 0;
            *(_DWORD *)(a1 + 120) = 0;
          }
        }
        v6 = (*(int (__fastcall **)(int))(*(_DWORD *)v20 + 88))(v20);
        v45 = *(_DWORD *)(v6 + 88);
        gameswf::as_environment::add_frame_barrier((gameswf::as_environment *)v6);
        v12 = *(unsigned __int8 *)(a1 + 112);
        if ( !*(_BYTE *)(a1 + 112) )
          goto LABEL_17;
        goto LABEL_42;
      }
      if ( *(_DWORD *)(v10 + 64) )
      {
        v36 = *(_DWORD *)(v10 + 60);
        v37 = *(unsigned __int8 *)(v36 + 4);
        if ( *(_BYTE *)(v36 + 4) )
          goto LABEL_16;
        gameswf::smart_ptr_proxy::operator=((_DWORD **)(v10 + 60), (_DWORD *)*(unsigned __int8 *)(v36 + 4));
        *(_DWORD *)(v10 + 64) = v37;
      }
      if ( *(_DWORD *)(v10 + 56) == -1 )
        goto LABEL_39;
    }
    else
    {
      v38 = (*(_DWORD *)v11)-- == 1;
      if ( v38 )
        gameswf::free_internal(v11);
      *(_DWORD *)(a1 + 120) = 0;
      *(_DWORD *)(a1 + 116) = 0;
    }
  }
LABEL_16:
  v45 = *(_DWORD *)(v6 + 88);
  gameswf::as_environment::add_frame_barrier((gameswf::as_environment *)v6);
  v12 = *(unsigned __int8 *)(a1 + 112);
  if ( !*(_BYTE *)(a1 + 112) )
  {
LABEL_17:
    v13 = *(_DWORD *)(a1 + 100);
    if ( v13 >= *(_DWORD *)(a2 + 16) )
      v13 = *(_DWORD *)(a2 + 16);
    if ( v13 > 0 )
    {
      v14 = v12;
      do
      {
        v15 = (const gameswf::as_value *)(**(_DWORD **)(a2 + 12) + 12 * (*(_DWORD *)(a2 + 20) - v14++));
        gameswf::as_environment::add_local(
          (gameswf::as_environment *)v6,
          (const gameswf::tu_string *)(*(_DWORD *)(a1 + 96) + v12 + 4),
          v15);
        v12 += 24;
      }
      while ( v14 != v13 );
    }
    gameswf::tu_string::tu_string((gameswf::tu_string *)v72, "this");
    v59[0] = 0;
    v59[1] = 5;
    v60 = v8;
    if ( v8 )
      gameswf::ref_counted::add_ref((int)v8);
    gameswf::as_environment::set_local(
      (gameswf::as_environment *)v6,
      (const gameswf::tu_string *)v72,
      (const gameswf::as_value *)v59);
    gameswf::as_value::drop_refs((gameswf::as_value *)v59);
    if ( v72[0] == -1 )
      gameswf::free_internal(v73);
    if ( *(_DWORD *)(a2 + 4) )
    {
      gameswf::tu_string::tu_string((gameswf::tu_string *)v70, "super");
      v16 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a2 + 4) + 52))(*(_DWORD *)(a2 + 4));
      v57[0] = 0;
      v57[1] = 5;
      v58 = v16;
      if ( v16 )
        gameswf::ref_counted::add_ref(v16);
      gameswf::as_environment::add_local(
        (gameswf::as_environment *)v6,
        (const gameswf::tu_string *)v70,
        (const gameswf::as_value *)v57);
      gameswf::as_value::drop_refs((gameswf::as_value *)v57);
      if ( v70[0] == -1 )
        gameswf::free_internal(p);
    }
    goto LABEL_31;
  }
LABEL_42:
  gameswf::array<gameswf::as_value>::resize(
    (_DWORD *)(v6 + 64),
    *(_DWORD *)(v6 + 68) + 1 + *(unsigned __int8 *)(a1 + 113));
  v22 = *(_DWORD *)(a1 + 100);
  if ( v22 >= *(_DWORD *)(a2 + 16) )
    v22 = *(_DWORD *)(a2 + 16);
  if ( v22 > 0 )
  {
    v23 = 0;
    for ( i = 0; i != v22; ++i )
    {
      while ( 1 )
      {
        v26 = *(_DWORD *)(a1 + 96);
        v27 = *(_DWORD *)(v26 + v23);
        v28 = v26 + v23;
        if ( v27 )
          break;
        v25 = (const gameswf::as_value *)(**(_DWORD **)(a2 + 12) + 12 * (*(_DWORD *)(a2 + 20) - i++));
        gameswf::as_environment::add_local((gameswf::as_environment *)v6, (const gameswf::tu_string *)(v28 + 4), v25);
        v23 += 24;
        if ( i == v22 )
          goto LABEL_49;
      }
      v29 = **(_DWORD **)(a2 + 12) + 12 * (*(_DWORD *)(a2 + 20) - i);
      gameswf::as_value::operator=(
        (gameswf::as_value *)(*(_DWORD *)(v6 + 64) + 12 * (*(_DWORD *)(v6 + 68) - 1 - v27)),
        v29);
      v23 += 24;
    }
  }
LABEL_49:
  v30 = *(_WORD *)(a1 + 114);
  if ( (v30 & 1) != 0 )
  {
    gameswf::as_value::as_value((gameswf::as_value *)v56, v8);
    gameswf::as_value::operator=(
      (gameswf::as_value *)(*(_DWORD *)(v6 + 64) + 12 * (*(_DWORD *)(v6 + 68) - 2)),
      (int)v56);
    gameswf::as_value::drop_refs((gameswf::as_value *)v56);
    v31 = 2;
    v30 = *(_WORD *)(a1 + 114);
  }
  else
  {
    v31 = 1;
  }
  if ( (v30 & 2) == 0 )
  {
    gameswf::tu_string::tu_string((gameswf::tu_string *)v68, "this");
    gameswf::as_value::as_value((gameswf::as_value *)v55, v8);
    gameswf::as_environment::add_local(
      (gameswf::as_environment *)v6,
      (const gameswf::tu_string *)v68,
      (const gameswf::as_value *)v55);
    gameswf::as_value::drop_refs((gameswf::as_value *)v55);
    if ( v68[0] == -1 )
      gameswf::free_internal(v69);
    v30 = *(_WORD *)(a1 + 114);
  }
  v61 = nullptr;
  if ( (v30 & 0xC) != 8 )
  {
    v32 = *(gameswf::player **)(v6 + 104);
    if ( v32 )
    {
      v33 = *(_DWORD *)(v6 + 100);
      if ( !*(_BYTE *)(v33 + 4) )
      {
        gameswf::smart_ptr_proxy::operator=((_DWORD **)(v6 + 100), (_DWORD *)*(unsigned __int8 *)(v33 + 4));
        v32 = nullptr;
        *(_DWORD *)(v6 + 104) = 0;
      }
    }
    v34 = (gameswf::as_array *)operator new(0x5Cu, 0);
    gameswf::as_array::as_array(v34, v32);
    gameswf::smart_ptr<gameswf::as_array>::set_ref(&v61, v34);
    if ( *(int *)(a2 + 16) > 0 )
    {
      v35 = 0;
      do
      {
        (*(void (__fastcall **)(gameswf::ref_counted *, int, int))(*(_DWORD *)v61 + 36))(
          v61,
          v35,
          **(_DWORD **)(a2 + 12) + 12 * (*(_DWORD *)(a2 + 20) - v35));
        ++v35;
      }
      while ( *(_DWORD *)(a2 + 16) > v35 );
    }
    v30 = *(_WORD *)(a1 + 114);
  }
  if ( (v30 & 4) != 0 )
  {
    gameswf::as_value::as_value((gameswf::as_value *)v54, v61);
    gameswf::as_value::operator=(
      (gameswf::as_value *)(*(_DWORD *)(v6 + 64) + 12 * (*(_DWORD *)(v6 + 68) - 1 - v31)),
      (int)v54);
    gameswf::as_value::drop_refs((gameswf::as_value *)v54);
    ++v31;
    v30 = *(_WORD *)(a1 + 114);
  }
  if ( (v30 & 8) == 0 )
  {
    gameswf::tu_string::tu_string((gameswf::tu_string *)v66, "arguments");
    gameswf::as_value::as_value((gameswf::as_value *)v53, v61);
    gameswf::as_environment::add_local(
      (gameswf::as_environment *)v6,
      (const gameswf::tu_string *)v66,
      (const gameswf::as_value *)v53);
    gameswf::as_value::drop_refs((gameswf::as_value *)v53);
    if ( v66[0] == -1 )
      gameswf::free_internal(v67);
    v30 = *(_WORD *)(a1 + 114);
  }
  if ( (v30 & 0x10) != 0 )
  {
    v42 = (gameswf::as_object *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a2 + 4) + 52))(*(_DWORD *)(a2 + 4));
    gameswf::as_value::as_value((gameswf::as_value *)v52, v42);
    gameswf::as_value::operator=(
      (gameswf::as_value *)(*(_DWORD *)(v6 + 64) + 12 * (*(_DWORD *)(v6 + 68) - 1 - v31)),
      (int)v52);
    gameswf::as_value::drop_refs((gameswf::as_value *)v52);
    ++v31;
    v30 = *(_WORD *)(a1 + 114);
  }
  if ( (v30 & 0x20) == 0 )
  {
    gameswf::tu_string::tu_string((gameswf::tu_string *)v64, "super");
    v41 = (gameswf::as_object *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a2 + 4) + 52))(*(_DWORD *)(a2 + 4));
    gameswf::as_value::as_value((gameswf::as_value *)v51, v41);
    gameswf::as_environment::add_local(
      (gameswf::as_environment *)v6,
      (const gameswf::tu_string *)v64,
      (const gameswf::as_value *)v51);
    gameswf::as_value::drop_refs((gameswf::as_value *)v51);
    if ( v64[0] == -1 )
      gameswf::free_internal(v65);
    v30 = *(_WORD *)(a1 + 114);
  }
  if ( (v30 & 0x40) != 0 )
  {
    root = (gameswf::root *)gameswf::as_environment::get_root((gameswf::as_environment *)v6);
    root_movie = (gameswf::as_object *)gameswf::root::get_root_movie(root);
    gameswf::as_value::as_value((gameswf::as_value *)v50, root_movie);
    gameswf::as_value::operator=(
      (gameswf::as_value *)(*(_DWORD *)(v6 + 64) + 12 * (*(_DWORD *)(v6 + 68) - 1 - v31)),
      (int)v50);
    gameswf::as_value::drop_refs((gameswf::as_value *)v50);
    ++v31;
    v30 = *(_WORD *)(a1 + 114);
  }
  if ( (v30 & 0x80) != 0 )
  {
    memset(v46, 0, sizeof(v46));
    v47 = 0;
    gameswf::tu_string::tu_string((gameswf::tu_string *)v62, "_parent");
    gameswf::as_environment::get_variable(
      (gameswf::as_value *)v49,
      (gameswf::as_environment *)v6,
      (gameswf::tu_string *)v62,
      v46,
      nullptr);
    if ( v62[0] == -1 )
      gameswf::free_internal(v63);
    gameswf::as_value::operator=(
      (gameswf::as_value *)(*(_DWORD *)(v6 + 64) + 12 * (*(_DWORD *)(v6 + 68) - 1 - v31)),
      (int)v49);
    gameswf::as_value::drop_refs((gameswf::as_value *)v49);
    gameswf::array<gameswf::with_stack_entry>::resize(v46, 0);
    gameswf::array<gameswf::with_stack_entry>::reserve((int)v46, 0);
    ++v31;
    v30 = *(_WORD *)(a1 + 114);
  }
  if ( (v30 & 0x100) != 0 )
  {
    global = (gameswf::as_object *)gameswf::as_object::get_global((gameswf::as_object *)a1);
    gameswf::as_value::as_value((gameswf::as_value *)v48, global);
    gameswf::as_value::operator=(
      (gameswf::as_value *)(*(_DWORD *)(v6 + 64) + 12 * (*(_DWORD *)(v6 + 68) - 1 - v31)),
      (int)v48);
    gameswf::as_value::drop_refs((gameswf::as_value *)v48);
  }
  if ( v61 )
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v61);
LABEL_31:
  v17 = *(gameswf::as_value **)a2;
  v18 = *(_DWORD *)(v6 + 4);
  gameswf::action_buffer::execute(
    (gameswf::action_buffer *)(a1 + 60),
    (gameswf::as_environment *)v6,
    *(const char **)(a1 + 88),
    *(_DWORD *)(a1 + 92),
    v17,
    (_DWORD *)(a1 + 72),
    *(_BYTE *)(a1 + 112));
  if ( v18 != *(_DWORD *)(v6 + 4) )
    gameswf::array<gameswf::as_value>::resize((_DWORD *)v6, v18);
  gameswf::array<gameswf::as_environment::frame_slot>::resize((int *)(v6 + 84), v45);
  if ( *(_BYTE *)(a1 + 112) )
    gameswf::array<gameswf::as_value>::resize(
      (_DWORD *)(v6 + 64),
      *(_DWORD *)(v6 + 68) - 1 - *(unsigned __int8 *)(a1 + 113));
  if ( v44 )
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v44);
  return 16556;
}


// ===== 7d39bc gameswf::as_s_function_call(gameswf::fn_call const&) =====
void __fastcall gameswf::as_s_function_call(gameswf *this, const gameswf::fn_call *a2)
{
  int v3; // r4
  int v4; // r10
  _BYTE *v5; // r0
  int v6; // r4
  gameswf::ref_counted *v7; // r1
  _BYTE *v8; // r0
  int v9; // r8
  int v10; // r5
  int v11; // r0
  gameswf::as_value *v12; // r10
  int v13; // r2
  bool v14; // zf
  int v15; // r0
  _DWORD v16[27]; // [sp+10h] [bp-94h] BYREF
  _BYTE v17[12]; // [sp+7Ch] [bp-28h] BYREF
  char v18; // [sp+88h] [bp-1Ch] BYREF
  char v19; // [sp+89h] [bp-1Bh]
  int v20; // [sp+8Ch] [bp-18h]
  _BYTE v21[4]; // [sp+94h] [bp-10h] BYREF
  int v22; // [sp+98h] [bp-Ch]

  if ( *((int *)this + 4) > 0 )
  {
    v3 = *((_DWORD *)this + 1);
    v4 = *(_DWORD *)(v3 + 36);
    if ( v4 )
    {
      v5 = *(_BYTE **)(v3 + 32);
      if ( v5[4] )
      {
        v6 = *((_DWORD *)this + 3);
        v7 = *(gameswf::ref_counted **)(v6 + 104);
        if ( v7 )
        {
          v8 = *(_BYTE **)(v6 + 100);
          if ( !v8[4] )
          {
            v14 = (*(_DWORD *)v8)-- == 1;
            if ( v14 )
              gameswf::free_internal(v8);
            v7 = nullptr;
            *(_DWORD *)(v6 + 104) = 0;
            *(_DWORD *)(v6 + 100) = 0;
          }
        }
        gameswf::as_environment::as_environment((int)v16, v7);
        v9 = *((_DWORD *)this + 4) - 1;
        v10 = *((_DWORD *)this + 4) - 2;
        if ( v10 >= 0 )
        {
          do
          {
            --v10;
            gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(v16);
          }
          while ( v10 != -1 );
        }
        v11 = v4;
        v21[0] = 0;
        v21[1] = 5;
        v22 = v4;
        v12 = *(gameswf::as_value **)this;
        gameswf::ref_counted::add_ref(v11);
        v13 = **((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5);
        if ( *(_BYTE *)(v13 + 1) == 5 )
        {
          v15 = *(_DWORD *)(v13 + 4);
          v18 = 0;
          v19 = 5;
          v20 = v15;
          if ( v15 )
            gameswf::ref_counted::add_ref(v15);
        }
        else
        {
          v19 = 5;
          v20 = 0;
          v18 = 0;
        }
        gameswf::call_method(v17, (gameswf::as_value *)v21, (int)v16, (int)&v18, v9, v16[1] - 1, (int)"call");
        gameswf::as_value::operator=(v12, (int)v17);
        gameswf::as_value::drop_refs((gameswf::as_value *)v17);
        gameswf::as_value::drop_refs((gameswf::as_value *)&v18);
        gameswf::as_value::drop_refs((gameswf::as_value *)v21);
        gameswf::as_environment::~as_environment((gameswf::as_environment *)v16);
      }
      else
      {
        v14 = (*(_DWORD *)v5)-- == 1;
        if ( v14 )
          gameswf::free_internal(v5);
        *(_DWORD *)(v3 + 36) = 0;
        *(_DWORD *)(v3 + 32) = 0;
      }
    }
  }
}


// ===== 7d3b90 gameswf::render_handler::~render_handler() =====
void __fastcall gameswf::render_handler::~render_handler(gameswf::render_handler *this)
{
  ;
}


// ===== 7d3b94 gameswf::render_handler::flush(void) =====
void __fastcall gameswf::render_handler::flush(gameswf::render_handler *this)
{
  ;
}


// ===== 7d3b98 gameswf::render_handler::set_cursor(gameswf::render_handler::cursor_type) =====
void gameswf::render_handler::set_cursor()
{
  ;
}


// ===== 7d3b9c gameswf::render_handler::reset(void) =====
void __fastcall gameswf::render_handler::reset(gameswf::render_handler *this)
{
  ;
}


// ===== 7d3ba0 gameswf::render_handler::set_orientation(gameswf::orientation_mode) =====
void gameswf::render_handler::set_orientation()
{
  ;
}


// ===== 7d3ba4 gameswf::render_handler::get_orientation(void) =====
int __fastcall gameswf::render_handler::get_orientation(gameswf::render_handler *this)
{
  return 0;
}


// ===== 7d3bac gameswf::render_handler::begin_display_callback(void) =====
void __fastcall gameswf::render_handler::begin_display_callback(gameswf::render_handler *this)
{
  ;
}


// ===== 7d3bb0 gameswf::render_handler::end_display_callback(void) =====
void __fastcall gameswf::render_handler::end_display_callback(gameswf::render_handler *this)
{
  ;
}


// ===== 7d3bb4 glitch::video::ITexture::setWrap(glitch::video::E_TEXTURE_CLAMP) =====
int __fastcall glitch::video::ITexture::setWrap(int result, int a2)
{
  unsigned int v2; // r3
  __int16 v3; // r2
  unsigned int v4; // r3
  int v5; // r4
  __int16 v6; // r2

  v2 = *(_DWORD *)(result + 56);
  if ( a2 != ((v2 >> 18) & 7) )
  {
    v3 = *(_WORD *)(result + 64);
    v2 = v2 & 0xFFE3FFFF | ((a2 & 7) << 18);
    *(_DWORD *)(result + 56) = v2;
    *(_WORD *)(result + 64) = v3 | 0x10;
  }
  if ( a2 != ((v2 >> 21) & 7) )
  {
    v4 = v2 & 0xFF1FFFFF | ((a2 & 7) << 21);
    v5 = (v4 >> 21) & 7;
    v6 = *(_WORD *)(result + 64) | 0x20;
    *(_DWORD *)(result + 56) = v4;
    if ( a2 != v5 )
      v4 &= 0xF8FFFFFF;
    *(_WORD *)(result + 64) = v6;
    if ( a2 != v5 )
    {
      *(_WORD *)(result + 64) = v6 | 0x40;
      *(_DWORD *)(result + 56) = v4 | ((a2 & 7) << 24);
    }
  }
  return result;
}


// ===== 7d3c24 cross(float *,float *,float *) =====
float __fastcall cross(float *a1, float *a2, float *a3)
{
  float result; // r0

  *a3 = (float)(a1[1] * a2[2]) - (float)(a1[2] * a2[1]);
  a3[1] = (float)(a1[2] * *a2) - (float)(*a1 * a2[2]);
  result = (float)(*a1 * a2[1]) - (float)(a1[1] * *a2);
  a3[2] = result;
  return result;
}


// ===== 7d3cbc bitmap_info_ogl::activate(void) =====
void __fastcall bitmap_info_ogl::activate(bitmap_info_ogl *this)
{
  ;
}


// ===== 7d3cc0 bitmap_info_ogl::set_writable(void) =====
int __fastcall bitmap_info_ogl::set_writable(int this)
{
  *(_BYTE *)(this + 12) = 1;
  return this;
}


// ===== 7d3ccc bitmap_info_ogl::set_min_filter(gameswf::bitmap_info::filter_mode) =====
unsigned int __fastcall bitmap_info_ogl::set_min_filter(unsigned int result, int a2)
{
  int v2; // r3
  int v3; // r2

  v2 = *(_DWORD *)(result + 16);
  *(_DWORD *)(result + 44) = a2;
  if ( v2 )
  {
    result = *(_DWORD *)(v2 + 56);
    v3 = s_filter_map[a2];
    if ( v3 != ((result >> 12) & 7) && (*(unsigned __int8 *)(v2 + 62) > 1u || v3 <= 1) )
    {
      result &= 0xFFFF8FFF;
      *(_WORD *)(v2 + 64) |= 4u;
      *(_DWORD *)(v2 + 56) = result | ((v3 & 7) << 12);
    }
  }
  return result;
}


// ===== 7d3d34 bitmap_info_ogl::set_mag_filter(gameswf::bitmap_info::filter_mode) =====
unsigned int __fastcall bitmap_info_ogl::set_mag_filter(unsigned int result, int a2)
{
  int v2; // r3
  int v3; // r2

  v2 = *(_DWORD *)(result + 16);
  *(_DWORD *)(result + 48) = a2;
  if ( v2 )
  {
    result = *(_DWORD *)(v2 + 56);
    v3 = s_filter_map[a2];
    if ( v3 != ((result >> 15) & 7) )
    {
      result &= 0xFFFC7FFF;
      *(_WORD *)(v2 + 64) |= 8u;
      *(_DWORD *)(v2 + 56) = result | ((v3 & 7) << 15);
    }
  }
  return result;
}


// ===== 7d3d84 bitmap_info_ogl::get_width(void) =====
int __fastcall bitmap_info_ogl::get_width(bitmap_info_ogl *this)
{
  return *((_DWORD *)this + 8);
}


// ===== 7d3d8c bitmap_info_ogl::get_height(void) =====
int __fastcall bitmap_info_ogl::get_height(bitmap_info_ogl *this)
{
  return *((_DWORD *)this + 9);
}


// ===== 7d3d94 bitmap_info_ogl::is_layout(void) =====
bool __fastcall bitmap_info_ogl::is_layout(bitmap_info_ogl *this)
{
  return *((_DWORD *)this + 4) != 0;
}


// ===== 7d3da4 bitmap_info_ogl::get_internal_width(void) =====
int __fastcall bitmap_info_ogl::get_internal_width(bitmap_info_ogl *this)
{
  int v1; // r3
  int v3; // r3

  v1 = *((_DWORD *)this + 4);
  if ( v1 )
    return *(_DWORD *)(v1 + 32);
  v3 = *((_DWORD *)this + 6);
  if ( v3 )
    return *(_DWORD *)(v3 + 16);
  else
    return *((_DWORD *)this + 8);
}


// ===== 7d3dcc bitmap_info_ogl::get_internal_height(void) =====
int __fastcall bitmap_info_ogl::get_internal_height(bitmap_info_ogl *this)
{
  int v1; // r3
  int v3; // r3

  v1 = *((_DWORD *)this + 4);
  if ( v1 )
    return *(_DWORD *)(v1 + 36);
  v3 = *((_DWORD *)this + 6);
  if ( v3 )
    return *(_DWORD *)(v3 + 20);
  else
    return *((_DWORD *)this + 9);
}


// ===== 7d3df4 render_handler_glitch::open(void) =====
void __fastcall render_handler_glitch::open(render_handler_glitch *this)
{
  ;
}


// ===== 7d3df8 render_handler_glitch::get_orientation(void) =====
int __fastcall render_handler_glitch::get_orientation(render_handler_glitch *this)
{
  return 0;
}


// ===== 7d3e00 render_handler_glitch::set_antialiased(bool) =====
void __fastcall render_handler_glitch::set_antialiased(render_handler_glitch *this, bool a2)
{
  ;
}


// ===== 7d3e04 render_handler_glitch::create_video_handler(void) =====
int __fastcall render_handler_glitch::create_video_handler(render_handler_glitch *this)
{
  return 0;
}


// ===== 7d3e0c render_handler_glitch::set_target(gameswf::bitmap_info *) =====
glitch::IReferenceCounted *__fastcall render_handler_glitch::set_target(
        render_handler_glitch *this,
        gameswf::bitmap_info *a2)
{
  glitch::IReferenceCounted *result; // r0
  glitch::IReferenceCounted *v3; // [sp+4h] [bp-8h] BYREF

  if ( a2 )
    return (glitch::IReferenceCounted *)(*(int (__fastcall **)(_DWORD, char *))(**((_DWORD **)this + 4) + 140))(
                                          *((_DWORD *)this + 4),
                                          (char *)a2 + 20);
  (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD))(**((_DWORD **)this + 4) + 144))(
    &v3,
    *((_DWORD *)this + 4));
  result = v3;
  if ( v3 )
    return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v3);
  return result;
}


// ===== 7d3e68 render_handler_glitch::clear_frame_buffer(void) =====
void __fastcall render_handler_glitch::clear_frame_buffer(render_handler_glitch *this)
{
  ;
}


// ===== 7d3e6c render_handler_glitch::read_frame_buffer(int,int,int,int,uchar *) =====
void __fastcall render_handler_glitch::read_frame_buffer(
        render_handler_glitch *this,
        int a2,
        int a3,
        int a4,
        int a5,
        unsigned __int8 *a6)
{
  ;
}


// ===== 7d3e70 render_handler_glitch::set_wire_frame(bool) =====
int __fastcall render_handler_glitch::set_wire_frame(int this, bool a2)
{
  *(_BYTE *)(this + 500) = a2;
  return this;
}


// ===== 7d3e78 render_handler_glitch::set_context(gameswf::player_context *) =====
int __fastcall render_handler_glitch::set_context(int this, gameswf::player_context *a2)
{
  *(_DWORD *)(this + 552) = a2;
  *(_DWORD *)(this + 8) = a2;
  return this;
}


// ===== 7d3e84 render_handler_glitch::end_display_callback(void) =====
int __fastcall render_handler_glitch::end_display_callback(render_handler_glitch *this)
{
  (*(void (__fastcall **)(_DWORD, int, char *))(**((_DWORD **)this + 4) + 108))(
    *((_DWORD *)this + 4),
    2,
    (char *)this + 276);
  (*(void (__fastcall **)(_DWORD, _DWORD, char *))(**((_DWORD **)this + 4) + 108))(
    *((_DWORD *)this + 4),
    0,
    (char *)this + 344);
  return (*(int (__fastcall **)(_DWORD, int, char *))(**((_DWORD **)this + 4) + 108))(
           *((_DWORD *)this + 4),
           1,
           (char *)this + 412);
}


// ===== 7d3ee4 render_handler_glitch::set_matrix(gameswf::matrix const&) =====
int __fastcall render_handler_glitch::set_matrix(int a1, int *a2)
{
  int *v2; // r12
  int *v3; // r4
  int v4; // r0
  int v5; // r1
  int v6; // r2
  int v7; // r3
  int result; // r0
  int v9; // r1

  v2 = (int *)(a1 + 780);
  v3 = a2;
  v4 = *a2;
  v5 = a2[1];
  v6 = v3[2];
  v7 = v3[3];
  v3 += 4;
  *v2 = v4;
  v2[1] = v5;
  v2[2] = v6;
  v2[3] = v7;
  v2 += 4;
  result = *v3;
  v9 = v3[1];
  *v2 = *v3;
  v2[1] = v9;
  return result;
}


// ===== 7d3f08 render_handler_glitch::set_cxform(gameswf::cxform const&) =====
int __fastcall render_handler_glitch::set_cxform(int a1, int *a2)
{
  int *v2; // r12
  int *v3; // r4
  int v4; // r0
  int v5; // r1
  int v6; // r2
  int v7; // r3
  int result; // r0
  int v9; // r1
  int v10; // r2
  int v11; // r3

  v2 = (int *)(a1 + 804);
  v3 = a2;
  v4 = *a2;
  v5 = a2[1];
  v6 = v3[2];
  v7 = v3[3];
  v3 += 4;
  *v2 = v4;
  v2[1] = v5;
  v2[2] = v6;
  v2[3] = v7;
  v2 += 4;
  result = *v3;
  v9 = v3[1];
  v10 = v3[2];
  v11 = v3[3];
  *v2 = *v3;
  v2[1] = v9;
  v2[2] = v10;
  v2[3] = v11;
  return result;
}


// ===== 7d3f2c render_handler_glitch::fill_style_disable(int) =====
int __fastcall render_handler_glitch::fill_style_disable(int this, int a2)
{
  *(_DWORD *)(this + 76 * a2 + 944) = 0;
  return this;
}


// ===== 7d3f40 render_handler_glitch::line_style_disable(void) =====
int __fastcall render_handler_glitch::line_style_disable(int this)
{
  *(_DWORD *)(this + 1096) = 0;
  return this;
}


// ===== 7d3f4c render_handler_glitch::line_style_width(float) =====
int __fastcall render_handler_glitch::line_style_width(int this, float a2)
{
  *(float *)(this + 1168) = a2;
  return this;
}


// ===== 7d3f54 render_handler_glitch::is_visible(gameswf::rect const&) =====
bool __fastcall render_handler_glitch::is_visible(render_handler_glitch *this, const gameswf::rect *a2)
{
  return *((float *)this + 193) >= *(float *)a2
      && *((float *)a2 + 1) >= 0.0
      && *((float *)a2 + 3) >= 0.0
      && *((float *)this + 194) >= *((float *)a2 + 2);
}


// ===== 7d3fcc bitmap_info_ogl::p2(int) =====
int __fastcall bitmap_info_ogl::p2(bitmap_info_ogl *this, int a2)
{
  int i; // r4

  if ( a2 > 1 )
  {
    for ( i = 1; i < a2; i *= 2 )
      ;
  }
  else
  {
    i = 1;
  }
  if ( (float)((float)a2 / (float)i) < 0.6 )
    i >>= 1;
  return i;
}


// ===== 7d4028 `global constructor keyed to'.._.._src_gameswf_gameswf_render_handler_glitch.cpp =====
void `global constructor keyed to'.._.._src_gameswf_gameswf_render_handler_glitch.cpp()
{
  dword_A2ED34 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_A2ED30 = 1056964608;
}


// ===== 7d4048 bitmap_info_ogl::unlock(void) =====
_BYTE *__fastcall bitmap_info_ogl::unlock(bitmap_info_ogl *this)
{
  return glitch::video::ITexture::unlock(*((_BYTE **)this + 4));
}


// ===== 7d4050 bitmap_info_ogl::lock(void) =====
int __fastcall bitmap_info_ogl::lock(glitch::video::ITexture **this)
{
  (*((void (__fastcall **)(glitch::video::ITexture **))*this + 2))(this);
  return glitch::video::ITexture::lock(*(this + 4), 0);
}


// ===== 7d4074 gameswf::render_handler::~render_handler() =====
void __fastcall gameswf::render_handler::~render_handler(gameswf::render_handler *this)
{
  LC_API_FREE_0(this);
}


// ===== 7d4088 gameswf::array<glitch::core::vector2d<float>>::reserve(int) =====
void __fastcall gameswf::array<glitch::core::vector2d<float>>::reserve(int a1, int a2)
{
  int v3; // r2
  void *v4; // r0

  if ( !*(_BYTE *)(a1 + 12) )
  {
    v3 = *(_DWORD *)(a1 + 8);
    *(_DWORD *)(a1 + 8) = a2;
    if ( a2 )
    {
      if ( *(_DWORD *)a1 )
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 8 * a2, 8 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(8 * a2);
    }
    else
    {
      v4 = *(void **)a1;
      if ( v4 )
        gameswf::free_internal(v4);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 7d4104 gameswf::array<gameswf::array<glitch::core::vector2d<float>>>::reserve(int) =====
void __fastcall gameswf::array<gameswf::array<glitch::core::vector2d<float>>>::reserve(int a1, int a2)
{
  int v3; // r2
  void *v4; // r0

  if ( !*(_BYTE *)(a1 + 12) )
  {
    v3 = *(_DWORD *)(a1 + 8);
    *(_DWORD *)(a1 + 8) = a2;
    if ( a2 )
    {
      if ( *(_DWORD *)a1 )
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 16 * a2, 16 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(16 * a2);
    }
    else
    {
      v4 = *(void **)a1;
      if ( v4 )
        gameswf::free_internal(v4);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 7d4180 gameswf::array<gameswf::vector3df>::reserve(int) =====
void __fastcall gameswf::array<gameswf::vector3df>::reserve(int a1, int a2)
{
  int v3; // r2
  void *v4; // r0

  if ( !*(_BYTE *)(a1 + 12) )
  {
    v3 = *(_DWORD *)(a1 + 8);
    *(_DWORD *)(a1 + 8) = a2;
    if ( a2 )
    {
      if ( *(_DWORD *)a1 )
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 12 * a2, 12 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(12 * a2);
    }
    else
    {
      v4 = *(void **)a1;
      if ( v4 )
        gameswf::free_internal(v4);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 7d4208 gameswf::array<gameswf::vector2df>::reserve(int) =====
void __fastcall gameswf::array<gameswf::vector2df>::reserve(int a1, int a2)
{
  int v3; // r2
  void *v4; // r0

  if ( !*(_BYTE *)(a1 + 12) )
  {
    v3 = *(_DWORD *)(a1 + 8);
    *(_DWORD *)(a1 + 8) = a2;
    if ( a2 )
    {
      if ( *(_DWORD *)a1 )
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 8 * a2, 8 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(8 * a2);
    }
    else
    {
      v4 = *(void **)a1;
      if ( v4 )
        gameswf::free_internal(v4);
      *(_DWORD *)a1 = 0;
    }
  }
}


// ===== 7d4284 BufferedRenderer::ensureBufferCapacity(int) =====
void __fastcall BufferedRenderer::ensureBufferCapacity(BufferedRenderer *this, int a2)
{
  unsigned int v4; // r6
  _DWORD *v5; // r0
  _DWORD *v6; // r3
  int v7; // r12
  int v8; // r3
  void *v9; // r0

  if ( *((_DWORD *)this + 3) < a2 )
  {
    v4 = 24 * a2;
    v5 = operator new[](24 * a2, 0);
    if ( a2 )
    {
      v6 = v5;
      v7 = 0;
      do
      {
        ++v7;
        *v6 = 0;
        v6[1] = 0;
        v6[3] = 0;
        v6[4] = 0;
        v6[5] = 0;
        v6 += 6;
      }
      while ( v7 != a2 );
    }
    v8 = *((_DWORD *)this + 4);
    *((_DWORD *)this + 11) = v5;
    glitch::video::IBuffer::reset(*(glitch::video::IBuffer **)(v8 + 20), v4, v5, 1);
    v9 = operator new[](4 * a2, 0);
    *((_DWORD *)this + 12) = v9;
    glitch::video::IBuffer::reset(*((glitch::video::IBuffer **)this + 5), 2 * a2, v9, 1);
    *((_DWORD *)this + 3) = a2;
  }
}


// ===== 7d4334 render_handler_glitch::set_buffer_capacity(gameswf::render_handler::buffer_mode,int) =====
void __fastcall render_handler_glitch::set_buffer_capacity(int a1, int a2, int a3)
{
  *(_DWORD *)(a1 + 496) = a2;
  BufferedRenderer::ensureBufferCapacity((BufferedRenderer *)(a1 + 496), a3);
}


// ===== 7d4340 render_handler_glitch::ensureBufferCapacity(int) =====
void __fastcall render_handler_glitch::ensureBufferCapacity(render_handler_glitch *this, int a2)
{
  unsigned int v4; // r6
  void *v5; // r0
  void *v6; // r2
  _DWORD *v7; // r3
  int v8; // r0
  int v9; // r3

  if ( *((_DWORD *)this + 220) < a2 )
  {
    v4 = 24 * a2;
    v5 = operator new[](24 * a2, 0);
    v6 = v5;
    if ( a2 )
    {
      v7 = v5;
      v8 = 0;
      do
      {
        ++v8;
        *v7 = 0;
        v7[1] = 0;
        v7[3] = 0;
        v7[4] = 0;
        v7[5] = 0;
        v7 += 6;
      }
      while ( v8 != a2 );
    }
    v9 = *((_DWORD *)this + 222);
    *((_DWORD *)this + 221) = v6;
    glitch::video::IBuffer::reset(*(glitch::video::IBuffer **)(v9 + 20), v4, v6, 1);
    *((_DWORD *)this + 220) = a2;
  }
}


// ===== 7d43cc render_handler_glitch::line_style_color(gameswf::rgba) =====
unsigned int __fastcall render_handler_glitch::line_style_color(int a1, unsigned int a2)
{
  unsigned int v4; // [sp+0h] [bp-18h]

  v4 = gameswf::cxform::transform((float *)(a1 + 804), a2);
  *(_DWORD *)(a1 + 1096) = 1;
  *(_DWORD *)(a1 + 1100) = v4;
  return HIBYTE(v4);
}


// ===== 7d4430 render_handler_glitch::fill_style::set_bitmap(gameswf::bitmap_info *,gameswf::matrix const&,gameswf::render_handler::bitmap_wrap_mode,gameswf::cxform const&) =====
bool __fastcall render_handler_glitch::fill_style::set_bitmap(int a1, int a2, _DWORD *a3, int a4, _DWORD *a5)
{
  int v5; // r3
  _DWORD *v6; // lr
  _DWORD *v7; // r12
  int v9; // r0
  int v10; // r1
  int v11; // r2
  int v12; // r3
  int v13; // r1
  int v14; // r1
  int v15; // r2
  int v16; // r3
  int v17; // r1
  int v18; // r2
  int v19; // r3
  char v20; // r5
  char v21; // r6
  unsigned int v22; // r0
  _BOOL4 result; // r0

  if ( a4 )
    v5 = 3;
  else
    v5 = 2;
  *(_DWORD *)a1 = v5;
  *(_DWORD *)(a1 + 8) = a2;
  v6 = (_DWORD *)(a1 + 12);
  v7 = a3;
  v9 = *a3;
  v10 = a3[1];
  v11 = a3[2];
  v12 = v7[3];
  v7 += 4;
  *v6 = v9;
  v6[1] = v10;
  v6[2] = v11;
  v6[3] = v12;
  v6 += 4;
  v13 = v7[1];
  *v6 = *v7;
  v6[1] = v13;
  v14 = a5[1];
  v15 = a5[2];
  v16 = a5[3];
  *(_DWORD *)(a1 + 36) = *a5;
  *(_DWORD *)(a1 + 40) = v14;
  *(_DWORD *)(a1 + 44) = v15;
  *(_DWORD *)(a1 + 48) = v16;
  v17 = a5[5];
  v18 = a5[6];
  v19 = a5[7];
  *(_DWORD *)(a1 + 52) = a5[4];
  *(_DWORD *)(a1 + 56) = v17;
  *(_DWORD *)(a1 + 60) = v18;
  *(_DWORD *)(a1 + 64) = v19;
  gameswf::cxform::clamp((gameswf::cxform *)(a1 + 36));
  v20 = (unsigned int)(float)(*(float *)(a1 + 36) * 255.0);
  v21 = (unsigned int)(float)(*(float *)(a1 + 44) * 255.0);
  v22 = (unsigned int)(float)(*(float *)(a1 + 60) * 255.0);
  *(_BYTE *)(a1 + 6) = (unsigned int)(float)(*(float *)(a1 + 52) * 255.0);
  *(_BYTE *)(a1 + 7) = v22;
  *(_BYTE *)(a1 + 5) = v21;
  *(_BYTE *)(a1 + 4) = v20;
  result = *(float *)(a1 + 40) > 1.0;
  *(_BYTE *)(a1 + 68) = *(float *)(a1 + 40) > 1.0
                     || (result = *(float *)(a1 + 48) > 1.0)
                     || (result = *(float *)(a1 + 56) > 1.0)
                     || (result = *(float *)(a1 + 64) > 1.0);
  return result;
}


// ===== 7d4558 render_handler_glitch::fill_style_bitmap(int,gameswf::bitmap_info *,gameswf::matrix const&,gameswf::render_handler::bitmap_wrap_mode) =====
bool __fastcall render_handler_glitch::fill_style_bitmap(int a1, int a2, int a3, _DWORD *a4, int a5)
{
  return render_handler_glitch::fill_style::set_bitmap(a1 + 76 * a2 + 944, a3, a4, a5, (_DWORD *)(a1 + 804));
}


// ===== 7d4584 normalize(float *) =====
float __fastcall normalize(float *a1)
{
  float v2; // r5
  float result; // r0

  v2 = sqrtf((float)((float)(*a1 * *a1) + (float)(a1[1] * a1[1])) + (float)(a1[2] * a1[2]));
  LODWORD(result) = v2 == 0.0;
  if ( v2 != 0.0 )
  {
    *a1 = *a1 / v2;
    a1[1] = a1[1] / v2;
    result = a1[2] / v2;
    a1[2] = result;
  }
  return result;
}


// ===== 7d4624 render_handler_glitch::fill_style_color(int,gameswf::rgba const&) =====
unsigned int __fastcall render_handler_glitch::fill_style_color(
        render_handler_glitch *this,
        int a2,
        const gameswf::rgba *a3)
{
  int v3; // r8
  char *v6; // r4
  unsigned int v8; // [sp+8h] [bp-28h]
  _DWORD v9[7]; // [sp+14h] [bp-1Ch] BYREF

  v3 = 76 * a2;
  v9[5] = 0;
  memset(&v9[1], 0, 12);
  v9[4] = 1065353216;
  v9[0] = 1065353216;
  render_handler_glitch::fill_style::set_bitmap((int)this + 76 * a2 + 944, (int)this + 892, v9, 0, (_DWORD *)this + 201);
  v8 = gameswf::cxform::transform(
         (float *)this + 201,
         *(unsigned __int8 *)a3
       | (*((unsigned __int8 *)a3 + 1) << 8)
       | (*((unsigned __int8 *)a3 + 2) << 16)
       | (*((unsigned __int8 *)a3 + 3) << 24));
  v6 = (char *)this + v3;
  v6[948] = v8;
  *((_DWORD *)v6 + 236) = 1;
  *((_WORD *)v6 + 475) = HIWORD(v8);
  v6[949] = BYTE1(v8);
  return HIBYTE(v8);
}


// ===== 7d46fc glitch::video::CVertexStreams::setStream(glitch::video::SVertexStream *,glitch::video::SVertexStreamData const&,bool) =====
int __fastcall glitch::video::CVertexStreams::setStream(glitch::video::CVertexStreams *this, int a2, int *a3, int a4)
{
  int v5; // r2
  int v6; // r7
  glitch::IReferenceCounted *v9; // r0

  v5 = *a3;
  v6 = a4;
  if ( v5 )
    a4 = *(_DWORD *)(v5 + 4);
  if ( v5 )
    *(_DWORD *)(v5 + 4) = a4 + 1;
  v9 = *(glitch::IReferenceCounted **)a2;
  *(_DWORD *)a2 = v5;
  if ( v9 )
    glitch::IReferenceCounted::drop(v9);
  *(_DWORD *)(a2 + 4) = a3[1];
  *(_WORD *)(a2 + 10) = *((_WORD *)a3 + 4);
  *(_WORD *)(a2 + 12) = *((_WORD *)a3 + 6);
  *(_WORD *)(a2 + 14) = *((_WORD *)a3 + 7);
  return glitch::video::CVertexStreams::updateHomogeneityInternal((int)this, v6);
}


// ===== 7d4768 BufferedRenderer::BufferedRenderer(glitch::video::IVideoDriver *) =====
void __fastcall BufferedRenderer::BufferedRenderer(BufferedRenderer *this, glitch::video::IVideoDriver *a2)
{
  glitch::IReferenceCounted *v4; // r0
  bool v5; // zf
  char *v6; // r3
  glitch::video::CVertexStreams *v7; // r0
  int v8; // r3
  glitch::video::CVertexStreams *v9; // r0
  int v10; // r3
  glitch::video::CVertexStreams *v11; // r0
  glitch::IReferenceCounted *v12[3]; // [sp+10h] [bp-38h] BYREF
  __int16 v13; // [sp+1Ch] [bp-2Ch]
  __int16 v14; // [sp+1Eh] [bp-2Ah]
  glitch::IReferenceCounted *v15[3]; // [sp+20h] [bp-28h] BYREF
  __int16 v16; // [sp+2Ch] [bp-1Ch]
  __int16 v17; // [sp+2Eh] [bp-1Ah]
  glitch::IReferenceCounted *v18[3]; // [sp+30h] [bp-18h] BYREF
  __int16 v19; // [sp+3Ch] [bp-Ch]
  __int16 v20; // [sp+3Eh] [bp-Ah]
  glitch::IReferenceCounted *v21; // [sp+40h] [bp-8h] BYREF
  glitch::IReferenceCounted *v22; // [sp+44h] [bp-4h] BYREF

  *(_DWORD *)this = 0;
  *((_BYTE *)this + 4) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  glitch::video::CVertexStreams::allocate((glitch::video::CVertexStreams **)this + 4, 1u, 0x40000u);
  if ( a2 )
  {
    (*(void (__fastcall **)(glitch::IReferenceCounted **, glitch::video::IVideoDriver *))(*(_DWORD *)a2 + 120))(
      &v22,
      a2);
    v4 = v22;
    v5 = v22 == nullptr;
    *((_DWORD *)this + 5) = v22;
    if ( !v5 )
    {
      ++*((_DWORD *)v4 + 1);
      v4 = v22;
    }
  }
  else
  {
    v22 = nullptr;
    v4 = nullptr;
    *((_DWORD *)this + 5) = 0;
  }
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_WORD *)this + 20) = 1;
  *((_WORD *)this + 21) = 4;
  if ( v4 )
    glitch::IReferenceCounted::drop(v4);
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = a2;
  *((_DWORD *)this + 14) = 0;
  v6 = (char *)this + 60;
  do
  {
    *(_DWORD *)v6 = 0;
    *((_DWORD *)v6 + 1) = 0;
    *((_WORD *)v6 + 4) = -1;
    *((_WORD *)v6 + 5) = -1;
    v6 += 12;
  }
  while ( v6 != (char *)this + 264 );
  *((_DWORD *)this + 66) = 0;
  *((_DWORD *)this + 67) = 0;
  if ( a2 )
  {
    (*(void (__fastcall **)(glitch::IReferenceCounted **, glitch::video::IVideoDriver *, _DWORD, int, _DWORD, _DWORD, int))(*(_DWORD *)a2 + 120))(
      &v21,
      a2,
      0,
      4,
      0,
      0,
      1);
    a2 = v21;
    if ( v21 )
    {
      ++*((_DWORD *)v21 + 1);
      if ( v21 )
        glitch::IReferenceCounted::drop(v21);
      v18[0] = a2;
      v7 = *((glitch::video::CVertexStreams **)this + 4);
      ++*((_DWORD *)a2 + 1);
    }
    else
    {
      v7 = *((glitch::video::CVertexStreams **)this + 4);
      v18[0] = nullptr;
    }
  }
  else
  {
    v18[0] = nullptr;
    v7 = *((glitch::video::CVertexStreams **)this + 4);
  }
  v18[1] = (glitch::IReferenceCounted *)(byte_9 + 3);
  v18[2] = (glitch::IReferenceCounted *)&byte_6;
  v19 = 3;
  v20 = 24;
  glitch::video::CVertexStreams::setStream(v7, (int)v7 + 20, (int *)v18, 1);
  if ( v18[0] )
    glitch::IReferenceCounted::drop(v18[0]);
  v15[0] = a2;
  if ( a2 )
    v8 = *((_DWORD *)a2 + 1);
  v9 = *((glitch::video::CVertexStreams **)this + 4);
  if ( a2 )
    *((_DWORD *)a2 + 1) = v8 + 1;
  v15[1] = nullptr;
  v15[2] = (glitch::IReferenceCounted *)&byte_6;
  v16 = 2;
  v17 = 24;
  glitch::video::CVertexStreams::setStream(v9, (int)v9 + 36, (int *)v15, 1);
  if ( v15[0] )
    glitch::IReferenceCounted::drop(v15[0]);
  v12[0] = a2;
  if ( a2 )
    v10 = *((_DWORD *)a2 + 1);
  v11 = *((glitch::video::CVertexStreams **)this + 4);
  if ( a2 )
    *((_DWORD *)a2 + 1) = v10 + 1;
  v12[1] = (glitch::IReferenceCounted *)byte_8;
  v12[2] = (glitch::IReferenceCounted *)(&dword_0 + 1);
  v13 = 4;
  v14 = 24;
  glitch::video::CVertexStreams::setStream(v11, (int)v11 + 52, (int *)v12, 0);
  if ( v12[0] )
    glitch::IReferenceCounted::drop(v12[0]);
  BufferedRenderer::ensureBufferCapacity(this, 1024);
  if ( a2 )
    glitch::IReferenceCounted::drop(a2);
}


// ===== 7d4a08 MaterialData::setMaterial(boost::intrusive_ptr<glitch::video::CMaterial> const&) =====
unsigned int __fastcall MaterialData::setMaterial(int a1, glitch::video::CMaterial **a2, int a3)
{
  glitch::video::CMaterial *v3; // r3
  glitch::video::CMaterial *v6; // r2
  glitch::video::CMaterialRenderer *v7; // r3
  glitch::video::CMaterialRenderer *v8; // r2
  unsigned int result; // r0
  glitch::video::CMaterialRenderer *v10; // [sp+0h] [bp-Ch] BYREF
  glitch::video::CMaterial *v11; // [sp+4h] [bp-8h] BYREF

  v3 = *a2;
  v11 = v3;
  if ( v3 )
    a3 = *(_DWORD *)v3;
  if ( v3 )
    *(_DWORD *)v3 = a3 + 1;
  v6 = *(glitch::video::CMaterial **)(a1 + 4);
  if ( v3 )
    v3 = v11;
  *(_DWORD *)(a1 + 4) = v3;
  v11 = v6;
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v11);
  v7 = *((glitch::video::CMaterialRenderer **)*a2 + 1);
  v10 = v7;
  if ( v7 )
  {
    ++*(_DWORD *)v7;
    v7 = v10;
  }
  v8 = *(glitch::video::CMaterialRenderer **)a1;
  *(_DWORD *)a1 = v7;
  v10 = v8;
  boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v10);
  *(_WORD *)(a1 + 8) = glitch::video::CMaterialRenderer::getParameterID(*(_DWORD *)a1, 2, 0);
  result = glitch::video::CMaterialRenderer::getParameterID(*(_DWORD *)a1, 6, 0);
  *(_WORD *)(a1 + 10) = result;
  return result;
}


// ===== 7d4ab0 BufferedRenderer::createBlendModeMaterial(boost::intrusive_ptr<glitch::video::CMaterialRenderer>,int,char const*) =====
char *__fastcall BufferedRenderer::createBlendModeMaterial(
        int a1,
        int *a2,
        int a3,
        glitch::core::detail::SSharedStringHeapEntry::SData *a4)
{
  int v8; // r7
  int v9; // r2
  bool v10; // r2
  char *result; // r0
  glitch::video::CMaterial *v12; // [sp+4h] [bp-4h] BYREF

  glitch::video::CMaterial::allocate(&v12, a2, nullptr);
  v8 = 12 * a3;
  MaterialData::setMaterial(a1 + v8 + 60, &v12, v9);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v12);
  result = glitch::video::CMaterialRenderer::getTechniqueID((glitch::video::CMaterialRenderer *)*a2, a4, v10);
  if ( result == (_BYTE *)&elf_hash_bucket[8] + 3 )
    return (char *)gameswf::log_msg("unsupported blend mode technique: %s\n", (const char *)a4);
  *(_BYTE *)(*(_DWORD *)(a1 + v8 + 64) + 8) = (_BYTE)result;
  return result;
}


// ===== 7d4b3c bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver *,int,int,gameswf::membuf const*) =====
void __fastcall bitmap_info_ogl::bitmap_info_ogl(
        bitmap_info_ogl *this,
        glitch::video::IVideoDriver *a2,
        int a3,
        int a4,
        const gameswf::membuf *a5)
{
  gameswf::ref_counted::ref_counted(this);
  *((_DWORD *)this + 6) = 0;
  *(_DWORD *)this = off_991888;
  *((_DWORD *)this + 8) = a3;
  *((_DWORD *)this + 9) = a4;
  *((_DWORD *)this + 7) = a5;
  *((_DWORD *)this + 10) = a2;
  *((_DWORD *)this + 12) = 1;
  *((_BYTE *)this + 12) = 0;
  *((_BYTE *)this + 13) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 11) = 1;
}


// ===== 7d4bb4 render_handler_glitch::create_bitmap_info_native(int,int,gameswf::membuf const*) =====
bitmap_info_ogl *__fastcall render_handler_glitch::create_bitmap_info_native(
        glitch::video::IVideoDriver **this,
        int a2,
        int a3,
        const gameswf::membuf *a4)
{
  bitmap_info_ogl *v8; // r8

  v8 = (bitmap_info_ogl *)operator new(0x34u, 0);
  bitmap_info_ogl::bitmap_info_ogl(v8, *(this + 4), a2, a3, a4);
  return v8;
}


// ===== 7d4bfc bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver *,int,int,gameswf::membuf const*) =====
void __fastcall bitmap_info_ogl::bitmap_info_ogl(
        bitmap_info_ogl *this,
        glitch::video::IVideoDriver *a2,
        int a3,
        int a4,
        const gameswf::membuf *a5)
{
  gameswf::ref_counted::ref_counted(this);
  *((_DWORD *)this + 6) = 0;
  *(_DWORD *)this = off_991888;
  *((_DWORD *)this + 8) = a3;
  *((_DWORD *)this + 9) = a4;
  *((_DWORD *)this + 7) = a5;
  *((_DWORD *)this + 10) = a2;
  *((_DWORD *)this + 12) = 1;
  *((_BYTE *)this + 12) = 0;
  *((_BYTE *)this + 13) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 11) = 1;
}


// ===== 7d4c74 bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver *,glitch::video::ITexture *) =====
void __fastcall bitmap_info_ogl::bitmap_info_ogl(
        bitmap_info_ogl *this,
        glitch::video::IVideoDriver *a2,
        glitch::video::ITexture *a3)
{
  int v6; // r2

  gameswf::ref_counted::ref_counted(this);
  *((_BYTE *)this + 13) = 0;
  *((_BYTE *)this + 12) = 0;
  *(_DWORD *)this = off_991888;
  *((_DWORD *)this + 4) = a3;
  if ( a3 )
    ++*((_DWORD *)a3 + 1);
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 8) = *((_DWORD *)a3 + 8);
  v6 = *((_DWORD *)a3 + 9);
  *((_DWORD *)this + 10) = a2;
  *((_DWORD *)this + 12) = 1;
  *((_DWORD *)this + 9) = v6;
  *((_DWORD *)this + 11) = 1;
}


// ===== 7d4d00 render_handler_glitch::create_bitmap_info_texture(glitch::video::ITexture *) =====
bitmap_info_ogl *__fastcall render_handler_glitch::create_bitmap_info_texture(
        glitch::video::IVideoDriver **this,
        glitch::video::ITexture *a2)
{
  bitmap_info_ogl *v4; // r4

  v4 = (bitmap_info_ogl *)operator new(0x34u, 0);
  bitmap_info_ogl::bitmap_info_ogl(v4, *(this + 4), a2);
  return v4;
}


// ===== 7d4d30 bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver *,glitch::video::ITexture *) =====
void __fastcall bitmap_info_ogl::bitmap_info_ogl(
        bitmap_info_ogl *this,
        glitch::video::IVideoDriver *a2,
        glitch::video::ITexture *a3)
{
  int v6; // r2

  gameswf::ref_counted::ref_counted(this);
  *((_BYTE *)this + 13) = 0;
  *((_BYTE *)this + 12) = 0;
  *(_DWORD *)this = off_991888;
  *((_DWORD *)this + 4) = a3;
  if ( a3 )
    ++*((_DWORD *)a3 + 1);
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 8) = *((_DWORD *)a3 + 8);
  v6 = *((_DWORD *)a3 + 9);
  *((_DWORD *)this + 10) = a2;
  *((_DWORD *)this + 12) = 1;
  *((_DWORD *)this + 9) = v6;
  *((_DWORD *)this + 11) = 1;
}


// ===== 7d4dbc bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver *) =====
void __fastcall bitmap_info_ogl::bitmap_info_ogl(bitmap_info_ogl *this, glitch::video::IVideoDriver *a2)
{
  gameswf::ref_counted::ref_counted(this);
  *((_DWORD *)this + 9) = 0;
  *(_DWORD *)this = off_991888;
  *((_DWORD *)this + 10) = a2;
  *((_DWORD *)this + 12) = 1;
  *((_BYTE *)this + 12) = 0;
  *((_BYTE *)this + 13) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 11) = 1;
}


// ===== 7d4e28 render_handler_glitch::create_bitmap_info_empty(void) =====
bitmap_info_ogl *__fastcall render_handler_glitch::create_bitmap_info_empty(glitch::video::IVideoDriver **this)
{
  bitmap_info_ogl *v2; // r4

  v2 = (bitmap_info_ogl *)operator new(0x34u, 0);
  bitmap_info_ogl::bitmap_info_ogl(v2, *(this + 4));
  return v2;
}


// ===== 7d4e50 bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver *) =====
void __fastcall bitmap_info_ogl::bitmap_info_ogl(bitmap_info_ogl *this, glitch::video::IVideoDriver *a2)
{
  gameswf::ref_counted::ref_counted(this);
  *((_DWORD *)this + 9) = 0;
  *(_DWORD *)this = off_991888;
  *((_DWORD *)this + 10) = a2;
  *((_DWORD *)this + 12) = 1;
  *((_BYTE *)this + 12) = 0;
  *((_BYTE *)this + 13) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 11) = 1;
}


// ===== 7d4ebc glitch::video::IVideoDriver::draw(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&,glitch::video::CPrimitiveStream const&,glitch::video::CDriverBinding **) [clone] =====
int __fastcall glitch::video::IVideoDriver::draw(int a1)
{
  (*(void (__fastcall **)(int))(*(_DWORD *)a1 + 88))(a1);
  return 0;
}


// ===== 7d4ef8 glitch::video::IVideoDriver::setMaterial(boost::intrusive_ptr<glitch::video::CMaterial> const&,boost::intrusive_ptr<glitch::video::CVertexAttributeMap> const*) [clone] =====
void __fastcall glitch::video::IVideoDriver::setMaterial(int a1, glitch::video::CMaterial **a2)
{
  int Technique; // r2

  if ( *a2 )
    Technique = glitch::video::CMaterial::getTechnique(*a2);
  else
    Technique = 255;
  glitch::video::IVideoDriver::setMaterial(a1, a2, Technique, 0);
}


// ===== 7d4f34 glitch::video::setColorMask(boost::intrusive_ptr<glitch::video::CMaterial> const&,bool,bool,bool,bool) [clone] =====
int __fastcall glitch::video::setColorMask(glitch::video::CMaterial **a1, int a2, int a3, int a4)
{
  int v8; // r0

  glitch::video::CMaterial::getTechnique(*a1);
  v8 = *(_DWORD *)(*((_DWORD *)*a1 + 1) + 4);
  return (*(int (__fastcall **)(int, int, int, int, int))(*(_DWORD *)v8 + 212))(v8, a2, a3, a4, 1);
}


// ===== 7d4f8c render_handler_glitch::set_render_cache(gameswf::render_cache *) =====
int __fastcall render_handler_glitch::set_render_cache(int this, gameswf::render_cache *a2)
{
  int v2; // r12
  _DWORD *v3; // r2

  *(_DWORD *)(this + 12) = a2;
  if ( a2 )
  {
    v2 = *((_DWORD *)a2 + 5);
    if ( v2 < 0 )
    {
      this = 24 * v2;
      do
      {
        ++v2;
        v3 = (_DWORD *)(*((_DWORD *)a2 + 4) + this);
        *v3 = 0;
        v3[5] = 0;
        v3[1] = 0;
        v3[2] = 0;
        v3[3] = 0;
        v3[4] = 0;
        this += 24;
      }
      while ( v2 );
    }
    *((_DWORD *)a2 + 13) = 0;
    *((_DWORD *)a2 + 5) = 0;
    *((_DWORD *)a2 + 9) = 0;
  }
  return this;
}


// ===== 7d5004 bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver *,gameswf::image_rgb *) =====
void __fastcall bitmap_info_ogl::bitmap_info_ogl(
        bitmap_info_ogl *this,
        glitch::video::IVideoDriver *a2,
        gameswf::image_rgb *a3)
{
  int v6; // r2
  int v7; // r12
  int v8; // r1
  glitch::IReferenceCounted *v9; // r3
  glitch::IReferenceCounted *v10; // r0
  _BYTE *v11; // r6
  int v12; // r8
  _BYTE *v13; // r0
  int v14; // r3
  char v15; // r2
  _DWORD v16[2]; // [sp+4h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v17; // [sp+Ch] [bp-4h] BYREF

  gameswf::ref_counted::ref_counted(this);
  *((_DWORD *)this + 7) = 0;
  *((_BYTE *)this + 12) = 0;
  *((_BYTE *)this + 13) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *(_DWORD *)this = off_991888;
  *((_DWORD *)this + 8) = *((_DWORD *)a3 + 3);
  v6 = *((_DWORD *)a3 + 4);
  *((_DWORD *)this + 12) = 1;
  *((_DWORD *)this + 11) = 1;
  *((_DWORD *)this + 9) = v6;
  *((_DWORD *)this + 10) = a2;
  v7 = *((_DWORD *)a3 + 4);
  v8 = *((_DWORD *)a2 + 56);
  v16[0] = *((_DWORD *)a3 + 3);
  v16[1] = v7;
  glitch::video::CTextureManager::createImage(&v17, v8, 12, (int)v16);
  v9 = v17;
  if ( v17 )
    ++*((_DWORD *)v17 + 1);
  v10 = *((glitch::IReferenceCounted **)this + 6);
  *((_DWORD *)this + 6) = v9;
  if ( v10 )
    glitch::IReferenceCounted::drop(v10);
  if ( v17 )
    glitch::IReferenceCounted::drop(v17);
  v11 = *(_BYTE **)(*((_DWORD *)this + 6) + 8);
  if ( *((int *)a3 + 4) > 0 )
  {
    v12 = 0;
    do
    {
      v13 = (_BYTE *)gameswf::scanline((int)a3, v12);
      if ( *((int *)a3 + 3) > 0 )
      {
        v14 = 0;
        do
        {
          *v11 = -1;
          ++v14;
          v11[1] = *v13;
          v11[2] = v13[1];
          v15 = v13[2];
          v13 += 3;
          v11[3] = v15;
          v11 += 4;
        }
        while ( *((_DWORD *)a3 + 3) > v14 );
      }
      ++v12;
    }
    while ( *((_DWORD *)a3 + 4) > v12 );
  }
}


// ===== 7d515c bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver *,int,int) =====
void __fastcall bitmap_info_ogl::bitmap_info_ogl(
        bitmap_info_ogl *this,
        glitch::video::IVideoDriver *a2,
        int a3,
        int a4)
{
  int v8; // r1
  glitch::IReferenceCounted *v9; // r3
  glitch::IReferenceCounted *v10; // r0
  glitch::IReferenceCounted *v11; // r3
  glitch::IReferenceCounted *v12; // r0
  int v13[2]; // [sp+8h] [bp-10h] BYREF
  glitch::IReferenceCounted *v14; // [sp+10h] [bp-8h] BYREF
  glitch::IReferenceCounted *v15; // [sp+14h] [bp-4h] BYREF

  gameswf::ref_counted::ref_counted(this);
  *((_DWORD *)this + 7) = 0;
  *((_BYTE *)this + 12) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *(_DWORD *)this = off_991888;
  *((_BYTE *)this + 13) = 1;
  *((_DWORD *)this + 8) = a3;
  *((_DWORD *)this + 9) = a4;
  *((_DWORD *)this + 10) = a2;
  *((_DWORD *)this + 11) = 1;
  *((_DWORD *)this + 12) = 1;
  v8 = *((_DWORD *)a2 + 56);
  v13[0] = a3;
  v13[1] = a4;
  glitch::video::CTextureManager::addTexture(&v15, v8, v13, (glitch::IReferenceCounted *)"gameswf_target", 14, 1u);
  v9 = v15;
  if ( v15 )
    ++*((_DWORD *)v15 + 1);
  v10 = *((glitch::IReferenceCounted **)this + 4);
  *((_DWORD *)this + 4) = v9;
  if ( v10 )
    glitch::IReferenceCounted::drop(v10);
  if ( v15 )
    glitch::IReferenceCounted::drop(v15);
  (*(void (__fastcall **)(glitch::IReferenceCounted **, glitch::video::IVideoDriver *, char *, _DWORD))(*(_DWORD *)a2 + 132))(
    &v14,
    a2,
    (char *)this + 16,
    0);
  v11 = v14;
  if ( v14 )
    ++*((_DWORD *)v14 + 1);
  v12 = *((glitch::IReferenceCounted **)this + 5);
  *((_DWORD *)this + 5) = v11;
  if ( v12 )
    glitch::IReferenceCounted::drop(v12);
  if ( v14 )
    glitch::IReferenceCounted::drop(v14);
}


// ===== 7d5294 bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver *,int,int) =====
void __fastcall bitmap_info_ogl::bitmap_info_ogl(
        bitmap_info_ogl *this,
        glitch::video::IVideoDriver *a2,
        int a3,
        int a4)
{
  int v8; // r1
  glitch::IReferenceCounted *v9; // r3
  glitch::IReferenceCounted *v10; // r0
  glitch::IReferenceCounted *v11; // r3
  glitch::IReferenceCounted *v12; // r0
  int v13[2]; // [sp+8h] [bp-10h] BYREF
  glitch::IReferenceCounted *v14; // [sp+10h] [bp-8h] BYREF
  glitch::IReferenceCounted *v15; // [sp+14h] [bp-4h] BYREF

  gameswf::ref_counted::ref_counted(this);
  *((_DWORD *)this + 7) = 0;
  *((_BYTE *)this + 12) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *(_DWORD *)this = off_991888;
  *((_BYTE *)this + 13) = 1;
  *((_DWORD *)this + 8) = a3;
  *((_DWORD *)this + 9) = a4;
  *((_DWORD *)this + 10) = a2;
  *((_DWORD *)this + 11) = 1;
  *((_DWORD *)this + 12) = 1;
  v8 = *((_DWORD *)a2 + 56);
  v13[0] = a3;
  v13[1] = a4;
  glitch::video::CTextureManager::addTexture(&v15, v8, v13, (glitch::IReferenceCounted *)"gameswf_target", 14, 1u);
  v9 = v15;
  if ( v15 )
    ++*((_DWORD *)v15 + 1);
  v10 = *((glitch::IReferenceCounted **)this + 4);
  *((_DWORD *)this + 4) = v9;
  if ( v10 )
    glitch::IReferenceCounted::drop(v10);
  if ( v15 )
    glitch::IReferenceCounted::drop(v15);
  (*(void (__fastcall **)(glitch::IReferenceCounted **, glitch::video::IVideoDriver *, char *, _DWORD))(*(_DWORD *)a2 + 132))(
    &v14,
    a2,
    (char *)this + 16,
    0);
  v11 = v14;
  if ( v14 )
    ++*((_DWORD *)v14 + 1);
  v12 = *((glitch::IReferenceCounted **)this + 5);
  *((_DWORD *)this + 5) = v11;
  if ( v12 )
    glitch::IReferenceCounted::drop(v12);
  if ( v14 )
    glitch::IReferenceCounted::drop(v14);
}


// ===== 7d53cc render_handler_glitch::create_bitmap_info_target(int,int) =====
bitmap_info_ogl *__fastcall render_handler_glitch::create_bitmap_info_target(
        glitch::video::IVideoDriver **this,
        int a2,
        int a3)
{
  bitmap_info_ogl *v6; // r4

  v6 = (bitmap_info_ogl *)operator new(0x34u, 0);
  bitmap_info_ogl::bitmap_info_ogl(v6, *(this + 4), a2, a3);
  return v6;
}


// ===== 7d5404 bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver *,int,int,uchar *) =====
void __fastcall bitmap_info_ogl::bitmap_info_ogl(
        bitmap_info_ogl *this,
        glitch::video::IVideoDriver *a2,
        int a3,
        int a4,
        unsigned __int8 *a5)
{
  int v9; // r1
  glitch::IReferenceCounted *v10; // r3
  glitch::IReferenceCounted *v11; // r0
  int v12; // r7
  unsigned __int8 *v13; // r3
  int v14; // r2
  unsigned __int8 v15; // r0
  _DWORD v16[2]; // [sp+4h] [bp-10h] BYREF
  glitch::IReferenceCounted *v17; // [sp+Ch] [bp-8h] BYREF

  gameswf::ref_counted::ref_counted(this);
  *((_DWORD *)this + 7) = 0;
  *(_DWORD *)this = off_991888;
  *((_BYTE *)this + 12) = 0;
  *((_BYTE *)this + 13) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 12) = 1;
  *((_DWORD *)this + 8) = a3;
  *((_DWORD *)this + 9) = a4;
  *((_DWORD *)this + 10) = a2;
  *((_DWORD *)this + 11) = 1;
  v9 = *((_DWORD *)a2 + 56);
  v16[0] = a3;
  v16[1] = a4;
  glitch::video::CTextureManager::createImage(&v17, v9, 12, (int)v16);
  v10 = v17;
  if ( v17 )
    ++*((_DWORD *)v17 + 1);
  v11 = *((glitch::IReferenceCounted **)this + 6);
  *((_DWORD *)this + 6) = v10;
  if ( v11 )
    glitch::IReferenceCounted::drop(v11);
  if ( v17 )
    glitch::IReferenceCounted::drop(v17);
  if ( a5 )
  {
    v12 = a3 * a4;
    v13 = *(unsigned __int8 **)(*((_DWORD *)this + 6) + 8);
    if ( v12 > 0 )
    {
      v14 = 0;
      do
      {
        v15 = a5[v14++];
        *v13 = v15;
        v13[1] = -1;
        v13[2] = -1;
        v13[3] = -1;
        v13 += 4;
      }
      while ( v14 != v12 );
    }
  }
}


// ===== 7d551c render_handler_glitch::create_bitmap_info_alpha(int,int,uchar *) =====
bitmap_info_ogl *__fastcall render_handler_glitch::create_bitmap_info_alpha(
        glitch::video::IVideoDriver **this,
        int a2,
        int a3,
        unsigned __int8 *a4)
{
  bitmap_info_ogl *v8; // r8

  v8 = (bitmap_info_ogl *)operator new(0x34u, 0);
  bitmap_info_ogl::bitmap_info_ogl(v8, *(this + 4), a2, a3, a4);
  return v8;
}


// ===== 7d5564 bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver *,int,int,uchar *) =====
void __fastcall bitmap_info_ogl::bitmap_info_ogl(
        bitmap_info_ogl *this,
        glitch::video::IVideoDriver *a2,
        int a3,
        int a4,
        unsigned __int8 *a5)
{
  int v9; // r1
  glitch::IReferenceCounted *v10; // r3
  glitch::IReferenceCounted *v11; // r0
  int v12; // r7
  unsigned __int8 *v13; // r3
  int v14; // r2
  unsigned __int8 v15; // r0
  _DWORD v16[2]; // [sp+4h] [bp-10h] BYREF
  glitch::IReferenceCounted *v17; // [sp+Ch] [bp-8h] BYREF

  gameswf::ref_counted::ref_counted(this);
  *((_DWORD *)this + 7) = 0;
  *(_DWORD *)this = off_991888;
  *((_BYTE *)this + 12) = 0;
  *((_BYTE *)this + 13) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 12) = 1;
  *((_DWORD *)this + 8) = a3;
  *((_DWORD *)this + 9) = a4;
  *((_DWORD *)this + 10) = a2;
  *((_DWORD *)this + 11) = 1;
  v9 = *((_DWORD *)a2 + 56);
  v16[0] = a3;
  v16[1] = a4;
  glitch::video::CTextureManager::createImage(&v17, v9, 12, (int)v16);
  v10 = v17;
  if ( v17 )
    ++*((_DWORD *)v17 + 1);
  v11 = *((glitch::IReferenceCounted **)this + 6);
  *((_DWORD *)this + 6) = v10;
  if ( v11 )
    glitch::IReferenceCounted::drop(v11);
  if ( v17 )
    glitch::IReferenceCounted::drop(v17);
  if ( a5 )
  {
    v12 = a3 * a4;
    v13 = *(unsigned __int8 **)(*((_DWORD *)this + 6) + 8);
    if ( v12 > 0 )
    {
      v14 = 0;
      do
      {
        v15 = a5[v14++];
        *v13 = v15;
        v13[1] = -1;
        v13[2] = -1;
        v13[3] = -1;
        v13 += 4;
      }
      while ( v14 != v12 );
    }
  }
}


// ===== 7d567c bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver *,gameswf::image_rgba *) =====
void __fastcall bitmap_info_ogl::bitmap_info_ogl(
        bitmap_info_ogl *this,
        glitch::video::IVideoDriver *a2,
        gameswf::image_rgba *a3)
{
  int v6; // r2
  int v7; // r12
  int v8; // r1
  glitch::IReferenceCounted *v9; // r3
  glitch::IReferenceCounted *v10; // r0
  char *v11; // r3
  int v12; // r7
  _BYTE *v13; // r2
  int v14; // r1
  char v15; // r5
  char v16; // r12
  char v17; // r0
  _DWORD v18[2]; // [sp+4h] [bp-10h] BYREF
  glitch::IReferenceCounted *v19; // [sp+Ch] [bp-8h] BYREF

  gameswf::ref_counted::ref_counted(this);
  *((_DWORD *)this + 7) = 0;
  *((_BYTE *)this + 12) = 0;
  *((_BYTE *)this + 13) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *(_DWORD *)this = off_991888;
  *((_DWORD *)this + 8) = *((_DWORD *)a3 + 3);
  v6 = *((_DWORD *)a3 + 4);
  *((_DWORD *)this + 12) = 1;
  *((_DWORD *)this + 11) = 1;
  *((_DWORD *)this + 9) = v6;
  *((_DWORD *)this + 10) = a2;
  v7 = *((_DWORD *)a3 + 4);
  v8 = *((_DWORD *)a2 + 56);
  v18[0] = *((_DWORD *)a3 + 3);
  v18[1] = v7;
  glitch::video::CTextureManager::createImage(&v19, v8, 12, (int)v18);
  v9 = v19;
  if ( v19 )
    ++*((_DWORD *)v19 + 1);
  v10 = *((glitch::IReferenceCounted **)this + 6);
  *((_DWORD *)this + 6) = v9;
  if ( v10 )
    glitch::IReferenceCounted::drop(v10);
  if ( v19 )
    glitch::IReferenceCounted::drop(v19);
  v11 = *((char **)a3 + 2);
  v12 = *((_DWORD *)a3 + 3) * *((_DWORD *)a3 + 4);
  v13 = *(_BYTE **)(*((_DWORD *)this + 6) + 8);
  if ( v12 > 0 )
  {
    v14 = 0;
    do
    {
      v15 = *v11;
      v16 = v11[1];
      v17 = v11[2];
      ++v14;
      *v13 = v11[3];
      v13[1] = v15;
      v13[2] = v16;
      v13[3] = v17;
      v11 += 4;
      v13 += 4;
    }
    while ( v14 != v12 );
  }
}


// ===== 7d57b0 render_handler_glitch::create_bitmap_info_rgba(gameswf::image_rgba *) =====
bitmap_info_ogl *__fastcall render_handler_glitch::create_bitmap_info_rgba(
        glitch::video::IVideoDriver **this,
        gameswf::image_rgba *a2)
{
  bitmap_info_ogl *v4; // r4

  v4 = (bitmap_info_ogl *)operator new(0x34u, 0);
  bitmap_info_ogl::bitmap_info_ogl(v4, *(this + 4), a2);
  return v4;
}


// ===== 7d57e0 bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver *,gameswf::image_rgba *) =====
void __fastcall bitmap_info_ogl::bitmap_info_ogl(
        bitmap_info_ogl *this,
        glitch::video::IVideoDriver *a2,
        gameswf::image_rgba *a3)
{
  int v6; // r2
  int v7; // r12
  int v8; // r1
  glitch::IReferenceCounted *v9; // r3
  glitch::IReferenceCounted *v10; // r0
  char *v11; // r3
  int v12; // r7
  _BYTE *v13; // r2
  int v14; // r1
  char v15; // r5
  char v16; // r12
  char v17; // r0
  _DWORD v18[2]; // [sp+4h] [bp-10h] BYREF
  glitch::IReferenceCounted *v19; // [sp+Ch] [bp-8h] BYREF

  gameswf::ref_counted::ref_counted(this);
  *((_DWORD *)this + 7) = 0;
  *((_BYTE *)this + 12) = 0;
  *((_BYTE *)this + 13) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *(_DWORD *)this = off_991888;
  *((_DWORD *)this + 8) = *((_DWORD *)a3 + 3);
  v6 = *((_DWORD *)a3 + 4);
  *((_DWORD *)this + 12) = 1;
  *((_DWORD *)this + 11) = 1;
  *((_DWORD *)this + 9) = v6;
  *((_DWORD *)this + 10) = a2;
  v7 = *((_DWORD *)a3 + 4);
  v8 = *((_DWORD *)a2 + 56);
  v18[0] = *((_DWORD *)a3 + 3);
  v18[1] = v7;
  glitch::video::CTextureManager::createImage(&v19, v8, 12, (int)v18);
  v9 = v19;
  if ( v19 )
    ++*((_DWORD *)v19 + 1);
  v10 = *((glitch::IReferenceCounted **)this + 6);
  *((_DWORD *)this + 6) = v9;
  if ( v10 )
    glitch::IReferenceCounted::drop(v10);
  if ( v19 )
    glitch::IReferenceCounted::drop(v19);
  v11 = *((char **)a3 + 2);
  v12 = *((_DWORD *)a3 + 3) * *((_DWORD *)a3 + 4);
  v13 = *(_BYTE **)(*((_DWORD *)this + 6) + 8);
  if ( v12 > 0 )
  {
    v14 = 0;
    do
    {
      v15 = *v11;
      v16 = v11[1];
      v17 = v11[2];
      ++v14;
      *v13 = v11[3];
      v13[1] = v15;
      v13[2] = v16;
      v13[3] = v17;
      v11 += 4;
      v13 += 4;
    }
    while ( v14 != v12 );
  }
}


// ===== 7d5914 bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver *,gameswf::image_rgb *) =====
void __fastcall bitmap_info_ogl::bitmap_info_ogl(
        bitmap_info_ogl *this,
        glitch::video::IVideoDriver *a2,
        gameswf::image_rgb *a3)
{
  int v6; // r2
  int v7; // r12
  int v8; // r1
  glitch::IReferenceCounted *v9; // r3
  glitch::IReferenceCounted *v10; // r0
  _BYTE *v11; // r6
  int v12; // r8
  _BYTE *v13; // r0
  int v14; // r3
  char v15; // r2
  _DWORD v16[2]; // [sp+4h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v17; // [sp+Ch] [bp-4h] BYREF

  gameswf::ref_counted::ref_counted(this);
  *((_DWORD *)this + 7) = 0;
  *((_BYTE *)this + 12) = 0;
  *((_BYTE *)this + 13) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *(_DWORD *)this = off_991888;
  *((_DWORD *)this + 8) = *((_DWORD *)a3 + 3);
  v6 = *((_DWORD *)a3 + 4);
  *((_DWORD *)this + 12) = 1;
  *((_DWORD *)this + 11) = 1;
  *((_DWORD *)this + 9) = v6;
  *((_DWORD *)this + 10) = a2;
  v7 = *((_DWORD *)a3 + 4);
  v8 = *((_DWORD *)a2 + 56);
  v16[0] = *((_DWORD *)a3 + 3);
  v16[1] = v7;
  glitch::video::CTextureManager::createImage(&v17, v8, 12, (int)v16);
  v9 = v17;
  if ( v17 )
    ++*((_DWORD *)v17 + 1);
  v10 = *((glitch::IReferenceCounted **)this + 6);
  *((_DWORD *)this + 6) = v9;
  if ( v10 )
    glitch::IReferenceCounted::drop(v10);
  if ( v17 )
    glitch::IReferenceCounted::drop(v17);
  v11 = *(_BYTE **)(*((_DWORD *)this + 6) + 8);
  if ( *((int *)a3 + 4) > 0 )
  {
    v12 = 0;
    do
    {
      v13 = (_BYTE *)gameswf::scanline((int)a3, v12);
      if ( *((int *)a3 + 3) > 0 )
      {
        v14 = 0;
        do
        {
          *v11 = -1;
          ++v14;
          v11[1] = *v13;
          v11[2] = v13[1];
          v15 = v13[2];
          v13 += 3;
          v11[3] = v15;
          v11 += 4;
        }
        while ( *((_DWORD *)a3 + 3) > v14 );
      }
      ++v12;
    }
    while ( *((_DWORD *)a3 + 4) > v12 );
  }
}


// ===== 7d5a6c render_handler_glitch::create_bitmap_info_rgb(gameswf::image_rgb *) =====
bitmap_info_ogl *__fastcall render_handler_glitch::create_bitmap_info_rgb(
        glitch::video::IVideoDriver **this,
        gameswf::image_rgb *a2)
{
  bitmap_info_ogl *v4; // r4

  v4 = (bitmap_info_ogl *)operator new(0x34u, 0);
  bitmap_info_ogl::bitmap_info_ogl(v4, *(this + 4), a2);
  return v4;
}


// ===== 7d5a9c bitmap_info_ogl::release(void) =====
void __fastcall bitmap_info_ogl::release(bitmap_info_ogl *this)
{
  glitch::IReferenceCounted *v2; // r0
  glitch::IReferenceCounted *v3; // r0
  void *v4; // r5

  v2 = *((glitch::IReferenceCounted **)this + 4);
  if ( v2 )
  {
    if ( *((_BYTE *)this + 13) )
    {
      glitch::video::CTextureManager::removeTexture(
        *(glitch::video::CTextureManager **)(*((_DWORD *)this + 10) + 224),
        (glitch::IReferenceCounted **)this + 4);
      v2 = *((glitch::IReferenceCounted **)this + 4);
    }
    *((_DWORD *)this + 4) = 0;
    if ( v2 )
      glitch::IReferenceCounted::drop(v2);
  }
  v3 = *((glitch::IReferenceCounted **)this + 6);
  if ( v3 )
  {
    *((_DWORD *)this + 6) = 0;
    glitch::IReferenceCounted::drop(v3);
  }
  v4 = *((void **)this + 7);
  if ( v4 )
  {
    gameswf::membuf::~membuf(*((void ***)this + 7));
    gameswf::free_internal(v4);
    *((_DWORD *)this + 7) = 0;
  }
}


// ===== 7d5b2c bitmap_info_ogl::set_texture(glitch::video::ITexture *) =====
glitch::IReferenceCounted *__fastcall bitmap_info_ogl::set_texture(
        glitch::IReferenceCounted **this,
        glitch::video::ITexture *a2)
{
  glitch::IReferenceCounted *result; // r0
  glitch::video::ITexture *v5; // r3

  bitmap_info_ogl::release((bitmap_info_ogl *)this);
  if ( a2 )
    ++*((_DWORD *)a2 + 1);
  result = *(this + 4);
  v5 = a2;
  *(this + 4) = a2;
  if ( result )
  {
    result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
    a2 = *(this + 4);
    v5 = a2;
  }
  *(this + 8) = *((glitch::IReferenceCounted **)a2 + 8);
  *(this + 9) = *((glitch::IReferenceCounted **)v5 + 9);
  return result;
}


// ===== 7d5b80 bitmap_info_ogl::unlayout(void) =====
// attributes: thunk
void __fastcall bitmap_info_ogl::unlayout(bitmap_info_ogl *this)
{
  bitmap_info_ogl::release(this);
}


// ===== 7d5b84 bitmap_info_ogl::~bitmap_info_ogl() =====
void __fastcall bitmap_info_ogl::~bitmap_info_ogl(glitch::IReferenceCounted **this)
{
  glitch::IReferenceCounted *v2; // r0
  glitch::IReferenceCounted *v3; // r0
  glitch::IReferenceCounted *v4; // r0

  *this = (glitch::IReferenceCounted *)off_991888;
  bitmap_info_ogl::release((bitmap_info_ogl *)this);
  v2 = *(this + 6);
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  v3 = *(this + 5);
  if ( v3 )
    glitch::IReferenceCounted::drop(v3);
  v4 = *(this + 4);
  if ( v4 )
    glitch::IReferenceCounted::drop(v4);
  *this = (glitch::IReferenceCounted *)off_990258;
  gameswf::ref_counted::~ref_counted((gameswf::ref_counted *)this);
}


// ===== 7d5c04 bitmap_info_ogl::~bitmap_info_ogl() =====
void __fastcall bitmap_info_ogl::~bitmap_info_ogl(glitch::IReferenceCounted **this)
{
  bitmap_info_ogl::~bitmap_info_ogl(this);
  LC_API_FREE_0(this);
}


// ===== 7d5c20 bitmap_info_ogl::layout(void) =====
void __fastcall bitmap_info_ogl::layout(bitmap_info_ogl *this)
{
  _DWORD *v2; // r7
  int v3; // r3
  int v4; // r8
  int v5; // r10
  unsigned int v6; // r2
  int v7; // r3
  unsigned int v8; // r2
  int v9; // r9
  int v10; // r3
  glitch::IReferenceCounted *v11; // r0
  int v12; // r3
  int v13; // r0
  unsigned int v14; // r2
  int v15; // r1
  __int16 v16; // r0
  int v17; // r1
  glitch::IReferenceCounted *v18; // r0
  unsigned int v19; // r3
  unsigned int v20; // r3
  int v21; // r0
  int v22; // r3
  unsigned int v23; // r2
  int v24; // r1
  __int16 v25; // r0
  int v26; // r1
  void *v27; // r9
  bool v28; // [sp+0h] [bp-64h]
  int v29; // [sp+8h] [bp-5Ch]
  glitch::IReferenceCounted *File; // [sp+Ch] [bp-58h]
  glitch::IReferenceCounted *v31; // [sp+10h] [bp-54h] BYREF
  glitch::IReferenceCounted *v32; // [sp+14h] [bp-50h] BYREF
  glitch::IReferenceCounted *v33; // [sp+18h] [bp-4Ch] BYREF
  char s[64]; // [sp+1Ch] [bp-48h] BYREF

  if ( *((_DWORD *)this + 4) )
    return;
  sprintf(s, "bitmap_info_ogl_0x%x", this);
  v2 = *((_DWORD **)this + 10);
  if ( v2 && (v2[34] & 0x10) != 0 )
  {
    (*(void (__fastcall **)(_DWORD, int, _DWORD))(*v2 + 160))(*((_DWORD *)this + 10), 16, 0);
    v29 = 1;
    v3 = *((_DWORD *)this + 10);
  }
  else
  {
    v3 = *((_DWORD *)this + 10);
    v29 = 0;
  }
  v4 = *(_DWORD *)(v3 + 224);
  v5 = *((unsigned __int8 *)this + 12);
  if ( v4 )
  {
    v6 = *(_DWORD *)(v4 + 116);
    v7 = (v6 >> 4) & 1;
    if ( v5 != v7 )
    {
      if ( *((_BYTE *)this + 12) )
        v8 = v6 | 0x10;
      else
        v8 = v6 & 0xFFFFFFEF;
      *(_DWORD *)(v4 + 116) = v8;
      v5 = v7;
    }
  }
  else
  {
    v5 = 0;
  }
  v9 = *((_DWORD *)this + 6);
  if ( !v9 )
  {
    v21 = *((_DWORD *)this + 7);
    if ( v21 )
    {
      File = glitch::io::createMemoryReadFile(
               *(glitch::io **)(v21 + 8),
               *(_DWORD *)v21,
               s,
               *((const char **)this + 6),
               v28);
      glitch::video::CTextureManager::getTexture(
        &v31,
        *(glitch::io::IReadFile **)(*((_DWORD *)this + 10) + 224),
        File,
        nullptr);
      boost::intrusive_ptr<glitch::video::ITexture>::operator=((glitch::IReferenceCounted **)this + 4, &v31);
      if ( v31 )
        glitch::IReferenceCounted::drop(v31);
      v22 = *((_DWORD *)this + 4);
      v23 = *(_DWORD *)(v22 + 56);
      v24 = s_filter_map[*((_DWORD *)this + 11)];
      if ( v24 != ((v23 >> 12) & 7) && (*(unsigned __int8 *)(v22 + 62) > 1u || v24 <= 1) )
      {
        v25 = *(_WORD *)(v22 + 64);
        *(_DWORD *)(v22 + 56) = v23 & 0xFFFF8FFF | ((s_filter_map[*((_DWORD *)this + 11)] & 7) << 12);
        *(_WORD *)(v22 + 64) = v25 | 4;
        v22 = *((_DWORD *)this + 4);
        v23 = *(_DWORD *)(v22 + 56);
      }
      v26 = s_filter_map[*((_DWORD *)this + 12)];
      if ( v26 != ((v23 >> 15) & 7) )
      {
        *(_WORD *)(v22 + 64) |= 8u;
        *(_DWORD *)(v22 + 56) = v23 & 0xFFFC7FFF | ((v26 & 7) << 15);
      }
      *((_BYTE *)this + 13) = 1;
      glitch::IReferenceCounted::drop(File);
      v27 = *((void **)this + 7);
      if ( v27 )
      {
        gameswf::membuf::~membuf(*((void ***)this + 7));
        gameswf::free_internal(v27);
      }
      *((_DWORD *)this + 7) = 0;
    }
    goto LABEL_28;
  }
  if ( *((_BYTE *)this + 12) )
  {
    v10 = *((_DWORD *)this + 10);
    if ( (*(_DWORD *)(v10 + 156) & 0x6000) == 0x6000
      && (*(_DWORD *)&glitch::video::pixel_format::detail::PFDTable[40 * *(_DWORD *)(v9 + 32)] & 8) == 0
      && !*(_BYTE *)(v9 + 40) )
    {
      glitch::video::CTextureManager::addTexture(
        &v33,
        *(_DWORD *)(v10 + 224),
        (glitch::IReferenceCounted *)s,
        (int *)this + 6,
        0,
        1);
      boost::intrusive_ptr<glitch::video::ITexture>::operator=((glitch::IReferenceCounted **)this + 4, &v33);
      v11 = v33;
      if ( !v33 )
        goto LABEL_21;
      goto LABEL_20;
    }
  }
  else
  {
    v10 = *((_DWORD *)this + 10);
  }
  glitch::video::CTextureManager::addTexture(
    &v32,
    *(_DWORD *)(v10 + 224),
    (glitch::IReferenceCounted *)s,
    (int *)this + 6,
    0,
    0);
  boost::intrusive_ptr<glitch::video::ITexture>::operator=((glitch::IReferenceCounted **)this + 4, &v32);
  v11 = v32;
  if ( v32 )
LABEL_20:
    glitch::IReferenceCounted::drop(v11);
LABEL_21:
  v12 = *((_DWORD *)this + 4);
  v13 = *((_DWORD *)this + 11);
  *((_BYTE *)this + 13) = 1;
  v14 = *(_DWORD *)(v12 + 56);
  v15 = s_filter_map[v13];
  if ( v15 != ((v14 >> 12) & 7) && (*(unsigned __int8 *)(v12 + 62) > 1u || v15 <= 1) )
  {
    v16 = *(_WORD *)(v12 + 64);
    *(_DWORD *)(v12 + 56) = v14 & 0xFFFF8FFF | ((v15 & 7) << 12);
    *(_WORD *)(v12 + 64) = v16 | 4;
    v12 = *((_DWORD *)this + 4);
    v14 = *(_DWORD *)(v12 + 56);
  }
  v17 = s_filter_map[*((_DWORD *)this + 12)];
  if ( v17 != ((v14 >> 15) & 7) )
  {
    *(_WORD *)(v12 + 64) |= 8u;
    *(_DWORD *)(v12 + 56) = v14 & 0xFFFC7FFF | ((v17 & 7) << 15);
  }
  v18 = *((glitch::IReferenceCounted **)this + 6);
  *((_DWORD *)this + 6) = 0;
  if ( v18 )
    glitch::IReferenceCounted::drop(v18);
LABEL_28:
  if ( v4 )
  {
    v19 = *(_DWORD *)(v4 + 116);
    if ( v5 != ((v19 >> 4) & 1) )
    {
      if ( v5 )
        v20 = v19 | 0x10;
      else
        v20 = v19 & 0xFFFFFFEF;
      *(_DWORD *)(v4 + 116) = v20;
    }
  }
  if ( v2 )
  {
    if ( v29 != ((v2[34] >> 4) & 1) )
      (*(void (__fastcall **)(_DWORD *, int))(*v2 + 160))(v2, 16);
  }
}


// ===== 7d6050 render_handler_glitch::TransformState::TransformState(void) =====
render_handler_glitch::TransformState *__fastcall render_handler_glitch::TransformState::TransformState(
        render_handler_glitch::TransformState *this)
{
  *((_BYTE *)this + 64) = 0;
  LC_API_MEMSET_0(this, 0, 0x40u);
  *(_DWORD *)this = 1065353216;
  *((_DWORD *)this + 5) = 1065353216;
  *((_DWORD *)this + 10) = 1065353216;
  *((_DWORD *)this + 15) = 1065353216;
  *((_BYTE *)this + 64) = 1;
  *((_BYTE *)this + 132) = 0;
  LC_API_MEMSET_0((char *)this + 68, 0, 0x40u);
  *((_DWORD *)this + 17) = 1065353216;
  *((_DWORD *)this + 22) = 1065353216;
  *((_DWORD *)this + 27) = 1065353216;
  *((_DWORD *)this + 32) = 1065353216;
  *((_BYTE *)this + 132) = 1;
  *((_BYTE *)this + 200) = 0;
  LC_API_MEMSET_0((char *)this + 136, 0, 0x40u);
  *((_DWORD *)this + 49) = 1065353216;
  *((_BYTE *)this + 200) = 1;
  *((_DWORD *)this + 54) = 0;
  *((_DWORD *)this + 34) = 1065353216;
  *((_DWORD *)this + 39) = 1065353216;
  *((_DWORD *)this + 44) = 1065353216;
  *((_DWORD *)this + 51) = 0;
  *((_DWORD *)this + 52) = 0;
  *((_DWORD *)this + 53) = 0;
  return this;
}


// ===== 7d60f4 render_handler_glitch::render_handler_glitch(glitch::video::IVideoDriver *) =====
void __fastcall render_handler_glitch::render_handler_glitch(
        render_handler_glitch *this,
        glitch::video::IVideoDriver *a2)
{
  char *v4; // r3
  int v5; // r3
  glitch::video::CVertexStreams *v6; // r0
  glitch::video::CVertexStreams *v7; // r0
  glitch::video::CVertexStreams *v8; // r0
  glitch::IReferenceCounted *v9[3]; // [sp+14h] [bp-60h] BYREF
  __int16 v10; // [sp+20h] [bp-54h]
  __int16 v11; // [sp+22h] [bp-52h]
  glitch::IReferenceCounted *v12[3]; // [sp+24h] [bp-50h] BYREF
  __int16 v13; // [sp+30h] [bp-44h]
  __int16 v14; // [sp+32h] [bp-42h]
  glitch::IReferenceCounted *v15[3]; // [sp+34h] [bp-40h] BYREF
  __int16 v16; // [sp+40h] [bp-34h]
  __int16 v17; // [sp+42h] [bp-32h]
  glitch::IReferenceCounted *v18[2]; // [sp+44h] [bp-30h] BYREF
  glitch::video::CMaterialRenderer *v19; // [sp+4Ch] [bp-28h] BYREF
  glitch::video::CMaterialRenderer *v20; // [sp+50h] [bp-24h] BYREF
  glitch::video::CMaterialRenderer *v21; // [sp+54h] [bp-20h] BYREF
  glitch::video::CMaterialRenderer *v22; // [sp+58h] [bp-1Ch] BYREF
  glitch::video::CMaterialRenderer *v23; // [sp+5Ch] [bp-18h] BYREF
  glitch::video::CMaterialRenderer *v24; // [sp+60h] [bp-14h] BYREF
  glitch::video::CMaterialRenderer *v25; // [sp+64h] [bp-10h] BYREF
  glitch::video::CMaterialRenderer *v26; // [sp+68h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v27; // [sp+6Ch] [bp-8h] BYREF

  *((_DWORD *)this + 5) = 2031871;
  *(_DWORD *)this = off_991708;
  *((_BYTE *)this + 4) = 1;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = a2;
  *((_BYTE *)this + 24) = 0;
  *((_BYTE *)this + 25) = 0;
  *((_BYTE *)this + 26) = 0;
  *((_BYTE *)this + 27) = 0;
  *((_DWORD *)this + 7) = 1065353216;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 1065353216;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0;
  render_handler_glitch::TransformState::TransformState((render_handler_glitch *)((char *)this + 56));
  render_handler_glitch::TransformState::TransformState((render_handler_glitch *)((char *)this + 276));
  BufferedRenderer::BufferedRenderer((render_handler_glitch *)((char *)this + 496), a2);
  *((_BYTE *)this + 768) = 0;
  *((_BYTE *)this + 769) = 0;
  *((_DWORD *)this + 193) = 0;
  *((_DWORD *)this + 194) = 0;
  *((_DWORD *)this + 196) = 0;
  *((_DWORD *)this + 197) = 0;
  *((_DWORD *)this + 198) = 0;
  *((_DWORD *)this + 200) = 0;
  *((_DWORD *)this + 195) = 1065353216;
  *((_DWORD *)this + 199) = 1065353216;
  *((_DWORD *)this + 201) = 1065353216;
  *((_DWORD *)this + 203) = 1065353216;
  *((_DWORD *)this + 205) = 1065353216;
  *((_DWORD *)this + 207) = 1065353216;
  *((_DWORD *)this + 202) = 0;
  *((_DWORD *)this + 204) = 0;
  *((_DWORD *)this + 206) = 0;
  *((_DWORD *)this + 208) = 0;
  *((_DWORD *)this + 209) = 0;
  *((_DWORD *)this + 210) = 0;
  *((_DWORD *)this + 211) = 0;
  *((_DWORD *)this + 212) = 0;
  *((_DWORD *)this + 213) = 0;
  *((_BYTE *)this + 856) = 0;
  *((_DWORD *)this + 215) = 0;
  *((_DWORD *)this + 216) = 0;
  *((_DWORD *)this + 217) = 0;
  *((_BYTE *)this + 872) = 0;
  gameswf::triangle_intersector::triangle_intersector((render_handler_glitch *)((char *)this + 876));
  *((_DWORD *)this + 220) = 0;
  *((_DWORD *)this + 221) = 0;
  glitch::video::CVertexStreams::allocate((glitch::video::CVertexStreams **)this + 222, 1u, 0x40000u);
  bitmap_info_ogl::bitmap_info_ogl((render_handler_glitch *)((char *)this + 892), a2, 4, 4, s_no_bitmap_data);
  v4 = (char *)this + 944;
  do
  {
    *(_DWORD *)v4 = 0;
    v4[4] = -1;
    v4[5] = -1;
    v4[6] = -1;
    v4[7] = -1;
    *((_DWORD *)v4 + 4) = 0;
    *((_DWORD *)v4 + 5) = 0;
    *((_DWORD *)v4 + 6) = 0;
    *((_DWORD *)v4 + 8) = 0;
    *((_DWORD *)v4 + 3) = 1065353216;
    *((_DWORD *)v4 + 7) = 1065353216;
    *((_DWORD *)v4 + 9) = 1065353216;
    *((_DWORD *)v4 + 11) = 1065353216;
    *((_DWORD *)v4 + 13) = 1065353216;
    *((_DWORD *)v4 + 15) = 1065353216;
    *((_DWORD *)v4 + 10) = 0;
    *((_DWORD *)v4 + 12) = 0;
    *((_DWORD *)v4 + 14) = 0;
    *((_DWORD *)v4 + 16) = 0;
    v4[68] = 0;
    v4 += 76;
  }
  while ( v4 != (char *)this + 1172 );
  v5 = *((_DWORD *)this + 4);
  if ( v5 )
  {
    ++*(_DWORD *)(v5 + 4);
    (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, _DWORD, int, _DWORD, _DWORD, int))(**((_DWORD **)this + 4) + 120))(
      &v27,
      *((_DWORD *)this + 4),
      0,
      4,
      0,
      0,
      1);
    v6 = *((glitch::video::CVertexStreams **)this + 222);
    v15[0] = v27;
    if ( v27 )
      ++*((_DWORD *)v27 + 1);
    v15[1] = (glitch::IReferenceCounted *)(byte_9 + 3);
    v15[2] = (glitch::IReferenceCounted *)&byte_6;
    v16 = 3;
    v17 = 24;
    glitch::video::CVertexStreams::setStream(v6, (int)v6 + 20, (int *)v15, 1);
    if ( v15[0] )
      glitch::IReferenceCounted::drop(v15[0]);
    v7 = *((glitch::video::CVertexStreams **)this + 222);
    v12[0] = v27;
    if ( v27 )
      ++*((_DWORD *)v27 + 1);
    v12[1] = nullptr;
    v12[2] = (glitch::IReferenceCounted *)&byte_6;
    v13 = 2;
    v14 = 24;
    glitch::video::CVertexStreams::setStream(v7, (int)v7 + 36, (int *)v12, 1);
    if ( v12[0] )
      glitch::IReferenceCounted::drop(v12[0]);
    v8 = *((glitch::video::CVertexStreams **)this + 222);
    v9[0] = v27;
    if ( v27 )
      ++*((_DWORD *)v27 + 1);
    v9[1] = (glitch::IReferenceCounted *)byte_8;
    v9[2] = (glitch::IReferenceCounted *)(&dword_0 + 1);
    v10 = 4;
    v11 = 24;
    glitch::video::CVertexStreams::setStream(v8, (int)v8 + 52, (int *)v9, 0);
    if ( v9[0] )
      glitch::IReferenceCounted::drop(v9[0]);
    if ( v27 )
      glitch::IReferenceCounted::drop(v27);
  }
  render_handler_glitch::ensureBufferCapacity(this, 256);
  glitch::collada::CColladaDatabase::CColladaDatabase(
    (glitch::collada::CColladaDatabase *)v18,
    "gameswf_effects.bdae",
    (glitch::collada::CColladaFactory *)&glitch::collada::CColladaDatabase::DefaultFactory);
  glitch::collada::CColladaDatabase::constructEffect(
    (int)&v26,
    (glitch::collada::CColladaDatabase *)v18,
    *((_DWORD *)this + 4),
    "_1_-_Default-fx",
    0);
  v25 = v26;
  if ( v26 )
    ++*(_DWORD *)v26;
  BufferedRenderer::createBlendModeMaterial(
    (int)this + 496,
    (int *)&v25,
    0,
    (glitch::core::detail::SSharedStringHeapEntry::SData *)"default");
  boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v25);
  v24 = v26;
  if ( v26 )
    ++*(_DWORD *)v26;
  BufferedRenderer::createBlendModeMaterial(
    (int)this + 496,
    (int *)&v24,
    1,
    (glitch::core::detail::SSharedStringHeapEntry::SData *)"default");
  boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v24);
  v23 = v26;
  if ( v26 )
    ++*(_DWORD *)v26;
  BufferedRenderer::createBlendModeMaterial(
    (int)this + 496,
    (int *)&v23,
    3,
    (glitch::core::detail::SSharedStringHeapEntry::SData *)"multiply");
  boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v23);
  v22 = v26;
  if ( v26 )
    ++*(_DWORD *)v26;
  BufferedRenderer::createBlendModeMaterial(
    (int)this + 496,
    (int *)&v22,
    4,
    (glitch::core::detail::SSharedStringHeapEntry::SData *)"screen");
  boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v22);
  v21 = v26;
  if ( v26 )
    ++*(_DWORD *)v26;
  BufferedRenderer::createBlendModeMaterial(
    (int)this + 496,
    (int *)&v21,
    13,
    (glitch::core::detail::SSharedStringHeapEntry::SData *)"overlay");
  boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v21);
  v20 = v26;
  if ( v26 )
    ++*(_DWORD *)v26;
  BufferedRenderer::createBlendModeMaterial(
    (int)this + 496,
    (int *)&v20,
    15,
    (glitch::core::detail::SSharedStringHeapEntry::SData *)"default");
  boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v20);
  v19 = v26;
  if ( v26 )
    ++*(_DWORD *)v26;
  BufferedRenderer::createBlendModeMaterial(
    (int)this + 496,
    (int *)&v19,
    16,
    (glitch::core::detail::SSharedStringHeapEntry::SData *)"default");
  boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v19);
  boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v26);
  glitch::collada::CColladaDatabase::~CColladaDatabase(v18);
}


// ===== 7d6658 gameswf::create_render_handler_irrlicht(void *) =====
render_handler_glitch *__fastcall gameswf::create_render_handler_irrlicht(gameswf *this, void *a2)
{
  render_handler_glitch *v3; // r4

  v3 = (render_handler_glitch *)operator new(0x494u, 0);
  render_handler_glitch::render_handler_glitch(v3, this);
  return v3;
}


// ===== 7d6680 render_handler_glitch::get_matrix(gameswf::matrix const&) =====
_DWORD *__fastcall render_handler_glitch::get_matrix(_DWORD *a1, int a2, int *a3)
{
  int v5; // r11
  int v6; // r12
  int v7; // r3
  int v8; // r10
  int v9; // r9
  int v10; // lr
  int v11; // r1
  int v12; // r2
  int v13; // r3
  int v14; // r0
  int v15; // r1
  int v16; // r2
  int v17; // r3
  int v18; // r1
  int v19; // r2
  int v20; // r3
  int v21; // r1
  int v22; // r2
  int v23; // r3
  int v25; // [sp+0h] [bp-44h] BYREF
  int v26; // [sp+4h] [bp-40h]
  int v27; // [sp+8h] [bp-3Ch]
  int v28; // [sp+Ch] [bp-38h]
  int v29; // [sp+10h] [bp-34h]
  int v30; // [sp+14h] [bp-30h]
  int v31; // [sp+18h] [bp-2Ch]
  int v32; // [sp+1Ch] [bp-28h]
  int v33; // [sp+20h] [bp-24h]
  int v34; // [sp+24h] [bp-20h]
  int v35; // [sp+28h] [bp-1Ch]
  int v36; // [sp+2Ch] [bp-18h]
  int v37; // [sp+30h] [bp-14h]
  int v38; // [sp+34h] [bp-10h]
  int v39; // [sp+38h] [bp-Ch]
  int v40; // [sp+3Ch] [bp-8h]

  LC_API_MEMSET_0(&v25, 0, 0x40u);
  v5 = a3[5];
  v6 = *a3;
  v7 = a3[3];
  v8 = a3[1];
  v9 = a3[4];
  v10 = a3[2];
  *((_BYTE *)a1 + 64) = 0;
  v25 = v6;
  v26 = v7;
  v29 = v8;
  v30 = v9;
  v37 = v10;
  v38 = v5;
  v35 = 1065353216;
  v40 = 1065353216;
  LC_API_MEMSET_0(a1, 0, 0x40u);
  v11 = v26;
  v12 = v27;
  v13 = v28;
  *a1 = v25;
  a1[1] = v11;
  a1[2] = v12;
  a1[3] = v13;
  v14 = v29;
  v15 = v30;
  v16 = v31;
  v17 = v32;
  a1[15] = 1065353216;
  *((_BYTE *)a1 + 64) = 0;
  a1[10] = 1065353216;
  a1[4] = v14;
  a1[5] = v15;
  a1[6] = v16;
  a1[7] = v17;
  v18 = v34;
  v19 = v35;
  v20 = v36;
  a1[8] = v33;
  a1[9] = v18;
  a1[10] = v19;
  a1[11] = v20;
  v21 = v38;
  v22 = v39;
  v23 = v40;
  a1[12] = v37;
  a1[13] = v21;
  a1[14] = v22;
  a1[15] = v23;
  *((_BYTE *)a1 + 64) = 0;
  return a1;
}


// ===== 7d673c BufferedRenderer::getWireMaterial(void) =====
char *__fastcall BufferedRenderer::getWireMaterial(BufferedRenderer *this)
{
  int v2; // r6
  float v3; // r0
  int v5; // r3
  int v6; // r2
  int v7; // r3
  int v8; // r2
  int v9; // r3
  unsigned int v10; // r2
  int v11; // r3
  char *result; // r0
  int v13; // r3
  int v14; // r2

  v2 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 64) + 4) + 24)
                 + 12 * glitch::video::CMaterial::getTechnique(*((glitch::video::CMaterial **)this + 64))
                 + 8);
  v3 = *(float *)(v2 + 12);
  *(_DWORD *)(v2 + 12) = 1065353216;
  if ( v3 != 1.0 )
    *(_BYTE *)(v2 + 48) = 1;
  glitch::video::setColorMask((glitch::video::CMaterial **)this + 64, 1, 1, 1);
  v5 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 64) + 4) + 24)
                 + 12 * glitch::video::CMaterial::getTechnique(*((glitch::video::CMaterial **)this + 64))
                 + 8);
  v6 = *(_DWORD *)(v5 + 4);
  *(_DWORD *)(v5 + 4) = v6 & 0xFFFEFFFF;
  if ( (v6 & 0x10000) != 0 )
    *(_BYTE *)(v5 + 48) = 1;
  v7 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 64) + 4) + 24)
                 + 12 * glitch::video::CMaterial::getTechnique(*((glitch::video::CMaterial **)this + 64))
                 + 8);
  v8 = *(_DWORD *)(v7 + 4);
  *(_DWORD *)(v7 + 4) = v8 & 0xFFF7FFFF;
  if ( (v8 & 0x80000) != 0 )
    *(_BYTE *)(v7 + 48) = 1;
  v9 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 64) + 4) + 24)
                 + 12 * glitch::video::CMaterial::getTechnique(*((glitch::video::CMaterial **)this + 64))
                 + 8);
  v10 = *(_DWORD *)(v9 + 4);
  *(_DWORD *)(v9 + 4) = v10 & 0xFFFFCFFF | 0x1000;
  if ( ((v10 >> 12) & 3) != 1 )
    *(_BYTE *)(v9 + 48) = 1;
  v11 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 64) + 4) + 24)
      + 12 * glitch::video::CMaterial::getTechnique(*((glitch::video::CMaterial **)this + 64));
  result = (char *)this + 252;
  v13 = *(_DWORD *)(v11 + 8);
  v14 = *(_DWORD *)(v13 + 4);
  *(_DWORD *)(v13 + 4) = v14 & 0xFFFF3FFF | 0x4000;
  if ( (unsigned __int16)v14 >> 14 != 1 )
    *(_BYTE *)(v13 + 48) = 1;
  return result;
}


// ===== 7d6894 BufferedRenderer::flush(void) =====
int __fastcall BufferedRenderer::flush(int this, gameswf::player_context *a2)
{
  int v2; // r4
  int v3; // r3
  int v4; // r6
  int v5; // r5
  int v6; // r3
  char *WireMaterial; // r5
  int v8; // r1
  float *v9; // r3
  int v10; // r0
  glitch::video::CVertexStreams *v11; // r5
  int v13; // r2
  _DWORD v14[4]; // [sp+4h] [bp-24h] BYREF
  _DWORD v15[4]; // [sp+14h] [bp-14h] BYREF
  glitch::video::CVertexStreams *v16; // [sp+24h] [bp-4h]

  v2 = this;
  if ( *(_DWORD *)(*(_DWORD *)(this + 16) + 8) )
  {
    gameswf::texture_cache::unlock_all(*(_DWORD *)(this + 56), a2);
    v3 = *(_DWORD *)(v2 + 16);
    v4 = *(_DWORD *)(v3 + 8);
    *(_DWORD *)(v3 + 8) = v4 - *(_DWORD *)(v2 + 8);
    glitch::video::CVertexStreams::addOffset(*(_DWORD *)(v2 + 16), *(_DWORD *)(v2 + 8));
    if ( *(_BYTE *)(v2 + 4) )
    {
      WireMaterial = BufferedRenderer::getWireMaterial((BufferedRenderer *)v2);
    }
    else
    {
      v5 = 12 * *(_DWORD *)(v2 + 268);
      v6 = *(_DWORD *)(v2 + v5 + 64);
      if ( v6 )
        WireMaterial = (char *)(v2 + v5);
      else
        WireMaterial = (char *)(v2 + 60);
      if ( v6 )
        WireMaterial += 60;
    }
    glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
      *((_DWORD **)WireMaterial + 1),
      *((unsigned __int16 *)WireMaterial + 4),
      0,
      (int *)(v2 + 264));
    if ( *((unsigned __int16 *)WireMaterial + 5) != 0xFFFF )
    {
      v8 = *(_DWORD *)(v2 + 264);
      if ( v8 )
      {
        v15[2] = 1065353216;
        v15[0] = 1065353216;
        v15[1] = 1065353216;
        v15[3] = 0;
        memset(v14, 0, sizeof(v14));
        if ( ((*(_DWORD *)(v8 + 56) >> 4) & 0x3F) == 2 )
          v9 = (float *)v15;
        else
          v9 = (float *)v14;
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameterCvt<glitch::video::SColorf>(
          *((_DWORD **)WireMaterial + 1),
          *((unsigned __int16 *)WireMaterial + 5),
          0,
          v9);
      }
    }
    glitch::video::IVideoDriver::setMaterial(*(_DWORD *)(v2 + 52), (glitch::video::CMaterial **)WireMaterial + 1);
    v10 = *(_DWORD *)(v2 + 52);
    v16 = *(glitch::video::CVertexStreams **)(v2 + 16);
    if ( v16 )
      ++*(_DWORD *)v16;
    glitch::video::IVideoDriver::draw(v10);
    v11 = v16;
    if ( v16 )
    {
      if ( (*(_DWORD *)v16)-- == 1 )
      {
        glitch::video::CVertexStreams::~CVertexStreams(v11);
        LC_API_FREE_0(v11);
      }
    }
    this = glitch::video::CVertexStreams::addOffset(*(_DWORD *)(v2 + 16), -*(_DWORD *)(v2 + 8));
    v13 = *(_DWORD *)(v2 + 16);
    if ( *(_DWORD *)v2 == 1 )
      *(_DWORD *)(v2 + 8) = v4;
    else
      v4 = 0;
    *(_DWORD *)(v13 + 8) = v4;
    *(_DWORD *)(v2 + 36) = 0;
    *(_DWORD *)(v2 + 28) = 0;
    *(_DWORD *)(v2 + 32) = 0;
  }
  return this;
}


// ===== 7d6a40 render_handler_glitch::begin_display_callback(void) =====
int __fastcall render_handler_glitch::begin_display_callback(render_handler_glitch *this, gameswf::player_context *a2)
{
  return BufferedRenderer::flush((int)this + 496, a2);
}


// ===== 7d6a48 BufferedRenderer::setTexture(boost::intrusive_ptr<glitch::video::ITexture> &) =====
glitch::IReferenceCounted *__fastcall BufferedRenderer::setTexture(int a1, gameswf::player_context *a2)
{
  int v2; // r3
  glitch::IReferenceCounted *result; // r0

  v2 = *(_DWORD *)(a1 + 264);
  if ( v2 != *(_DWORD *)a2 )
  {
    BufferedRenderer::flush(a1, a2);
    v2 = *(_DWORD *)a2;
  }
  if ( v2 )
    ++*(_DWORD *)(v2 + 4);
  result = *(glitch::IReferenceCounted **)(a1 + 264);
  *(_DWORD *)(a1 + 264) = v2;
  if ( result )
    return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
  return result;
}


// ===== 7d6a98 BufferedRenderer::clearTextures(void) =====
glitch::IReferenceCounted *__fastcall BufferedRenderer::clearTextures(BufferedRenderer *this)
{
  int v1; // r5
  BufferedRenderer *v2; // r4
  _DWORD *v3; // r0
  glitch::IReferenceCounted *result; // r0
  glitch::IReferenceCounted *v5; // [sp+4h] [bp-4h] BYREF

  v1 = 0;
  v5 = nullptr;
  v2 = this;
  BufferedRenderer::setTexture((int)this, (gameswf::player_context *)&v5);
  do
  {
    v3 = *((_DWORD **)v2 + 16);
    ++v1;
    if ( v3 )
      glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
        v3,
        *((unsigned __int16 *)v2 + 34),
        0,
        (int *)&v5);
    v2 = (BufferedRenderer *)((char *)v2 + 12);
  }
  while ( v1 != 17 );
  result = v5;
  if ( v5 )
    return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v5);
  return result;
}


// ===== 7d6afc render_handler_glitch::reset(void) =====
glitch::video::CMaterialRenderer **__fastcall render_handler_glitch::reset(render_handler_glitch *this)
{
  int v2; // r0
  glitch::video::CMaterialRenderer *v4; // [sp+4h] [bp-Ch] BYREF
  glitch::video::CMaterial *v5; // [sp+8h] [bp-8h] BYREF
  __int16 v6; // [sp+Ch] [bp-4h]
  __int16 v7; // [sp+Eh] [bp-2h]

  v2 = *((_DWORD *)this + 4);
  v5 = nullptr;
  v7 = -1;
  v4 = nullptr;
  v6 = -1;
  glitch::video::IVideoDriver::setMaterial(v2, &v5);
  BufferedRenderer::clearTextures((render_handler_glitch *)((char *)this + 496));
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v5);
  return boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v4);
}


// ===== 7d6b54 render_handler_glitch::fill_style::apply(glitch::video::IVideoDriver *,BufferedRenderer &,Vertex *,int) =====
float __fastcall render_handler_glitch::fill_style::apply(
        render_handler_glitch::fill_style *this,
        glitch::video::IVideoDriver *a2,
        BufferedRenderer *a3,
        Vertex *a4,
        int a5)
{
  int v8; // r6
  unsigned __int8 v9; // r2
  unsigned __int8 v10; // r12
  unsigned __int8 v11; // r1
  float result; // r0
  int v13; // r3
  int v14; // r1
  int v15; // r2
  int v16; // r0
  int v17; // r1
  float v18; // r7
  float v19; // r6
  float v20; // r10
  float v21; // r8
  float *p_x; // r6
  int v23; // r7
  float v24; // r9
  float v25; // r8
  float v26; // r4
  float v27; // [sp+4h] [bp-18h]
  float v28; // [sp+8h] [bp-14h]
  float v29; // [sp+Ch] [bp-10h]
  unsigned __int8 *v30; // [sp+10h] [bp-Ch]
  Vertex *v31; // [sp+14h] [bp-8h]

  v8 = *((_DWORD *)this + 2);
  if ( *(_DWORD *)this == 1 )
  {
    (*(void (__fastcall **)(_DWORD, glitch::video::IVideoDriver *))(*(_DWORD *)v8 + 8))(*((_DWORD *)this + 2), a2);
    result = COERCE_FLOAT(BufferedRenderer::setTexture((int)a3, (gameswf::player_context *)(v8 + 16)));
    if ( a5 <= 0 )
      return result;
    v14 = 0;
    v15 = 0;
    do
    {
      ++v15;
      *(_DWORD *)&a4[v14].x = 0;
      *(_DWORD *)&a4[v14].flags = 0;
      v14 += 4;
    }
    while ( v15 != a5 );
    v9 = *((_BYTE *)this + 6);
    v10 = *((_BYTE *)this + 7);
    LODWORD(result) = *((unsigned __int8 *)this + 4);
    v11 = *((_BYTE *)this + 5);
    goto LABEL_4;
  }
  if ( (unsigned int)(*(_DWORD *)this - 2) > 1 )
  {
    v9 = *((_BYTE *)this + 6);
    v10 = *((_BYTE *)this + 7);
    v11 = *((_BYTE *)this + 5);
    LODWORD(result) = *((unsigned __int8 *)this + 4);
    if ( a5 <= 0 )
      return result;
    goto LABEL_4;
  }
  (*(void (__fastcall **)(_DWORD, glitch::video::IVideoDriver *))(*(_DWORD *)v8 + 8))(*((_DWORD *)this + 2), a2);
  BufferedRenderer::setTexture((int)a3, (gameswf::player_context *)(v8 + 16));
  v16 = *(_DWORD *)(v8 + 16);
  if ( v16 )
  {
    if ( *(_DWORD *)this == 2 )
      v17 = 0;
    else
      v17 = 2;
    glitch::video::ITexture::setWrap(v16, v17);
  }
  v18 = 1.0 / (float)(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 2) + 36))(*((_DWORD *)this + 2));
  v19 = 1.0 / (float)(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 2) + 40))(*((_DWORD *)this + 2));
  v20 = v18 * *((float *)this + 3);
  v21 = v18 * *((float *)this + 4);
  v29 = v18 * *((float *)this + 5);
  v28 = v19 * *((float *)this + 6);
  v27 = v19 * *((float *)this + 7);
  result = v19 * *((float *)this + 8);
  if ( a5 > 0 )
  {
    p_x = (float *)&a4->x;
    v31 = a4;
    v23 = 0;
    v30 = (unsigned __int8 *)this;
    v24 = v21;
    do
    {
      v25 = p_x[3];
      v26 = p_x[4];
      *p_x = v29 + (float)((float)(v20 * v25) + (float)(v24 * v26));
      ++v23;
      p_x[1] = result + (float)((float)(v28 * v25) + (float)(v27 * v26));
      p_x += 6;
    }
    while ( v23 != a5 );
    a4 = v31;
    v9 = v30[6];
    v10 = v30[7];
    LODWORD(result) = v30[4];
    v11 = v30[5];
LABEL_4:
    v13 = 0;
    do
    {
      ++v13;
      HIBYTE(a4[1].flags) = v10;
      LOBYTE(a4[1].flags) = v9;
      HIBYTE(a4[1].y) = v11;
      LOBYTE(a4[1].y) = LOBYTE(result);
      a4 += 4;
    }
    while ( a5 > v13 );
  }
  return result;
}


// ===== 7d6ddc render_handler_glitch::flush(void) =====
int __fastcall render_handler_glitch::flush(render_handler_glitch *this, gameswf::player_context *a2)
{
  return BufferedRenderer::flush((int)this + 496, a2);
}


// ===== 7d6de4 render_handler_glitch::end_display(void) =====
int __fastcall render_handler_glitch::end_display(render_handler_glitch *this, gameswf::player_context *a2)
{
  int v3; // r0

  BufferedRenderer::flush((int)this + 496, a2);
  (*(void (__fastcall **)(_DWORD, int, char *))(**((_DWORD **)this + 4) + 108))(
    *((_DWORD *)this + 4),
    2,
    (char *)this + 56);
  (*(void (__fastcall **)(_DWORD, _DWORD, char *))(**((_DWORD **)this + 4) + 108))(
    *((_DWORD *)this + 4),
    0,
    (char *)this + 124);
  (*(void (__fastcall **)(_DWORD, int, char *))(**((_DWORD **)this + 4) + 108))(
    *((_DWORD *)this + 4),
    1,
    (char *)this + 192);
  v3 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 4) + 204) - 4);
  (*(void (__fastcall **)(int, char *))(*(_DWORD *)v3 + 12))(v3, (char *)this + 260);
  (*(void (__fastcall **)(_DWORD, int, _DWORD))(**((_DWORD **)this + 4) + 160))(
    *((_DWORD *)this + 4),
    256,
    *((unsigned __int8 *)this + 769));
  return (*(int (__fastcall **)(_DWORD, char *))(**((_DWORD **)this + 4) + 484))(
           *((_DWORD *)this + 4),
           (char *)this + 20);
}


// ===== 7d6ea0 BufferedRenderer::queueBuffer(boost::intrusive_ptr<glitch::video::CVertexStreams> const&,glitch::video::E_PRIMITIVE_TYPE) =====
void *__fastcall BufferedRenderer::queueBuffer(BufferedRenderer *this, int *a2, int a3)
{
  int v5; // r5
  __int16 v6; // r6
  gameswf::player_context *v7; // r1
  int v8; // r6
  int v9; // r3
  _DWORD *v10; // r8
  int v11; // r2
  int v12; // r1
  int v13; // r3
  int v14; // r12
  void *result; // r0
  int v16; // r3
  int v17; // r5
  int v18; // r3
  int v19; // r2
  int v20; // r1
  _DWORD *v21; // r8
  _DWORD *v22; // r10
  int v23; // r3
  int v24; // r2
  int v25; // r1
  int v26; // r0
  _DWORD *v27; // r3

  v5 = *(_DWORD *)(*((_DWORD *)this + 4) + 8);
  v6 = a3;
  v7 = (gameswf::player_context *)(v5 + *(_DWORD *)(*a2 + 8) + 2);
  if ( (unsigned int)v7 >= *((_DWORD *)this + 3) || a3 != *((unsigned __int16 *)this + 21) )
  {
    BufferedRenderer::flush((int)this, v7);
    *((_WORD *)this + 21) = v6;
    v5 = *(_DWORD *)(*((_DWORD *)this + 4) + 8);
    v7 = (gameswf::player_context *)(v5 + *(_DWORD *)(*a2 + 8) + 2);
  }
  v8 = *((_DWORD *)this + 7);
  BufferedRenderer::ensureBufferCapacity(this, (int)v7);
  v9 = *a2;
  v10 = *(_DWORD **)(*(_DWORD *)(*a2 + 20) + 8);
  if ( v5 > 0 && *((_WORD *)this + 21) == 4 )
  {
    v25 = *((_DWORD *)this + 11);
    v26 = 2 * v8;
    *(_DWORD *)(v25 + 24 * v5) = *v10;
    v27 = (_DWORD *)(v25 + 24 * v5);
    ++v8;
    v27[1] = v10[1];
    v27[2] = v10[2];
    v27[3] = v10[3];
    v27[4] = v10[4];
    v27[5] = v10[5];
    *(_WORD *)(*((_DWORD *)this + 12) + v26) = v5 - *((_WORD *)this + 4);
    v9 = *a2;
    ++v5;
  }
  v11 = *(_DWORD *)(v9 + 8);
  if ( v11 > 0 )
  {
    v12 = 2 * v8;
    v13 = v5;
    do
    {
      v14 = v13 - *((_DWORD *)this + 2);
      ++v13;
      *(_WORD *)(*((_DWORD *)this + 12) + v12) = v14;
      v12 += 2;
    }
    while ( v13 != v5 + v11 );
    v8 += v11;
    v11 = *(_DWORD *)(*a2 + 8);
  }
  result = memcpy((void *)(*((_DWORD *)this + 11) + 24 * v5), v10, 24 * v11);
  v16 = *(_DWORD *)(*a2 + 8);
  v17 = v5 + v16;
  if ( *((_WORD *)this + 21) == 4 )
  {
    v18 = 6 * (v16 - 1);
    v19 = *((_DWORD *)this + 11);
    v20 = v10[v18];
    v21 = &v10[v18];
    *(_DWORD *)(v19 + 24 * v17) = v20;
    v22 = (_DWORD *)(v19 + 24 * v17);
    v22[1] = v21[1];
    ++v8;
    v22[2] = v21[2];
    v22[3] = v21[3];
    v22[4] = v21[4];
    v22[5] = v21[5];
    *(_WORD *)(*((_DWORD *)this + 12) + 2 * v17) = v17 - *((_WORD *)this + 4);
    ++v17;
  }
  v23 = *((_DWORD *)this + 4);
  v24 = v17 - *((_DWORD *)this + 2);
  *((_DWORD *)this + 7) = v8;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = v24;
  *(_DWORD *)(v23 + 8) = v17;
  return result;
}


// ===== 7d7094 BufferedRenderer::queueIndexedTriangles(boost::intrusive_ptr<glitch::video::CVertexStreams> const&,ushort const*,int) =====
void *__fastcall BufferedRenderer::queueIndexedTriangles(BufferedRenderer *this, int a2, int a3, int a4)
{
  int v6; // r5
  unsigned int v7; // r0
  gameswf::player_context *v9; // r1
  gameswf::player_context *v11; // r8
  gameswf::player_context *v12; // r9
  __int16 v13; // r12
  int v14; // r10
  int v15; // r8
  int v16; // r3
  __int16 v17; // r0
  int v18; // r2
  void *result; // r0
  int v20; // r5
  int v21; // r3

  v6 = *(_DWORD *)(*((_DWORD *)this + 4) + 8);
  v7 = *((_DWORD *)this + 3);
  v9 = (gameswf::player_context *)(v6 + *(_DWORD *)(*(_DWORD *)a2 + 8));
  if ( (unsigned int)v9 >= v7
    || (v11 = *((gameswf::player_context **)this + 7),
        v12 = (gameswf::player_context *)((char *)v11 + a4),
        (int)v7 < (int)v11 + a4)
    || *((_WORD *)this + 21) != 6 )
  {
    BufferedRenderer::flush((int)this, v9);
    *((_WORD *)this + 21) = 6;
    v11 = *((gameswf::player_context **)this + 7);
    v6 = *(_DWORD *)(*((_DWORD *)this + 4) + 8);
    v12 = (gameswf::player_context *)((char *)v11 + a4);
    v9 = (gameswf::player_context *)(v6 + *(_DWORD *)(*(_DWORD *)a2 + 8));
  }
  if ( (int)v9 < (int)v12 )
    v9 = v12;
  BufferedRenderer::ensureBufferCapacity(this, (int)v9);
  if ( a4 > 0 )
  {
    v13 = v6 - *((_DWORD *)this + 2);
    v14 = 2 * a4;
    v15 = 2 * (_DWORD)v11;
    v16 = 0;
    do
    {
      v17 = *(_WORD *)(a3 + v16);
      v18 = v15 + v16;
      v16 += 2;
      *(_WORD *)(*((_DWORD *)this + 12) + v18) = v13 + v17;
    }
    while ( v16 != v14 );
    v11 = v12;
  }
  result = memcpy(
             (void *)(*((_DWORD *)this + 11) + 24 * v6),
             *(const void **)(*(_DWORD *)(*(_DWORD *)a2 + 20) + 8),
             24 * *(_DWORD *)(*(_DWORD *)a2 + 8));
  v20 = v6 + *(_DWORD *)(*(_DWORD *)a2 + 8);
  *(_DWORD *)(*((_DWORD *)this + 4) + 8) = v20;
  v21 = *((_DWORD *)this + 2);
  *((_DWORD *)this + 7) = v11;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = v20 - v21;
  return result;
}


// ===== 7d71bc render_handler_glitch::render_mask_intersection(void) =====
int __fastcall render_handler_glitch::render_mask_intersection(render_handler_glitch *this)
{
  BufferedRenderer *v2; // r11
  _DWORD *v3; // r8
  int v4; // r7
  gameswf::player_context *v5; // r1
  int v6; // r4
  int v7; // r3
  int v8; // r2
  _BOOL4 v9; // r12
  int v10; // r9

  v2 = (render_handler_glitch *)((char *)this + 496);
  BufferedRenderer::setTexture((int)this + 496, (render_handler_glitch *)((char *)this + 908));
  v3 = (_DWORD *)(*((_DWORD *)this + 211) + 16 * (*((_DWORD *)this + 209) - 1));
  v4 = v3[1];
  render_handler_glitch::ensureBufferCapacity(this, 256);
  if ( v4 > 0 )
  {
    v6 = 0;
    v7 = 0;
    do
    {
      while ( 1 )
      {
        v8 = *((_DWORD *)this + 221) + 24 * v7++;
        *(_BYTE *)(v8 + 11) = -1;
        *(_BYTE *)(v8 + 10) = -1;
        *(_BYTE *)(v8 + 9) = -1;
        *(_BYTE *)(v8 + 8) = -1;
        v9 = v7 > 255;
        v10 = *(_DWORD *)(*v3 + 8 * v6 + 4);
        v5 = *(gameswf::player_context **)(*v3 + 8 * v6);
        if ( v7 == v4 )
          v9 = 1;
        ++v6;
        *(_DWORD *)(v8 + 20) = *((_DWORD *)this + 210);
        *(_DWORD *)(v8 + 12) = v5;
        *(_DWORD *)(v8 + 16) = v10;
        if ( v9 )
          break;
        if ( v6 == v4 )
          return BufferedRenderer::flush((int)v2, v5);
      }
      *(_DWORD *)(*((_DWORD *)this + 222) + 8) = v7;
      BufferedRenderer::queueBuffer(v2, (int *)this + 222, 6);
      v7 = 0;
    }
    while ( v6 != v4 );
  }
  return BufferedRenderer::flush((int)v2, v5);
}


// ===== 7d72b4 BufferedRenderer::reset(void) =====
int __fastcall BufferedRenderer::reset(BufferedRenderer *this)
{
  int v2; // r3
  int v3; // r2
  int v4; // r3
  int v5; // r2
  int v6; // r3
  int v7; // r2
  int result; // r0
  int v9; // r3
  int v10; // r2

  *(_DWORD *)(*((_DWORD *)this + 4) + 8) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  glitch::video::setColorMask((glitch::video::CMaterial **)this + 16, 1, 1, 1);
  v2 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 16) + 4) + 24)
                 + 12 * glitch::video::CMaterial::getTechnique(*((glitch::video::CMaterial **)this + 16))
                 + 8);
  v3 = *(_DWORD *)(v2 + 4);
  *(_DWORD *)(v2 + 4) = v3 | 0x10000;
  if ( (v3 & 0x10000) == 0 )
    *(_BYTE *)(v2 + 48) = 1;
  v4 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 16) + 4) + 24)
                 + 12 * glitch::video::CMaterial::getTechnique(*((glitch::video::CMaterial **)this + 16))
                 + 8);
  v5 = *(_DWORD *)(v4 + 4);
  *(_DWORD *)(v4 + 4) = v5 & 0xFFF7FFFF;
  if ( (v5 & 0x80000) != 0 )
    *(_BYTE *)(v4 + 48) = 1;
  v6 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 16) + 4) + 24)
                 + 12 * glitch::video::CMaterial::getTechnique(*((glitch::video::CMaterial **)this + 16))
                 + 8);
  v7 = *(_DWORD *)(v6 + 4);
  *(_DWORD *)(v6 + 4) = v7 & 0xFFFFCFFF;
  if ( (v7 & 0x3000) != 0 )
    *(_BYTE *)(v6 + 48) = 1;
  result = glitch::video::CMaterial::getTechnique(*((glitch::video::CMaterial **)this + 16));
  v9 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 16) + 4) + 24) + 12 * result + 8);
  v10 = *(_DWORD *)(v9 + 4);
  *(_DWORD *)(v9 + 4) = v10 & 0xFFFF3FFF;
  if ( (v10 & 0xC000) != 0 )
    *(_BYTE *)(v9 + 48) = 1;
  return result;
}


// ===== 7d73d0 render_handler_glitch::begin_display(gameswf::rgba,int,int,int,int,float,float,float,float) =====
int __fastcall render_handler_glitch::begin_display(
        int a1,
        int a2,
        int a3,
        int a4,
        int a5,
        int a6,
        float a7,
        float a8,
        float a9,
        float a10)
{
  float v13; // r8
  int v14; // r3
  float v15; // r10
  const void *v16; // r0
  const void *v17; // r0
  const void *v18; // r0
  _DWORD *v19; // r3
  _DWORD *v20; // r2
  int v21; // r3
  int v22; // r5
  int v23; // r3
  _DWORD *v24; // lr
  int v25; // r2
  int v26; // r3
  _DWORD *v27; // r12
  int v28; // r1
  int v29; // r2
  int v30; // r3
  float v31; // r1
  int v32; // r2
  int v33; // r3
  int v34; // r1
  int v35; // r2
  int v36; // r3
  float v37; // r1
  unsigned int v38; // r2
  int v39; // r3
  int v40; // r3
  _DWORD v42[17]; // [sp+14h] [bp-98h] BYREF
  float v43; // [sp+58h] [bp-54h]
  int v44; // [sp+5Ch] [bp-50h]
  int v45; // [sp+60h] [bp-4Ch]
  int v46; // [sp+64h] [bp-48h]
  int v47; // [sp+68h] [bp-44h]
  float v48; // [sp+6Ch] [bp-40h]
  int v49; // [sp+70h] [bp-3Ch]
  int v50; // [sp+74h] [bp-38h]
  int v51; // [sp+78h] [bp-34h]
  int v52; // [sp+7Ch] [bp-30h]
  int v53; // [sp+80h] [bp-2Ch]
  int v54; // [sp+84h] [bp-28h]
  float v55; // [sp+88h] [bp-24h]
  float v56; // [sp+8Ch] [bp-20h]
  unsigned int v57; // [sp+90h] [bp-1Ch]
  int v58; // [sp+94h] [bp-18h]
  _DWORD v59[5]; // [sp+98h] [bp-14h] BYREF

  *(float *)(a1 + 772) = fabs(a8 - a7);
  v13 = a8 - a7;
  v14 = *(_DWORD *)(a1 + 16);
  *(float *)(a1 + 776) = fabs(a10 - a9);
  v15 = a10 - a9;
  v16 = (const void *)(*(int (__fastcall **)(int, int))(*(_DWORD *)v14 + 112))(v14, 2);
  memcpy((void *)(a1 + 56), v16, 0x41u);
  v17 = (const void *)(*(int (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(a1 + 16) + 112))(*(_DWORD *)(a1 + 16), 0);
  memcpy((void *)(a1 + 124), v17, 0x41u);
  v18 = (const void *)(*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 16) + 112))(*(_DWORD *)(a1 + 16), 1);
  memcpy((void *)(a1 + 192), v18, 0x41u);
  v19 = *(_DWORD **)(a1 + 16);
  v20 = *(_DWORD **)(v19[51] - 4);
  *(_DWORD *)(a1 + 260) = v20[5];
  *(_DWORD *)(a1 + 264) = v20[6];
  *(_DWORD *)(a1 + 268) = v20[7];
  *(_DWORD *)(a1 + 272) = v20[8];
  *(_BYTE *)(a1 + 769) = BYTE1(v19[34]) & 1;
  (*(void (__fastcall **)(_DWORD *, int))(*v19 + 480))(v19, a1 + 20);
  v21 = *(_DWORD *)(a1 + 16);
  v59[3] = a6 + a4;
  v59[1] = a4;
  v59[2] = a5 + a3;
  v59[0] = a3;
  v22 = 0;
  (*(void (__fastcall **)(_DWORD, _DWORD *))(**(_DWORD **)(*(_DWORD *)(v21 + 204) - 4) + 12))(
    *(_DWORD *)(*(_DWORD *)(v21 + 204) - 4),
    v59);
  BufferedRenderer::reset((BufferedRenderer *)(a1 + 496));
  (*(void (__fastcall **)(_DWORD, int, _DWORD))(**(_DWORD **)(a1 + 16) + 160))(*(_DWORD *)(a1 + 16), 256, 0);
  (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 16) + 168))(*(_DWORD *)(a1 + 16), 2);
  v23 = *(_DWORD *)(a1 + 848);
  *(_DWORD *)(a1 + 836) = 0;
  *(_DWORD *)(a1 + 840) = 0;
  if ( v23 > 0 )
  {
    do
    {
      while ( 1 )
      {
        v24 = (_DWORD *)(*(_DWORD *)(a1 + 844) + 16 * v22);
        v25 = v24[1];
        if ( v25 < 0 )
          break;
        v24[1] = 0;
        if ( ++v22 >= *(_DWORD *)(a1 + 848) )
          goto LABEL_8;
      }
      v26 = 8 * v25;
      do
      {
        ++v25;
        v27 = (_DWORD *)(*v24 + v26);
        *v27 = 0;
        v27[1] = 0;
        v26 += 8;
      }
      while ( v25 );
      v24[1] = 0;
      ++v22;
    }
    while ( v22 < *(_DWORD *)(a1 + 848) );
  }
LABEL_8:
  v42[5] = -1082130432;
  v42[14] = 1056964608;
  memset(&v42[1], 0, 16);
  memset(&v42[6], 0, 16);
  v42[10] = 1056964608;
  memset(&v42[11], 0, 12);
  LOBYTE(v42[16]) = 0;
  v42[0] = 1065353216;
  v42[15] = 1065353216;
  memcpy((void *)(a1 + 276), v42, 0x41u);
  (*(void (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(a1 + 16) + 108))(*(_DWORD *)(a1 + 16), 2, a1 + 276);
  memcpy((void *)(a1 + 344), glitch::core::IdentityMatrix, 0x41u);
  v43 = 2.0 / v13;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 2.0 / v15;
  v53 = -1082130432;
  v54 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v55 = COERCE_FLOAT(COERCE_INT(a8 + a7) + 0x80000000) / v13;
  v56 = COERCE_FLOAT(COERCE_INT(a10 + a9) + 0x80000000) / v15;
  *(_BYTE *)(a1 + 408) = 0;
  v28 = v44;
  v29 = v45;
  v30 = v46;
  *(float *)(a1 + 344) = v43;
  *(_DWORD *)(a1 + 348) = v28;
  *(_DWORD *)(a1 + 352) = v29;
  *(_DWORD *)(a1 + 356) = v30;
  v31 = v48;
  v32 = v49;
  v33 = v50;
  *(_DWORD *)(a1 + 360) = v47;
  *(float *)(a1 + 364) = v31;
  *(_DWORD *)(a1 + 368) = v32;
  *(_DWORD *)(a1 + 372) = v33;
  v34 = v52;
  v35 = v53;
  v36 = v54;
  v58 = 1065353216;
  v57 = 0x80000000;
  *(_DWORD *)(a1 + 376) = v51;
  *(_DWORD *)(a1 + 380) = v34;
  *(_DWORD *)(a1 + 384) = v35;
  *(_DWORD *)(a1 + 388) = v36;
  v37 = v56;
  v38 = v57;
  v39 = v58;
  *(float *)(a1 + 392) = v55;
  *(float *)(a1 + 396) = v37;
  *(_DWORD *)(a1 + 400) = v38;
  *(_DWORD *)(a1 + 404) = v39;
  v40 = *(_DWORD *)(a1 + 16);
  *(_BYTE *)(a1 + 408) = 0;
  (*(void (__fastcall **)(int, _DWORD, int))(*(_DWORD *)v40 + 108))(v40, 0, a1 + 344);
  memcpy((void *)(a1 + 412), glitch::core::IdentityMatrix, 0x41u);
  return (*(int (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(a1 + 16) + 108))(*(_DWORD *)(a1 + 16), 1, a1 + 412);
}


// ===== 7d77b0 render_handler_glitch::draw_line_strip(void const*,int) =====
void __fastcall render_handler_glitch::draw_line_strip(
        render_handler_glitch *this,
        gameswf::player_context *a2,
        int a3)
{
  render_handler_glitch *v3; // r4
  float *v4; // r10
  float v5; // r5
  float v6; // r0
  int v7; // r5
  float v8; // r6
  int v9; // r3
  char *v10; // r5
  int v11; // r7
  float v12; // r1
  int v13; // r5
  float v14; // r7
  float v15; // r6
  float v16; // r4
  float v17; // r11
  float v18; // r8
  int v19; // r0
  glitch::video::CVertexStreams *v20; // r4
  int v22; // [sp+4h] [bp-80h]
  float *v23; // [sp+8h] [bp-7Ch]
  char v24; // [sp+Ch] [bp-78h]
  char v25; // [sp+10h] [bp-74h]
  char v26; // [sp+14h] [bp-70h]
  char v27; // [sp+18h] [bp-6Ch]
  float v29[17]; // [sp+20h] [bp-64h] BYREF
  glitch::IReferenceCounted *v30; // [sp+64h] [bp-20h]
  int v31; // [sp+68h] [bp-1Ch]
  int v32; // [sp+6Ch] [bp-18h]
  int v33; // [sp+70h] [bp-14h]
  int v34; // [sp+74h] [bp-10h]
  __int16 v35; // [sp+78h] [bp-Ch]
  __int16 v36; // [sp+7Ah] [bp-Ah]
  glitch::video::CVertexStreams *v37; // [sp+7Ch] [bp-8h]

  v3 = this;
  v4 = (float *)a2;
  BufferedRenderer::flush((int)this + 496, a2);
  v5 = sqrtf((float)(*((float *)v3 + 195) * *((float *)v3 + 195)) + (float)(*((float *)v3 + 196) * *((float *)v3 + 196)));
  if ( (float)((float)(*((float *)v3 + 199) * *((float *)v3 + 195))
             - (float)(*((float *)v3 + 198) * *((float *)v3 + 196))) < 0.0 )
    LODWORD(v5) += 0x80000000;
  v6 = (float)((float)((float)(COERCE_FLOAT(LODWORD(v5) & 0x7FFFFFFF)
                             + COERCE_FLOAT(
                                 COERCE_UNSIGNED_INT(
                                   sqrtf(
                                     (float)(*((float *)v3 + 199) * *((float *)v3 + 199))
                                   + (float)(*((float *)v3 + 198) * *((float *)v3 + 198))))
                               & 0x7FFFFFFF))
                     * *((float *)v3 + 292))
             * 0.5)
     / 20.0;
  v7 = 12 * *((_DWORD *)v3 + 191);
  v8 = v6;
  v9 = *(_DWORD *)((char *)v3 + v7 + 560);
  if ( v9 )
    v10 = (char *)v3 + v7;
  else
    v10 = (char *)v3 + 556;
  if ( v9 )
    v10 += 556;
  if ( v6 <= 1.0 )
    v8 = 1.0;
  v11 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)v10 + 1) + 4) + 24)
                  + 12 * glitch::video::CMaterial::getTechnique(*((glitch::video::CMaterial **)v10 + 1))
                  + 8);
  v12 = *(float *)(v11 + 12);
  *(float *)(v11 + 12) = v8;
  if ( v8 != v12 )
    *(_BYTE *)(v11 + 48) = 1;
  glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
    *((_DWORD **)v10 + 1),
    *((unsigned __int16 *)v10 + 4),
    0,
    (int *)v3 + 227);
  glitch::video::IVideoDriver::setMaterial(*((_DWORD *)v3 + 4), (glitch::video::CMaterial **)v10 + 1);
  v27 = *((_BYTE *)v3 + 1103);
  v26 = *((_BYTE *)v3 + 1100);
  v25 = *((_BYTE *)v3 + 1101);
  v24 = *((_BYTE *)v3 + 1102);
  render_handler_glitch::ensureBufferCapacity(v3, a3);
  render_handler_glitch::get_matrix(v29, (int)v3, (int *)v3 + 195);
  v13 = *((_DWORD *)v3 + 221);
  v22 = v13 + 24 * a3;
  if ( v13 != v22 )
  {
    v23 = (float *)v3;
    do
    {
      v14 = *v4;
      v15 = v4[1];
      v16 = v23[210];
      *(float *)(v13 + 12) = *v4;
      *(float *)(v13 + 16) = v15;
      *(float *)(v13 + 20) = v16;
      v17 = (float)((float)((float)(v14 * v29[1]) + (float)(v15 * v29[5])) + (float)(v16 * v29[9])) + v29[13];
      v18 = (float)((float)((float)(v14 * v29[2]) + (float)(v15 * v29[6])) + (float)(v16 * v29[10])) + v29[14];
      *(float *)(v13 + 12) = (float)((float)((float)(v14 * v29[0]) + (float)(v15 * v29[4])) + (float)(v16 * v29[8]))
                           + v29[12];
      *(float *)(v13 + 16) = v17;
      *(float *)(v13 + 20) = v18;
      v4 += 2;
      *(_BYTE *)(v13 + 11) = v27;
      *(_BYTE *)(v13 + 10) = v24;
      *(_BYTE *)(v13 + 9) = v25;
      *(_DWORD *)v13 = 0;
      *(_DWORD *)(v13 + 4) = 0;
      *(_BYTE *)(v13 + 8) = v26;
      v13 += 24;
    }
    while ( v22 != v13 );
    v3 = (render_handler_glitch *)v23;
  }
  *(_DWORD *)(*((_DWORD *)v3 + 222) + 8) = a3;
  v19 = *((_DWORD *)v3 + 4);
  v37 = *((glitch::video::CVertexStreams **)v3 + 222);
  if ( v37 )
    ++*(_DWORD *)v37;
  v33 = 0;
  v34 = a3;
  v30 = nullptr;
  v31 = 0;
  v32 = a3;
  v35 = 255;
  v36 = 1;
  glitch::video::IVideoDriver::draw(v19);
  if ( v30 )
    glitch::IReferenceCounted::drop(v30);
  v20 = v37;
  if ( v37 )
  {
    if ( (*(_DWORD *)v37)-- == 1 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v20);
      LC_API_FREE_0(v20);
    }
  }
}


// ===== 7d7b8c BufferedRenderer::~BufferedRenderer() =====
void __fastcall BufferedRenderer::~BufferedRenderer(BufferedRenderer *this)
{
  glitch::IReferenceCounted *v2; // r0
  glitch::video::CMaterialRenderer **v3; // r4
  glitch::IReferenceCounted *v4; // r0
  glitch::video::CVertexStreams *v5; // r4

  v2 = *((glitch::IReferenceCounted **)this + 66);
  if ( v2 )
    glitch::IReferenceCounted::drop(v2);
  v3 = (glitch::video::CMaterialRenderer **)((char *)this + 264);
  do
  {
    v3 -= 3;
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(v3 + 1);
    boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(v3);
  }
  while ( v3 != (glitch::video::CMaterialRenderer **)((char *)this + 60) );
  v4 = *((glitch::IReferenceCounted **)this + 5);
  if ( v4 )
    glitch::IReferenceCounted::drop(v4);
  v5 = *((glitch::video::CVertexStreams **)this + 4);
  if ( v5 )
  {
    if ( (*(_DWORD *)v5)-- == 1 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v5);
      LC_API_FREE_0(v5);
    }
  }
}


// ===== 7d7c18 gameswf::array<gameswf::array<glitch::core::vector2d<float>>>::push_back<gameswf::array<glitch::core::vector2d<float>>>(gameswf::array<glitch::core::vector2d<float>> const&) =====
void __fastcall gameswf::array<gameswf::array<glitch::core::vector2d<float>>>::push_back<gameswf::array<glitch::core::vector2d<float>>>(
        _DWORD *a1,
        _DWORD *a2)
{
  int v2; // r3
  int v4; // r10
  int v6; // r8
  int v7; // r4
  int v8; // r5
  int v9; // r3
  int v10; // r3
  int v11; // r3
  _DWORD *v12; // r0
  _DWORD *v13; // r1

  v2 = a1[1];
  v4 = v2 + 1;
  if ( v2 + 1 > a1[2] )
  {
    gameswf::array<gameswf::array<glitch::core::vector2d<float>>>::reserve((int)a1, v4 + (v4 >> 1));
    v2 = a1[1];
  }
  v6 = 0;
  v7 = *a1 + 16 * v2;
  *(_DWORD *)v7 = 0;
  *(_DWORD *)(v7 + 4) = 0;
  *(_DWORD *)(v7 + 8) = 0;
  *(_BYTE *)(v7 + 12) = 0;
  v8 = a2[1];
  if ( v8 > 0 )
  {
    gameswf::array<glitch::core::vector2d<float>>::reserve(v7, v8 + (v8 >> 1));
    do
    {
      v9 = *(_DWORD *)v7;
      *(_DWORD *)(*(_DWORD *)v7 + 8 * v6) = 0;
      v10 = v9 + 8 * v6++;
      *(_DWORD *)(v10 + 4) = 0;
    }
    while ( v6 != v8 );
    *(_DWORD *)(v7 + 4) = v6;
    v11 = 0;
    do
    {
      v12 = (_DWORD *)(*a2 + 8 * v11);
      v13 = (_DWORD *)(*(_DWORD *)v7 + 8 * v11);
      *v13 = *v12;
      ++v11;
      v13[1] = v12[1];
    }
    while ( v11 < *(_DWORD *)(v7 + 4) );
    a1[1] = v4;
  }
  else
  {
    *(_DWORD *)(v7 + 4) = v8;
    a1[1] = v4;
  }
}


// ===== 7d7cf4 render_handler_glitch::~render_handler_glitch() =====
void __fastcall render_handler_glitch::~render_handler_glitch(render_handler_glitch *this)
{
  glitch::video::CVertexStreams *v1; // r4
  int v3; // r3
  glitch::IReferenceCounted *v4; // r0
  glitch::video::CVertexStreams *v5; // r4
  bool v6; // zf
  int v7; // r2
  _DWORD *v8; // r0
  bool v9; // cc
  int v10; // r6
  int v11; // r5
  _DWORD *v12; // r7
  bool v13; // cc
  _DWORD *v14; // r0
  int v15; // r2
  int v16; // r3
  _DWORD *v17; // r12
  int v18; // r3
  _DWORD *v19; // lr
  int v20; // r3
  int v21; // r2

  v1 = *((glitch::video::CVertexStreams **)this + 222);
  *(_DWORD *)this = off_991708;
  *((_DWORD *)this + 222) = 0;
  *((_DWORD *)this + 221) = 0;
  if ( v1 )
  {
    v3 = *(_DWORD *)v1 - 1;
    *(_DWORD *)v1 = v3;
    if ( !v3 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v1);
      LC_API_FREE_0(v1);
    }
  }
  v4 = *((glitch::IReferenceCounted **)this + 4);
  if ( v4 )
  {
    glitch::IReferenceCounted::drop(v4);
    *((_DWORD *)this + 4) = 0;
  }
  bitmap_info_ogl::~bitmap_info_ogl((glitch::IReferenceCounted **)this + 223);
  v5 = *((glitch::video::CVertexStreams **)this + 222);
  if ( v5 && (v6 = *(_DWORD *)v5 == 1, --*(_DWORD *)v5, v6) )
  {
    glitch::video::CVertexStreams::~CVertexStreams(v5);
    LC_API_FREE_0(v5);
    gameswf::triangle_intersector::~triangle_intersector((GLUtesselator ***)this + 219);
    v7 = *((_DWORD *)this + 216);
    v8 = (_DWORD *)((char *)this + 860);
    v9 = v7 < 0;
    if ( v7 > 0 )
      goto LABEL_9;
  }
  else
  {
    gameswf::triangle_intersector::~triangle_intersector((GLUtesselator ***)this + 219);
    v7 = *((_DWORD *)this + 216);
    v8 = (_DWORD *)((char *)this + 860);
    v9 = v7 < 0;
    if ( v7 > 0 )
      goto LABEL_9;
  }
  if ( !v9 )
  {
LABEL_9:
    v10 = 0;
    *((_DWORD *)this + 216) = 0;
    gameswf::array<glitch::core::vector2d<float>>::reserve((int)v8, 0);
    v11 = *((_DWORD *)this + 212);
    v12 = (_DWORD *)((char *)this + 844);
    v13 = v11 < 0;
    if ( v11 > 0 )
      goto LABEL_12;
    goto LABEL_23;
  }
  v18 = 8 * v7;
  do
  {
    ++v7;
    v19 = (_DWORD *)(*v8 + v18);
    *v19 = 0;
    v19[1] = 0;
    v18 += 8;
  }
  while ( v7 );
  v10 = 0;
  *((_DWORD *)this + 216) = 0;
  gameswf::array<glitch::core::vector2d<float>>::reserve((int)v8, 0);
  v11 = *((_DWORD *)this + 212);
  v12 = (_DWORD *)((char *)this + 844);
  v13 = v11 < 0;
  if ( v11 <= 0 )
  {
LABEL_23:
    if ( v13 )
    {
      v20 = 16 * v11;
      do
      {
        ++v11;
        v21 = *v12 + v20;
        *(_DWORD *)v21 = 0;
        *(_BYTE *)(v21 + 12) = 0;
        *(_DWORD *)(v21 + 4) = 0;
        *(_DWORD *)(v21 + 8) = 0;
        v20 += 16;
      }
      while ( v11 );
    }
    goto LABEL_16;
  }
  do
  {
LABEL_12:
    while ( 1 )
    {
      v14 = (_DWORD *)(*v12 + 16 * v10);
      v15 = v14[1];
      if ( v15 < 0 )
        break;
      v14[1] = 0;
      ++v10;
      gameswf::array<glitch::core::vector2d<float>>::reserve((int)v14, 0);
      if ( v10 == v11 )
        goto LABEL_16;
    }
    v16 = 8 * v15;
    do
    {
      ++v15;
      v17 = (_DWORD *)(*v14 + v16);
      *v17 = 0;
      v17[1] = 0;
      v16 += 8;
    }
    while ( v15 );
    v14[1] = 0;
    ++v10;
    gameswf::array<glitch::core::vector2d<float>>::reserve((int)v14, 0);
  }
  while ( v10 != v11 );
LABEL_16:
  *((_DWORD *)this + 212) = 0;
  gameswf::array<gameswf::array<glitch::core::vector2d<float>>>::reserve((int)v12, 0);
  BufferedRenderer::~BufferedRenderer((render_handler_glitch *)((char *)this + 496));
}


// ===== 7d7f0c render_handler_glitch::~render_handler_glitch() =====
void __fastcall render_handler_glitch::~render_handler_glitch(render_handler_glitch *this)
{
  render_handler_glitch::~render_handler_glitch(this);
  LC_API_FREE_0(this);
}


// ===== 7d7f28 BufferedRenderer::applyMaskState(int) =====
int __fastcall BufferedRenderer::applyMaskState(int this, int a2)
{
  int v2; // r3
  int v3; // r2
  int v4; // r5
  int v5; // r3
  int v6; // r2
  int v7; // r3
  int v8; // r2
  int v9; // r1
  int v10; // r3
  int v11; // r2
  int v12; // r3
  int v13; // r1
  int v14; // r3
  int v15; // r2
  int v16; // r2
  int v17; // r3
  int v18; // r2
  int v19; // r3
  int v20; // r1
  int v21; // r3
  int v22; // r2
  int Technique; // r0
  int v24; // r3
  int v25; // r2

  v2 = 12 * *(_DWORD *)(this + 268);
  v3 = *(_DWORD *)(this + v2 + 64);
  if ( v3 )
    v4 = this + v2;
  else
    v4 = this + 60;
  if ( v3 )
    v4 += 60;
  switch ( a2 )
  {
    case 0:
      v5 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v4 + 4) + 4) + 24)
                     + 12 * glitch::video::CMaterial::getTechnique(*(glitch::video::CMaterial **)(v4 + 4))
                     + 8);
      v6 = *(_DWORD *)(v5 + 4);
      *(_DWORD *)(v5 + 4) = v6 & 0xFFF7FFFF;
      if ( (v6 & 0x80000) != 0 )
        *(_BYTE *)(v5 + 48) = 1;
      v7 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v4 + 4) + 4) + 24)
                     + 12 * glitch::video::CMaterial::getTechnique(*(glitch::video::CMaterial **)(v4 + 4))
                     + 8);
      v8 = *(_DWORD *)(v7 + 4);
      *(_DWORD *)(v7 + 4) = v8 & 0xFFEFFFFF;
      if ( (v8 & 0x100000) == 0 )
        goto LABEL_14;
LABEL_13:
      *(_BYTE *)(v7 + 48) = 1;
LABEL_14:
      v9 = 1;
      return glitch::video::setColorMask((glitch::video::CMaterial **)(v4 + 4), v9, v9, v9);
    case 1:
      v17 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v4 + 4) + 4) + 24)
                      + 12 * glitch::video::CMaterial::getTechnique(*(glitch::video::CMaterial **)(v4 + 4))
                      + 8);
      v18 = *(_DWORD *)(v17 + 4);
      *(_DWORD *)(v17 + 4) = v18 | 0x80000;
      if ( (v18 & 0x80000) == 0 )
        *(_BYTE *)(v17 + 48) = 1;
      v19 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v4 + 4) + 4) + 24)
                      + 12 * glitch::video::CMaterial::getTechnique(*(glitch::video::CMaterial **)(v4 + 4))
                      + 8);
      v20 = (*(_DWORD *)v19 >> 27) & 7;
      *(_DWORD *)v19 = *(_DWORD *)v19 & 0xC7FFFFFF | 0x18000000;
      if ( v20 != 3 )
        *(_BYTE *)(v19 + 48) = 1;
      v21 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v4 + 4) + 4) + 24)
                      + 12 * glitch::video::CMaterial::getTechnique(*(glitch::video::CMaterial **)(v4 + 4))
                      + 8);
      v22 = *(_DWORD *)(v21 + 4);
      *(_DWORD *)(v21 + 4) = v22 | 0x100000;
      if ( (v22 & 0x100000) == 0 )
        *(_BYTE *)(v21 + 48) = 1;
      Technique = glitch::video::CMaterial::getTechnique(*(glitch::video::CMaterial **)(v4 + 4));
      v9 = 0;
      v24 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v4 + 4) + 4) + 24) + 12 * Technique + 8);
      v25 = *(_DWORD *)(v24 + 4);
      *(_DWORD *)(v24 + 4) = v25 & 0xFFFEFFFF;
      if ( (v25 & 0x10000) != 0 )
        *(_BYTE *)(v24 + 48) = 1;
      return glitch::video::setColorMask((glitch::video::CMaterial **)(v4 + 4), v9, v9, v9);
    case 2:
      v10 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v4 + 4) + 4) + 24)
                      + 12 * glitch::video::CMaterial::getTechnique(*(glitch::video::CMaterial **)(v4 + 4))
                      + 8);
      v11 = *(_DWORD *)(v10 + 4);
      *(_DWORD *)(v10 + 4) = v11 | 0x80000;
      if ( (v11 & 0x80000) == 0 )
        *(_BYTE *)(v10 + 48) = 1;
      v12 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v4 + 4) + 4) + 24)
                      + 12 * glitch::video::CMaterial::getTechnique(*(glitch::video::CMaterial **)(v4 + 4))
                      + 8);
      v13 = (*(_DWORD *)v12 >> 27) & 7;
      *(_DWORD *)v12 = *(_DWORD *)v12 & 0xC7FFFFFF | 0x10000000;
      if ( v13 != 2 )
        *(_BYTE *)(v12 + 48) = 1;
      v14 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v4 + 4) + 4) + 24)
                      + 12 * glitch::video::CMaterial::getTechnique(*(glitch::video::CMaterial **)(v4 + 4))
                      + 8);
      v15 = *(_DWORD *)(v14 + 4);
      *(_DWORD *)(v14 + 4) = v15 & 0xFFEFFFFF;
      if ( (v15 & 0x100000) != 0 )
        *(_BYTE *)(v14 + 48) = 1;
      v7 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(v4 + 4) + 4) + 24)
                     + 12 * glitch::video::CMaterial::getTechnique(*(glitch::video::CMaterial **)(v4 + 4))
                     + 8);
      v16 = *(_DWORD *)(v7 + 4);
      *(_DWORD *)(v7 + 4) = v16 | 0x10000;
      if ( (v16 & 0x10000) != 0 )
        goto LABEL_14;
      goto LABEL_13;
  }
  return this;
}


// ===== 7d81e4 render_handler_glitch::set_blend_mode(gameswf::blend_mode::id) =====
int __fastcall render_handler_glitch::set_blend_mode(int result, gameswf::player_context *a2)
{
  gameswf::player_context *v2; // r3
  int v3; // r4
  int v5; // r6
  int v6; // r3

  v2 = *(gameswf::player_context **)(result + 764);
  v3 = result;
  if ( v2 != (gameswf::player_context *)&byte_9[6] )
  {
    v5 = result + 496;
    if ( *(int *)(result + 836) > 0 )
    {
      BufferedRenderer::flush(result + 496, a2);
      result = BufferedRenderer::applyMaskState(v5, 0);
      v2 = *(gameswf::player_context **)(v3 + 764);
    }
    if ( v2 != a2 )
      result = BufferedRenderer::flush(v5, a2);
    v6 = *(_DWORD *)(v3 + 836);
    *(_DWORD *)(v3 + 764) = a2;
    if ( v6 > 0 )
      return BufferedRenderer::applyMaskState(v5, 2);
  }
  return result;
}


// ===== 7d825c render_handler_glitch::begin_submit_mask(void) =====
int __fastcall render_handler_glitch::begin_submit_mask(render_handler_glitch *this, gameswf::player_context *a2)
{
  char *v2; // r5
  gameswf::player_context *v4; // r1
  int v5; // r6
  float v6; // r0
  int v7; // r3
  int v8; // r2
  int v10; // r3
  _DWORD *v11; // r12
  int v12; // [sp+0h] [bp-10h] BYREF
  int v13; // [sp+4h] [bp-Ch]
  int v14; // [sp+8h] [bp-8h]
  char v15; // [sp+Ch] [bp-4h]

  v2 = (char *)this + 496;
  BufferedRenderer::flush((int)this + 496, a2);
  if ( *((_DWORD *)this + 191) != 15 )
    BufferedRenderer::flush((int)v2, v4);
  v5 = *((_DWORD *)this + 209) + 1;
  *((_DWORD *)this + 191) = 15;
  v6 = *((float *)this + 210);
  *((_DWORD *)this + 209) = v5;
  v7 = *((_DWORD *)this + 212);
  *((float *)this + 210) = v6 + 0.001;
  if ( v5 > v7 )
  {
    v15 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    gameswf::array<gameswf::array<glitch::core::vector2d<float>>>::push_back<gameswf::array<glitch::core::vector2d<float>>>(
      (_DWORD *)this + 211,
      &v12);
    v8 = v13;
    if ( v13 < 0 )
    {
      v10 = 8 * v13;
      do
      {
        ++v8;
        v11 = (_DWORD *)(v12 + v10);
        *v11 = 0;
        v11[1] = 0;
        v10 += 8;
      }
      while ( v8 );
    }
    v13 = 0;
    gameswf::array<glitch::core::vector2d<float>>::reserve((int)&v12, 0);
  }
  return BufferedRenderer::applyMaskState((int)v2, 1);
}


// ===== 7d8340 render_handler_glitch::disable_mask(void) =====
int __fastcall render_handler_glitch::disable_mask(render_handler_glitch *this, gameswf::player_context *a2)
{
  char *v2; // r4
  int result; // r0
  int *v5; // r4
  int v6; // r2
  int v7; // r4
  int v8; // r3
  char *v9; // r4
  int v10; // r3
  int v11; // r2
  int v12; // r3
  int v13; // r1
  int v14; // r3
  int v15; // r2
  int v16; // r3
  int v17; // r2
  int v18; // r3
  int v19; // r2
  int v20; // r3
  int v21; // r1
  int v22; // r3
  int v23; // r2
  int v24; // r3
  int v25; // r1

  v2 = (char *)this + 496;
  BufferedRenderer::flush((int)this + 496, a2);
  --*((_DWORD *)this + 209);
  result = BufferedRenderer::applyMaskState((int)v2, 0);
  v5 = (int *)(*((_DWORD *)this + 211) + 16 * *((_DWORD *)this + 209));
  v6 = v5[1];
  if ( v6 < 0 )
  {
    result = 0;
    v24 = 8 * v6;
    do
    {
      v25 = *v5;
      ++v6;
      *(_DWORD *)(v25 + v24) = 0;
      *(_DWORD *)(v25 + v24 + 4) = 0;
      v24 += 8;
    }
    while ( v6 );
  }
  v5[1] = 0;
  if ( *((int *)this + 209) > 0 )
  {
    v7 = 12 * *((_DWORD *)this + 191);
    v8 = *(_DWORD *)((char *)this + v7 + 560);
    if ( v8 )
      v9 = (char *)this + v7;
    else
      v9 = (char *)this + 556;
    if ( v8 )
      v9 += 556;
    v10 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)v9 + 1) + 4) + 24)
                    + 12 * glitch::video::CMaterial::getTechnique(*((glitch::video::CMaterial **)v9 + 1))
                    + 8);
    v11 = *(_DWORD *)(v10 + 4);
    *(_DWORD *)(v10 + 4) = v11 | 0x80000;
    if ( (v11 & 0x80000) == 0 )
      *(_BYTE *)(v10 + 48) = 1;
    v12 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)v9 + 1) + 4) + 24)
                    + 12 * glitch::video::CMaterial::getTechnique(*((glitch::video::CMaterial **)v9 + 1))
                    + 8);
    v13 = (*(_DWORD *)v12 >> 27) & 7;
    *(_DWORD *)v12 = *(_DWORD *)v12 & 0xC7FFFFFF | 0x18000000;
    if ( v13 != 3 )
      *(_BYTE *)(v12 + 48) = 1;
    v14 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)v9 + 1) + 4) + 24)
                    + 12 * glitch::video::CMaterial::getTechnique(*((glitch::video::CMaterial **)v9 + 1))
                    + 8);
    v15 = *(_DWORD *)(v14 + 4);
    *(_DWORD *)(v14 + 4) = v15 | 0x100000;
    if ( (v15 & 0x100000) == 0 )
      *(_BYTE *)(v14 + 48) = 1;
    v16 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)v9 + 1) + 4) + 24)
                    + 12 * glitch::video::CMaterial::getTechnique(*((glitch::video::CMaterial **)v9 + 1))
                    + 8);
    v17 = *(_DWORD *)(v16 + 4);
    *(_DWORD *)(v16 + 4) = v17 & 0xFFFEFFFF;
    if ( (v17 & 0x10000) != 0 )
      *(_BYTE *)(v16 + 48) = 1;
    glitch::video::setColorMask((glitch::video::CMaterial **)v9 + 1, 0, 0, 0);
    render_handler_glitch::render_mask_intersection(this);
    v18 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)v9 + 1) + 4) + 24)
                    + 12 * glitch::video::CMaterial::getTechnique(*((glitch::video::CMaterial **)v9 + 1))
                    + 8);
    v19 = *(_DWORD *)(v18 + 4);
    *(_DWORD *)(v18 + 4) = v19 | 0x10000;
    if ( (v19 & 0x10000) == 0 )
      *(_BYTE *)(v18 + 48) = 1;
    v20 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)v9 + 1) + 4) + 24)
                    + 12 * glitch::video::CMaterial::getTechnique(*((glitch::video::CMaterial **)v9 + 1))
                    + 8);
    v21 = (*(_DWORD *)v20 >> 27) & 7;
    *(_DWORD *)v20 = *(_DWORD *)v20 & 0xC7FFFFFF | 0x10000000;
    if ( v21 != 2 )
      *(_BYTE *)(v20 + 48) = 1;
    v22 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)v9 + 1) + 4) + 24)
                    + 12 * glitch::video::CMaterial::getTechnique(*((glitch::video::CMaterial **)v9 + 1))
                    + 8);
    v23 = *(_DWORD *)(v22 + 4);
    *(_DWORD *)(v22 + 4) = v23 & 0xFFEFFFFF;
    if ( (v23 & 0x100000) != 0 )
      *(_BYTE *)(v22 + 48) = 1;
    return glitch::video::setColorMask((glitch::video::CMaterial **)v9 + 1, 1, 1, 1);
  }
  return result;
}


// ===== 7d85bc render_handler_glitch::end_submit_mask(void) =====
int __fastcall render_handler_glitch::end_submit_mask(render_handler_glitch *this, gameswf::player_context *a2)
{
  gameswf::player_context *v3; // r1

  if ( *((int *)this + 209) > 1 )
    render_handler_glitch::render_mask_intersection(this);
  BufferedRenderer::flush((int)this + 496, a2);
  if ( *((_DWORD *)this + 191) )
    BufferedRenderer::flush((int)this + 496, v3);
  *((_DWORD *)this + 191) = 0;
  return BufferedRenderer::applyMaskState((int)this + 496, 2);
}


// ===== 7d860c render_handler_glitch::process_mask_intersection(Vertex *,int,ushort const*,int,glitch::video::E_PRIMITIVE_TYPE) =====
int __fastcall render_handler_glitch::process_mask_intersection(int a1, _DWORD *a2, int a3, int a4, int a5, int a6)
{
  int v10; // r2
  _DWORD *v11; // r5
  int v12; // r1
  int v13; // r3
  int v14; // r7
  int v15; // r12
  _DWORD *v16; // r10
  _DWORD *v17; // r1
  int v18; // r4
  char *v19; // r2
  int v20; // r6
  int v21; // r8
  _DWORD *v22; // r1
  int v23; // r3
  int v24; // r2
  int *v25; // r4
  int v26; // r3
  int v27; // r3
  _DWORD *v28; // r5
  int v29; // r7
  int v30; // r2
  int v31; // r6
  int v32; // r3
  void *v33; // r5
  char *v34; // r8
  int v35; // r2
  int v36; // r3
  int v37; // r5
  int v38; // r3
  void *v39; // r7
  char *v40; // r8
  int v41; // r3
  int v42; // r10
  int v43; // r8
  int v44; // r2
  int v45; // r2
  int v46; // r2
  _DWORD *v47; // r9
  int v48; // r2
  int v49; // r2
  char *v50; // r7
  char *v51; // r9
  int v52; // r2
  int v53; // r3
  _DWORD *v54; // r11
  int v55; // r9
  int v56; // r6
  int v57; // r7
  int v58; // r3
  bool v59; // zf
  int v60; // r3
  _DWORD *v61; // r12
  int v62; // r8
  int v63; // r6
  _DWORD *v64; // r0
  int v65; // r2
  int v66; // r6
  int v67; // r8
  _DWORD *v68; // r0
  int v69; // r2
  int v70; // r8
  int v71; // r10
  int v72; // r6
  _DWORD *v73; // r1
  int v74; // r3
  _DWORD *v75; // r1
  int v76; // r2
  int v77; // r9
  int v78; // r10
  _DWORD *v79; // r1
  int v80; // r2
  int v81; // r10
  int v82; // r8
  _DWORD *v83; // r1
  int v84; // r11
  int v85; // r9
  int v86; // r10
  int v87; // r7
  int v88; // r8
  int v89; // r6
  int v90; // r8
  int v91; // r7
  int v92; // r5
  int v93; // r3
  int v94; // r2
  _DWORD *v95; // r12
  int v96; // r12
  int v97; // r1
  int v98; // r0
  int v99; // r2
  _DWORD *v100; // r2
  int v101; // r6
  int v102; // r10
  int v103; // r8
  int v104; // r2
  _DWORD *v105; // r0
  int v106; // [sp+4h] [bp-48h]
  int v107; // [sp+4h] [bp-48h]
  int v108; // [sp+4h] [bp-48h]
  int v109; // [sp+4h] [bp-48h]
  int v110; // [sp+4h] [bp-48h]
  int v111; // [sp+4h] [bp-48h]
  int v112; // [sp+4h] [bp-48h]
  int v113; // [sp+8h] [bp-44h]
  int v114; // [sp+Ch] [bp-40h]
  int v115; // [sp+10h] [bp-3Ch]
  _DWORD *v116; // [sp+14h] [bp-38h]
  float *v117; // [sp+18h] [bp-34h]
  int v119; // [sp+28h] [bp-24h]
  int v120; // [sp+2Ch] [bp-20h]
  int v121; // [sp+30h] [bp-1Ch]
  void *p; // [sp+38h] [bp-14h] BYREF
  int v123; // [sp+3Ch] [bp-10h]
  int v124; // [sp+40h] [bp-Ch]
  char v125; // [sp+44h] [bp-8h]

  if ( *(int *)(a1 + 836) <= 0 || *(_DWORD *)(a1 + 764) != 15 || a3 <= 2 )
    return 0;
  v10 = *(_DWORD *)(a1 + 864);
  v11 = (_DWORD *)(a1 + 860);
  if ( v10 >= 0 )
  {
    v12 = a1;
    v13 = 0;
    *(_DWORD *)(a1 + 864) = 0;
    if ( a6 != 4 )
      goto LABEL_7;
LABEL_46:
    v121 = a3 - 2;
    v62 = a2[3];
    v63 = a2[4];
    if ( *(int *)(v12 + 868) <= 0 )
      gameswf::array<glitch::core::vector2d<float>>::reserve((int)v11, 1);
    v64 = (_DWORD *)(*(_DWORD *)(a1 + 860) + 8 * *(_DWORD *)(a1 + 864));
    *v64 = v62;
    v64[1] = v63;
    v65 = *(_DWORD *)(a1 + 868);
    *(_DWORD *)(a1 + 864) = 1;
    v66 = a2[10];
    v67 = a2[9];
    if ( v65 <= 1 )
      gameswf::array<glitch::core::vector2d<float>>::reserve((int)v11, 3);
    v68 = (_DWORD *)(*(_DWORD *)(a1 + 860) + 8 * *(_DWORD *)(a1 + 864));
    *v68 = v67;
    v68[1] = v66;
    v69 = *(_DWORD *)(a1 + 868);
    *(_DWORD *)(a1 + 864) = 2;
    v70 = a2[16];
    v71 = a2[15];
    if ( v69 <= 2 )
      gameswf::array<glitch::core::vector2d<float>>::reserve((int)v11, 4);
    v72 = 3;
    v73 = (_DWORD *)(*(_DWORD *)(a1 + 860) + 8 * *(_DWORD *)(a1 + 864));
    *v73 = v71;
    v73[1] = v70;
    *(_DWORD *)(a1 + 864) = 3;
    if ( a3 != 3 )
    {
      v74 = 3 * a3 - 6;
      do
      {
        v88 = v72 + 1;
        v84 = a2[9];
        v85 = a2[10];
        v86 = v72;
        v87 = v72 + 2;
        if ( *(_DWORD *)(a1 + 868) < v72 + 1 )
        {
          v110 = v74;
          gameswf::array<glitch::core::vector2d<float>>::reserve((int)v11, v88 + (v88 >> 1));
          v72 = *(_DWORD *)(a1 + 864);
          v74 = v110;
        }
        v75 = (_DWORD *)(*v11 + 8 * v72);
        *v75 = v84;
        v75[1] = v85;
        v76 = *(_DWORD *)(a1 + 868);
        *(_DWORD *)(a1 + 864) = v88;
        v72 = v86 + 3;
        v77 = a2[15];
        v78 = a2[16];
        if ( v76 < v87 )
        {
          v112 = v74;
          gameswf::array<glitch::core::vector2d<float>>::reserve((int)v11, v87 + (v87 >> 1));
          v88 = *(_DWORD *)(a1 + 864);
          v74 = v112;
        }
        v79 = (_DWORD *)(*v11 + 8 * v88);
        *v79 = v77;
        v79[1] = v78;
        v80 = *(_DWORD *)(a1 + 868);
        *(_DWORD *)(a1 + 864) = v87;
        v81 = a2[21];
        v82 = a2[22];
        if ( v80 < v72 )
        {
          v111 = v74;
          gameswf::array<glitch::core::vector2d<float>>::reserve((int)v11, v72 + (v72 >> 1));
          v87 = *(_DWORD *)(a1 + 864);
          v74 = v111;
        }
        a2 += 6;
        v83 = (_DWORD *)(*v11 + 8 * v87);
        *v83 = v81;
        v83[1] = v82;
        *(_DWORD *)(a1 + 864) = v72;
      }
      while ( v72 != v74 );
    }
    goto LABEL_14;
  }
  v60 = 8 * v10;
  do
  {
    ++v10;
    v61 = (_DWORD *)(*v11 + v60);
    *v61 = 0;
    v61[1] = 0;
    v60 += 8;
  }
  while ( v10 );
  v12 = a1;
  v13 = 0;
  *(_DWORD *)(a1 + 864) = 0;
  if ( a6 == 4 )
    goto LABEL_46;
LABEL_7:
  if ( a4 )
  {
    v121 = a5 / 3;
    if ( a5 > 0 )
    {
      v14 = 0;
      v15 = 24;
      v16 = a2;
      while ( 1 )
      {
        v18 = v13 + 1;
        v19 = (char *)v16 + v15 * *(unsigned __int16 *)(a4 + v14);
        v20 = *((_DWORD *)v19 + 4);
        v14 += 2;
        v21 = *((_DWORD *)v19 + 3);
        if ( v13 + 1 <= *(_DWORD *)(a1 + 868) )
        {
          v17 = (_DWORD *)(*v11 + 8 * v13);
          *v17 = v21;
          v17[1] = v20;
          *(_DWORD *)(a1 + 864) = v18;
          if ( v18 == a5 )
            break;
        }
        else
        {
          v106 = v15;
          gameswf::array<glitch::core::vector2d<float>>::reserve((int)v11, v18 + (v18 >> 1));
          v15 = v106;
          v22 = (_DWORD *)(*v11 + 8 * *(_DWORD *)(a1 + 864));
          *v22 = v21;
          v22[1] = v20;
          *(_DWORD *)(a1 + 864) = v18;
          if ( v18 == a5 )
            break;
        }
        v13 = v18;
      }
    }
  }
  else
  {
    v121 = a3 / 3;
    while ( 1 )
    {
      v101 = a4 + 1;
      v102 = a2[3];
      v103 = a2[4];
      if ( a4 + 1 > *(_DWORD *)(a1 + 868) )
      {
        gameswf::array<glitch::core::vector2d<float>>::reserve((int)v11, v101 + (v101 >> 1));
        a4 = *(_DWORD *)(a1 + 864);
      }
      a2 += 6;
      v100 = (_DWORD *)(*v11 + 8 * a4);
      *v100 = v102;
      v100[1] = v103;
      *(_DWORD *)(a1 + 864) = v101;
      if ( v101 == a3 )
        break;
      a4 = v101;
    }
  }
LABEL_14:
  v23 = *(_DWORD *)(a1 + 836);
  v24 = *(_DWORD *)(a1 + 844);
  v25 = (int *)(v24 + 16 * (v23 - 1));
  if ( v23 <= 1 )
  {
    v89 = *(_DWORD *)(a1 + 864);
    v90 = *(_DWORD *)(a1 + 860);
    if ( v89 > 0 )
    {
      v91 = v25[1];
      v92 = v91 + v89;
      if ( v91 + v89 && v92 > v25[2] )
        gameswf::array<glitch::core::vector2d<float>>::reserve((int)v25, v92 + (v92 >> 1));
      if ( v91 < v92 )
      {
        v93 = 8 * v91;
        v94 = 8 * v91;
        do
        {
          ++v91;
          v95 = (_DWORD *)(*v25 + v94);
          *v95 = 0;
          v95[1] = 0;
          v94 += 8;
        }
        while ( v91 != v92 );
      }
      else
      {
        v93 = 8 * v91;
      }
      v96 = 0;
      v25[1] = v92;
      v97 = 0;
      do
      {
        v98 = *v25;
        ++v97;
        *(_DWORD *)(v98 + v93) = *(_DWORD *)(v90 + v96);
        v99 = *(_DWORD *)(v90 + v96 + 4);
        v96 += 8;
        *(_DWORD *)(v98 + v93 + 4) = v99;
        v93 += 8;
      }
      while ( v97 != v89 );
    }
    return 0;
  }
  if ( v121 > 0 )
  {
    v119 = 0;
    v120 = 0;
    while ( 1 )
    {
      v116 = (_DWORD *)(v24 + 16 * (v23 - 2));
      p = nullptr;
      v123 = 0;
      v124 = 0;
      v125 = 0;
      v117 = (float *)(*(_DWORD *)(a1 + 860) + v119);
      v115 = v116[1] / 3;
      if ( v115 > 0 )
      {
        v113 = 0;
        v114 = 0;
        do
        {
          gameswf::triangle_intersector::process((int **)(a1 + 876), v117, (float *)(*v116 + v113), &p);
          v26 = v123;
          if ( v123 > 0 )
          {
            v27 = v25[1];
            v28 = p;
            v29 = v27 + 1;
            if ( v27 + 1 > v25[2] )
            {
              gameswf::array<glitch::core::vector2d<float>>::reserve((int)v25, v29 + (v29 >> 1));
              v27 = v25[1];
            }
            v30 = *v25;
            v31 = v29 + 1;
            *(_DWORD *)(*v25 + 8 * v27) = *v28;
            *(_DWORD *)(v30 + 8 * v27 + 4) = *(_DWORD *)&byte_4[(_DWORD)v28];
            v32 = v25[2];
            v25[1] = v29;
            v33 = p;
            v34 = (char *)p + 8;
            if ( v29 + 1 > v32 )
            {
              gameswf::array<glitch::core::vector2d<float>>::reserve((int)v25, v31 + (v31 >> 1));
              v29 = v25[1];
            }
            v35 = *(_DWORD *)&byte_8[(_DWORD)v33];
            v36 = *v25;
            v37 = v31 + 1;
            *(_DWORD *)(*v25 + 8 * v29) = v35;
            *(_DWORD *)(v36 + 8 * v29 + 4) = *(_DWORD *)&byte_4[(_DWORD)v34];
            v38 = v25[2];
            v25[1] = v31;
            v39 = p;
            v40 = (char *)p + 16;
            if ( v31 + 1 > v38 )
            {
              gameswf::array<glitch::core::vector2d<float>>::reserve((int)v25, v37 + (v37 >> 1));
              v31 = v25[1];
            }
            v41 = *v25;
            *(_DWORD *)(*v25 + 8 * v31) = *(_DWORD *)((char *)&word_10 + (_DWORD)v39);
            *(_DWORD *)(v41 + 8 * v31 + 4) = *(_DWORD *)&byte_4[(_DWORD)v40];
            v25[1] = v37;
            v26 = v123;
            if ( v123 > 3 )
            {
              v42 = 8;
              v43 = 3;
              do
              {
                v57 = v37 + 1;
                v54 = (char *)p + v42;
                v58 = 8 * v43;
                v42 += 8;
                ++v43;
                v55 = v37;
                v56 = v37 + 2;
                if ( v25[2] < v37 + 1 )
                {
                  v107 = v58;
                  gameswf::array<glitch::core::vector2d<float>>::reserve((int)v25, v57 + (v57 >> 1));
                  v37 = v25[1];
                  v58 = v107;
                }
                v44 = *v25;
                *(_DWORD *)(*v25 + 8 * v37) = *v54;
                v45 = v44 + 8 * v37;
                v37 = v55 + 3;
                *(_DWORD *)(v45 + 4) = v54[1];
                v46 = v25[2];
                v25[1] = v57;
                v47 = (char *)p + v42;
                if ( v46 < v56 )
                {
                  v109 = v58;
                  gameswf::array<glitch::core::vector2d<float>>::reserve((int)v25, v56 + (v56 >> 1));
                  v57 = v25[1];
                  v58 = v109;
                }
                v48 = *v25;
                *(_DWORD *)(*v25 + 8 * v57) = *v47;
                *(_DWORD *)(v48 + 8 * v57 + 4) = v47[1];
                v49 = v25[2];
                v25[1] = v56;
                v50 = (char *)p;
                v51 = (char *)p + v58;
                if ( v49 < v37 )
                {
                  v108 = v58;
                  gameswf::array<glitch::core::vector2d<float>>::reserve((int)v25, v37 + (v37 >> 1));
                  v56 = v25[1];
                  v58 = v108;
                }
                v52 = *(_DWORD *)&v50[v58];
                v53 = *v25;
                *(_DWORD *)(*v25 + 8 * v56) = v52;
                *(_DWORD *)(v53 + 8 * v56 + 4) = *((_DWORD *)v51 + 1);
                v25[1] = v37;
                v26 = v123;
              }
              while ( v43 < v123 );
            }
          }
          v59 = ++v114 == v115;
          v113 += 24;
        }
        while ( !v59 );
        if ( v26 < 0 )
        {
          v104 = 8 * v26;
          do
          {
            ++v26;
            v105 = (char *)p + v104;
            *v105 = 0;
            v105[1] = 0;
            v104 += 8;
          }
          while ( v26 );
        }
      }
      v123 = 0;
      if ( !v125 )
      {
        v124 = 0;
        if ( p )
          gameswf::free_internal(p);
      }
      v59 = ++v120 == v121;
      v119 += 24;
      if ( v59 )
        break;
      v23 = *(_DWORD *)(a1 + 836);
      v24 = *(_DWORD *)(a1 + 844);
    }
  }
  return 1;
}


// ===== 7d8df4 render_handler_glitch::draw_bitmap(gameswf::matrix const&,gameswf::bitmap_info *,gameswf::rect const&,gameswf::rect const&,gameswf::rgba) =====
void *__fastcall render_handler_glitch::draw_bitmap(int a1, float *a2, int *a3, float *a4, _DWORD *a5, int a6)
{
  void *result; // r0
  float v8; // r11
  float v9; // r5
  float v10; // r9
  float v11; // r5
  int v12; // r0
  int v13; // r3
  int v14; // r3
  int v15; // r1
  int v16; // r2
  int v17; // r2
  int v18; // r1
  _DWORD *v19; // r2
  int v20; // r1
  int v21; // r2
  int v22; // r1
  int v23; // r2
  int v24; // r1
  int v25; // r2
  int v26; // r7
  _DWORD *v27; // r1
  _DWORD *v28; // r6
  int v29; // r7
  int v30; // r8
  int *v31; // r11
  int v32; // r4
  int v33; // r2
  int v34; // r3
  int v35; // r1
  int v36; // r0
  int v37; // r5
  int v38; // r10
  int v39; // r10
  int v40; // r9
  int v41; // r8
  int v42; // r5
  int v43; // r9
  int v44; // r1
  int v45; // r2
  int v46; // r3
  int v47; // r12
  int v48; // r0
  int v49; // r3
  int v50; // r4
  int **v51; // r3
  float v52; // [sp+8h] [bp-4Ch]
  float v53; // [sp+Ch] [bp-48h]
  float v54; // [sp+14h] [bp-40h]
  void *v55; // [sp+14h] [bp-40h]
  float v56; // [sp+18h] [bp-3Ch]
  float v58; // [sp+20h] [bp-34h]
  float v59; // [sp+24h] [bp-30h]
  float v60; // [sp+28h] [bp-2Ch]
  float v61; // [sp+30h] [bp-24h]
  float v62; // [sp+34h] [bp-20h]
  float v63; // [sp+38h] [bp-1Ch]
  _DWORD v64[3]; // [sp+44h] [bp-10h] BYREF

  result = (void *)(unsigned __int8)a6;
  if ( (float)HIBYTE(a6) != 0.0 )
  {
    v60 = *a4 * *a2;
    v58 = a2[1];
    v8 = a2[2];
    v61 = (float)(v60 + (float)(a4[2] * v58)) + v8;
    v53 = a2[3];
    v63 = *a4 * v53;
    v59 = a2[4];
    v9 = a2[5];
    v62 = (float)(v63 + (float)(a4[2] * v59)) + v9;
    v54 = v8 + (float)((float)(a4[2] * v58) + (float)(a4[1] * *a2));
    v56 = v9 + (float)((float)(a4[2] * v59) + (float)(a4[1] * v53));
    v52 = a4[3];
    v10 = v8 + (float)(v60 + (float)(v52 * v58));
    v11 = v9 + (float)(v63 + (float)(v52 * v59));
    (*(void (__fastcall **)(int *))(*a3 + 8))(a3);
    v12 = a3[4];
    if ( v12 )
      glitch::video::ITexture::setWrap(v12, 1);
    BufferedRenderer::setTexture(a1 + 496, (gameswf::player_context *)(a3 + 4));
    v13 = *(_DWORD *)(a1 + 884);
    *(_DWORD *)(v13 + 20) = *(_DWORD *)(a1 + 840);
    *(float *)(v13 + 12) = v61;
    *(float *)(v13 + 16) = v62;
    v14 = *(_DWORD *)(a1 + 884) + 24;
    *(_DWORD *)(v14 + 20) = *(_DWORD *)(a1 + 840);
    *(float *)(v14 + 12) = v54;
    *(float *)(v14 + 16) = v56;
    v15 = *(_DWORD *)(a1 + 840);
    v16 = *(_DWORD *)(a1 + 884) + 48;
    *(float *)(v16 + 16) = v11;
    *(_DWORD *)(v16 + 20) = v15;
    *(float *)(v16 + 12) = v10;
    v17 = *(_DWORD *)(a1 + 884) + 72;
    *(_DWORD *)(v17 + 20) = *(_DWORD *)(a1 + 840);
    *(float *)(v17 + 12) = (float)(v54 + v10) - v61;
    *(float *)(v17 + 16) = (float)(v56 + v11) - v62;
    v18 = a5[2];
    v19 = *(_DWORD **)(a1 + 884);
    *v19 = *a5;
    v19[1] = v18;
    v20 = a5[2];
    v21 = *(_DWORD *)(a1 + 884);
    *(_DWORD *)(v21 + 24) = a5[1];
    *(_DWORD *)(v21 + 28) = v20;
    v22 = a5[3];
    v23 = *(_DWORD *)(a1 + 884);
    *(_DWORD *)(v23 + 48) = *a5;
    *(_DWORD *)(v23 + 52) = v22;
    v24 = a5[1];
    v25 = *(_DWORD *)(a1 + 884);
    v26 = 0;
    *(_DWORD *)(v25 + 76) = a5[3];
    *(_DWORD *)(v25 + 72) = v24;
    do
    {
      *(_DWORD *)(*(_DWORD *)(a1 + 884) + v26 + 8) = a6;
      if ( *(_BYTE *)(a1 + 4) )
      {
        *(float *)(*(_DWORD *)(a1 + 884) + v26 + 12) = (float)(20
                                                             * (((int)*(float *)(*(_DWORD *)(a1 + 884) + v26 + 12) + 10)
                                                              / 20));
        *(float *)(*(_DWORD *)(a1 + 884) + v26 + 16) = (float)(20
                                                             * (((int)*(float *)(*(_DWORD *)(a1 + 884) + v26 + 16) + 10)
                                                              / 20));
      }
      v26 += 24;
    }
    while ( v26 != 96 );
    *(_DWORD *)(*(_DWORD *)(a1 + 888) + 8) = 4;
    v27 = *(_DWORD **)(a1 + 884);
    v64[0] = 0x10000;
    v64[1] = 65538;
    v64[2] = 196610;
    result = (void *)render_handler_glitch::process_mask_intersection(a1, v27, 4, (int)v64, 6, 6);
    if ( result )
    {
      v28 = *(_DWORD **)(a1 + 12);
      if ( !v28 )
        return result;
    }
    else
    {
      result = BufferedRenderer::queueIndexedTriangles((BufferedRenderer *)(a1 + 496), a1 + 888, (int)v64, 6);
      v28 = *(_DWORD **)(a1 + 12);
      if ( !v28 )
        return result;
    }
    v55 = (void *)v28[17];
    v29 = *(_DWORD *)(a1 + 884);
    v30 = (int)v55 + 6;
    v31 = (int *)v28[9];
    v32 = v29 + 12;
    if ( v55 != (void *)-6 && v30 > v28[18] )
      gameswf::array<unsigned short>::reserve((int)(v28 + 16), v30 + (v30 >> 1));
    v33 = 0;
    v34 = 2 * (_DWORD)v55;
    do
    {
      v35 = v34 + v33;
      v33 += 2;
      *(_WORD *)(v28[16] + v35) = 0;
    }
    while ( v33 != 12 );
    v36 = v28[16];
    v28[17] = v30;
    memcpy((void *)(v36 + v34), v64, 0xCu);
    v37 = v28[9] + 4;
    if ( v28[9] != -4 && v37 > v28[10] )
      gameswf::array<gameswf::vector3df>::reserve((int)(v28 + 8), v37 + (v37 >> 1));
    v38 = v28[13];
    v28[9] = v37;
    v39 = v38 + 4;
    if ( v39 && v39 > v28[14] )
      gameswf::array<gameswf::vector2df>::reserve((int)(v28 + 12), v39 + (v39 >> 1));
    v40 = v28[12];
    v41 = v28[8] + 12 * (_DWORD)v31;
    v42 = 0;
    v28[13] = v39;
    v43 = v40 + 8 * (_DWORD)v31;
    v44 = 0;
    v45 = 0;
    do
    {
      *(_DWORD *)(v41 + v44) = *(_DWORD *)(v32 + v45);
      *(_DWORD *)(v41 + v44 + 4) = *(_DWORD *)(v32 + v45 + 4);
      *(_DWORD *)(v41 + v44 + 8) = *(_DWORD *)(v32 + v45 + 8);
      v47 = v29 + v45;
      v46 = *(_DWORD *)(v29 + v45);
      v45 += 24;
      *(_DWORD *)(v43 + v42) = v46;
      v48 = v43 + v42;
      v44 += 12;
      v42 += 8;
      *(_DWORD *)(v48 + 4) = *(_DWORD *)(v47 + 4);
    }
    while ( v45 != 1152 );
    v49 = v28[5];
    v50 = v49 + 1;
    if ( v49 + 1 > v28[6] )
    {
      gameswf::array<gameswf::render_cache::entry>::reserve((int)(v28 + 4), v50 + (v50 >> 1));
      v49 = v28[5];
    }
    v51 = (int **)(v28[4] + 24 * v49);
    v51[1] = (int *)(unsigned __int8)a6;
    *v51 = a3;
    v51[5] = (_DWORD *)&byte_6;
    v51[2] = v31;
    result = v55;
    v51[3] = (_DWORD *)byte_4;
    v51[4] = (int *)v55;
    v28[5] = v50;
  }
  return result;
}


// ===== 7d93ac render_handler_glitch::draw(gameswf::render_cache *) =====
void *__fastcall render_handler_glitch::draw(render_handler_glitch *this, gameswf::render_cache *a2)
{
  void *result; // r0
  int v4; // r10
  int v5; // r9
  int v7; // r4
  int v8; // r1
  _DWORD *v9; // r4
  int v10; // r1
  int i; // r3
  int v12; // r2
  int v13; // r3
  int v14; // r2
  int v15; // r1
  int v16; // r3
  int v17; // r6
  int v18; // r6
  int v19; // [sp+8h] [bp-Ch]

  result = *((void **)this + 209);
  v19 = (int)result;
  if ( *((int *)a2 + 5) > 0 )
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v7 = *((_DWORD *)a2 + 4);
      v8 = *(_DWORD *)(v7 + v4);
      v9 = (_DWORD *)(v7 + v4);
      BufferedRenderer::setTexture((int)this + 496, (gameswf::player_context *)(v8 + 16));
      if ( v19 > 0 )
      {
        v10 = v9[3];
        if ( v10 > 0 )
        {
          for ( i = 0; i < v10; ++i )
          {
            v12 = *((_DWORD *)a2 + 8) + 12 * (i + v9[2]);
            *(_DWORD *)(v12 + 8) = *((_DWORD *)this + 210);
            v10 = v9[3];
          }
        }
      }
      else
      {
        v10 = v9[3];
      }
      render_handler_glitch::ensureBufferCapacity(this, v10);
      v13 = *((_DWORD *)this + 221);
      v14 = v9[3];
      v15 = v13 + 24 * v14;
      if ( v13 != v15 )
      {
        do
        {
          *(_BYTE *)(v13 + 8) = v9[1];
          v13 += 24;
        }
        while ( v15 != v13 );
        v14 = v9[3];
      }
      v16 = *((_DWORD *)a2 + 16);
      v17 = v9[4];
      *(_DWORD *)(*((_DWORD *)this + 222) + 8) = v14;
      v18 = v16 + 2 * v17;
      result = (void *)render_handler_glitch::process_mask_intersection(
                         (int)this,
                         *((_DWORD **)this + 221),
                         v9[3],
                         v18,
                         v9[5],
                         6);
      if ( !result )
        result = BufferedRenderer::queueIndexedTriangles(
                   (render_handler_glitch *)((char *)this + 496),
                   (int)this + 888,
                   v18,
                   v9[5]);
      ++v5;
      v4 += 24;
    }
    while ( v5 < *((_DWORD *)a2 + 5) );
  }
  return result;
}


// ===== 7d94f8 render_handler_glitch::draw_mesh_primitive(int,void const*,int,ushort const*,int) =====
render_handler_glitch *__fastcall render_handler_glitch::draw_mesh_primitive(
        render_handler_glitch *this,
        int a2,
        _DWORD *a3,
        int a4,
        const unsigned __int16 *a5,
        int a6)
{
  int v6; // r4
  Vertex *v8; // r2
  Vertex *v9; // r3
  int v10; // r0
  int v11; // r1
  float *v12; // r5
  float *i; // r11
  float v14; // r8
  float v15; // r7
  float v16; // r6
  float v17; // r9
  float v18; // r10
  bool v19; // zf
  BufferedRenderer *v22; // [sp+14h] [bp-50h]
  float v23[18]; // [sp+1Ch] [bp-48h] BYREF

  v6 = (int)this;
  if ( *((_BYTE *)this + 951) )
  {
    render_handler_glitch::ensureBufferCapacity(this, a4 + 2);
    v8 = *(Vertex **)(v6 + 884);
    v9 = &v8[4 * a4];
    if ( v8 != v9 )
    {
      do
      {
        v10 = a3[1];
        v11 = *(_DWORD *)(v6 + 840);
        *(_DWORD *)&v8[2].x = *a3;
        *(_DWORD *)&v8[2].flags = v10;
        *(_DWORD *)&v8[3].y = v11;
        v8 += 4;
        a3 += 2;
      }
      while ( v9 != v8 );
      v9 = *(Vertex **)(v6 + 884);
    }
    v22 = (BufferedRenderer *)(v6 + 496);
    render_handler_glitch::fill_style::apply(
      (render_handler_glitch::fill_style *)(v6 + 944),
      *(glitch::video::IVideoDriver **)(v6 + 16),
      (BufferedRenderer *)(v6 + 496),
      v9,
      a4);
    render_handler_glitch::get_matrix(v23, v6, (int *)(v6 + 780));
    v12 = *(float **)(v6 + 884);
    for ( i = &v12[6 * a4]; i != v12; v12 += 6 )
    {
      v14 = v12[3];
      v15 = v12[4];
      v16 = v12[5];
      v17 = (float)((float)((float)(v14 * v23[1]) + (float)(v15 * v23[5])) + (float)(v16 * v23[9])) + v23[13];
      v18 = (float)((float)((float)(v14 * v23[2]) + (float)(v15 * v23[6])) + (float)(v16 * v23[10])) + v23[14];
      v12[3] = (float)((float)((float)(v14 * v23[0]) + (float)(v15 * v23[4])) + (float)(v16 * v23[8])) + v23[12];
      v12[4] = v17;
      v12[5] = v18;
    }
    *(_DWORD *)(*(_DWORD *)(v6 + 888) + 8) = a4;
    this = (render_handler_glitch *)render_handler_glitch::process_mask_intersection(
                                      v6,
                                      *(_DWORD **)(v6 + 884),
                                      a4,
                                      (int)a5,
                                      a6,
                                      a2);
    if ( !this )
    {
      v19 = a5 == nullptr;
      if ( a5 )
        v19 = a6 == 0;
      if ( v19 )
        return (render_handler_glitch *)BufferedRenderer::queueBuffer(v22, (int *)(v6 + 888), a2);
      else
        return (render_handler_glitch *)BufferedRenderer::queueIndexedTriangles(v22, v6 + 888, (int)a5, a6);
    }
  }
  return this;
}


// ===== 7d9734 render_handler_glitch::draw_triangle_list(void const*,int,ushort const*,int) =====
render_handler_glitch *__fastcall render_handler_glitch::draw_triangle_list(
        render_handler_glitch *this,
        _DWORD *a2,
        int a3,
        const unsigned __int16 *a4,
        int a5)
{
  return render_handler_glitch::draw_mesh_primitive(this, 6, a2, a3, a4, a5);
}


// ===== 7d9764 render_handler_glitch::draw_mesh_strip(void const*,int) =====
render_handler_glitch *__fastcall render_handler_glitch::draw_mesh_strip(
        render_handler_glitch *this,
        _DWORD *a2,
        int a3)
{
  return render_handler_glitch::draw_mesh_primitive(this, 4, a2, a3, nullptr, 0);
}


// ===== 7d9790 gameswf::as_color_transform::is(int) =====
bool __fastcall gameswf::as_color_transform::is(gameswf::as_color_transform *this, int a2)
{
  return a2 == 28 || a2 == 0;
}


// ===== 7d97a8 gameswf::as_color_transform::~as_color_transform() =====
void __fastcall gameswf::as_color_transform::~as_color_transform(gameswf::as_color_transform *this)
{
  *(_DWORD *)this = off_9918D0;
  gameswf::as_object::~as_object(this);
}


// ===== 7d97dc `global constructor keyed to'.._.._src_gameswf_gameswf_as_classes_as_color_transform.cpp =====
int `global constructor keyed to'.._.._src_gameswf_gameswf_as_classes_as_color_transform.cpp()
{
  gameswf::s_color_transform_member_map = 0;
  return _aeabi_atexit(
           (int)&gameswf::s_color_transform_member_map,
           (int)gameswf::stringi_hash<gameswf::as_color_transform_member>::~stringi_hash,
           (int)&_dso_handle);
}


// ===== 7d9818 gameswf::as_color_transform::as_color_transform(gameswf::player *,gameswf::cxform const*) =====
gameswf::as_color_transform *__fastcall gameswf::as_color_transform::as_color_transform(
        gameswf::as_color_transform *this,
        gameswf::player *a2,
        const gameswf::cxform *a3)
{
  int v5; // r0
  int v6; // r1
  int v7; // r2
  int v8; // r3
  _DWORD *v9; // r5
  int v10; // r1
  int v11; // r2
  int v12; // r3

  gameswf::as_object::as_object(this, a2);
  *(_DWORD *)this = off_9918D0;
  *((_DWORD *)this + 20) = 1065353216;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 14) = 1065353216;
  *((_DWORD *)this + 16) = 1065353216;
  *((_DWORD *)this + 18) = 1065353216;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 19) = 0;
  if ( a3 )
  {
    v5 = *(_DWORD *)a3;
    v6 = *((_DWORD *)a3 + 1);
    v7 = *((_DWORD *)a3 + 2);
    v8 = *((_DWORD *)a3 + 3);
    v9 = (_DWORD *)((char *)a3 + 16);
    *((_DWORD *)this + 14) = v5;
    *((_DWORD *)this + 15) = v6;
    *((_DWORD *)this + 16) = v7;
    *((_DWORD *)this + 17) = v8;
    v10 = v9[1];
    v11 = v9[2];
    v12 = v9[3];
    *((_DWORD *)this + 18) = *v9;
    *((_DWORD *)this + 19) = v10;
    *((_DWORD *)this + 20) = v11;
    *((_DWORD *)this + 21) = v12;
  }
  return this;
}


// ===== 7d9890 gameswf::as_color_transform::as_color_transform(gameswf::player *,gameswf::cxform const*) =====
gameswf::as_color_transform *__fastcall gameswf::as_color_transform::as_color_transform(
        gameswf::as_color_transform *this,
        gameswf::player *a2,
        const gameswf::cxform *a3)
{
  int v5; // r0
  int v6; // r1
  int v7; // r2
  int v8; // r3
  _DWORD *v9; // r5
  int v10; // r1
  int v11; // r2
  int v12; // r3

  gameswf::as_object::as_object(this, a2);
  *(_DWORD *)this = off_9918D0;
  *((_DWORD *)this + 20) = 1065353216;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 14) = 1065353216;
  *((_DWORD *)this + 16) = 1065353216;
  *((_DWORD *)this + 18) = 1065353216;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 19) = 0;
  if ( a3 )
  {
    v5 = *(_DWORD *)a3;
    v6 = *((_DWORD *)a3 + 1);
    v7 = *((_DWORD *)a3 + 2);
    v8 = *((_DWORD *)a3 + 3);
    v9 = (_DWORD *)((char *)a3 + 16);
    *((_DWORD *)this + 14) = v5;
    *((_DWORD *)this + 15) = v6;
    *((_DWORD *)this + 16) = v7;
    *((_DWORD *)this + 17) = v8;
    v10 = v9[1];
    v11 = v9[2];
    v12 = v9[3];
    *((_DWORD *)this + 18) = *v9;
    *((_DWORD *)this + 19) = v10;
    *((_DWORD *)this + 20) = v11;
    *((_DWORD *)this + 21) = v12;
  }
  return this;
}


// ===== 7d9908 gameswf::smart_ptr<gameswf::as_color_transform>::set_ref(gameswf::as_color_transform*) =====
void __fastcall gameswf::smart_ptr<gameswf::as_color_transform>::set_ref(
        gameswf::ref_counted **a1,
        gameswf::ref_counted *this)
{
  gameswf::ref_counted *v3; // r0

  v3 = *a1;
  if ( v3 != this )
  {
    if ( v3 )
      gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v3);
    *a1 = this;
    if ( this )
      gameswf::ref_counted::add_ref((int)this);
  }
}


// ===== 7d9948 gameswf::as_global_color_transform_ctor(gameswf::fn_call const&) =====
void __fastcall gameswf::as_global_color_transform_ctor(gameswf *this, const gameswf::fn_call *a2)
{
  int v2; // r6
  gameswf::player *v4; // r8
  gameswf::as_color_transform *v5; // r6
  int v6; // r1
  gameswf::ref_counted *v7; // r6
  float v8; // r0
  float v9; // r5
  gameswf::ref_counted *v10; // r6
  float v11; // r0
  float v12; // r5
  gameswf::ref_counted *v13; // r6
  float v14; // r0
  float v15; // r5
  gameswf::ref_counted *v16; // r6
  float v17; // r0
  float v18; // r5
  gameswf::ref_counted *v19; // r6
  float v20; // r0
  float v21; // r5
  gameswf::ref_counted *v22; // r6
  float v23; // r0
  float v24; // r5
  gameswf::ref_counted *v25; // r6
  float v26; // r0
  float v27; // r5
  gameswf::ref_counted *v28; // r6
  float v29; // r0
  float v30; // r5
  gameswf::ref_counted *v31; // [sp+4h] [bp-4h] BYREF

  v2 = *((_DWORD *)this + 3);
  v31 = nullptr;
  gameswf::weak_ptr<gameswf::player>::check_proxy(v2 + 100);
  v4 = *(gameswf::player **)(v2 + 104);
  v5 = (gameswf::as_color_transform *)operator new(0x58u, 0);
  gameswf::as_color_transform::as_color_transform(v5, v4, nullptr);
  gameswf::smart_ptr<gameswf::as_color_transform>::set_ref(&v31, v5);
  switch ( *((_DWORD *)this + 4) )
  {
    case 1:
      goto LABEL_30;
    case 2:
      goto LABEL_26;
    case 3:
      goto LABEL_22;
    case 4:
      goto LABEL_18;
    case 5:
      goto LABEL_14;
    case 6:
      goto LABEL_10;
    case 7:
      goto LABEL_6;
    case 8:
      v7 = v31;
      v8 = COERCE_DOUBLE(
             gameswf::as_value::to_number(
               (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 7)),
               v6,
               (const char *)(*((_DWORD *)this + 5) - 7)));
      v9 = v8;
      if ( v8 < -3.4028e38 || v8 > 3.4028e38 )
        v9 = 0.0;
      *((float *)v7 + 21) = v9;
LABEL_6:
      v10 = v31;
      v11 = COERCE_DOUBLE(
              gameswf::as_value::to_number(
                (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 6)),
                v6,
                (const char *)(*((_DWORD *)this + 5) - 6)));
      v12 = v11;
      if ( v11 < -3.4028e38 || v11 > 3.4028e38 )
        v12 = 0.0;
      *((float *)v10 + 19) = v12;
LABEL_10:
      v13 = v31;
      v14 = COERCE_DOUBLE(
              gameswf::as_value::to_number(
                (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 5)),
                v6,
                (const char *)(*((_DWORD *)this + 5) - 5)));
      v15 = v14;
      if ( v14 < -3.4028e38 || v14 > 3.4028e38 )
        v15 = 0.0;
      *((float *)v13 + 17) = v15;
LABEL_14:
      v16 = v31;
      v17 = COERCE_DOUBLE(
              gameswf::as_value::to_number(
                (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 4)),
                v6,
                (const char *)(*((_DWORD *)this + 5) - 4)));
      v18 = v17;
      if ( v17 < -3.4028e38 || v17 > 3.4028e38 )
        v18 = 0.0;
      *((float *)v16 + 15) = v18;
LABEL_18:
      v19 = v31;
      v20 = COERCE_DOUBLE(
              gameswf::as_value::to_number(
                (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 3)),
                v6,
                (const char *)(*((_DWORD *)this + 5) - 3)));
      v21 = v20;
      if ( v20 < -3.4028e38 || v20 > 3.4028e38 )
        v21 = 0.0;
      *((float *)v19 + 20) = v21;
LABEL_22:
      v22 = v31;
      v23 = COERCE_DOUBLE(
              gameswf::as_value::to_number(
                (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 2)),
                v6,
                (const char *)(*((_DWORD *)this + 5) - 2)));
      v24 = v23;
      if ( v23 < -3.4028e38 || v23 > 3.4028e38 )
        v24 = 0.0;
      *((float *)v22 + 18) = v24;
LABEL_26:
      v25 = v31;
      v26 = COERCE_DOUBLE(
              gameswf::as_value::to_number(
                (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 1)),
                v6,
                (const char *)(*((_DWORD *)this + 5) - 1)));
      v27 = v26;
      if ( v26 < -3.4028e38 || v26 > 3.4028e38 )
        v27 = 0.0;
      *((float *)v25 + 16) = v27;
LABEL_30:
      v28 = v31;
      v29 = COERCE_DOUBLE(
              gameswf::as_value::to_number(
                (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
                v6,
                (const char *)*((_DWORD *)this + 5)));
      v30 = v29;
      if ( v29 < -3.4028e38 || v29 > 3.4028e38 )
        v30 = 0.0;
      *((float *)v28 + 14) = v30;
      break;
    default:
      break;
  }
  gameswf::as_value::set_as_object(*(gameswf::as_value **)this, v31);
  if ( v31 )
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v31);
}


// ===== 7d9cac gameswf::as_color_transform::~as_color_transform() =====
void __fastcall gameswf::as_color_transform::~as_color_transform(gameswf::as_color_transform *this)
{
  *(_DWORD *)this = off_9918D0;
  gameswf::as_object::~as_object(this);
  LC_API_FREE_0(this);
}


// ===== 7d9ce8 gameswf::hash<gameswf::tu_stringi,gameswf::as_color_transform_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear(void) =====
void __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::as_color_transform_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear(
        _DWORD **a1)
{
  _DWORD *v2; // r0
  int v3; // r7
  int v4; // r5
  int v5; // r4
  _DWORD *v6; // r6

  v2 = *a1;
  if ( v2 )
  {
    v3 = v2[1];
    if ( v3 >= 0 )
    {
      v4 = 0;
      v5 = 2;
      do
      {
        ++v4;
        v6 = &v2[v5];
        if ( v2[v5] != -2 && v6[1] != -1 )
        {
          if ( *((char *)v6 + 8) == -1 )
            gameswf::free_internal((void *)v6[5]);
          *v6 = -2;
          v6[1] = 0;
          v2 = *a1;
        }
        v5 += 8;
      }
      while ( v3 >= v4 );
    }
    gameswf::free_internal(v2);
    *a1 = nullptr;
  }
}


// ===== 7d9d88 gameswf::stringi_hash<gameswf::as_color_transform_member>::~stringi_hash() =====
_DWORD **__fastcall gameswf::stringi_hash<gameswf::as_color_transform_member>::~stringi_hash(_DWORD **a1)
{
  gameswf::hash<gameswf::tu_stringi,gameswf::as_color_transform_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear(a1);
  return a1;
}


// ===== 7d9d9c gameswf::hash<gameswf::tu_stringi,gameswf::as_color_transform_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(gameswf::tu_stringi const&,gameswf::as_color_transform_member const&) =====
gameswf::tu_string *__fastcall gameswf::hash<gameswf::tu_stringi,gameswf::as_color_transform_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
        _DWORD **a1,
        const gameswf::tu_string *a2,
        _DWORD *a3)
{
  char *v5; // r12
  int v6; // lr
  int v7; // r9
  _DWORD *v8; // r5
  int v9; // r3
  int v10; // r2
  int v11; // r11
  int v12; // r1
  _DWORD *v13; // r10
  int v14; // r12
  int v15; // r6
  int v16; // r7
  int v17; // r0
  _DWORD *v18; // r7
  int v19; // r3
  int v20; // r8
  int *v21; // r8
  gameswf::tu_string *result; // r0
  int v23; // r3
  int v24; // r3
  bool v25; // zf
  int v26; // r3
  int v27; // r2
  char *v28; // r3
  int v29; // r2
  int v30; // r1
  int v31; // r2

  gameswf::hash<gameswf::tu_stringi,gameswf::as_color_transform_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::check_expand();
  ++**a1;
  v6 = *((_DWORD *)a2 + 4);
  if ( (v6 & 0xFFFFFF) == 0xFFFFFF )
  {
    v24 = *(char *)a2;
    v25 = v24 == -1;
    if ( v24 == -1 )
    {
      v26 = *((_DWORD *)a2 + 1);
    }
    else
    {
      v26 = v24 - 1;
      v5 = (char *)a2 + 1;
    }
    if ( v25 )
    {
      --v26;
      v5 = *((char **)a2 + 3);
    }
    if ( v26 > 0 )
    {
      v28 = &v5[v26];
      v29 = 5381;
      do
      {
        v30 = (unsigned __int8)*--v28;
        v31 = 33 * v29;
        if ( (unsigned __int8)(v30 - 65) <= 0x19u )
          v30 += 32;
        v29 = v30 ^ v31;
      }
      while ( v28 != v5 );
      v27 = v29 << 8 >> 8;
      v7 = v27;
    }
    else
    {
      v7 = 5381;
      v27 = 5381;
    }
    *((_DWORD *)a2 + 4) = v6 & 0xFF000000 | v27 & 0xFFFFFF;
  }
  else
  {
    v7 = v6 << 8 >> 8;
  }
  v8 = *a1;
  if ( v7 == -1 )
    v7 = -32769;
  v9 = v8[1];
  v10 = v7 & v9;
  v11 = 4 * (v7 & v9) + 1;
  v12 = v8[2 * v11];
  v13 = &v8[2 * v11];
  if ( v12 == -2 )
  {
    v8[2 * v11] = -1;
LABEL_28:
    v13[1] = v7;
    result = gameswf::tu_string::tu_string((gameswf::tu_string *)(v13 + 2), a2);
    v13[7] = *a3;
    return result;
  }
  v14 = v13[1];
  if ( v14 == -1 )
    goto LABEL_28;
  v15 = v7 & v9;
  do
  {
    v15 = (v15 + 1) & v9;
    v16 = 4 * v15 + 1;
    v17 = v8[2 * v16];
    v18 = &v8[2 * v16];
  }
  while ( v17 != -2 );
  v19 = v9 & v14;
  if ( v19 == v10 )
  {
    *v18 = v12;
    v18[1] = v13[1];
    gameswf::tu_string::tu_string((gameswf::tu_string *)(v18 + 2), (const gameswf::tu_string *)(v13 + 2));
    v18[7] = v13[7];
    result = gameswf::tu_string::operator=((gameswf::tu_string *)(v13 + 2), (char *)a2);
    v13[7] = *a3;
    v8[2 * v11] = v15;
    v13[1] = v7;
  }
  else
  {
    do
    {
      v20 = 4 * v19 + 1;
      v19 = v8[2 * v20];
      v21 = &v8[2 * v20];
    }
    while ( v19 != v10 );
    *v18 = v12;
    v18[1] = v13[1];
    gameswf::tu_string::tu_string((gameswf::tu_string *)(v18 + 2), (const gameswf::tu_string *)(v13 + 2));
    v18[7] = v13[7];
    *v21 = v15;
    result = gameswf::tu_string::operator=((gameswf::tu_string *)(v13 + 2), (char *)a2);
    v23 = *a3;
    v13[1] = v7;
    v13[7] = v23;
    v8[2 * v11] = -1;
  }
  return result;
}


// ===== 7d9f98 gameswf::hash<gameswf::tu_stringi,gameswf::as_color_transform_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set_raw_capacity(int) =====
void __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::as_color_transform_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set_raw_capacity(
        _DWORD **a1,
        int a2)
{
  _DWORD *v2; // r10
  int v3; // r4
  _DWORD *v4; // r3
  int v5; // r5
  int v6; // r3
  _DWORD *v7; // r3
  int v8; // r7
  int v9; // r6
  int v10; // r5
  _DWORD *v11; // r4
  _DWORD *v12[2]; // [sp+4h] [bp-8h] BYREF

  v2 = a1;
  if ( a2 <= 0 )
  {
LABEL_19:
    gameswf::hash<gameswf::tu_stringi,gameswf::as_color_transform_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear(a1);
    return;
  }
  v3 = 1 << (int)(float)((float)(logf((float)(a2 - 1)) / 0.69315) + 1.0);
  v4 = (_DWORD *)*v2;
  if ( v3 < 4 )
    v3 = 4;
  if ( !v4 || v4[1] + 1 != v3 )
  {
    v5 = 0;
    v12[0] = gameswf::malloc_internal(32 * v3 + 8);
    *v12[0] = 0;
    v12[0][1] = v3 - 1;
    v6 = 2;
    do
    {
      ++v5;
      v12[0][v6] = -2;
      v6 += 8;
    }
    while ( v3 > v5 );
    v7 = (_DWORD *)*v2;
    if ( *v2 )
    {
      v8 = v7[1];
      if ( v8 >= 0 )
      {
        v9 = 0;
        v10 = 2;
        do
        {
          v11 = &v7[v10];
          ++v9;
          if ( v7[v10] != -2 && v11[1] != -1 )
          {
            gameswf::hash<gameswf::tu_stringi,gameswf::as_color_transform_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
              v12,
              (const gameswf::tu_string *)&v7[v10 + 2],
              &v7[v10 + 7]);
            if ( *((char *)v11 + 8) == -1 )
              gameswf::free_internal((void *)v11[5]);
            *v11 = -2;
            v11[1] = 0;
            v7 = (_DWORD *)*v2;
          }
          v10 += 8;
        }
        while ( v8 >= v9 );
      }
      gameswf::free_internal(v7);
    }
    a1 = v12;
    *v2 = v12[0];
    v12[0] = nullptr;
    goto LABEL_19;
  }
}


// ===== 7da110 gameswf::hash<gameswf::tu_stringi,gameswf::as_color_transform_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::check_expand(void) =====
void __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::as_color_transform_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::check_expand(
        _DWORD **a1)
{
  _DWORD *v1; // r3
  int v2; // r1

  v1 = *a1;
  if ( *a1 )
  {
    v2 = 2 * (v1[1] + 1);
    if ( 3 * *v1 <= v2 )
      return;
  }
  else
  {
    v2 = 8;
  }
  gameswf::hash<gameswf::tu_stringi,gameswf::as_color_transform_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set_raw_capacity(
    a1,
    v2);
}


// ===== 7da144 gameswf::get_color_transform_member(gameswf::tu_stringi const&) =====
int __fastcall gameswf::get_color_transform_member(_DWORD *a1)
{
  _BYTE *v1; // r7
  int v3; // r12
  int v4; // r8
  int v5; // r2
  int v6; // r7
  int v7; // r10
  int v8; // r1
  int v9; // r10
  int v11; // r3
  bool v12; // zf
  int v13; // r3
  int v14; // r2
  _BYTE *v15; // r3
  int v16; // r2
  int v17; // r1
  int v18; // r2
  int v19; // r3
  const char *v20; // r0
  const char *v21; // r1
  int v22; // [sp+4h] [bp-E0h] BYREF
  int v23; // [sp+8h] [bp-DCh] BYREF
  int v24; // [sp+Ch] [bp-D8h] BYREF
  int v25; // [sp+10h] [bp-D4h] BYREF
  int v26; // [sp+14h] [bp-D0h] BYREF
  int v27; // [sp+18h] [bp-CCh] BYREF
  int v28; // [sp+1Ch] [bp-C8h] BYREF
  int v29; // [sp+20h] [bp-C4h] BYREF
  int v30; // [sp+24h] [bp-C0h] BYREF
  _BYTE v31[8]; // [sp+28h] [bp-BCh] BYREF
  void *v32; // [sp+34h] [bp-B0h]
  _BYTE v33[8]; // [sp+3Ch] [bp-A8h] BYREF
  void *v34; // [sp+48h] [bp-9Ch]
  _BYTE v35[8]; // [sp+50h] [bp-94h] BYREF
  void *v36; // [sp+5Ch] [bp-88h]
  _BYTE v37[8]; // [sp+64h] [bp-80h] BYREF
  void *v38; // [sp+70h] [bp-74h]
  _BYTE v39[8]; // [sp+78h] [bp-6Ch] BYREF
  void *v40; // [sp+84h] [bp-60h]
  _BYTE v41[8]; // [sp+8Ch] [bp-58h] BYREF
  void *v42; // [sp+98h] [bp-4Ch]
  _BYTE v43[8]; // [sp+A0h] [bp-44h] BYREF
  void *v44; // [sp+ACh] [bp-38h]
  _BYTE v45[8]; // [sp+B4h] [bp-30h] BYREF
  void *v46; // [sp+C0h] [bp-24h]
  _BYTE v47[8]; // [sp+C8h] [bp-1Ch] BYREF
  void *p; // [sp+D4h] [bp-10h]

  if ( !gameswf::s_color_transform_member_map || !*(_DWORD *)gameswf::s_color_transform_member_map )
  {
    gameswf::hash<gameswf::tu_stringi,gameswf::as_color_transform_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set_raw_capacity(
      (_DWORD **)&gameswf::s_color_transform_member_map,
      16);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v47, "redMultiplier");
    v30 = 1;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_color_transform_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_color_transform_member_map,
      (const gameswf::tu_string *)v47,
      &v30);
    if ( v47[0] == -1 )
      gameswf::free_internal(p);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v45, "greenMultiplier");
    v29 = 2;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_color_transform_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_color_transform_member_map,
      (const gameswf::tu_string *)v45,
      &v29);
    if ( v45[0] == -1 )
      gameswf::free_internal(v46);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v43, "blueMultiplier");
    v28 = 3;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_color_transform_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_color_transform_member_map,
      (const gameswf::tu_string *)v43,
      &v28);
    if ( v43[0] == -1 )
      gameswf::free_internal(v44);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v41, "alphaMultiplier");
    v27 = 4;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_color_transform_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_color_transform_member_map,
      (const gameswf::tu_string *)v41,
      &v27);
    if ( v41[0] == -1 )
      gameswf::free_internal(v42);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v39, "redOffset");
    v26 = 5;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_color_transform_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_color_transform_member_map,
      (const gameswf::tu_string *)v39,
      &v26);
    if ( v39[0] == -1 )
      gameswf::free_internal(v40);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v37, "greenOffset");
    v25 = 6;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_color_transform_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_color_transform_member_map,
      (const gameswf::tu_string *)v37,
      &v25);
    if ( v37[0] == -1 )
      gameswf::free_internal(v38);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v35, "blueOffset");
    v24 = 7;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_color_transform_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_color_transform_member_map,
      (const gameswf::tu_string *)v35,
      &v24);
    if ( v35[0] == -1 )
      gameswf::free_internal(v36);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v33, "alphaOffset");
    v23 = 8;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_color_transform_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_color_transform_member_map,
      (const gameswf::tu_string *)v33,
      &v23);
    if ( v33[0] == -1 )
      gameswf::free_internal(v34);
    v1 = v31;
    gameswf::tu_string::tu_string((gameswf::tu_string *)v31, "rgb");
    v22 = 9;
    gameswf::hash<gameswf::tu_stringi,gameswf::as_color_transform_member,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
      (_DWORD **)&gameswf::s_color_transform_member_map,
      (const gameswf::tu_string *)v31,
      &v22);
    if ( v31[0] == -1 )
      gameswf::free_internal(v32);
    if ( !gameswf::s_color_transform_member_map )
      return 10;
  }
  v3 = a1[4];
  if ( (v3 & 0xFFFFFF) == 0xFFFFFF )
  {
    v11 = *(char *)a1;
    v12 = v11 == -1;
    if ( v11 == -1 )
    {
      v13 = a1[1];
    }
    else
    {
      v13 = v11 - 1;
      v1 = (char *)a1 + 1;
    }
    if ( v12 )
    {
      --v13;
      v1 = (_BYTE *)a1[3];
    }
    if ( v13 > 0 )
    {
      v15 = &v1[v13];
      v16 = 5381;
      do
      {
        v17 = (unsigned __int8)*--v15;
        v18 = 33 * v16;
        if ( (unsigned __int8)(v17 - 65) <= 0x19u )
          v17 += 32;
        v16 = v17 ^ v18;
      }
      while ( v15 != v1 );
      v14 = v16 << 8 >> 8;
      v4 = v14;
    }
    else
    {
      v4 = 5381;
      v14 = 5381;
    }
    a1[4] = v3 & 0xFF000000 | v14 & 0xFFFFFF;
  }
  else
  {
    v4 = v3 << 8 >> 8;
  }
  if ( v4 == -1 )
    v4 = -32769;
  v5 = *(_DWORD *)(gameswf::s_color_transform_member_map + 4);
  v6 = v4 & v5;
  v7 = 4 * (v4 & v5) + 1;
  v8 = *(_DWORD *)(gameswf::s_color_transform_member_map + 8 * v7);
  v9 = gameswf::s_color_transform_member_map + 8 * v7;
  if ( v8 == -2 )
    return 10;
  v19 = *(_DWORD *)(v9 + 4);
  if ( v19 != -1 && v6 != (v5 & v19) )
    return 10;
  while ( 1 )
  {
    if ( v4 == v19 )
    {
      if ( a1 == (_DWORD *)(v9 + 8) )
        break;
      v20 = *(char *)(v9 + 8) == -1 ? *(const char **)(v9 + 20) : (const char *)(v9 + 9);
      v21 = *(char *)a1 == -1 ? (const char *)a1[3] : (char *)a1 + 1;
      if ( !gameswf::tu_string::stricmp(v20, v21) )
        break;
    }
    v6 = *(_DWORD *)v9;
    if ( *(_DWORD *)v9 == -1 )
      return 10;
    v9 = gameswf::s_color_transform_member_map + 32 * v6 + 8;
    v19 = *(_DWORD *)(v9 + 4);
  }
  if ( v6 >= 0 )
    return *(_DWORD *)(gameswf::s_color_transform_member_map + 32 * v6 + 36);
  else
    return 10;
}


// ===== 7da638 gameswf::as_color_transform::get_member(gameswf::tu_stringi const&,gameswf::as_value *) =====
int __fastcall gameswf::as_color_transform::get_member(int a1, _DWORD *a2, gameswf::as_value *a3)
{
  int result; // r0
  float v7; // r0

  switch ( gameswf::get_color_transform_member(a2) )
  {
    case 1:
      v7 = *(float *)(a1 + 56);
      goto LABEL_5;
    case 2:
      v7 = *(float *)(a1 + 64);
      goto LABEL_5;
    case 3:
      v7 = *(float *)(a1 + 72);
      goto LABEL_5;
    case 4:
      v7 = *(float *)(a1 + 80);
      goto LABEL_5;
    case 5:
      v7 = *(float *)(a1 + 60);
      goto LABEL_5;
    case 6:
      v7 = *(float *)(a1 + 68);
      goto LABEL_5;
    case 7:
      v7 = *(float *)(a1 + 76);
      goto LABEL_5;
    case 8:
      v7 = *(float *)(a1 + 84);
LABEL_5:
      gameswf::as_value::set_double(a3, v7);
      result = 1;
      break;
    case 9:
      gameswf::as_value::drop_refs(a3);
      *((_BYTE *)a3 + 1) = 0;
      result = 1;
      break;
    default:
      result = gameswf::as_object::get_member((int *)a1, a2, a3);
      break;
  }
  return result;
}


// ===== 7da708 gameswf::as_color_transform::set_member(gameswf::tu_stringi const&,gameswf::as_value const&) =====
int __fastcall gameswf::as_color_transform::set_member(int *a1, char *a2, gameswf::as_value *a3)
{
  int v6; // r1
  const char *v7; // r2
  int v8; // r0
  float v9; // r6
  float v10; // r6
  float v11; // r5
  int result; // r0
  float v13; // r0
  float v14; // r0
  float v15; // r0
  float v16; // r0
  float v17; // r0
  float v18; // r0
  float v19; // r0
  float v20; // r0
  float v21; // r5

  switch ( gameswf::get_color_transform_member(a2) )
  {
    case 1:
      v13 = COERCE_DOUBLE(gameswf::as_value::to_number(a3, v6, v7));
      if ( v13 < -3.4028e38 || v13 > 3.4028e38 )
        a1[14] = 0;
      else
        *((float *)a1 + 14) = v13;
      result = 1;
      break;
    case 2:
      v14 = COERCE_DOUBLE(gameswf::as_value::to_number(a3, v6, v7));
      if ( v14 < -3.4028e38 || v14 > 3.4028e38 )
        a1[16] = 0;
      else
        *((float *)a1 + 16) = v14;
      result = 1;
      break;
    case 3:
      v15 = COERCE_DOUBLE(gameswf::as_value::to_number(a3, v6, v7));
      if ( v15 < -3.4028e38 || v15 > 3.4028e38 )
        a1[18] = 0;
      else
        *((float *)a1 + 18) = v15;
      result = 1;
      break;
    case 4:
      v16 = COERCE_DOUBLE(gameswf::as_value::to_number(a3, v6, v7));
      if ( v16 < -3.4028e38 || v16 > 3.4028e38 )
        a1[20] = 0;
      else
        *((float *)a1 + 20) = v16;
      result = 1;
      break;
    case 5:
      v17 = COERCE_DOUBLE(gameswf::as_value::to_number(a3, v6, v7));
      if ( v17 < -3.4028e38 || v17 > 3.4028e38 )
        a1[15] = 0;
      else
        *((float *)a1 + 15) = v17;
      result = 1;
      break;
    case 6:
      v18 = COERCE_DOUBLE(gameswf::as_value::to_number(a3, v6, v7));
      if ( v18 < -3.4028e38 || v18 > 3.4028e38 )
        a1[17] = 0;
      else
        *((float *)a1 + 17) = v18;
      result = 1;
      break;
    case 7:
      v19 = COERCE_DOUBLE(gameswf::as_value::to_number(a3, v6, v7));
      if ( v19 < -3.4028e38 || v19 > 3.4028e38 )
        a1[19] = 0;
      else
        *((float *)a1 + 19) = v19;
      result = 1;
      break;
    case 8:
      v20 = COERCE_DOUBLE(gameswf::as_value::to_number(a3, v6, v7));
      v21 = v20;
      if ( v20 < -3.4028e38 || v20 > 3.4028e38 )
        v21 = 0.0;
      *((float *)a1 + 21) = v21;
      result = 1;
      break;
    case 9:
      v8 = (int)COERCE_DOUBLE(gameswf::as_value::to_number(a3, v6, v7));
      a1[20] = 0;
      a1[14] = 0;
      a1[16] = 0;
      a1[18] = 0;
      v9 = (float)BYTE2(v8);
      if ( v9 < -3.4028e38 || v9 > 3.4028e38 )
        v9 = 0.0;
      *((float *)a1 + 15) = v9;
      v10 = (float)BYTE1(v8);
      if ( v10 < -3.4028e38 || v10 > 3.4028e38 )
        v10 = 0.0;
      *((float *)a1 + 17) = v10;
      v11 = (float)(unsigned __int8)v8;
      if ( v11 < -3.4028e38 || v11 > 3.4028e38 )
        v11 = 0.0;
      *((float *)a1 + 19) = v11;
      a1[21] = 1132396544;
      result = 1;
      break;
    default:
      result = gameswf::as_object::set_member(a1, a2, a3);
      break;
  }
  return result;
}


// ===== 7daadc gameswf::as_event::is(int) =====
bool __fastcall gameswf::as_event::is(gameswf::as_event *this, int a2)
{
  return a2 == 39 || a2 == 0;
}


// ===== 7daaf4 gameswf::as_event::~as_event() =====
void __fastcall gameswf::as_event::~as_event(gameswf::as_event *this)
{
  *(_DWORD *)this = off_991940;
  gameswf::as_object::~as_object(this);
}


// ===== 7dab28 gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::resize(int) [clone] =====
void __fastcall gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::resize(_DWORD *a1)
{
  int v1; // r4
  int i; // r5
  _DWORD *v4; // r3
  int v6; // r3
  _DWORD *v7; // r0

  v1 = a1[1];
  if ( v1 > 0 )
  {
    for ( i = 0; i != v1; ++i )
    {
      v4 = *(_DWORD **)(*a1 + 8 * i);
      if ( v4 )
      {
        if ( (*v4)-- == 1 )
          gameswf::free_internal(v4);
      }
    }
    goto LABEL_8;
  }
  if ( v1 >= 0 )
  {
LABEL_8:
    a1[1] = 0;
    return;
  }
  v6 = 8 * v1;
  do
  {
    ++v1;
    v7 = (_DWORD *)(*a1 + v6);
    *v7 = 0;
    v7[1] = 0;
    v6 += 8;
  }
  while ( v1 );
  a1[1] = 0;
}


// ===== 7dabbc gameswf::as_event::as_event(gameswf::player *) =====
gameswf::as_event *__fastcall gameswf::as_event::as_event(gameswf::as_event *this, gameswf::player *a2)
{
  _DWORD v4[3]; // [sp+0h] [bp-14h] BYREF
  char v5; // [sp+Ch] [bp-8h]

  gameswf::as_object::as_object(this, a2);
  *(_DWORD *)this = off_991940;
  memset(v4, 0, sizeof(v4));
  v5 = 0;
  gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::resize(v4);
  gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::reserve((int)v4, 0);
  return this;
}


// ===== 7dac24 gameswf::as_event::~as_event() =====
void __fastcall gameswf::as_event::~as_event(gameswf::as_event *this)
{
  *(_DWORD *)this = off_991940;
  gameswf::as_object::~as_object(this);
  LC_API_FREE_0(this);
}


// ===== 7dac60 gameswf::as_event::as_event(gameswf::player *) =====
gameswf::as_event *__fastcall gameswf::as_event::as_event(gameswf::as_event *this, gameswf::player *a2)
{
  _DWORD v4[3]; // [sp+0h] [bp-14h] BYREF
  char v5; // [sp+Ch] [bp-8h]

  gameswf::as_object::as_object(this, a2);
  *(_DWORD *)this = off_991940;
  memset(v4, 0, sizeof(v4));
  v5 = 0;
  gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::resize(v4);
  gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::reserve((int)v4, 0);
  return this;
}


// ===== 7dacc8 gameswf::event_init(gameswf::player *) =====
gameswf::as_event *__fastcall gameswf::event_init(gameswf *this, gameswf::player *a2)
{
  gameswf::as_event *v3; // r6
  gameswf::player *v4; // r1
  char *v5; // r0
  int v6; // r0
  _BYTE v8[4]; // [sp+4h] [bp-24h] BYREF
  int v9; // [sp+8h] [bp-20h]
  char v10; // [sp+10h] [bp-18h] BYREF
  char v11; // [sp+11h] [bp-17h] BYREF
  void *p; // [sp+1Ch] [bp-Ch]
  unsigned int v13; // [sp+20h] [bp-8h]

  v3 = (gameswf::as_event *)operator new(0x38u, 0);
  gameswf::as_event::as_event(v3, this);
  v10 = 1;
  v11 = 0;
  gameswf::tu_string::resize((gameswf::tu_string *)&v10, 10);
  if ( v10 == -1 )
    v5 = (char *)p;
  else
    v5 = &v11;
  strcpy(v5, "MouseEvent");
  v13 = v13 & 0xFF000000 | 0xFFFFFF;
  HIBYTE(v13) &= ~1u;
  v6 = gameswf::mouse_event_init(this, v4);
  v8[0] = 0;
  v8[1] = 5;
  v9 = v6;
  if ( v6 )
    gameswf::ref_counted::add_ref(v6);
  gameswf::as_object::builtin_member((int)v3, (int)&v10, v8);
  gameswf::as_value::drop_refs((gameswf::as_value *)v8);
  if ( v10 == -1 )
    gameswf::free_internal(p);
  return v3;
}


// ===== 7dadf0 gameswf::as_mouse_event::is(int) =====
bool __fastcall gameswf::as_mouse_event::is(gameswf::as_mouse_event *this, int a2)
{
  return a2 == 40 || a2 == 0;
}


// ===== 7dae08 gameswf::as_mouse_event::as_mouse_event(gameswf::player *) =====
gameswf::as_mouse_event *__fastcall gameswf::as_mouse_event::as_mouse_event(
        gameswf::as_mouse_event *this,
        gameswf::player *a2)
{
  gameswf::as_event::as_event(this, a2);
  *(_DWORD *)this = off_9919B0;
  return this;
}


// ===== 7dae3c gameswf::as_mouse_event::as_mouse_event(gameswf::player *) =====
gameswf::as_mouse_event *__fastcall gameswf::as_mouse_event::as_mouse_event(
        gameswf::as_mouse_event *this,
        gameswf::player *a2)
{
  gameswf::as_event::as_event(this, a2);
  *(_DWORD *)this = off_9919B0;
  return this;
}


// ===== 7dae70 gameswf::as_mouse_event::~as_mouse_event() =====
void __fastcall gameswf::as_mouse_event::~as_mouse_event(gameswf::as_mouse_event *this)
{
  *(_DWORD *)this = off_991940;
  gameswf::as_object::~as_object(this);
}


// ===== 7daea4 gameswf::mouse_event_init(gameswf::player *) =====
gameswf::as_mouse_event *__fastcall gameswf::mouse_event_init(char **this, gameswf::player *a2)
{
  gameswf::as_mouse_event *v3; // r6
  gameswf::tu_string *v4; // r0
  _BYTE v6[4]; // [sp+0h] [bp-38h] BYREF
  int v7; // [sp+4h] [bp-34h]
  _BYTE v8[8]; // [sp+Ch] [bp-2Ch] BYREF
  void *p; // [sp+18h] [bp-20h]
  _BYTE v10[8]; // [sp+20h] [bp-18h] BYREF
  void *v11; // [sp+2Ch] [bp-Ch]

  v3 = (gameswf::as_mouse_event *)operator new(0x38u, 0);
  gameswf::as_mouse_event::as_mouse_event(v3, (gameswf::player *)this);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v8, "CLICK");
  gameswf::tu_string::tu_string((gameswf::tu_string *)v10, "click");
  v4 = gameswf::permanent_string_cache::get(this + 11, (const gameswf::tu_string *)v10);
  v7 = 0;
  v6[0] = 0;
  v6[1] = 0;
  gameswf::as_value::set_tu_string((gameswf::as_value *)v6, v4);
  gameswf::as_object::builtin_member((int)v3, (int)v8, v6);
  gameswf::as_value::drop_refs((gameswf::as_value *)v6);
  if ( v10[0] == -1 )
    gameswf::free_internal(v11);
  if ( v8[0] == -1 )
    gameswf::free_internal(p);
  return v3;
}


// ===== 7dafb8 gameswf::as_mouse_event::~as_mouse_event() =====
void __fastcall gameswf::as_mouse_event::~as_mouse_event(gameswf::as_mouse_event *this)
{
  *(_DWORD *)this = off_991940;
  gameswf::as_object::~as_object(this);
  LC_API_FREE_0(this);
}


// ===== 7daff4 __gl_vertLeq(GLUvertex *,GLUvertex *) =====
int __fastcall __gl_vertLeq(int a1, int a2)
{
  double v3; // r8
  double v4; // r4
  int result; // r0

  v3 = *(double *)(a2 + 40);
  v4 = *(double *)(a1 + 40);
  if ( v4 < v3 )
    return 1;
  result = v4 == v3;
  if ( v4 == v3 )
    return *(double *)(a1 + 48) <= *(double *)(a2 + 48);
  return result;
}


// ===== 7db060 __gl_edgeEval(GLUvertex *,GLUvertex *,GLUvertex *) =====
double __fastcall __gl_edgeEval(int a1, int a2, int a3)
{
  double v3; // r10
  double v4; // r8
  double v6; // [sp+0h] [bp-14h]

  v3 = *(double *)(a2 + 40) - *(double *)(a1 + 40);
  v4 = *(double *)(a3 + 40) - *(double *)(a2 + 40);
  v6 = v3 + v4;
  if ( v3 + v4 <= 0.0 )
    return 0.0;
  if ( v3 < v4 )
    return *(double *)(a2 + 48) - *(double *)(a1 + 48) + (*(double *)(a1 + 48) - *(double *)(a3 + 48)) * (v3 / v6);
  return *(double *)(a2 + 48) - *(double *)(a3 + 48) + (*(double *)(a3 + 48) - *(double *)(a1 + 48)) * (v4 / v6);
}


// ===== 7db1d4 __gl_edgeSign(GLUvertex *,GLUvertex *,GLUvertex *) =====
double __fastcall __gl_edgeSign(int a1, int a2, int a3)
{
  double v3; // r8
  double v4; // r10

  v3 = *(double *)(a2 + 40) - *(double *)(a1 + 40);
  v4 = *(double *)(a3 + 40) - *(double *)(a2 + 40);
  if ( v3 + v4 <= 0.0 )
    return 0.0;
  else
    return (*(double *)(a2 + 48) - *(double *)(a3 + 48)) * v3 + (*(double *)(a2 + 48) - *(double *)(a1 + 48)) * v4;
}


// ===== 7db2a8 __gl_transEval(GLUvertex *,GLUvertex *,GLUvertex *) =====
double __fastcall __gl_transEval(int a1, int a2, int a3)
{
  double v3; // r10
  double v4; // r8
  double v6; // [sp+0h] [bp-14h]

  v3 = *(double *)(a2 + 48) - *(double *)(a1 + 48);
  v4 = *(double *)(a3 + 48) - *(double *)(a2 + 48);
  v6 = v3 + v4;
  if ( v3 + v4 <= 0.0 )
    return 0.0;
  if ( v3 < v4 )
    return *(double *)(a2 + 40) - *(double *)(a1 + 40) + (*(double *)(a1 + 40) - *(double *)(a3 + 40)) * (v3 / v6);
  return *(double *)(a2 + 40) - *(double *)(a3 + 40) + (*(double *)(a3 + 40) - *(double *)(a1 + 40)) * (v4 / v6);
}


// ===== 7db41c __gl_transSign(GLUvertex *,GLUvertex *,GLUvertex *) =====
double __fastcall __gl_transSign(int a1, int a2, int a3)
{
  double v3; // r8
  double v4; // r10

  v3 = *(double *)(a2 + 48) - *(double *)(a1 + 48);
  v4 = *(double *)(a3 + 48) - *(double *)(a2 + 48);
  if ( v3 + v4 <= 0.0 )
    return 0.0;
  else
    return (*(double *)(a2 + 40) - *(double *)(a3 + 40)) * v3 + (*(double *)(a2 + 40) - *(double *)(a1 + 40)) * v4;
}


// ===== 7db4f0 __gl_vertCCW(GLUvertex *,GLUvertex *,GLUvertex *) =====
bool __fastcall __gl_vertCCW(int a1, int a2, int a3)
{
  return (*(double *)(a2 + 48) - *(double *)(a3 + 48)) * *(double *)(a1 + 40)
       + (*(double *)(a3 + 48) - *(double *)(a1 + 48)) * *(double *)(a2 + 40)
       + (*(double *)(a1 + 48) - *(double *)(a2 + 48)) * *(double *)(a3 + 40) >= 0.0;
}


// ===== 7db5a4 __gl_edgeIntersect(GLUvertex *,GLUvertex *,GLUvertex *,GLUvertex *,GLUvertex *) =====
double __fastcall __gl_edgeIntersect(int a1, int a2, int a3, int a4, int a5)
{
  int v5; // r7
  double v6; // r8
  double v7; // r10
  int v8; // r4
  int v9; // r5
  int v10; // r6
  double v11; // r10
  double v12; // r10
  double v13; // r10
  double v14; // r8
  double v15; // r10
  double v16; // r10
  unsigned int v17; // r8
  unsigned int v18; // r10
  double v19; // kr00_8
  unsigned int v20; // r6
  unsigned int v21; // r7
  double v22; // kr08_8
  double v23; // r4
  double v24; // r2
  double v25; // r0
  double v26; // r2
  double v27; // r0
  double result; // r0
  int v29; // r2
  int v30; // r3
  unsigned int v31; // r9
  unsigned int v32; // r11
  double v33; // kr10_8
  unsigned int v34; // r8
  unsigned int v35; // r10
  double v36; // kr18_8
  double v37; // r0
  unsigned int v38; // r9
  unsigned int v39; // r11
  double v40; // kr20_8
  unsigned int v41; // r8
  unsigned int v42; // r10
  double v43; // kr28_8
  double v44; // r0
  unsigned int v45; // r8
  unsigned int v46; // r10
  double v47; // kr30_8
  double v48; // r0
  unsigned int v49; // r4
  unsigned int v50; // r7
  double v51; // r2
  int v52; // r3
  int v53; // r3
  int v54; // r2
  int v55; // r3
  double v56; // r2
  double v57; // r0
  double v58; // [sp+8h] [bp-14h]
  double v59; // [sp+8h] [bp-14h]
  double v60; // [sp+8h] [bp-14h]
  double v61; // [sp+10h] [bp-Ch]

  v5 = a1;
  v6 = *(double *)(a2 + 40);
  v7 = *(double *)(a1 + 40);
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if ( v7 < v6 || v7 == v6 && *(double *)(a1 + 48) <= *(double *)(a2 + 48) )
  {
    v6 = v7;
  }
  else
  {
    v5 = a2;
    v8 = a1;
  }
  v58 = *(double *)(a3 + 40);
  v11 = *(double *)(a4 + 40);
  if ( v58 < v11 || v58 == v11 && *(double *)(a3 + 48) <= *(double *)(a4 + 48) )
  {
    v11 = *(double *)(a3 + 40);
    if ( v58 > v6 )
      goto LABEL_9;
  }
  else
  {
    v9 = a4;
    v10 = a3;
    if ( v11 > v6 )
      goto LABEL_9;
  }
  if ( v11 != v6 || *(double *)(v5 + 48) > *(double *)(v9 + 48) )
  {
    v29 = v8;
    v30 = v5;
    v8 = v10;
    v5 = v9;
    v10 = v29;
    v9 = v30;
    goto LABEL_10;
  }
LABEL_9:
  v6 = v11;
LABEL_10:
  v12 = *(double *)(v8 + 40);
  if ( v6 < v12 || v6 == v12 && *(double *)(v9 + 48) <= *(double *)(v8 + 48) )
  {
    if ( v12 < *(double *)(v10 + 40) || v12 == *(double *)(v10 + 40) && *(double *)(v8 + 48) <= *(double *)(v10 + 48) )
    {
      v33 = __gl_edgeEval(v5, v9, v8);
      v31 = HIDWORD(v33);
      v32 = LODWORD(v33);
      v36 = __gl_edgeEval(v9, v8, v10);
      v34 = HIDWORD(v36);
      v35 = LODWORD(v36);
      if ( v33 + v36 < 0.0 )
      {
        v31 = HIDWORD(v33) + 0x80000000;
        v34 = HIDWORD(v36) + 0x80000000;
      }
      if ( COERCE_DOUBLE(__PAIR64__(v31, LODWORD(v33))) < 0.0 )
      {
        v32 = 0;
        v31 = 0;
      }
      if ( COERCE_DOUBLE(__PAIR64__(v34, LODWORD(v36))) < 0.0 )
      {
        v35 = 0;
        v34 = 0;
      }
      if ( COERCE_DOUBLE(__PAIR64__(v31, v32)) > COERCE_DOUBLE(__PAIR64__(v34, v35)) )
      {
        v37 = *(double *)(v8 + 40)
            + (*(double *)(v9 + 40) - *(double *)(v8 + 40))
            * (COERCE_DOUBLE(__PAIR64__(v34, v35))
             / (COERCE_DOUBLE(__PAIR64__(v31, v32)) + COERCE_DOUBLE(__PAIR64__(v34, v35))));
      }
      else if ( COERCE_DOUBLE(__PAIR64__(v34, v35)) == 0.0 )
      {
        v37 = (*(double *)(v9 + 40) + *(double *)(v8 + 40)) * 0.5;
      }
      else
      {
        v37 = *(double *)(v9 + 40)
            + (*(double *)(v8 + 40) - *(double *)(v9 + 40))
            * (COERCE_DOUBLE(__PAIR64__(v31, v32))
             / (COERCE_DOUBLE(__PAIR64__(v31, v32)) + COERCE_DOUBLE(__PAIR64__(v34, v35))));
      }
      *(double *)(a5 + 40) = v37;
    }
    else
    {
      v40 = __gl_edgeSign(v5, v9, v8);
      v38 = HIDWORD(v40);
      v39 = LODWORD(v40);
      v43 = __gl_edgeSign(v5, v10, v8);
      v42 = HIDWORD(v43);
      v41 = LODWORD(v43);
      if ( v40 + v43 >= 0.0 )
        v42 = HIDWORD(v43) + 0x80000000;
      else
        v38 = HIDWORD(v40) + 0x80000000;
      if ( COERCE_DOUBLE(__PAIR64__(v38, LODWORD(v40))) < 0.0 )
      {
        v39 = 0;
        v38 = 0;
      }
      if ( COERCE_DOUBLE(__PAIR64__(v42, LODWORD(v43))) < 0.0 )
      {
        v41 = 0;
        v42 = 0;
      }
      if ( COERCE_DOUBLE(__PAIR64__(v38, v39)) > COERCE_DOUBLE(__PAIR64__(v42, v41)) )
      {
        v44 = *(double *)(v10 + 40)
            + (*(double *)(v9 + 40) - *(double *)(v10 + 40))
            * (COERCE_DOUBLE(__PAIR64__(v42, v41))
             / (COERCE_DOUBLE(__PAIR64__(v38, v39)) + COERCE_DOUBLE(__PAIR64__(v42, v41))));
      }
      else if ( COERCE_DOUBLE(__PAIR64__(v42, v41)) == 0.0 )
      {
        v44 = (*(double *)(v9 + 40) + *(double *)(v10 + 40)) * 0.5;
      }
      else
      {
        v44 = *(double *)(v9 + 40)
            + (*(double *)(v10 + 40) - *(double *)(v9 + 40))
            * (COERCE_DOUBLE(__PAIR64__(v38, v39))
             / (COERCE_DOUBLE(__PAIR64__(v38, v39)) + COERCE_DOUBLE(__PAIR64__(v42, v41))));
      }
      *(double *)(a5 + 40) = v44;
    }
  }
  else
  {
    *(double *)(a5 + 40) = (v6 + v12) * 0.5;
  }
  v13 = *(double *)(v5 + 48);
  v14 = *(double *)(v8 + 48);
  if ( v13 < v14 || v13 == v14 && *(double *)(v5 + 40) <= *(double *)(v8 + 40) )
  {
    v14 = v13;
  }
  else
  {
    v52 = v5;
    v5 = v8;
    v8 = v52;
  }
  v59 = *(double *)(v9 + 48);
  v15 = *(double *)(v10 + 48);
  if ( v59 < v15 || v59 == v15 && *(double *)(v9 + 40) <= *(double *)(v10 + 40) )
  {
    v15 = *(double *)(v9 + 48);
  }
  else
  {
    v53 = v9;
    v9 = v10;
    v10 = v53;
  }
  if ( v15 > v14 || v15 == v14 && *(double *)(v5 + 40) <= *(double *)(v9 + 40) )
  {
    v14 = v15;
  }
  else
  {
    v54 = v8;
    v55 = v5;
    v8 = v10;
    v5 = v9;
    v10 = v54;
    v9 = v55;
  }
  v16 = *(double *)(v8 + 48);
  if ( v16 > v14 || v16 == v14 && *(double *)(v9 + 40) <= *(double *)(v8 + 40) )
  {
    if ( v16 < *(double *)(v10 + 48) || v16 == *(double *)(v10 + 48) && *(double *)(v8 + 40) <= *(double *)(v10 + 40) )
    {
      v19 = __gl_transEval(v5, v9, v8);
      v17 = HIDWORD(v19);
      v18 = LODWORD(v19);
      v22 = __gl_transEval(v9, v8, v10);
      v20 = HIDWORD(v22);
      v21 = LODWORD(v22);
      if ( v19 + v22 < 0.0 )
      {
        v17 = HIDWORD(v19) + 0x80000000;
        v20 = HIDWORD(v22) + 0x80000000;
      }
      if ( COERCE_DOUBLE(__PAIR64__(v17, LODWORD(v19))) < 0.0 )
      {
        v18 = 0;
        v17 = 0;
      }
      if ( COERCE_DOUBLE(__PAIR64__(v20, LODWORD(v22))) < 0.0 )
      {
        v21 = 0;
        v20 = 0;
      }
      if ( COERCE_DOUBLE(__PAIR64__(v17, v18)) > COERCE_DOUBLE(__PAIR64__(v20, v21)) )
      {
        v60 = *(double *)(v8 + 48);
        v23 = *(double *)(v9 + 48) - v60;
        v24 = COERCE_DOUBLE(__PAIR64__(v17, v18)) + COERCE_DOUBLE(__PAIR64__(v20, v21));
        v25 = COERCE_DOUBLE(__PAIR64__(v20, v21));
LABEL_39:
        v26 = v25 / v24;
        v27 = v23;
LABEL_40:
        result = v60 + v27 * v26;
LABEL_41:
        *(double *)(a5 + 48) = result;
        return result;
      }
      if ( COERCE_DOUBLE(__PAIR64__(v20, v21)) != 0.0 )
      {
        v60 = *(double *)(v9 + 48);
        v23 = *(double *)(v8 + 48) - v60;
        v24 = COERCE_DOUBLE(__PAIR64__(v17, v18)) + COERCE_DOUBLE(__PAIR64__(v20, v21));
        v25 = COERCE_DOUBLE(__PAIR64__(v17, v18));
        goto LABEL_39;
      }
      v51 = *(double *)(v8 + 48);
LABEL_87:
      result = (*(double *)(v9 + 48) + v51) * 0.5;
      goto LABEL_41;
    }
    v47 = __gl_transSign(v5, v9, v8);
    v45 = HIDWORD(v47);
    v46 = LODWORD(v47);
    v48 = __gl_transSign(v5, v10, v8);
    v49 = HIDWORD(v48);
    v50 = LODWORD(v48);
    if ( v47 + COERCE_DOUBLE(__PAIR64__(HIDWORD(v48) + 0x80000000, LODWORD(v48))) >= 0.0 )
      v49 = HIDWORD(v48) + 0x80000000;
    else
      v45 = HIDWORD(v47) + 0x80000000;
    if ( COERCE_DOUBLE(__PAIR64__(v45, LODWORD(v47))) < 0.0 )
    {
      v46 = 0;
      v45 = 0;
    }
    if ( COERCE_DOUBLE(__PAIR64__(v49, LODWORD(v48))) < 0.0 )
    {
      v50 = 0;
      v49 = 0;
    }
    if ( COERCE_DOUBLE(__PAIR64__(v45, v46)) > COERCE_DOUBLE(__PAIR64__(v49, v50)) )
    {
      v60 = *(double *)(v10 + 48);
      v61 = *(double *)(v9 + 48) - v60;
      v56 = COERCE_DOUBLE(__PAIR64__(v45, v46)) + COERCE_DOUBLE(__PAIR64__(v49, v50));
      v57 = COERCE_DOUBLE(__PAIR64__(v49, v50));
    }
    else
    {
      if ( COERCE_DOUBLE(__PAIR64__(v49, v50)) == 0.0 )
      {
        v51 = *(double *)(v10 + 48);
        goto LABEL_87;
      }
      v60 = *(double *)(v9 + 48);
      v61 = *(double *)(v10 + 48) - v60;
      v56 = COERCE_DOUBLE(__PAIR64__(v45, v46)) + COERCE_DOUBLE(__PAIR64__(v49, v50));
      v57 = COERCE_DOUBLE(__PAIR64__(v45, v46));
    }
    v26 = v57 / v56;
    v27 = v61;
    goto LABEL_40;
  }
  result = (v16 + v14) * 0.5;
  *(double *)(a5 + 48) = result;
  return result;
}


// ===== 7dc098 __gl_meshDeleteMesh(GLUmesh *) =====
void __fastcall __gl_meshDeleteMesh(void **p)
{
  char *v2; // r0
  char *v3; // r6
  char *v4; // r4
  void **v5; // r0
  void **v6; // r4
  void **v7; // r0
  void **v8; // r4

  v3 = (char *)(p + 16);
  v2 = (char *)p[16];
  if ( v2 != v3 )
  {
    do
    {
      v4 = *(char **)v2;
      free(v2);
      v2 = v4;
    }
    while ( v4 != v3 );
  }
  v5 = (void **)*p;
  if ( *p != p )
  {
    do
    {
      v6 = (void **)*v5;
      free(v5);
      v5 = v6;
    }
    while ( v6 != p );
  }
  v7 = (void **)p[22];
  if ( v7 != p + 22 )
  {
    do
    {
      v8 = (void **)*v7;
      free(v7);
      v7 = v8;
    }
    while ( v8 != p + 22 );
  }
  free(p);
}


// ===== 7dc114 __gl_meshUnion(GLUmesh *,GLUmesh *) =====
_DWORD **__fastcall __gl_meshUnion(_DWORD **a1, _DWORD *p)
{
  _DWORD *v2; // r2
  _DWORD *v4; // r3

  v2 = (_DWORD *)p[16];
  if ( v2 != p + 16 )
  {
    *a1[17] = v2;
    *(_DWORD *)(p[16] + 4) = a1[17];
    *(_DWORD *)p[17] = a1 + 16;
    a1[17] = (_DWORD *)p[17];
  }
  if ( (_DWORD *)*p != p )
  {
    *a1[1] = *p;
    *(_DWORD *)(*p + 4) = a1[1];
    *(_DWORD *)p[1] = a1;
    a1[1] = (_DWORD *)p[1];
  }
  v4 = (_DWORD *)p[22];
  if ( v4 != p + 22 )
  {
    **(_DWORD **)(*a1[23] + 4) = v4;
    **(_DWORD **)(p[22] + 4) = *a1[23];
    **(_DWORD **)(*(_DWORD *)p[23] + 4) = a1 + 22;
    *a1[23] = *(_DWORD *)p[23];
  }
  free(p);
  return a1;
}


// ===== 7dc1ec KillVertex(GLUvertex *,GLUvertex *) =====
void __fastcall KillVertex(void *p, int a2)
{
  int v2; // r3
  int v3; // r2
  int v4; // r2
  _DWORD *v5; // r3

  v2 = *((_DWORD *)p + 2);
  v3 = v2;
  do
  {
    *(_DWORD *)(v3 + 16) = a2;
    v3 = *(_DWORD *)(v3 + 8);
  }
  while ( v2 != v3 );
  v4 = *(_DWORD *)p;
  v5 = *((_DWORD **)p + 1);
  *(_DWORD *)(v4 + 4) = v5;
  *v5 = v4;
  free(p);
}


// ===== 7dc214 __gl_meshZapFace(GLUface *) =====
void __fastcall __gl_meshZapFace(int *p)
{
  int v1; // r6
  unsigned int i; // r4
  int v4; // r3
  unsigned int v5; // r5
  int v6; // r3
  int v7; // r2
  int v8; // r3
  int v9; // r1
  _DWORD *v10; // r3
  int v11; // r2
  int v12; // r1
  int v13; // r2
  int v14; // r0
  int *v15; // r0
  int v16; // r3
  int v17; // r2
  int v18; // r2
  _DWORD *v19; // r3

  v1 = p[2];
  for ( i = *(_DWORD *)(v1 + 12); ; i = v5 )
  {
    v4 = *(_DWORD *)(i + 4);
    *(_DWORD *)(i + 20) = 0;
    v5 = *(_DWORD *)(i + 12);
    if ( !*(_DWORD *)(v4 + 20) )
      break;
    if ( i == v1 )
      goto LABEL_12;
LABEL_3:
    ;
  }
  v6 = *(_DWORD *)(i + 8);
  if ( i == v6 )
  {
    KillVertex(*(void **)(i + 16), 0);
  }
  else
  {
    *(_DWORD *)(*(_DWORD *)(i + 16) + 8) = v6;
    v7 = *(_DWORD *)(i + 8);
    v8 = *(_DWORD *)(*(_DWORD *)(i + 4) + 12);
    v9 = *(_DWORD *)(v8 + 8);
    *(_DWORD *)(*(_DWORD *)(v7 + 4) + 12) = v8;
    *(_DWORD *)(*(_DWORD *)(v9 + 4) + 12) = i;
    *(_DWORD *)(i + 8) = v9;
    *(_DWORD *)(v8 + 8) = v7;
  }
  v10 = *(_DWORD **)(i + 4);
  v11 = v10[2];
  if ( (_DWORD *)v11 == v10 )
  {
    KillVertex(*(void **)(v11 + 16), 0);
  }
  else
  {
    *(_DWORD *)(v10[4] + 8) = v11;
    v12 = v10[2];
    v13 = *(_DWORD *)(v10[1] + 12);
    v14 = *(_DWORD *)(v13 + 8);
    *(_DWORD *)(*(_DWORD *)(v12 + 4) + 12) = v13;
    *(_DWORD *)(*(_DWORD *)(v14 + 4) + 12) = v10;
    v10[2] = v14;
    *(_DWORD *)(v13 + 8) = v12;
  }
  v15 = *(int **)(i + 4);
  if ( i < (unsigned int)v15 )
    v15 = (int *)i;
  v16 = *v15;
  v17 = *(_DWORD *)v15[1];
  **(_DWORD **)(*v15 + 4) = v17;
  **(_DWORD **)(v17 + 4) = v16;
  free(v15);
  if ( i != v1 )
    goto LABEL_3;
LABEL_12:
  v18 = *p;
  v19 = (_DWORD *)p[1];
  *(_DWORD *)(v18 + 4) = v19;
  *v19 = v18;
  free(p);
}


// ===== 7dc338 __gl_meshNewMesh(void) =====
_DWORD *__gl_meshNewMesh()
{
  _DWORD *result; // r0

  result = LC_API_MALLOC_0(0x98u);
  if ( result )
  {
    result[16] = result + 16;
    result[30] = result + 30;
    result[31] = result + 22;
    result[36] = 0;
    result[1] = result;
    *result = result;
    result[2] = 0;
    result[3] = 0;
    result[17] = result + 16;
    result[18] = 0;
    result[19] = 0;
    result[20] = 0;
    *((_BYTE *)result + 84) = 0;
    *((_BYTE *)result + 85) = 0;
    result[22] = result + 22;
    result[23] = result + 30;
    result[24] = 0;
    result[25] = 0;
    result[26] = 0;
    result[27] = 0;
    result[29] = 0;
    result[28] = 0;
    result[32] = 0;
    result[33] = 0;
    result[34] = 0;
    result[35] = 0;
    result[37] = 0;
  }
  return result;
}


// ===== 7dc3cc MakeEdge(GLUhalfEdge *) =====
_DWORD *__fastcall MakeEdge(unsigned int a1)
{
  _DWORD *result; // r0
  _DWORD *v3; // r2
  int v4; // r1

  result = LC_API_MALLOC_0(0x40u);
  if ( result )
  {
    v3 = result + 8;
    if ( a1 >= *(_DWORD *)(a1 + 4) )
      a1 = *(_DWORD *)(a1 + 4);
    v4 = **(_DWORD **)(a1 + 4);
    result[8] = v4;
    **(_DWORD **)(v4 + 4) = result;
    *result = a1;
    **(_DWORD **)(a1 + 4) = v3;
    result[10] = v3;
    result[14] = 0;
    result[1] = v3;
    result[2] = result;
    result[3] = v3;
    result[4] = 0;
    result[5] = 0;
    result[7] = 0;
    result[6] = 0;
    result[9] = result;
    result[11] = result;
    result[12] = 0;
    result[13] = 0;
    result[15] = 0;
  }
  return result;
}


// ===== 7dc454 __gl_meshConnect(GLUhalfEdge *,GLUhalfEdge *) =====
_DWORD *__fastcall __gl_meshConnect(_DWORD *a1, _DWORD *a2)
{
  _DWORD *Edge; // r4
  int *v5; // r0
  int *v6; // r3
  _DWORD *v7; // r5
  int v8; // r8
  int v9; // r1
  int v10; // r2
  int v11; // r2
  _DWORD *v12; // r3
  int v13; // r2
  int v14; // r3
  int v15; // r1
  int v16; // r3
  int v17; // r2
  int v18; // r3
  _DWORD *v20; // r0
  int v21; // r2
  _DWORD *v22; // r3
  _DWORD *v23; // r1

  Edge = MakeEdge((unsigned int)a1);
  if ( Edge )
  {
    v5 = (int *)a2[5];
    v6 = (int *)a1[5];
    v7 = (_DWORD *)Edge[1];
    if ( v5 == v6 )
    {
      v8 = 0;
    }
    else
    {
      v9 = v5[2];
      v10 = v9;
      do
      {
        *(_DWORD *)(v10 + 20) = v6;
        v10 = *(_DWORD *)(v10 + 12);
      }
      while ( v9 != v10 );
      v11 = *v5;
      v12 = (_DWORD *)v5[1];
      v8 = 1;
      *(_DWORD *)(v11 + 4) = v12;
      *v12 = v11;
      free(v5);
    }
    v13 = Edge[2];
    v14 = a1[3];
    v15 = *(_DWORD *)(v14 + 8);
    *(_DWORD *)(*(_DWORD *)(v13 + 4) + 12) = v14;
    *(_DWORD *)(*(_DWORD *)(v15 + 4) + 12) = Edge;
    Edge[2] = v15;
    *(_DWORD *)(v14 + 8) = v13;
    v16 = v7[2];
    v17 = a2[2];
    *(_DWORD *)(*(_DWORD *)(v16 + 4) + 12) = a2;
    *(_DWORD *)(*(_DWORD *)(v17 + 4) + 12) = v7;
    v7[2] = v17;
    a2[2] = v16;
    Edge[4] = *(_DWORD *)(a1[1] + 16);
    v7[4] = a2[4];
    v18 = a1[5];
    v7[5] = v18;
    Edge[5] = v18;
    *(_DWORD *)(a1[5] + 8) = v7;
    if ( !v8 )
    {
      v20 = LC_API_MALLOC_0(0x18u);
      if ( v20 )
      {
        v21 = a1[5];
        v22 = Edge;
        v23 = *(_DWORD **)(v21 + 4);
        v20[1] = v23;
        *v23 = v20;
        *v20 = v21;
        *(_DWORD *)(v21 + 4) = v20;
        *((_BYTE *)v20 + 20) = 0;
        v20[2] = Edge;
        v20[3] = 0;
        v20[4] = 0;
        *((_BYTE *)v20 + 21) = *(_BYTE *)(v21 + 21);
        do
        {
          v22[5] = v20;
          v22 = (_DWORD *)v22[3];
        }
        while ( Edge != v22 );
      }
      else
      {
        return nullptr;
      }
    }
  }
  return Edge;
}


// ===== 7dc588 __gl_meshDelete(GLUhalfEdge *) =====
int __fastcall __gl_meshDelete(int *p)
{
  int v1; // r5
  int *v3; // r0
  int *v4; // r2
  int v5; // r6
  int v6; // r1
  int v7; // r3
  int v8; // r2
  _DWORD *v9; // r3
  int v10; // r2
  int v11; // r3
  int v12; // r1
  int v13; // r2
  int v14; // r3
  int v15; // r1
  int *v16; // r0
  int v17; // r3
  int v18; // r2
  _DWORD *v20; // r0
  int v21; // r2
  int *v22; // r3
  _DWORD *v23; // r1
  int *v24; // r0
  int v25; // r2
  int v26; // r3
  int v27; // r2
  _DWORD *v28; // r3

  v1 = p[1];
  v3 = (int *)p[5];
  v4 = *(int **)(v1 + 20);
  if ( v3 == v4 )
  {
    v5 = 0;
  }
  else
  {
    v6 = v3[2];
    v7 = v6;
    do
    {
      *(_DWORD *)(v7 + 20) = v4;
      v7 = *(_DWORD *)(v7 + 12);
    }
    while ( v6 != v7 );
    v8 = *v3;
    v9 = (_DWORD *)v3[1];
    v5 = 1;
    *(_DWORD *)(v8 + 4) = v9;
    *v9 = v8;
    free(v3);
  }
  if ( (int *)p[2] == p )
  {
    KillVertex((void *)p[4], 0);
  }
  else
  {
    *(_DWORD *)(*(_DWORD *)(p[1] + 20) + 8) = *(_DWORD *)(p[1] + 12);
    *(_DWORD *)(p[4] + 8) = p[2];
    v10 = p[2];
    v11 = *(_DWORD *)(p[1] + 12);
    v12 = *(_DWORD *)(v11 + 8);
    *(_DWORD *)(*(_DWORD *)(v10 + 4) + 12) = v11;
    *(_DWORD *)(*(_DWORD *)(v12 + 4) + 12) = p;
    p[2] = v12;
    *(_DWORD *)(v11 + 8) = v10;
    if ( !v5 )
    {
      v20 = LC_API_MALLOC_0(0x18u);
      if ( !v20 )
        return 0;
      v21 = p[5];
      v22 = p;
      v23 = *(_DWORD **)(v21 + 4);
      v20[1] = v23;
      *v23 = v20;
      *v20 = v21;
      *(_DWORD *)(v21 + 4) = v20;
      *((_BYTE *)v20 + 20) = 0;
      v20[2] = p;
      v20[3] = 0;
      v20[4] = 0;
      *((_BYTE *)v20 + 21) = *(_BYTE *)(v21 + 21);
      do
      {
        v22[5] = (int)v20;
        v22 = (int *)v22[3];
      }
      while ( p != v22 );
    }
  }
  if ( *(_DWORD *)(v1 + 8) == v1 )
  {
    KillVertex(*(void **)(v1 + 16), 0);
    v24 = *(int **)(v1 + 20);
    v25 = v24[2];
    v26 = v25;
    do
    {
      *(_DWORD *)(v26 + 20) = 0;
      v26 = *(_DWORD *)(v26 + 12);
    }
    while ( v25 != v26 );
    v27 = *v24;
    v28 = (_DWORD *)v24[1];
    *(_DWORD *)(v27 + 4) = v28;
    *v28 = v27;
    free(v24);
  }
  else
  {
    *(_DWORD *)(p[5] + 8) = *(_DWORD *)(*(_DWORD *)(v1 + 4) + 12);
    *(_DWORD *)(*(_DWORD *)(v1 + 16) + 8) = *(_DWORD *)(v1 + 8);
    v13 = *(_DWORD *)(v1 + 8);
    v14 = *(_DWORD *)(*(_DWORD *)(v1 + 4) + 12);
    v15 = *(_DWORD *)(v14 + 8);
    *(_DWORD *)(*(_DWORD *)(v13 + 4) + 12) = v14;
    *(_DWORD *)(*(_DWORD *)(v15 + 4) + 12) = v1;
    *(_DWORD *)(v1 + 8) = v15;
    *(_DWORD *)(v14 + 8) = v13;
  }
  v16 = (int *)p[1];
  if ( p < v16 )
    v16 = p;
  v17 = *v16;
  v18 = *(_DWORD *)v16[1];
  **(_DWORD **)(*v16 + 4) = v18;
  **(_DWORD **)(v18 + 4) = v17;
  free(v16);
  return 1;
}


// ===== 7dc760 __gl_meshAddEdgeVertex(GLUhalfEdge *) =====
_DWORD *__fastcall __gl_meshAddEdgeVertex(_DWORD *a1)
{
  _DWORD *Edge; // r0
  _DWORD *v3; // r4
  int v5; // r2
  int v6; // r3
  int v7; // r5
  int v8; // r1
  _DWORD *v9; // r0
  int v10; // r2
  int v11; // r3
  _DWORD *v12; // r1
  int v13; // r3

  Edge = MakeEdge((unsigned int)a1);
  v3 = Edge;
  if ( !Edge )
    return nullptr;
  v5 = Edge[2];
  v6 = a1[3];
  v7 = Edge[1];
  v8 = *(_DWORD *)(v6 + 8);
  *(_DWORD *)(*(_DWORD *)(v5 + 4) + 12) = v6;
  *(_DWORD *)(*(_DWORD *)(v8 + 4) + 12) = Edge;
  Edge[2] = v8;
  *(_DWORD *)(v6 + 8) = v5;
  Edge[4] = *(_DWORD *)(a1[1] + 16);
  v9 = LC_API_MALLOC_0(0x40u);
  if ( !v9 )
    return nullptr;
  v10 = v3[4];
  v11 = v7;
  v12 = *(_DWORD **)(v10 + 4);
  v9[1] = v12;
  *v12 = v9;
  *v9 = v10;
  *(_DWORD *)(v10 + 4) = v9;
  v9[3] = 0;
  v9[2] = v7;
  do
  {
    *(_DWORD *)(v11 + 16) = v9;
    v11 = *(_DWORD *)(v11 + 8);
  }
  while ( v7 != v11 );
  v13 = a1[5];
  *(_DWORD *)(v7 + 20) = v13;
  v3[5] = v13;
  return v3;
}


// ===== 7dc810 __gl_meshSplitEdge(GLUhalfEdge *) =====
_DWORD *__fastcall __gl_meshSplitEdge(_DWORD *a1)
{
  _DWORD *result; // r0
  int v3; // r3
  int v4; // r1
  int v5; // r2
  int v6; // r12
  int v7; // r3
  int v8; // r1
  int v9; // r2
  int v10; // r3

  result = __gl_meshAddEdgeVertex(a1);
  if ( result )
  {
    v3 = a1[1];
    result = (_DWORD *)result[1];
    v4 = *(_DWORD *)(v3 + 8);
    v5 = *(_DWORD *)(*(_DWORD *)(v3 + 4) + 12);
    v6 = *(_DWORD *)(v5 + 8);
    *(_DWORD *)(*(_DWORD *)(v4 + 4) + 12) = v5;
    *(_DWORD *)(*(_DWORD *)(v6 + 4) + 12) = v3;
    *(_DWORD *)(v3 + 8) = v6;
    *(_DWORD *)(v5 + 8) = v4;
    v7 = a1[1];
    v8 = result[2];
    v9 = *(_DWORD *)(v7 + 8);
    *(_DWORD *)(*(_DWORD *)(v9 + 4) + 12) = result;
    *(_DWORD *)(*(_DWORD *)(v8 + 4) + 12) = v7;
    *(_DWORD *)(v7 + 8) = v8;
    result[2] = v9;
    *(_DWORD *)(a1[1] + 16) = result[4];
    *(_DWORD *)(*(_DWORD *)(result[1] + 16) + 8) = result[1];
    *(_DWORD *)(result[1] + 20) = *(_DWORD *)(a1[1] + 20);
    v10 = result[1];
    result[7] = a1[7];
    *(_DWORD *)(v10 + 28) = *(_DWORD *)(a1[1] + 28);
  }
  return result;
}


// ===== 7dc8bc __gl_meshSplice(GLUhalfEdge *,GLUhalfEdge *) =====
int __fastcall __gl_meshSplice(_DWORD *a1, _DWORD *a2)
{
  void *v4; // r0
  int v5; // r1
  int v6; // r7
  int *v7; // r0
  int *v8; // r3
  int v9; // r6
  int v10; // r1
  int v11; // r2
  int v12; // r2
  _DWORD *v13; // r3
  int v14; // r3
  int v15; // r2
  _DWORD *v17; // r0
  int v18; // r2
  _DWORD *v19; // r3
  _DWORD *v20; // r1
  _DWORD *v21; // r0
  int v22; // r2
  _DWORD *v23; // r3
  _DWORD *v24; // r1

  if ( a1 == a2 )
    return 1;
  v4 = (void *)a2[4];
  v5 = a1[4];
  if ( v4 == (void *)v5 )
  {
    v6 = 0;
  }
  else
  {
    KillVertex(v4, v5);
    v6 = 1;
  }
  v7 = (int *)a2[5];
  v8 = (int *)a1[5];
  if ( v7 == v8 )
  {
    v9 = 0;
  }
  else
  {
    v10 = v7[2];
    v11 = v10;
    do
    {
      *(_DWORD *)(v11 + 20) = v8;
      v11 = *(_DWORD *)(v11 + 12);
    }
    while ( v10 != v11 );
    v12 = *v7;
    v13 = (_DWORD *)v7[1];
    v9 = 1;
    *(_DWORD *)(v12 + 4) = v13;
    *v13 = v12;
    free(v7);
  }
  v14 = a2[2];
  v15 = a1[2];
  *(_DWORD *)(*(_DWORD *)(v14 + 4) + 12) = a1;
  *(_DWORD *)(*(_DWORD *)(v15 + 4) + 12) = a2;
  a2[2] = v15;
  a1[2] = v14;
  if ( !v6 )
  {
    v21 = LC_API_MALLOC_0(0x40u);
    if ( !v21 )
      return 0;
    v22 = a1[4];
    v23 = a2;
    v24 = *(_DWORD **)(v22 + 4);
    v21[1] = v24;
    *v24 = v21;
    *v21 = v22;
    *(_DWORD *)(v22 + 4) = v21;
    v21[3] = 0;
    v21[2] = a2;
    do
    {
      v23[4] = v21;
      v23 = (_DWORD *)v23[2];
    }
    while ( a2 != v23 );
    *(_DWORD *)(a1[4] + 8) = a1;
  }
  if ( v9 )
    return 1;
  v17 = LC_API_MALLOC_0(0x18u);
  if ( !v17 )
    return 0;
  v18 = a1[5];
  v19 = a2;
  v20 = *(_DWORD **)(v18 + 4);
  v17[1] = v20;
  *v20 = v17;
  *v17 = v18;
  *(_DWORD *)(v18 + 4) = v17;
  *((_BYTE *)v17 + 20) = 0;
  v17[2] = a2;
  v17[3] = 0;
  v17[4] = 0;
  *((_BYTE *)v17 + 21) = *(_BYTE *)(v18 + 21);
  do
  {
    v19[5] = v17;
    v19 = (_DWORD *)v19[3];
  }
  while ( a2 != v19 );
  *(_DWORD *)(a1[5] + 8) = a1;
  return 1;
}


// ===== 7dca20 __gl_meshMakeEdge(GLUmesh *) =====
_DWORD *__fastcall __gl_meshMakeEdge(int a1)
{
  _DWORD *v2; // r6
  _DWORD *v3; // r5
  _DWORD *v4; // r0
  bool v5; // zf
  _DWORD *v6; // r4
  _DWORD *result; // r0
  _DWORD *v8; // r2
  _DWORD *v9; // r3
  _DWORD *v10; // r1
  int v11; // r2
  int v12; // r3
  _DWORD *v13; // r2
  _DWORD *v14; // r3

  v2 = LC_API_MALLOC_0(0x40u);
  v3 = LC_API_MALLOC_0(0x40u);
  v4 = LC_API_MALLOC_0(0x18u);
  v5 = v2 == nullptr;
  if ( v2 )
    v5 = v3 == nullptr;
  v6 = v4;
  if ( v5 || !v4 )
  {
    if ( v2 )
      free(v2);
    if ( v3 )
      free(v3);
    if ( v6 )
      free(v6);
    return nullptr;
  }
  else
  {
    result = MakeEdge(a1 + 88);
    if ( result )
    {
      v8 = *(_DWORD **)(a1 + 4);
      v9 = result;
      v2[1] = v8;
      *v8 = v2;
      v2[3] = 0;
      *v2 = a1;
      *(_DWORD *)(a1 + 4) = v2;
      v2[2] = result;
      do
      {
        v9[4] = v2;
        v9 = (_DWORD *)v9[2];
      }
      while ( result != v9 );
      v10 = *(_DWORD **)(a1 + 4);
      v11 = result[1];
      v3[1] = v10;
      *v10 = v3;
      v3[3] = 0;
      *v3 = a1;
      v12 = v11;
      *(_DWORD *)(a1 + 4) = v3;
      v3[2] = v11;
      do
      {
        *(_DWORD *)(v12 + 16) = v3;
        v12 = *(_DWORD *)(v12 + 8);
      }
      while ( v11 != v12 );
      v13 = *(_DWORD **)(a1 + 68);
      v6[1] = v13;
      *v13 = v6;
      LOBYTE(v13) = *(_BYTE *)(a1 + 85);
      *((_BYTE *)v6 + 20) = 0;
      *v6 = a1 + 64;
      *((_BYTE *)v6 + 21) = (_BYTE)v13;
      *(_DWORD *)(a1 + 68) = v6;
      v6[3] = 0;
      v6[4] = 0;
      v6[2] = result;
      v14 = result;
      do
      {
        v14[5] = v6;
        v14 = (_DWORD *)v14[3];
      }
      while ( result != v14 );
    }
  }
  return result;
}


// ===== 7dcb6c LongAxis(double *) =====
int __fastcall LongAxis(double *a1)
{
  unsigned int v1; // r6
  unsigned int v3; // r5
  _BOOL4 v4; // r0
  unsigned int v5; // r6
  unsigned int v6; // r7
  int v7; // r5
  unsigned int v8; // r8
  unsigned int v9; // r4

  v1 = *((_DWORD *)a1 + 3);
  v3 = *((_DWORD *)a1 + 1);
  if ( a1[1] < 0.0 )
    v1 += 0x80000000;
  if ( *a1 < 0.0 )
    v3 += 0x80000000;
  v4 = COERCE_DOUBLE(__PAIR64__(v1, *((_DWORD *)a1 + 2))) > COERCE_DOUBLE(__PAIR64__(v3, *(_DWORD *)a1));
  v5 = *((_DWORD *)a1 + 5);
  v6 = *((_DWORD *)a1 + 4);
  v7 = v4;
  if ( v4 )
    v7 = 1;
  v8 = LODWORD(a1[v7]);
  v9 = HIDWORD(a1[v7]);
  if ( COERCE_DOUBLE(__PAIR64__(v5, v6)) < 0.0 )
    v5 += 0x80000000;
  if ( COERCE_DOUBLE(__PAIR64__(v9, v8)) < 0.0 )
    v9 += 0x80000000;
  if ( COERCE_DOUBLE(__PAIR64__(v5, v6)) > COERCE_DOUBLE(__PAIR64__(v9, v8)) )
    return 2;
  else
    return v7;
}


// ===== 7dcc48 __gl_projectPolygon(GLUtesselator *) =====
bool __fastcall __gl_projectPolygon(GLUtesselator *a1)
{
  GLUtesselator *v1; // r8
  double v2; // r6
  double v3; // r10
  double *v4; // r5
  int v5; // r0
  int v6; // r6
  int v7; // r4
  unsigned __int64 v8; // r10
  char *v9; // r12
  int v10; // r3
  __int64 v11; // r2
  double *j; // r4
  _BOOL4 result; // r0
  double v14; // r10
  _DWORD *v15; // r7
  _DWORD *v16; // r4
  double v17; // r0
  bool v18; // zf
  _DWORD *k; // r3
  unsigned int v20; // r2
  unsigned int v21; // r3
  double v22; // r2
  double *v23; // r10
  int v24; // r5
  double *v25; // r6
  int i; // r4
  double v27; // r8
  int v28; // r4
  double *v29; // r3
  double v30; // r6
  double v31; // r10
  _BYTE *v32; // r4
  double *v33; // r6
  double *v34; // r4
  double *v35; // r4
  GLUtesselator *v36; // r7
  double v37; // r10
  double v38; // r10
  double v39; // r0
  double v40; // r8
  int v41; // r3
  _DWORD *v42; // [sp+0h] [bp-B4h]
  double v43; // [sp+0h] [bp-B4h]
  double v44; // [sp+0h] [bp-B4h]
  int v45; // [sp+8h] [bp-ACh]
  _DWORD *v46; // [sp+10h] [bp-A4h]
  double v47; // [sp+10h] [bp-A4h]
  double *v48; // [sp+18h] [bp-9Ch]
  double v49; // [sp+18h] [bp-9Ch]
  double v50; // [sp+20h] [bp-94h]
  double v51; // [sp+28h] [bp-8Ch]
  double v52; // [sp+30h] [bp-84h]
  double v53[3]; // [sp+38h] [bp-7Ch] BYREF
  double v54; // [sp+50h] [bp-64h]
  double v55; // [sp+58h] [bp-5Ch]
  double v56; // [sp+60h] [bp-54h]
  double v57; // [sp+68h] [bp-4Ch]
  double v58; // [sp+70h] [bp-44h]
  double v59; // [sp+78h] [bp-3Ch]
  double v60; // [sp+80h] [bp-34h] BYREF
  double v61; // [sp+88h] [bp-2Ch]
  __int64 v62; // [sp+90h] [bp-24h]
  _BYTE v63[28]; // [sp+98h] [bp-1Ch] BYREF

  v60 = *((double *)a1 + 2);
  v1 = a1;
  v2 = *((double *)a1 + 3);
  v3 = *((double *)a1 + 4);
  v61 = v2;
  v62 = *(_QWORD *)&v3;
  v4 = *((double **)a1 + 2);
  if ( v60 == 0.0 && v2 == 0.0 && v3 == 0.0 )
  {
    v22 = 2.0e150;
    v59 = -2.0e150;
    v58 = -2.0e150;
    v57 = -2.0e150;
    v56 = 2.0e150;
    v55 = 2.0e150;
    v54 = 2.0e150;
    v23 = *(double **)v4;
    if ( v4 != *(double **)v4 )
    {
      v43 = -2.0e150;
      v48 = v4;
      while ( 1 )
      {
        v24 = 0;
        v25 = v23;
        for ( i = 0; ; v43 = *(double *)((char *)&v57 + i) )
        {
          v27 = v25[2];
          if ( v27 < v22 )
          {
            *(double *)((char *)&v54 + i) = v27;
            *(_DWORD *)&v63[v24] = v23;
          }
          if ( v27 > v43 )
          {
            *(double *)((char *)&v57 + i) = v27;
            *(_DWORD *)&v63[v24 + 12] = v23;
          }
          i += 8;
          ++v25;
          v24 += 4;
          if ( i == 24 )
            break;
          v22 = *(double *)((char *)&v54 + i);
        }
        v23 = *(double **)v23;
        if ( v48 == v23 )
          break;
        v22 = v54;
        v43 = v57;
      }
      v4 = v48;
      v1 = a1;
    }
    v28 = v58 - v55 > v57 - v54;
    if ( v58 - v55 > v57 - v54 )
      v28 = 1;
    v29 = (double *)&v63[8 * v28 + 24];
    v30 = *(v29 - 12);
    v31 = *(v29 - 9);
    if ( v59 - v56 > v31 - v30 )
    {
      v28 = 2;
      v31 = v59;
      v30 = v56;
    }
    if ( v30 >= v31 )
    {
      v62 = 0x3FF0000000000000LL;
      v45 = 1;
      v61 = 0.0;
      v60 = 0.0;
    }
    else
    {
      v32 = &v63[4 * v28 + 24];
      v33 = *((double **)v32 - 3);
      v34 = *((double **)v32 - 6);
      v50 = v34[2] - v33[2];
      v53[0] = v50;
      v51 = v34[3] - v33[3];
      v53[1] = v51;
      v52 = v34[4] - v33[4];
      v53[2] = v52;
      v35 = *(double **)v4;
      if ( v4 == *(double **)v4 )
        goto LABEL_56;
      v49 = 0.0;
      v36 = v1;
      do
      {
        v47 = v35[2] - v33[2];
        v38 = v35[3] - v33[3];
        v39 = v35[4] - v33[4];
        v44 = v51 * v39 - v52 * v38;
        v40 = v50 * v38 - v51 * v47;
        v37 = v44 * v44 + (v52 * v47 - v50 * v39) * (v52 * v47 - v50 * v39) + v40 * v40;
        if ( v37 <= v49 )
        {
          v37 = v49;
        }
        else
        {
          v60 = v44;
          v61 = v52 * v47 - v50 * v39;
          v62 = *(_QWORD *)&v40;
        }
        v49 = v37;
        v35 = *(double **)v35;
      }
      while ( v4 != v35 );
      if ( v37 > 0.0 )
        v41 = 1;
      v1 = v36;
      if ( v37 <= 0.0 )
      {
LABEL_56:
        v60 = 0.0;
        v62 = 0;
        v61 = 0.0;
        *(&v60 + LongAxis(v53)) = 1.0;
        v45 = 1;
      }
      else
      {
        v45 = v41;
      }
    }
  }
  else
  {
    v45 = 0;
  }
  v5 = LongAxis(&v60);
  v6 = (v5 + 1) % 3;
  v7 = (v5 + 2) % 3;
  v8 = 0;
  v9 = (char *)v1 + 8 * v5;
  *((_QWORD *)v9 + 5) = 0;
  *((_QWORD *)v1 + v6 + 5) = 0x3FF0000000000000LL;
  *((_QWORD *)v1 + v7 + 5) = 0;
  *((_QWORD *)v9 + 8) = 0;
  if ( *(&v60 + v5) > 0.0 )
    v8 = 0x8000000000000000LL;
  *((_QWORD *)v1 + v6 + 8) = v8;
  if ( *(&v60 + v5) > 0.0 )
    v10 = 1069547520;
  else
    v10 = -1090519040;
  if ( *(&v60 + v5) > 0.0 )
    HIDWORD(v11) = v10 + 3145728;
  else
    HIDWORD(v11) = v10 + 15728640;
  LODWORD(v11) = 0;
  *((_QWORD *)v1 + v7 + 8) = v11;
  for ( j = *(double **)v4; v4 != j; j = *(double **)j )
  {
    j[5] = j[2] * *((double *)v1 + 5) + j[3] * *((double *)v1 + 6) + j[4] * *((double *)v1 + 7);
    j[6] = j[2] * *((double *)v1 + 8) + j[3] * *((double *)v1 + 9) + j[4] * *((double *)v1 + 10);
  }
  result = v45;
  if ( v45 )
  {
    v46 = *((_DWORD **)v1 + 2);
    if ( v46 + 16 != (_DWORD *)v46[16] )
    {
      v14 = 0.0;
      v42 = (_DWORD *)v46[16];
      do
      {
        v15 = (_DWORD *)v42[2];
        if ( (int)v15[7] > 0 )
        {
          v16 = (_DWORD *)v42[2];
          do
          {
            v17 = v14
                + (*(double *)(v16[4] + 40) - *(double *)(*(_DWORD *)(v16[1] + 16) + 40))
                * (*(double *)(v16[4] + 48) + *(double *)(*(_DWORD *)(v16[1] + 16) + 48));
            v16 = (_DWORD *)v16[3];
            v14 = v17;
          }
          while ( v15 != v16 );
        }
        v18 = v46 + 16 == (_DWORD *)*v42;
        v42 = (_DWORD *)*v42;
      }
      while ( !v18 );
      result = v14 < 0.0;
      if ( v14 < 0.0 )
      {
        for ( k = (_DWORD *)*v46; v46 != k; k = (_DWORD *)*k )
          k[13] += 0x80000000;
        v20 = *((_DWORD *)v1 + 17) + 0x80000000;
        v21 = *((_DWORD *)v1 + 19) + 0x80000000;
        *((_DWORD *)v1 + 21) += 0x80000000;
        *((_DWORD *)v1 + 17) = v20;
        *((_DWORD *)v1 + 19) = v21;
      }
    }
  }
  return result;
}


// ===== 7dd438 MaximumFan(GLUhalfEdge *) =====
_DWORD *__fastcall MaximumFan(_DWORD *result, int a2)
{
  int v2; // r2
  int v3; // r3
  int i; // r2
  int v5; // r12

  result[1] = 0;
  result[2] = RenderFan;
  *result = 0;
  v2 = *(_DWORD *)(a2 + 20);
  if ( !*(_BYTE *)(v2 + 21) || (v3 = *(char *)(v2 + 20), *(_BYTE *)(v2 + 20)) )
  {
    v3 = 0;
  }
  else
  {
    v5 = a2;
    do
    {
      *(_DWORD *)(v2 + 16) = v3;
      v3 = *(_DWORD *)(v5 + 20);
      *(_BYTE *)(v3 + 20) = 1;
      ++*result;
      v5 = *(_DWORD *)(v5 + 8);
      v2 = *(_DWORD *)(v5 + 20);
    }
    while ( *(_BYTE *)(v2 + 21) && !*(_BYTE *)(v2 + 20) );
  }
  for ( i = *(_DWORD *)(*(_DWORD *)(a2 + 4) + 20);
        *(_BYTE *)(i + 21) && !*(_BYTE *)(i + 20);
        i = *(_DWORD *)(*(_DWORD *)(a2 + 4) + 20) )
  {
    *(_DWORD *)(i + 16) = v3;
    v3 = *(_DWORD *)(*(_DWORD *)(a2 + 4) + 20);
    *(_BYTE *)(v3 + 20) = 1;
    ++*result;
    a2 = *(_DWORD *)(*(_DWORD *)(a2 + 4) + 12);
  }
  for ( result[1] = a2; v3; v3 = *(_DWORD *)(v3 + 16) )
    *(_BYTE *)(v3 + 20) = 0;
  return result;
}


// ===== 7dd550 MaximumStrip(GLUhalfEdge *) =====
int *__fastcall MaximumStrip(int *result, _DWORD *a2)
{
  int v2; // r3
  int v3; // r8
  _DWORD *v4; // r2
  int v5; // r3
  int v6; // r12
  int v7; // r4
  int v8; // r5
  int v9; // r12
  int v10; // r4
  int v11; // r4
  int v12; // r4
  int v13; // r4

  result[1] = 0;
  result[2] = (int)RenderStrip;
  *result = 0;
  v2 = a2[5];
  if ( !*(_BYTE *)(v2 + 21) || *(_BYTE *)(v2 + 20) )
  {
    v3 = 0;
    v4 = a2;
    v5 = 0;
    v6 = 0;
  }
  else
  {
    *(_DWORD *)(v2 + 16) = *(char *)(v2 + 20);
    v5 = a2[5];
    v6 = 1;
    *(_BYTE *)(v5 + 20) = 1;
    v4 = *(_DWORD **)(a2[3] + 4);
    v12 = v4[5];
    if ( *(_BYTE *)(v12 + 21) && !*(_BYTE *)(v12 + 20) )
    {
      do
      {
        *(_DWORD *)(v12 + 16) = v5;
        v5 = v4[5];
        *(_BYTE *)(v5 + 20) = 1;
        v4 = (_DWORD *)v4[2];
        v13 = v4[5];
        if ( !*(_BYTE *)(v13 + 21) || *(_BYTE *)(v13 + 20) )
        {
          v3 = ++v6 & 1;
          goto LABEL_3;
        }
        *(_DWORD *)(v13 + 16) = v5;
        v5 = v4[5];
        v6 += 2;
        *(_BYTE *)(v5 + 20) = 1;
        v4 = *(_DWORD **)(v4[3] + 4);
        v12 = v4[5];
      }
      while ( *(_BYTE *)(v12 + 21) && !*(_BYTE *)(v12 + 20) );
      v3 = v6 & 1;
    }
    else
    {
      v3 = 1;
      v6 = 1;
    }
  }
LABEL_3:
  v7 = *(_DWORD *)(a2[1] + 20);
  if ( !*(_BYTE *)(v7 + 21) || *(_BYTE *)(v7 + 20) )
  {
    v8 = 0;
  }
  else
  {
    *(_DWORD *)(v7 + 16) = v5;
    v8 = 1;
    v5 = *(_DWORD *)(a2[1] + 20);
    *(_BYTE *)(v5 + 20) = 1;
    a2 = *(_DWORD **)(a2[1] + 12);
    v10 = *(_DWORD *)(a2[1] + 20);
    if ( *(_BYTE *)(v10 + 21) && !*(_BYTE *)(v10 + 20) )
    {
      while ( 1 )
      {
        *(_DWORD *)(v10 + 16) = v5;
        v5 = *(_DWORD *)(a2[1] + 20);
        *(_BYTE *)(v5 + 20) = 1;
        a2 = *(_DWORD **)(*(_DWORD *)(a2[1] + 8) + 4);
        v11 = *(_DWORD *)(a2[1] + 20);
        if ( !*(_BYTE *)(v11 + 21) || *(_BYTE *)(v11 + 20) )
          break;
        *(_DWORD *)(v11 + 16) = v5;
        v8 += 2;
        v5 = *(_DWORD *)(a2[1] + 20);
        *(_BYTE *)(v5 + 20) = 1;
        a2 = *(_DWORD **)(a2[1] + 12);
        v10 = *(_DWORD *)(a2[1] + 20);
        if ( !*(_BYTE *)(v10 + 21) || *(_BYTE *)(v10 + 20) )
          goto LABEL_5;
      }
      ++v8;
    }
    else
    {
      v8 = 1;
    }
  }
LABEL_5:
  v9 = v8 + v6;
  *result = v9;
  if ( v3 )
  {
    if ( (v8 & 1) != 0 )
    {
      *result = v9 - 1;
      v4 = (_DWORD *)a2[2];
    }
    else
    {
      result[1] = (int)a2;
    }
    if ( (v8 & 1) != 0 )
      result[1] = (int)v4;
  }
  else
  {
    result[1] = v4[1];
  }
  for ( ; v5; v5 = *(_DWORD *)(v5 + 16) )
    *(_BYTE *)(v5 + 20) = 0;
  return result;
}


// ===== 7dd7a0 RenderTriangle(GLUtesselator *,GLUhalfEdge *,long) =====
int __fastcall RenderTriangle(int result, int a2)
{
  *(_DWORD *)(*(_DWORD *)(a2 + 20) + 16) = *(_DWORD *)(result + 124);
  *(_DWORD *)(result + 124) = *(_DWORD *)(a2 + 20);
  *(_BYTE *)(*(_DWORD *)(a2 + 20) + 20) = 1;
  return result;
}


// ===== 7dd7c4 __gl_renderMesh(GLUtesselator *,GLUmesh *) =====
int __fastcall __gl_renderMesh(int result, int a2)
{
  int *v2; // r3
  int *v3; // r7
  int v4; // r4
  int *v5; // r6
  _DWORD *v6; // r9
  _DWORD *v7; // r11
  int v8; // r5
  int v9; // r7
  void (__fastcall *v10)(int, void *); // r3
  int v11; // r10
  _DWORD *v12; // r6
  int v13; // r0
  int v14; // r11
  void (__fastcall *v15)(char, void *); // r3
  void (__fastcall *v16)(void *, void *); // r3
  void (__fastcall *v17)(void *); // r3
  int (__fastcall *v18)(int, int); // [sp+4h] [bp-38h]
  int v19; // [sp+20h] [bp-1Ch] BYREF
  _DWORD *v20; // [sp+24h] [bp-18h]
  int (__fastcall *v21)(int, int); // [sp+28h] [bp-14h]
  int v22; // [sp+2Ch] [bp-10h]
  _DWORD *v23; // [sp+30h] [bp-Ch]
  int (__fastcall *v24)(int, int); // [sp+34h] [bp-8h]

  *(_DWORD *)(result + 124) = 0;
  v3 = (int *)(a2 + 64);
  v2 = *(int **)(a2 + 64);
  v4 = result;
  if ( v2 != (int *)(a2 + 64) )
  {
    do
    {
      *((_BYTE *)v2 + 20) = 0;
      v2 = (int *)*v2;
    }
    while ( v2 != v3 );
    v5 = *(int **)(a2 + 64);
    if ( v5 != v2 )
    {
      do
      {
        while ( !*((_BYTE *)v5 + 21) || *((_BYTE *)v5 + 20) )
        {
          v5 = (int *)*v5;
          if ( v5 == v3 )
            goto LABEL_12;
        }
        v6 = (_DWORD *)v5[2];
        if ( *(_BYTE *)(v4 + 120) )
        {
          v7 = (_DWORD *)v5[2];
          v8 = 1;
          v18 = RenderTriangle;
        }
        else
        {
          MaximumFan(&v19, v5[2]);
          if ( v19 > 1 )
          {
            v8 = v19;
            v7 = v20;
            v22 = v19;
            v18 = v21;
            v23 = v20;
            v24 = v21;
          }
          else
          {
            v7 = v6;
            v8 = 1;
            v18 = RenderTriangle;
          }
          MaximumFan(&v19, v6[3]);
          if ( v8 < v19 )
          {
            v8 = v19;
            v7 = v20;
            v22 = v19;
            v18 = v21;
            v23 = v20;
            v24 = v21;
          }
          MaximumFan(&v19, *(_DWORD *)(v6[2] + 4));
          if ( v8 < v19 )
          {
            v8 = v19;
            v7 = v20;
            v22 = v19;
            v18 = v21;
            v23 = v20;
            v24 = v21;
          }
          MaximumStrip(&v19, v6);
          if ( v19 > v8 )
          {
            v8 = v19;
            v7 = v20;
            v22 = v19;
            v18 = v21;
            v23 = v20;
            v24 = v21;
          }
          MaximumStrip(&v19, (_DWORD *)v6[3]);
          if ( v8 < v19 )
          {
            v8 = v19;
            v7 = v20;
            v22 = v19;
            v18 = v21;
            v23 = v20;
            v24 = v21;
          }
          MaximumStrip(&v19, *(_DWORD **)(v6[2] + 4));
          if ( v8 < v19 )
          {
            v22 = v19;
            v23 = v20;
            v24 = v21;
            result = ((int (__fastcall *)(int, _DWORD *, int))v21)(v4, v20, v19);
            goto LABEL_11;
          }
        }
        result = ((int (__fastcall *)(int, _DWORD *, int))v18)(v4, v7, v8);
LABEL_11:
        v5 = (int *)*v5;
      }
      while ( v5 != v3 );
    }
LABEL_12:
    v9 = *(_DWORD *)(v4 + 124);
    if ( v9 )
    {
      v10 = *(void (__fastcall **)(int, void *))(v4 + 3360);
      if ( v10 == __gl_noBeginData )
        (*(void (__fastcall **)(int))(v4 + 128))(4);
      else
        v10(4, *(void **)(v4 + 3640));
      v11 = -1;
      do
      {
        v12 = *(_DWORD **)(v9 + 8);
        do
        {
          while ( 1 )
          {
            if ( *(_BYTE *)(v4 + 120) )
            {
              v14 = *(char *)(*(_DWORD *)(v12[1] + 20) + 21) == 0;
              if ( v14 != v11 )
              {
                v15 = *(void (__fastcall **)(char, void *))(v4 + 3364);
                v11 = *(char *)(*(_DWORD *)(v12[1] + 20) + 21) == 0;
                if ( v15 == __gl_noEdgeFlagData )
                {
                  (*(void (__fastcall **)(int))(v4 + 132))(v14);
                  v11 = v14;
                }
                else
                {
                  v15(v14, *(void **)(v4 + 3640));
                }
              }
            }
            v16 = *(void (__fastcall **)(void *, void *))(v4 + 3368);
            if ( v16 == __gl_noVertexData )
              break;
            v13 = ((int (__fastcall *)(_DWORD, _DWORD))v16)(*(_DWORD *)(v12[4] + 12), *(_DWORD *)(v4 + 3640));
            v12 = (_DWORD *)v12[3];
            if ( v12 == *(_DWORD **)(v9 + 8) )
              goto LABEL_24;
          }
          v13 = (*(int (__fastcall **)(_DWORD))(v4 + 136))(*(_DWORD *)(v12[4] + 12));
          v12 = (_DWORD *)v12[3];
        }
        while ( v12 != *(_DWORD **)(v9 + 8) );
LABEL_24:
        v9 = *(_DWORD *)(v9 + 16);
      }
      while ( v9 );
      v17 = *(void (__fastcall **)(void *))(v4 + 3372);
      if ( v17 == __gl_noEndData )
        result = (*(int (__fastcall **)(int))(v4 + 140))(v13);
      else
        result = ((int (__fastcall *)(_DWORD))v17)(*(_DWORD *)(v4 + 3640));
      *(_DWORD *)(v4 + 124) = 0;
    }
  }
  return result;
}


// ===== 7ddbb4 RenderFan(GLUtesselator *,GLUhalfEdge *,long) =====
int __fastcall RenderFan(int a1, _DWORD *a2)
{
  void (__fastcall *v3)(int, void *); // r3
  void (__fastcall *v5)(void *, void *); // r3
  void (__fastcall *v6)(void *, void *); // r3
  int v7; // r0
  int i; // r3
  void (__fastcall *v9)(void *, void *); // r3
  void (__fastcall *v10)(void *); // r3

  v3 = *(void (__fastcall **)(int, void *))(a1 + 3360);
  if ( v3 == __gl_noBeginData )
  {
    (*(void (__fastcall **)(int))(a1 + 128))(6);
    v5 = *(void (__fastcall **)(void *, void *))(a1 + 3368);
    if ( v5 != __gl_noVertexData )
      goto LABEL_3;
  }
  else
  {
    v3(6, *(void **)(a1 + 3640));
    v5 = *(void (__fastcall **)(void *, void *))(a1 + 3368);
    if ( v5 != __gl_noVertexData )
    {
LABEL_3:
      v5(*(void **)(a2[4] + 12), *(void **)(a1 + 3640));
      goto LABEL_4;
    }
  }
  (*(void (__fastcall **)(_DWORD))(a1 + 136))(*(_DWORD *)(a2[4] + 12));
LABEL_4:
  v6 = *(void (__fastcall **)(void *, void *))(a1 + 3368);
  if ( v6 == __gl_noVertexData )
LABEL_12:
    v7 = (*(int (__fastcall **)(_DWORD))(a1 + 136))(*(_DWORD *)(*(_DWORD *)(a2[1] + 16) + 12));
  else
    v7 = ((int (__fastcall *)(_DWORD, _DWORD))v6)(*(_DWORD *)(*(_DWORD *)(a2[1] + 16) + 12), *(_DWORD *)(a1 + 3640));
  for ( i = a2[5]; *(_BYTE *)(i + 21); i = a2[5] )
  {
    if ( *(_BYTE *)(i + 20) )
      break;
    *(_BYTE *)(i + 20) = 1;
    v9 = *(void (__fastcall **)(void *, void *))(a1 + 3368);
    a2 = (_DWORD *)a2[2];
    if ( v9 == __gl_noVertexData )
      goto LABEL_12;
    v7 = ((int (__fastcall *)(_DWORD, _DWORD))v9)(*(_DWORD *)(*(_DWORD *)(a2[1] + 16) + 12), *(_DWORD *)(a1 + 3640));
  }
  v10 = *(void (__fastcall **)(void *))(a1 + 3372);
  if ( v10 == __gl_noEndData )
    return (*(int (__fastcall **)(int))(a1 + 140))(v7);
  else
    return ((int (__fastcall *)(_DWORD))v10)(*(_DWORD *)(a1 + 3640));
}


// ===== 7ddd2c RenderStrip(GLUtesselator *,GLUhalfEdge *,long) =====
int __fastcall RenderStrip(int a1, _DWORD *a2)
{
  void (__fastcall *v3)(int, void *); // r3
  void (__fastcall *v5)(void *, void *); // r3
  void (__fastcall *v6)(void *, void *); // r3
  int i; // r0
  int v8; // r3
  void (__fastcall *v9)(void *); // r3
  void (__fastcall *v11)(void *, void *); // r3
  _DWORD *v12; // r5
  int v13; // r3

  v3 = *(void (__fastcall **)(int, void *))(a1 + 3360);
  if ( v3 == __gl_noBeginData )
  {
    (*(void (__fastcall **)(int))(a1 + 128))(5);
    v5 = *(void (__fastcall **)(void *, void *))(a1 + 3368);
    if ( v5 != __gl_noVertexData )
      goto LABEL_3;
  }
  else
  {
    v3(5, *(void **)(a1 + 3640));
    v5 = *(void (__fastcall **)(void *, void *))(a1 + 3368);
    if ( v5 != __gl_noVertexData )
    {
LABEL_3:
      v5(*(void **)(a2[4] + 12), *(void **)(a1 + 3640));
      goto LABEL_4;
    }
  }
  (*(void (__fastcall **)(_DWORD))(a1 + 136))(*(_DWORD *)(a2[4] + 12));
LABEL_4:
  v6 = *(void (__fastcall **)(void *, void *))(a1 + 3368);
  if ( v6 == __gl_noVertexData )
    goto LABEL_17;
LABEL_5:
  for ( i = ((int (__fastcall *)(_DWORD, _DWORD))v6)(*(_DWORD *)(*(_DWORD *)(a2[1] + 16) + 12), *(_DWORD *)(a1 + 3640));
        ;
        i = (*(int (__fastcall **)(_DWORD))(a1 + 136))(*(_DWORD *)(*(_DWORD *)(a2[1] + 16) + 12)) )
  {
    v8 = a2[5];
    if ( !*(_BYTE *)(v8 + 21) || *(_BYTE *)(v8 + 20) )
      break;
    *(_BYTE *)(v8 + 20) = 1;
    v11 = *(void (__fastcall **)(void *, void *))(a1 + 3368);
    v12 = *(_DWORD **)(a2[3] + 4);
    i = v11 == __gl_noVertexData
      ? (*(int (__fastcall **)(_DWORD))(a1 + 136))(*(_DWORD *)(v12[4] + 12))
      : ((int (__fastcall *)(_DWORD, _DWORD))v11)(*(_DWORD *)(v12[4] + 12), *(_DWORD *)(a1 + 3640));
    v13 = v12[5];
    if ( !*(_BYTE *)(v13 + 21) || *(_BYTE *)(v13 + 20) )
      break;
    *(_BYTE *)(v13 + 20) = 1;
    v6 = *(void (__fastcall **)(void *, void *))(a1 + 3368);
    a2 = (_DWORD *)v12[2];
    if ( v6 != __gl_noVertexData )
      goto LABEL_5;
LABEL_17:
    ;
  }
  v9 = *(void (__fastcall **)(void *))(a1 + 3372);
  if ( v9 == __gl_noEndData )
    return (*(int (__fastcall **)(int))(a1 + 140))(i);
  else
    return ((int (__fastcall *)(_DWORD))v9)(*(_DWORD *)(a1 + 3640));
}


// ===== 7ddef4 __gl_renderBoundary(GLUtesselator *,GLUmesh *) =====
int __fastcall __gl_renderBoundary(int result, int a2)
{
  int *v2; // r6
  int *v3; // r10
  int v4; // r5
  void (__fastcall *v5)(int, void *); // r3
  int v6; // r4
  int v7; // r0
  void (__fastcall *v8)(void *, void *); // r3
  void (__fastcall *v9)(void *); // r3

  v3 = (int *)(a2 + 64);
  v2 = *(int **)(a2 + 64);
  v4 = result;
  if ( v2 != (int *)(a2 + 64) )
  {
    do
    {
      while ( !*((_BYTE *)v2 + 21) )
      {
LABEL_11:
        v2 = (int *)*v2;
        if ( v2 == v3 )
          return result;
      }
      v5 = *(void (__fastcall **)(int, void *))(v4 + 3360);
      if ( v5 == __gl_noBeginData )
        (*(void (__fastcall **)(int))(v4 + 128))(2);
      else
        v5(2, *(void **)(v4 + 3640));
      v6 = v2[2];
      do
      {
        while ( 1 )
        {
          v8 = *(void (__fastcall **)(void *, void *))(v4 + 3368);
          if ( v8 == __gl_noVertexData )
            break;
          v7 = ((int (__fastcall *)(_DWORD, _DWORD))v8)(*(_DWORD *)(*(_DWORD *)(v6 + 16) + 12), *(_DWORD *)(v4 + 3640));
          v6 = *(_DWORD *)(v6 + 12);
          if ( v6 == v2[2] )
            goto LABEL_9;
        }
        v7 = (*(int (__fastcall **)(_DWORD))(v4 + 136))(*(_DWORD *)(*(_DWORD *)(v6 + 16) + 12));
        v6 = *(_DWORD *)(v6 + 12);
      }
      while ( v6 != v2[2] );
LABEL_9:
      v9 = *(void (__fastcall **)(void *))(v4 + 3372);
      if ( v9 != __gl_noEndData )
      {
        result = ((int (__fastcall *)(_DWORD))v9)(*(_DWORD *)(v4 + 3640));
        goto LABEL_11;
      }
      result = (*(int (__fastcall **)(int))(v4 + 140))(v7);
      v2 = (int *)*v2;
    }
    while ( v2 != v3 );
  }
  return result;
}


// ===== 7de010 ComputeNormal(GLUtesselator *,double *,int) =====
int __fastcall ComputeNormal(GLUtesselator *a1, double *a2, int a3)
{
  double *v4; // r4
  double v5; // r6
  double v6; // r8
  double v7; // r10
  double v8; // r8
  double v9; // r6
  double v10; // r0
  double v12; // [sp+0h] [bp-44h]
  double v13; // [sp+8h] [bp-3Ch]
  double v14; // [sp+10h] [bp-34h]
  double v15; // [sp+18h] [bp-2Ch]
  double v16; // [sp+20h] [bp-24h]
  double *v17; // [sp+28h] [bp-1Ch]
  double *v18; // [sp+2Ch] [bp-18h]
  char *v20; // [sp+34h] [bp-10h]
  int v21; // [sp+3Ch] [bp-8h]

  v20 = (char *)a1 + 32 * *((_DWORD *)a1 + 38) + 160;
  if ( !a3 )
  {
    *a2 = 0.0;
    a2[2] = 0.0;
    a2[1] = 0.0;
  }
  v4 = (double *)((char *)a1 + 192);
  v5 = *((double *)a1 + 24) - *((double *)a1 + 20);
  v6 = *((double *)a1 + 25) - *((double *)a1 + 21);
  v21 = 0;
  v17 = a2 + 1;
  v18 = a2 + 2;
  v7 = *((double *)a1 + 26) - *((double *)a1 + 22);
  while ( 1 )
  {
    v4 += 4;
    if ( v20 <= (char *)v4 )
      break;
    v15 = *v4 - *((double *)a1 + 20);
    v14 = v4[1] - *((double *)a1 + 21);
    v13 = v4[2] - *((double *)a1 + 22);
    v12 = v6 * v13 - v7 * v14;
    v16 = v7 * v15 - v5 * v13;
    v8 = v5 * v14 - v6 * v15;
    v9 = *a2;
    v10 = v12 * *a2 + v16 * *v17 + v8 * *v18;
    if ( a3 )
    {
      if ( v10 != 0.0 )
      {
        if ( v12 * *a2 + v16 * *v17 + v8 * *v18 <= 0.0 )
        {
          if ( v21 == 1 )
            return 2;
          v21 = -1;
        }
        else
        {
          if ( v21 < 0 )
            return 2;
          v21 = 1;
        }
      }
    }
    else if ( v10 < 0.0 )
    {
      *a2 = v9 - v12;
      *v17 = *v17 - v16;
      *v18 = *v18 - v8;
    }
    else
    {
      *a2 = v12 + v9;
      *v17 = *v17 + v16;
      *v18 = *v18 + v8;
    }
    v7 = v13;
    v6 = v14;
    v5 = v15;
  }
  return v21;
}


// ===== 7de36c __gl_renderCache(GLUtesselator *) =====
int __fastcall __gl_renderCache(GLUtesselator *a1)
{
  int v1; // r6
  double v3; // r8
  double v4; // r10
  int v5; // r0
  int v6; // r7
  int v8; // r2
  void (__fastcall *v9)(int, void *); // r3
  int v10; // r0
  void (__fastcall *v11)(void *, void *); // r3
  int v12; // r0
  bool v13; // cc
  char *v14; // r6
  char *v15; // r7
  char *j; // r7
  int v17; // r0
  void (__fastcall *v18)(void *, void *); // r3
  int v19; // r0
  void (__fastcall *v20)(void *); // r3
  char *i; // r6
  void (__fastcall *v22)(void *, void *); // r3
  int v23; // r0
  double v24[3]; // [sp+0h] [bp-1Ch] BYREF

  v1 = *((_DWORD *)a1 + 38);
  if ( v1 <= 2 )
    return 1;
  v24[0] = *((double *)a1 + 2);
  v3 = *((double *)a1 + 3);
  v4 = *((double *)a1 + 4);
  v24[1] = v3;
  v24[2] = v4;
  if ( v24[0] == 0.0 && v3 == 0.0 && v4 == 0.0 )
    ComputeNormal(a1, v24, 0);
  v5 = ComputeNormal(a1, v24, 1);
  v6 = v5;
  if ( v5 == 2 )
    return 0;
  if ( !v5 )
    return 1;
  v8 = *((_DWORD *)a1 + 24);
  if ( v8 == 100133 )
  {
    if ( v5 <= 0 )
      goto LABEL_12;
    return 1;
  }
  if ( v8 == 100134 )
    return 1;
  if ( v8 == 100132 && v5 < 0 )
    return 1;
LABEL_12:
  v9 = *((void (__fastcall **)(int, void *))a1 + 840);
  if ( v9 == __gl_noBeginData )
  {
    if ( *((_BYTE *)a1 + 121) )
    {
      v23 = 2;
    }
    else if ( *((int *)a1 + 38) <= 3 )
    {
      v23 = 4;
    }
    else
    {
      v23 = 6;
    }
    (*((void (__fastcall **)(int))a1 + 32))(v23);
  }
  else
  {
    if ( *((_BYTE *)a1 + 121) )
    {
      v10 = 2;
    }
    else if ( *((int *)a1 + 38) <= 3 )
    {
      v10 = 4;
    }
    else
    {
      v10 = 6;
    }
    v9(v10, *((void **)a1 + 910));
  }
  v11 = *((void (__fastcall **)(void *, void *))a1 + 842);
  if ( v11 == __gl_noVertexData )
    v12 = (*((int (__fastcall **)(_DWORD))a1 + 34))(*((_DWORD *)a1 + 46));
  else
    v12 = ((int (__fastcall *)(_DWORD, _DWORD))v11)(*((_DWORD *)a1 + 46), *((_DWORD *)a1 + 910));
  v13 = v6 <= 0;
  v14 = (char *)a1 + 32 * v1 + 160;
  v15 = (char *)a1 + 160;
  if ( v13 )
  {
    for ( i = v14 - 32; v15 < i; i -= 32 )
    {
      v22 = *((void (__fastcall **)(void *, void *))a1 + 842);
      if ( v22 == __gl_noVertexData )
        v12 = (*((int (__fastcall **)(_DWORD))a1 + 34))(*((_DWORD *)i + 6));
      else
        v12 = ((int (__fastcall *)(_DWORD, _DWORD))v22)(*((_DWORD *)i + 6), *((_DWORD *)a1 + 910));
    }
  }
  else
  {
    for ( j = (char *)a1 + 192; v14 > j; v12 = (*((int (__fastcall **)(int))a1 + 34))(v19) )
    {
      while ( 1 )
      {
        v18 = *((void (__fastcall **)(void *, void *))a1 + 842);
        if ( v18 == __gl_noVertexData )
          break;
        v17 = *((_DWORD *)j + 6);
        j += 32;
        v12 = ((int (__fastcall *)(int, _DWORD))v18)(v17, *((_DWORD *)a1 + 910));
        if ( v14 <= j )
          goto LABEL_27;
      }
      v19 = *((_DWORD *)j + 6);
      j += 32;
    }
  }
LABEL_27:
  v20 = *((void (__fastcall **)(void *))a1 + 843);
  if ( v20 == __gl_noEndData )
    (*((void (__fastcall **)(int))a1 + 35))(v12);
  else
    v20(*((void **)a1 + 910));
  return 1;
}


// ===== 7de614 CallCombine(GLUtesselator *,GLUvertex *,void **,float *,int) =====
int __fastcall CallCombine(int a1, int a2, _DWORD *a3, int a4, int a5)
{
  void (__fastcall *v6)(double *, void **, float *, void **, void *); // r12
  __int64 v8; // r0
  int result; // r0
  void (__fastcall *v11)(int, void *); // r3
  _QWORD v12[3]; // [sp+8h] [bp-1Ch] BYREF

  *(_DWORD *)(a2 + 12) = 0;
  v6 = *(void (__fastcall **)(double *, void **, float *, void **, void *))(a1 + 3380);
  v12[0] = *(_QWORD *)(a2 + 16);
  v8 = *(_QWORD *)(a2 + 32);
  v12[1] = *(_QWORD *)(a2 + 24);
  v12[2] = v8;
  if ( v6 == __gl_noCombineData )
    result = (*(int (__fastcall **)(_QWORD *, _DWORD *, int, int))(a1 + 116))(v12, a3, a4, a2 + 12);
  else
    result = ((int (__fastcall *)(_QWORD *, _DWORD *, int, int, _DWORD))v6)(
               v12,
               a3,
               a4,
               a2 + 12,
               *(_DWORD *)(a1 + 3640));
  if ( !*(_DWORD *)(a2 + 12) )
  {
    if ( a5 )
    {
      if ( !*(_BYTE *)(a1 + 100) )
      {
        v11 = *(void (__fastcall **)(int, void *))(a1 + 3376);
        if ( v11 == __gl_noErrorData )
          result = (*(int (__fastcall **)(int))(a1 + 12))(100156);
        else
          result = ((int (__fastcall *)(int, _DWORD))v11)(100156, *(_DWORD *)(a1 + 3640));
        *(_BYTE *)(a1 + 100) = 1;
      }
    }
    else
    {
      *(_DWORD *)(a2 + 12) = *a3;
    }
  }
  return result;
}


// ===== 7de724 VertexWeights(GLUvertex *,GLUvertex *,GLUvertex *,float *) =====
double __fastcall VertexWeights(double *a1, double *a2, double *a3, float *a4)
{
  double v6; // r0
  unsigned int v7; // r8
  unsigned int v8; // r9
  double v9; // r0
  unsigned int v10; // r10
  double v11; // r0
  unsigned int v12; // r8
  unsigned int v13; // r9
  double v14; // r0
  unsigned int v15; // r10
  double v16; // r8
  double v17; // r10
  float v18; // r0
  float v19; // r0
  double result; // r0
  double v21; // [sp+0h] [bp-1Ch]
  double v22; // [sp+10h] [bp-Ch]

  v22 = a1[5];
  v6 = a2[5] - v22;
  v7 = HIDWORD(v6);
  v8 = LODWORD(v6);
  if ( v6 < 0.0 )
    v7 = HIDWORD(v6) + 0x80000000;
  v9 = a2[6] - a1[6];
  v10 = HIDWORD(v9);
  if ( v9 < 0.0 )
    v10 = HIDWORD(v9) + 0x80000000;
  v21 = COERCE_DOUBLE(__PAIR64__(v7, v8)) + COERCE_DOUBLE(__PAIR64__(v10, LODWORD(v9)));
  v11 = a3[5] - v22;
  v12 = HIDWORD(v11);
  v13 = LODWORD(v11);
  if ( v11 < 0.0 )
    v12 = HIDWORD(v11) + 0x80000000;
  v14 = a3[6] - a1[6];
  v15 = HIDWORD(v14);
  if ( v14 < 0.0 )
    v15 = HIDWORD(v14) + 0x80000000;
  v16 = COERCE_DOUBLE(__PAIR64__(v12, v13)) + COERCE_DOUBLE(__PAIR64__(v15, LODWORD(v14)));
  v17 = v21 + v16;
  v18 = v16 * 0.5 / (v21 + v16);
  *a4 = v18;
  *(float *)&v16 = v18;
  v19 = v21 * 0.5 / v17;
  a4[1] = v19;
  a1[2] = a1[2] + *(float *)&v16 * a2[2] + v19 * a3[2];
  a1[3] = a1[3] + *a4 * a2[3] + a4[1] * a3[3];
  result = a1[4] + *a4 * a2[4] + a4[1] * a3[4];
  a1[4] = result;
  return result;
}


// ===== 7de984 AddSentinel(GLUtesselator *,double) =====
int __fastcall AddSentinel(GLUtesselator *a1, double a2)
{
  _BYTE *v5; // r5
  _DWORD *Edge; // r0
  int result; // r0

  v5 = LC_API_MALLOC_0(0x10u);
  if ( !v5 || (Edge = __gl_meshMakeEdge(*((_DWORD *)a1 + 2))) == nullptr )
    longjmp((struct __jmp_buf_tag *)((char *)a1 + 3384), 1);
  *(_QWORD *)(Edge[4] + 40) = 0x5F338D352E5096AFLL;
  *(double *)(Edge[4] + 48) = a2;
  *(_QWORD *)(*(_DWORD *)(Edge[1] + 16) + 40) = 0xDF338D352E5096AFLL;
  *(double *)(*(_DWORD *)(Edge[1] + 16) + 48) = a2;
  *((_DWORD *)a1 + 28) = *(_DWORD *)(Edge[1] + 16);
  *(_DWORD *)v5 = Edge;
  v5[14] = 0;
  *((_DWORD *)v5 + 2) = 0;
  v5[12] = 0;
  v5[15] = 0;
  v5[13] = 1;
  result = __gl_dictListInsertBefore(*((_DWORD *)a1 + 26), *((_DWORD *)a1 + 26), v5);
  *((_DWORD *)v5 + 1) = result;
  if ( !result )
    longjmp((struct __jmp_buf_tag *)((char *)a1 + 3384), 1);
  return result;
}


// ===== 7dea68 AddRegionBelow(GLUtesselator *,ActiveRegion *,GLUhalfEdge *) =====
_DWORD *__fastcall AddRegionBelow(int a1, int a2, int a3)
{
  _DWORD *v6; // r0
  _DWORD *v7; // r4
  int v8; // r0

  v6 = LC_API_MALLOC_0(0x10u);
  v7 = v6;
  if ( !v6
    || (*v6 = a3, v8 = __gl_dictListInsertBefore(*(_DWORD *)(a1 + 104), *(_DWORD *)(a2 + 4), v6), (v7[1] = v8) == 0) )
  {
    longjmp((struct __jmp_buf_tag *)(a1 + 3384), 1);
  }
  *((_BYTE *)v7 + 14) = 0;
  *((_BYTE *)v7 + 15) = 0;
  *((_BYTE *)v7 + 13) = 0;
  *(_DWORD *)(a3 + 24) = v7;
  return v7;
}


// ===== 7dead4 EdgeLeq(GLUtesselator *,ActiveRegion *,ActiveRegion *) =====
bool __fastcall EdgeLeq(int a1, int *a2, int *a3)
{
  int v3; // r3
  int v4; // r7
  int v5; // r5
  int v6; // r4
  int v7; // r1
  double v8; // r0
  int v10; // r0
  int v11; // r2
  int v12; // r1
  int v13; // r2
  int v14; // r0
  int v15; // r6
  int v16; // r5

  v3 = *a2;
  v4 = *a3;
  v5 = *(_DWORD *)(a1 + 112);
  v6 = *(_DWORD *)(*(_DWORD *)(*a2 + 4) + 16);
  if ( v6 != v5 )
  {
    v7 = *(_DWORD *)(*(_DWORD *)(v4 + 4) + 16);
    if ( v7 != v5 )
    {
      v8 = __gl_edgeEval(v6, v5, *(_DWORD *)(v3 + 16));
      return v8 >= __gl_edgeEval(*(_DWORD *)(*(_DWORD *)(v4 + 4) + 16), v5, *(_DWORD *)(v4 + 16));
    }
    v13 = *(_DWORD *)(v3 + 16);
    v14 = v6;
    return __gl_edgeSign(v14, v7, v13) >= 0.0;
  }
  v10 = *(_DWORD *)(*(_DWORD *)(v4 + 4) + 16);
  if ( v6 != v10 )
  {
    v11 = *(_DWORD *)(v4 + 16);
    v12 = *(_DWORD *)(*(_DWORD *)(*a2 + 4) + 16);
    return __gl_edgeSign(v10, v12, v11) <= 0.0;
  }
  v15 = *(_DWORD *)(v3 + 16);
  v16 = *(_DWORD *)(v4 + 16);
  if ( *(double *)(v15 + 40) < *(double *)(v16 + 40)
    || *(double *)(v15 + 40) == *(double *)(v16 + 40) && *(double *)(v15 + 48) <= *(double *)(v16 + 48) )
  {
    v11 = *(_DWORD *)(v4 + 16);
    v10 = *(_DWORD *)(*(_DWORD *)(*a2 + 4) + 16);
    v12 = *(_DWORD *)(v3 + 16);
    return __gl_edgeSign(v10, v12, v11) <= 0.0;
  }
  v13 = *(_DWORD *)(v3 + 16);
  v14 = *(_DWORD *)(*(_DWORD *)(*a2 + 4) + 16);
  v7 = *(_DWORD *)(v4 + 16);
  return __gl_edgeSign(v14, v7, v13) >= 0.0;
}


// ===== 7dec24 SpliceMergeVertices(GLUtesselator *,GLUhalfEdge *,GLUhalfEdge *) =====
int __fastcall SpliceMergeVertices(int a1, _DWORD *a2, _DWORD *a3)
{
  int v6; // r1
  int v7; // r2
  int result; // r0
  _DWORD v9[4]; // [sp+8h] [bp-20h] BYREF
  int v10; // [sp+18h] [bp-10h] BYREF
  int v11; // [sp+1Ch] [bp-Ch]
  int v12; // [sp+20h] [bp-8h]
  int v13; // [sp+24h] [bp-4h]

  v9[0] = 1056964608;
  v9[1] = 1056964608;
  v9[2] = 0;
  v9[3] = 0;
  v6 = a2[4];
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v7 = a3[4];
  v10 = *(_DWORD *)(v6 + 12);
  v11 = *(_DWORD *)(v7 + 12);
  CallCombine(a1, v6, &v10, (int)v9, 0);
  result = __gl_meshSplice(a2, a3);
  if ( !result )
    longjmp((struct __jmp_buf_tag *)(a1 + 3384), 1);
  return result;
}


// ===== 7decbc TopLeftRegion(ActiveRegion *) =====
_DWORD *__fastcall TopLeftRegion(_DWORD *a1)
{
  _DWORD *v1; // r4
  _DWORD *v3; // r5

  v1 = a1;
  do
    v1 = **(_DWORD ***)(v1[1] + 4);
  while ( *(_DWORD *)(*a1 + 16) == *(_DWORD *)(*v1 + 16) );
  if ( *((_BYTE *)v1 + 15) )
  {
    v3 = __gl_meshConnect(*(_DWORD **)(***(_DWORD ***)(v1[1] + 8) + 4), *(_DWORD **)(*v1 + 12));
    if ( v3 && __gl_meshDelete((int *)*v1) )
    {
      *((_BYTE *)v1 + 15) = 0;
      *v1 = v3;
      v3[6] = v1;
      return **(_DWORD ***)(v1[1] + 4);
    }
    else
    {
      return nullptr;
    }
  }
  return v1;
}


// ===== 7ded58 DeleteRegion(GLUtesselator *,ActiveRegion *) =====
void __fastcall DeleteRegion(int a1, void **a2)
{
  *((_DWORD *)*a2 + 6) = 0;
  __gl_dictListDelete(*(_DWORD *)(a1 + 104), a2[1]);
  free(a2);
}


// ===== 7ded84 FinishLeftRegions(GLUtesselator *,ActiveRegion *,ActiveRegion *) =====
int *__fastcall FinishLeftRegions(int a1, int **a2, int **a3)
{
  int *v5; // r7
  int **v6; // r5
  int *v7; // r2
  char v8; // r12
  void **v9; // r1
  int v10; // r3
  int *v11; // r2
  int v12; // r6
  int *v13; // r4
  char v14; // r12
  int v15; // r3

  v5 = *a2;
  if ( a2 != a3 )
  {
    v6 = a2;
    do
    {
      v11 = v6[1];
      *((_BYTE *)v6 + 15) = 0;
      v12 = *(_DWORD *)v11[2];
      v13 = *(int **)v12;
      if ( *(_DWORD *)(*(_DWORD *)v12 + 16) != v5[4] )
      {
        if ( !*(_BYTE *)(v12 + 15) )
        {
          v14 = *((_BYTE *)v6 + 12);
          v15 = (*v6)[5];
          *(_DWORD *)(v15 + 8) = *v6;
          *(_BYTE *)(v15 + 21) = v14;
          DeleteRegion(a1, (void **)v6);
          return v5;
        }
        v13 = __gl_meshConnect(*(_DWORD **)(v5[2] + 4), (_DWORD *)v13[1]);
        if ( !v13 || !__gl_meshDelete(*(int **)v12) )
LABEL_12:
          longjmp((struct __jmp_buf_tag *)(a1 + 3384), 1);
        *(_BYTE *)(v12 + 15) = 0;
        *(_DWORD *)v12 = v13;
        v13[6] = v12;
      }
      if ( (int *)v5[2] != v13 && (!__gl_meshSplice(*(_DWORD **)(v13[1] + 12), v13) || !__gl_meshSplice(v5, v13)) )
        goto LABEL_12;
      v7 = *v6;
      v8 = *((_BYTE *)v6 + 12);
      v9 = (void **)v6;
      v10 = (*v6)[5];
      v6 = (int **)v12;
      *(_DWORD *)(v10 + 8) = v7;
      *(_BYTE *)(v10 + 21) = v8;
      DeleteRegion(a1, v9);
      v5 = *(int **)v12;
    }
    while ( a3 != (int **)v12 );
  }
  return v5;
}


// ===== 7deeac CheckForRightSplice(GLUtesselator *,ActiveRegion *) =====
int __fastcall CheckForRightSplice(int a1, int *a2)
{
  int v2; // r7
  int v3; // r6
  _BYTE *v5; // r10
  int v6; // r5
  int v8; // r8
  int v9; // r8
  int v10; // r6
  int v12; // r3
  double v13; // [sp+0h] [bp-10h]
  double v14; // [sp+8h] [bp-8h]

  v2 = *a2;
  v3 = *(_DWORD *)(*a2 + 16);
  v5 = **(_BYTE ***)(a2[1] + 8);
  v14 = *(double *)(v3 + 40);
  v6 = *(_DWORD *)v5;
  v8 = *(_DWORD *)(*(_DWORD *)v5 + 16);
  v13 = *(double *)(v8 + 40);
  if ( v14 >= v13 && (v14 != v13 || *(double *)(v3 + 48) > *(double *)(v8 + 48)) )
  {
    if ( __gl_edgeSign(*(_DWORD *)(*(_DWORD *)(v2 + 4) + 16), v8, v3) >= 0.0 )
    {
      v12 = **(_DWORD **)(a2[1] + 4);
      *((_BYTE *)a2 + 14) = 1;
      *(_BYTE *)(v12 + 14) = 1;
      if ( !__gl_meshSplitEdge(*(_DWORD **)(v2 + 4))
        || !__gl_meshSplice(*(_DWORD **)(*(_DWORD *)(v6 + 4) + 12), (_DWORD *)v2) )
      {
        longjmp((struct __jmp_buf_tag *)(a1 + 3384), 1);
      }
      return 1;
    }
    return 0;
  }
  if ( __gl_edgeSign(*(_DWORD *)(*(_DWORD *)(v6 + 4) + 16), v3, v8) > 0.0 )
    return 0;
  v9 = *(_DWORD *)(v2 + 16);
  v10 = *(_DWORD *)(v6 + 16);
  if ( *(double *)(v9 + 40) == *(double *)(v10 + 40) && *(double *)(v9 + 48) == *(double *)(v10 + 48) )
  {
    if ( v9 != v10 )
    {
      __gl_pqSortDelete(*(_DWORD *)(a1 + 108), *(_DWORD *)(v9 + 56));
      SpliceMergeVertices(a1, *(_DWORD **)(*(_DWORD *)(v6 + 4) + 12), (_DWORD *)v2);
      return 1;
    }
    return 1;
  }
  if ( !__gl_meshSplitEdge(*(_DWORD **)(v6 + 4))
    || !__gl_meshSplice((_DWORD *)v2, *(_DWORD **)(*(_DWORD *)(v6 + 4) + 12)) )
  {
    longjmp((struct __jmp_buf_tag *)(a1 + 3384), 1);
  }
  v5[14] = 1;
  *((_BYTE *)a2 + 14) = 1;
  return 1;
}


// ===== 7df07c WalkDirtyRegions(GLUtesselator *,ActiveRegion *) =====
int __fastcall WalkDirtyRegions(int result, int a2)
{
  int v2; // r5
  int v3; // r4
  int *v4; // r6
  int *v5; // r7
  int v6; // r3
  int v7; // r8
  int v8; // r2
  _BYTE *v9; // r11
  int v10; // r10
  int v11; // r9
  int v12; // r3
  int v13; // r3
  _DWORD *v14; // r8
  _DWORD *v15; // r8
  double v16; // [sp+0h] [bp-1Ch]
  double v17; // [sp+8h] [bp-14h]
  int v18; // [sp+14h] [bp-8h]

  v18 = result;
  v2 = **(_DWORD **)(*(_DWORD *)(a2 + 4) + 8);
  if ( *(_BYTE *)(v2 + 14) )
    goto LABEL_23;
  while ( 1 )
  {
    if ( *(_BYTE *)(a2 + 14) )
    {
      v3 = a2;
      goto LABEL_7;
    }
    v3 = **(_DWORD **)(*(_DWORD *)(a2 + 4) + 4);
    if ( !v3 || !*(_BYTE *)(v3 + 14) )
      return result;
    v2 = a2;
LABEL_7:
    *(_BYTE *)(v3 + 14) = 0;
    v4 = *(int **)v3;
    v5 = *(int **)v2;
    v6 = *(_DWORD *)(*(_DWORD *)v2 + 4);
    v7 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)v3 + 4) + 16);
    v8 = *(_DWORD *)(v6 + 16);
    if ( v7 == v8 )
      goto LABEL_13;
    v16 = *(double *)(v7 + 40);
    v9 = **(_BYTE ***)(*(_DWORD *)(v3 + 4) + 8);
    v10 = *(_DWORD *)v9;
    v11 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)v9 + 4) + 16);
    v17 = *(double *)(v11 + 40);
    if ( v16 < v17 || v16 == v17 && *(double *)(v7 + 48) <= *(double *)(v11 + 48) )
    {
      if ( __gl_edgeSign(v7, v11, v4[4]) < 0.0 )
        goto LABEL_12;
      v13 = **(_DWORD **)(*(_DWORD *)(v3 + 4) + 4);
      *(_BYTE *)(v3 + 14) = 1;
      *(_BYTE *)(v13 + 14) = 1;
      v14 = __gl_meshSplitEdge(v4);
      if ( !v14 )
        goto LABEL_43;
      if ( !__gl_meshSplice(*(_DWORD **)(v10 + 4), v14) )
LABEL_42:
        longjmp((struct __jmp_buf_tag *)(v18 + 3384), 1);
      *(_BYTE *)(v14[5] + 21) = *(_BYTE *)(v3 + 12);
      if ( !*(_BYTE *)(v2 + 15) )
      {
LABEL_28:
        if ( *(_BYTE *)(v3 + 15) )
        {
          DeleteRegion(v18, (void **)v3);
          if ( !__gl_meshDelete(v4) )
            goto LABEL_41;
          v6 = v5[1];
          v7 = *(_DWORD *)(v6 + 16);
          v3 = **(_DWORD **)(*(_DWORD *)(v2 + 4) + 4);
          v4 = *(int **)v3;
          result = *(_DWORD *)(*(_DWORD *)v3 + 16);
          v8 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)v3 + 4) + 16);
          if ( result == v5[4] )
            goto LABEL_31;
          goto LABEL_14;
        }
LABEL_12:
        v6 = v5[1];
        v8 = *(_DWORD *)(v4[1] + 16);
        v7 = *(_DWORD *)(v6 + 16);
        goto LABEL_13;
      }
    }
    else
    {
      if ( __gl_edgeSign(v11, v7, *(_DWORD *)(v10 + 16)) > 0.0 )
        goto LABEL_12;
      v9[14] = 1;
      *(_BYTE *)(v3 + 14) = 1;
      v15 = __gl_meshSplitEdge((_DWORD *)v10);
      if ( !v15 )
LABEL_41:
        longjmp((struct __jmp_buf_tag *)(v18 + 3384), 1);
      if ( !__gl_meshSplice((_DWORD *)v4[3], *(_DWORD **)(v10 + 4)) )
LABEL_43:
        longjmp((struct __jmp_buf_tag *)(v18 + 3384), 1);
      *(_BYTE *)(*(_DWORD *)(v15[1] + 20) + 21) = *(_BYTE *)(v3 + 12);
      if ( !*(_BYTE *)(v2 + 15) )
        goto LABEL_28;
    }
    DeleteRegion(v18, (void **)v2);
    if ( !__gl_meshDelete(v5) )
      goto LABEL_42;
    v8 = *(_DWORD *)(v4[1] + 16);
    v2 = **(_DWORD **)(*(_DWORD *)(v3 + 4) + 8);
    v5 = *(int **)v2;
    v6 = *(_DWORD *)(*(_DWORD *)v2 + 4);
    v7 = *(_DWORD *)(v6 + 16);
LABEL_13:
    result = v4[4];
    if ( result == v5[4] )
      goto LABEL_31;
LABEL_14:
    if ( v8 == v7
      || *(_BYTE *)(v3 + 15)
      || *(_BYTE *)(v2 + 15)
      || (v12 = *(_DWORD *)(v18 + 112), v12 != v8) && v12 != v7 )
    {
      result = CheckForRightSplice(v18, (int *)v3);
    }
    else
    {
      result = CheckForIntersect(v18, v3);
      if ( result )
        return result;
    }
    if ( v4[4] != v5[4] )
    {
LABEL_21:
      a2 = v3;
      goto LABEL_22;
    }
    v6 = v5[1];
    v8 = *(_DWORD *)(v4[1] + 16);
    v7 = *(_DWORD *)(v6 + 16);
LABEL_31:
    if ( v8 != v7 )
      goto LABEL_21;
    v5[7] += v4[7];
    *(_DWORD *)(v6 + 28) += *(_DWORD *)(v4[1] + 28);
    DeleteRegion(v18, (void **)v3);
    result = __gl_meshDelete(v4);
    if ( !result )
      goto LABEL_41;
    a2 = **(_DWORD **)(*(_DWORD *)(v2 + 4) + 4);
LABEL_22:
    while ( *(_BYTE *)(v2 + 14) )
    {
LABEL_23:
      a2 = v2;
      v2 = **(_DWORD **)(*(_DWORD *)(v2 + 4) + 8);
    }
  }
}


// ===== 7df43c AddRightEdges(GLUtesselator *,ActiveRegion *,GLUhalfEdge *,GLUhalfEdge *,GLUhalfEdge *,char) =====
_DWORD *__fastcall AddRightEdges(int a1, int a2, int a3, int a4, int *a5, char a6)
{
  unsigned int v6; // r4
  int *v7; // r8
  _DWORD *result; // r0
  int v13; // r9
  int v14; // r7
  int *v15; // r6
  int v16; // r2
  int v17; // r3

  v7 = a5;
  do
  {
    result = AddRegionBelow(a1, a2, *(_DWORD *)(a3 + 4));
    a3 = *(_DWORD *)(a3 + 8);
  }
  while ( a3 != a4 );
  v13 = 1;
  v14 = **(_DWORD **)(*(_DWORD *)(a2 + 4) + 8);
  v15 = *(int **)(*(_DWORD *)v14 + 4);
  if ( !a5 )
    v7 = (int *)v15[2];
  if ( v15[4] == v7[4] )
  {
    while ( 2 )
    {
      if ( (int *)v15[2] == v7
        || __gl_meshSplice(*(_DWORD **)(v15[1] + 12), v15)
        && (result = (_DWORD *)__gl_meshSplice(*(_DWORD **)(v7[1] + 12), v15)) != nullptr )
      {
        v16 = *(_DWORD *)(a2 + 8) - v15[7];
        *(_DWORD *)(v14 + 8) = v16;
        switch ( *(_DWORD *)(a1 + 96) )
        {
          case 0x18722:
            LOBYTE(v6) = v16 & 1;
            goto LABEL_11;
          case 0x18723:
            LOBYTE(v6) = v16;
            if ( v16 )
              LOBYTE(v6) = 1;
            goto LABEL_11;
          case 0x18724:
            LOBYTE(v6) = v16 > 0;
            goto LABEL_11;
          case 0x18725:
            v6 = (unsigned int)v16 >> 31;
            goto LABEL_11;
          case 0x18726:
            LOBYTE(v6) = (unsigned int)(v16 + 1) > 2;
            *(_BYTE *)(v14 + 12) = v6;
            *(_BYTE *)(a2 + 14) = 1;
            if ( !v13 )
              goto LABEL_16;
            goto LABEL_12;
          default:
LABEL_11:
            *(_BYTE *)(v14 + 12) = v6;
            *(_BYTE *)(a2 + 14) = 1;
            if ( v13 )
              goto LABEL_12;
LABEL_16:
            result = (_DWORD *)CheckForRightSplice(a1, (int *)a2);
            if ( result )
            {
              v17 = v15[1];
              v15[7] += v7[7];
              *(_DWORD *)(v17 + 28) += *(_DWORD *)(v7[1] + 28);
              DeleteRegion(a1, (void **)a2);
              result = (_DWORD *)__gl_meshDelete(v7);
              if ( !result )
                break;
            }
LABEL_12:
            v7 = v15;
            a2 = v14;
            v13 = 0;
            v14 = **(_DWORD **)(*(_DWORD *)(v14 + 4) + 8);
            v15 = *(int **)(*(_DWORD *)v14 + 4);
            if ( v15[4] != v7[4] )
              goto LABEL_13;
            continue;
        }
      }
      break;
    }
    longjmp((struct __jmp_buf_tag *)(a1 + 3384), 1);
  }
LABEL_13:
  *(_BYTE *)(a2 + 14) = 1;
  if ( a6 )
    return (_DWORD *)WalkDirtyRegions(a1, a2);
  return result;
}


// ===== 7df654 CheckForIntersect(GLUtesselator *,ActiveRegion *) =====
int __fastcall CheckForIntersect(int a1, int *a2)
{
  int v2; // r6
  int v3; // r4
  int *v5; // r10
  int v6; // r9
  int v7; // r5
  int v8; // r11
  int v9; // r7
  int v11; // r7
  int v12; // r1
  int v13; // r3
  int v14; // r7
  int v15; // r10
  int v16; // r3
  _DWORD *v17; // r6
  int ***v18; // r3
  int *v19; // r5
  int *v20; // r5
  int *v21; // r7
  int *v22; // r0
  double v23; // [sp+8h] [bp-94h]
  double v24; // [sp+8h] [bp-94h]
  double v25; // [sp+8h] [bp-94h]
  double v26; // [sp+8h] [bp-94h]
  double v27; // [sp+10h] [bp-8Ch]
  double v28; // [sp+10h] [bp-8Ch]
  double v29; // [sp+10h] [bp-8Ch]
  double v30; // [sp+18h] [bp-84h]
  int v31; // [sp+18h] [bp-84h]
  double v32; // [sp+20h] [bp-7Ch]
  double v33; // [sp+20h] [bp-7Ch]
  int **v34; // [sp+2Ch] [bp-70h]
  _BYTE v36[40]; // [sp+38h] [bp-64h] BYREF
  double v37; // [sp+60h] [bp-3Ch]
  double v38; // [sp+68h] [bp-34h]
  float v39[2]; // [sp+78h] [bp-24h] BYREF
  float v40; // [sp+80h] [bp-1Ch] BYREF
  _DWORD v41[5]; // [sp+88h] [bp-14h] BYREF

  v2 = *a2;
  v3 = *(_DWORD *)(*a2 + 16);
  v34 = **(int ****)(a2[1] + 8);
  v5 = *v34;
  v6 = *(_DWORD *)(*(_DWORD *)(*a2 + 4) + 16);
  v7 = (*v34)[4];
  v8 = *(_DWORD *)((*v34)[1] + 16);
  if ( v3 == v7 )
    return 0;
  v32 = *(double *)(v3 + 48);
  v27 = *(double *)(v6 + 48);
  if ( v32 <= v27 )
    v27 = *(double *)(v3 + 48);
  v30 = *(double *)(v7 + 48);
  v23 = *(double *)(v8 + 48);
  if ( v30 >= v23 )
    v23 = *(double *)(v7 + 48);
  if ( v27 > v23 )
    return 0;
  v28 = *(double *)(v3 + 40);
  v24 = *(double *)(v7 + 40);
  if ( v28 >= v24 && (v28 != v24 || v32 > v30) )
  {
    if ( __gl_edgeSign(v6, v7, v3) >= 0.0 )
      goto LABEL_11;
    return 0;
  }
  if ( __gl_edgeSign(v8, v3, v7) > 0.0 )
    return 0;
LABEL_11:
  __gl_edgeIntersect(v6, v3, v8, v7, (int)v36);
  v31 = *(_DWORD *)(a1 + 112);
  v29 = *(double *)(v31 + 40);
  if ( v37 < v29 || v37 == v29 && v38 <= *(double *)(v31 + 48) )
  {
    v37 = *(double *)(v31 + 40);
    v38 = *(double *)(v31 + 48);
  }
  else
  {
    v29 = v37;
  }
  v33 = *(double *)(v3 + 40);
  v25 = *(double *)(v7 + 40);
  if ( v33 < v25 || v33 == v25 && *(double *)(v3 + 48) <= *(double *)(v7 + 48) )
  {
    v25 = *(double *)(v3 + 40);
    v9 = v3;
  }
  else
  {
    v9 = v7;
  }
  if ( v29 > v25 || v29 == v25 && *(double *)(v9 + 48) <= v38 )
  {
    v37 = v25;
    v38 = *(double *)(v9 + 48);
    v33 = *(double *)(v3 + 40);
  }
  else
  {
    v25 = v29;
  }
  if ( v25 == v33 && v38 == *(double *)(v3 + 48) || v25 == *(double *)(v7 + 40) && v38 == *(double *)(v7 + 48) )
  {
    CheckForRightSplice(a1, a2);
    return 0;
  }
  v26 = *(double *)(v31 + 40);
  v11 = v31;
  if ( *(double *)(v6 + 40) != v26 || *(double *)(v6 + 48) != *(double *)(v31 + 48) )
  {
    if ( __gl_edgeSign(v6, v31, (int)v36) >= 0.0 )
      goto LABEL_25;
    v11 = *(_DWORD *)(a1 + 112);
    v26 = *(double *)(v11 + 40);
  }
  if ( v26 == *(double *)(v8 + 40) && *(double *)(v8 + 48) == *(double *)(v11 + 48)
    || __gl_edgeSign(v8, v11, (int)v36) > 0.0 )
  {
    if ( __gl_meshSplitEdge(*(_DWORD **)(v2 + 4)) )
    {
      if ( __gl_meshSplitEdge((_DWORD *)v5[1]) )
      {
        if ( __gl_meshSplice(*(_DWORD **)(v5[1] + 12), (_DWORD *)v2) )
        {
          *(double *)(*(_DWORD *)(v2 + 16) + 40) = v37;
          *(double *)(*(_DWORD *)(v2 + 16) + 48) = v38;
          v14 = *(_DWORD *)(v2 + 16);
          *(_DWORD *)(v14 + 56) = __gl_pqSortInsert(*(_DWORD *)(a1 + 108), v14);
          v15 = *(_DWORD *)(v2 + 16);
          if ( *(_DWORD *)(v15 + 56) == 0x7FFFFFFF )
          {
            __gl_pqSortDeletePriorityQ(*(void **)(a1 + 108));
            *(_DWORD *)(a1 + 108) = 0;
            longjmp((struct __jmp_buf_tag *)(a1 + 3384), 1);
          }
          v41[0] = *(_DWORD *)(v3 + 12);
          v41[1] = *(_DWORD *)(v6 + 12);
          v41[2] = *(_DWORD *)(v7 + 12);
          v41[3] = *(_DWORD *)(v8 + 12);
          *(_QWORD *)(v15 + 16) = 0;
          *(_QWORD *)(v15 + 32) = 0;
          *(_QWORD *)(v15 + 24) = 0;
          VertexWeights((double *)v15, (double *)v3, (double *)v6, v39);
          VertexWeights((double *)v15, (double *)v7, (double *)v8, &v40);
          CallCombine(a1, v15, v41, (int)v39, 1);
          v16 = **(_DWORD **)(a2[1] + 4);
          *((_BYTE *)v34 + 14) = 1;
          *((_BYTE *)a2 + 14) = 1;
          *(_BYTE *)(v16 + 14) = 1;
          return 0;
        }
LABEL_68:
        longjmp((struct __jmp_buf_tag *)(a1 + 3384), 1);
      }
LABEL_69:
      longjmp((struct __jmp_buf_tag *)(a1 + 3384), 1);
    }
LABEL_70:
    longjmp((struct __jmp_buf_tag *)(a1 + 3384), 1);
  }
LABEL_25:
  v12 = *(_DWORD *)(a1 + 112);
  if ( v12 == v8 )
  {
    if ( !__gl_meshSplitEdge(*(_DWORD **)(v2 + 4)) )
      longjmp((struct __jmp_buf_tag *)(a1 + 3384), 1);
    if ( __gl_meshSplice((_DWORD *)v5[1], (_DWORD *)v2) )
    {
      v17 = TopLeftRegion(a2);
      if ( v17 )
      {
        v18 = *(int ****)(v17[1] + 8);
        v19 = **v18;
        FinishLeftRegions(a1, *v18, v34);
        AddRightEdges(a1, (int)v17, *(_DWORD *)(v19[1] + 12), (int)v19, v19, 1);
        return 1;
      }
      goto LABEL_69;
    }
    goto LABEL_70;
  }
  if ( v6 == v12 )
  {
    if ( __gl_meshSplitEdge((_DWORD *)v5[1]) )
    {
      if ( !__gl_meshSplice(*(_DWORD **)(v2 + 12), *(_DWORD **)(v5[1] + 12)) )
        longjmp((struct __jmp_buf_tag *)(a1 + 3384), 1);
      v20 = a2;
      do
        v20 = **(int ***)(v20[1] + 4);
      while ( *(_DWORD *)(*(_DWORD *)(*a2 + 4) + 16) == *(_DWORD *)(*(_DWORD *)(*v20 + 4) + 16) );
      v21 = *(int **)(*(_DWORD *)(***(_DWORD ***)(v20[1] + 8) + 4) + 8);
      *a2 = *(_DWORD *)(v5[1] + 12);
      v22 = FinishLeftRegions(a1, (int **)a2, nullptr);
      AddRightEdges(a1, (int)v20, v22[2], *(_DWORD *)(*(_DWORD *)(v2 + 4) + 8), v21, 1);
      return 1;
    }
    goto LABEL_68;
  }
  if ( __gl_edgeSign(v6, v12, (int)v36) >= 0.0 )
  {
    v13 = **(_DWORD **)(a2[1] + 4);
    *((_BYTE *)a2 + 14) = 1;
    *(_BYTE *)(v13 + 14) = 1;
    if ( !__gl_meshSplitEdge(*(_DWORD **)(v2 + 4)) )
      longjmp((struct __jmp_buf_tag *)(a1 + 3384), 1);
    *(_QWORD *)(*(_DWORD *)(v2 + 16) + 40) = *(_QWORD *)(*(_DWORD *)(a1 + 112) + 40);
    *(_QWORD *)(*(_DWORD *)(v2 + 16) + 48) = *(_QWORD *)(*(_DWORD *)(a1 + 112) + 48);
  }
  if ( __gl_edgeSign(v8, *(_DWORD *)(a1 + 112), (int)v36) > 0.0 )
    return 0;
  *((_BYTE *)v34 + 14) = 1;
  *((_BYTE *)a2 + 14) = 1;
  if ( !__gl_meshSplitEdge((_DWORD *)v5[1]) )
    longjmp((struct __jmp_buf_tag *)(a1 + 3384), 1);
  *(_QWORD *)(v5[4] + 40) = *(_QWORD *)(*(_DWORD *)(a1 + 112) + 40);
  *(_QWORD *)(v5[4] + 48) = *(_QWORD *)(*(_DWORD *)(a1 + 112) + 48);
  return 0;
}


// ===== 7dfe10 SweepEvent(GLUtesselator *,GLUvertex *) =====
_DWORD *__fastcall SweepEvent(int a1, int a2)
{
  int v3; // r2
  int v5; // r3
  _DWORD *v6; // r0
  int v7; // r0
  int ***v8; // r0
  int **v9; // r4
  int *v10; // r8
  int **v11; // r10
  int *v12; // r7
  int v13; // r7
  int v14; // r9
  int v15; // r11
  _DWORD *v16; // r0
  int *v17; // r7
  _DWORD *v19; // r0
  int v20; // r2
  int *v21; // r5
  int **v22; // r1
  int *v23; // r4
  int *v24; // r0
  int *v25; // r7
  int *v26; // r8
  int *v27; // r8
  int v28; // r7
  int v29; // r7
  int v30; // r1
  int *v31; // r8
  int v32; // r7
  int v33; // r10
  int v34; // r5
  int *v35; // r12
  _DWORD *v36; // r4
  int *v37; // r10
  int v38; // r11
  int v39; // r9
  int v40; // r11
  double v41; // r0
  int v42; // r7
  _DWORD *v43; // r4
  int *v44; // r0
  int ***v45; // r3
  double v46; // [sp+8h] [bp-2Ch]
  double v47; // [sp+8h] [bp-2Ch]
  double v48; // [sp+8h] [bp-2Ch]
  double v49; // [sp+8h] [bp-2Ch]
  double v50; // [sp+8h] [bp-2Ch]
  double v51; // [sp+10h] [bp-24h]
  double v52; // [sp+10h] [bp-24h]
  int **v53; // [sp+10h] [bp-24h]
  double v54; // [sp+10h] [bp-24h]
  int v55; // [sp+1Ch] [bp-18h]
  int v56[4]; // [sp+20h] [bp-14h] BYREF

  *(_DWORD *)(a1 + 112) = a2;
  v3 = *(_DWORD *)(a2 + 8);
  v5 = v3;
  do
  {
    v6 = *(_DWORD **)(v5 + 24);
    if ( v6 )
    {
      v21 = TopLeftRegion(v6);
      if ( !v21 )
        goto LABEL_32;
      v22 = **(int ****)(v21[1] + 8);
      v23 = *v22;
      v24 = FinishLeftRegions(a1, v22, nullptr);
      v25 = (int *)v24[2];
      v26 = v24;
      if ( v25 != v23 )
        return AddRightEdges(a1, (int)v21, (int)v25, (int)v23, v23, 1);
      v36 = (_DWORD *)*v21;
      v53 = **(int ****)(v21[1] + 8);
      v37 = *v53;
      if ( *(_DWORD *)(*(_DWORD *)(*v21 + 4) + 16) != *(_DWORD *)((*v53)[1] + 16) )
        CheckForIntersect(a1, v21);
      v38 = v36[4];
      v39 = *(_DWORD *)(a1 + 112);
      v49 = *(double *)(v39 + 40);
      if ( *(double *)(v38 + 40) == v49 && *(double *)(v38 + 48) == *(double *)(v39 + 48) )
      {
        if ( !__gl_meshSplice(*(_DWORD **)(v25[1] + 12), v36) )
          goto LABEL_32;
        v44 = TopLeftRegion(v21);
        v21 = v44;
        if ( !v44 )
          goto LABEL_32;
        v45 = *(int ****)(v44[1] + 8);
        v55 = 1;
        v25 = **v45;
        FinishLeftRegions(a1, *v45, v53);
        v39 = *(_DWORD *)(a1 + 112);
        v49 = *(double *)(v39 + 40);
      }
      else
      {
        v55 = 0;
      }
      v40 = v37[4];
      v41 = v49;
      v50 = *(double *)(v40 + 40);
      if ( v41 == v50 && *(double *)(v40 + 48) == *(double *)(v39 + 48) )
      {
        if ( !__gl_meshSplice(v26, *(_DWORD **)(v37[1] + 12)) )
          goto LABEL_32;
        v26 = FinishLeftRegions(a1, v53, nullptr);
      }
      else if ( !v55 )
      {
        v42 = v36[4];
        v54 = *(double *)(v42 + 40);
        if ( v50 < v54 || v50 == v54 && *(double *)(v40 + 48) <= *(double *)(v42 + 48) )
          v36 = *(_DWORD **)(v37[1] + 12);
        v43 = __gl_meshConnect(*(_DWORD **)(v26[2] + 4), v36);
        if ( !v43 )
          goto LABEL_32;
        AddRightEdges(a1, (int)v21, (int)v43, v43[2], (int *)v43[2], 0);
        *(_BYTE *)(*(_DWORD *)(v43[1] + 24) + 15) = 1;
        return (_DWORD *)WalkDirtyRegions(a1, (int)v21);
      }
      return AddRightEdges(a1, (int)v21, v26[2], (int)v25, v25, 1);
    }
    v5 = *(_DWORD *)(v5 + 8);
  }
  while ( v3 != v5 );
  v7 = *(_DWORD *)(a1 + 104);
  v56[0] = *(_DWORD *)(v3 + 4);
  v8 = (int ***)__gl_dictListSearch(v7, v56);
  v9 = *v8;
  v10 = **v8;
  v11 = *(int ***)(*v8)[1][2];
  v12 = *v11;
  if ( __gl_edgeSign(*(_DWORD *)(v10[1] + 16), a2, v10[4]) == 0.0 )
  {
    v27 = *v9;
    v47 = *(double *)(a2 + 40);
    v28 = (*v9)[4];
    if ( *(double *)(v28 + 40) == v47 && *(double *)(v28 + 48) == *(double *)(a2 + 48) )
      return (_DWORD *)SpliceMergeVertices(a1, v27, *(_DWORD **)(a2 + 8));
    v29 = *(_DWORD *)(v27[1] + 16);
    if ( v47 == *(double *)(v29 + 40) && *(double *)(v29 + 48) == *(double *)(a2 + 48) )
    {
      do
        v9 = *(int ***)v9[1][1];
      while ( v29 == *(_DWORD *)((*v9)[1] + 16) );
      v30 = *(_DWORD *)v9[1][2];
      v31 = *(int **)(*(_DWORD *)v30 + 4);
      v32 = v31[2];
      if ( *(_BYTE *)(v30 + 15) )
      {
        DeleteRegion(a1, (void **)v30);
        if ( !__gl_meshDelete(v31) )
          goto LABEL_32;
        v31 = *(int **)(*(_DWORD *)(v32 + 4) + 12);
      }
      if ( __gl_meshSplice(*(_DWORD **)(a2 + 8), v31) )
      {
        v33 = *(_DWORD *)(v32 + 16);
        v34 = *(_DWORD *)(*(_DWORD *)(v32 + 4) + 16);
        v52 = *(double *)(v33 + 40);
        v48 = *(double *)(v34 + 40);
        if ( v48 < v52 || v48 == v52 && *(double *)(v34 + 48) <= *(double *)(v33 + 48) )
          v35 = (int *)v32;
        else
          v35 = nullptr;
        return AddRightEdges(a1, (int)v9, v31[2], v32, v35, 1);
      }
    }
    else
    {
      if ( !__gl_meshSplitEdge((_DWORD *)v27[1]) )
        goto LABEL_32;
      if ( *((_BYTE *)v9 + 15) )
      {
        if ( !__gl_meshDelete((int *)v27[2]) )
          goto LABEL_32;
        *((_BYTE *)v9 + 15) = 0;
      }
      if ( __gl_meshSplice(*(_DWORD **)(a2 + 8), v27) )
        return (_DWORD *)SweepEvent(a1, a2);
    }
LABEL_32:
    longjmp((struct __jmp_buf_tag *)(a1 + 3384), 1);
  }
  v13 = v12[1];
  v14 = *(_DWORD *)(v13 + 16);
  v15 = *(_DWORD *)(v10[1] + 16);
  v46 = *(double *)(v14 + 40);
  v51 = *(double *)(v15 + 40);
  if ( v46 < v51 || v46 == v51 && *(double *)(v14 + 48) <= *(double *)(v15 + 48) )
    v11 = v9;
  if ( !*((_BYTE *)v9 + 12) && !*((_BYTE *)v11 + 15) )
    return AddRightEdges(a1, (int)v9, *(_DWORD *)(a2 + 8), *(_DWORD *)(a2 + 8), (int *)*((char *)v11 + 15), 1);
  if ( v9 != v11 )
  {
    v16 = __gl_meshConnect(*(_DWORD **)(*(_DWORD *)(v13 + 8) + 4), *(_DWORD **)(a2 + 8));
    if ( v16 )
    {
      v17 = (int *)v16[1];
      goto LABEL_13;
    }
    goto LABEL_32;
  }
  v17 = __gl_meshConnect(*(_DWORD **)(*(_DWORD *)(a2 + 8) + 4), (_DWORD *)v10[3]);
  if ( !v17 )
    goto LABEL_32;
LABEL_13:
  if ( *((_BYTE *)v11 + 15) )
  {
    if ( !__gl_meshDelete(*v11) )
      goto LABEL_32;
    *((_BYTE *)v11 + 15) = 0;
    *v11 = v17;
    v17[6] = (int)v11;
  }
  else
  {
    v19 = AddRegionBelow(a1, (int)v9, (int)v17);
    v20 = *(_DWORD *)(*v19 + 28) + *(_DWORD *)(**(_DWORD **)(v19[1] + 4) + 8);
    v19[2] = v20;
    switch ( *(_DWORD *)(a1 + 96) )
    {
      case 0x18722:
        *((_BYTE *)v19 + 12) = v20 & 1;
        break;
      case 0x18723:
        *((_BYTE *)v19 + 12) = v20 != 0;
        break;
      case 0x18724:
        *((_BYTE *)v19 + 12) = v20 > 0;
        break;
      case 0x18725:
        *((_BYTE *)v19 + 12) = v20 < 0;
        break;
      case 0x18726:
        *((_BYTE *)v19 + 12) = (unsigned int)(v20 + 1) > 2;
        break;
      default:
        *((_BYTE *)v19 + 12) = 0;
        break;
    }
  }
  return (_DWORD *)SweepEvent(a1, a2);
}


// ===== 7e04b4 __gl_computeInterior(GLUtesselator *) =====
int __fastcall __gl_computeInterior(GLUtesselator *a1)
{
  int v1; // r9
  int *v2; // r8
  int *v4; // r9
  int *i; // r4
  int *v6; // r3
  int *v7; // r6
  int v8; // r8
  int *v9; // r7
  int v10; // r10
  int *v11; // r3
  int v12; // r6
  _DWORD *v13; // r7
  _DWORD *v14; // r4
  int v15; // r0
  int v17; // r0
  int j; // r4
  int Min; // r0
  int v20; // r0
  _DWORD ***v21; // r0
  void **k; // r1
  int v23; // r5
  _DWORD *v24; // r4
  _DWORD *v25; // r5
  _DWORD *v26; // t1
  int *v27; // r3

  v1 = *((_DWORD *)a1 + 2);
  *((_BYTE *)a1 + 100) = 0;
  v2 = *(int **)(v1 + 88);
  v4 = (int *)(v1 + 88);
  while ( v4 != v2 )
  {
    for ( i = v2; ; i = v9 )
    {
      v8 = i[4];
      v9 = (int *)*i;
      v10 = *(_DWORD *)(i[1] + 16);
      v7 = (int *)i[3];
      if ( *(double *)(v8 + 40) != *(double *)(v10 + 40) || *(double *)(v8 + 48) != *(double *)(v10 + 48) )
        break;
      if ( i == (int *)v7[3] )
        goto LABEL_12;
      SpliceMergeVertices((int)a1, (_DWORD *)i[3], i);
      if ( !__gl_meshDelete(i) )
        goto LABEL_19;
      v6 = v7;
      v7 = (int *)v7[3];
      i = (int *)v7[3];
      if ( i == v6 )
        goto LABEL_12;
LABEL_8:
      if ( v4 == v9 )
        goto LABEL_22;
    }
    v11 = i;
    i = (int *)v7[3];
    if ( i != v11 )
      goto LABEL_8;
LABEL_12:
    v2 = v9;
    if ( i == v7 )
      goto LABEL_48;
    if ( v9 == v7 || v7 == (int *)v9[1] )
      v2 = (int *)*v9;
    if ( __gl_meshDelete(v7) )
    {
LABEL_48:
      if ( i == v2 || i == (int *)v2[1] )
        v2 = (int *)*v2;
      if ( __gl_meshDelete(i) )
        continue;
    }
LABEL_19:
    longjmp((struct __jmp_buf_tag *)((char *)a1 + 3384), 1);
  }
LABEL_22:
  v12 = __gl_pqSortNewPriorityQ((int (*)(void *, void *))__gl_vertLeq);
  *((_DWORD *)a1 + 27) = v12;
  if ( !v12 )
    return 0;
  v13 = *((_DWORD **)a1 + 2);
  v14 = (_DWORD *)*v13;
  if ( v13 == (_DWORD *)*v13 )
    goto LABEL_29;
  while ( 1 )
  {
    v15 = __gl_pqSortInsert(v12, v14);
    v14[14] = v15;
    if ( v15 == 0x7FFFFFFF )
      break;
    v14 = (_DWORD *)*v14;
    if ( v13 == v14 )
      goto LABEL_29;
  }
  if ( v13 == v14 )
  {
LABEL_29:
    if ( !__gl_pqSortInit(v12) )
      goto LABEL_28;
    v17 = __gl_dictListNewDict(a1, (int (*)(void *, void *, void *))EdgeLeq);
    *((_DWORD *)a1 + 26) = v17;
    if ( !v17 )
      goto LABEL_19;
    AddSentinel(a1, -4.0e150);
    AddSentinel(a1, 4.0e150);
    for ( j = __gl_pqSortExtractMin(*((_DWORD *)a1 + 27)); j; j = __gl_pqSortExtractMin(*((_DWORD *)a1 + 27)) )
    {
      while ( 1 )
      {
        v20 = __gl_pqSortMinimum(*((_DWORD *)a1 + 27));
        if ( !v20 || *(double *)(v20 + 40) != *(double *)(j + 40) || *(double *)(v20 + 48) != *(double *)(j + 48) )
          break;
        Min = __gl_pqSortExtractMin(*((_DWORD *)a1 + 27));
        SpliceMergeVertices((int)a1, *(_DWORD **)(j + 8), *(_DWORD **)(Min + 8));
      }
      SweepEvent((int)a1, j);
    }
    v21 = *((_DWORD ****)a1 + 26);
    *((_DWORD *)a1 + 28) = *(_DWORD *)(**v21[1] + 16);
    for ( k = (void **)*v21[1]; k; k = (void **)*v21[1] )
    {
      DeleteRegion((int)a1, k);
      v21 = *((_DWORD ****)a1 + 26);
    }
    __gl_dictListDeleteDict(v21);
    __gl_pqSortDeletePriorityQ(*((void **)a1 + 27));
    v23 = *((_DWORD *)a1 + 2);
    v26 = *(_DWORD **)(v23 + 64);
    v25 = (_DWORD *)(v23 + 64);
    v24 = v26;
    while ( v24 != v25 )
    {
      v27 = (int *)v24[2];
      v24 = (_DWORD *)*v24;
      if ( v27 == *(int **)(v27[3] + 12) )
      {
        *(_DWORD *)(v27[2] + 28) += v27[7];
        *(_DWORD *)(*(_DWORD *)(v27[2] + 4) + 28) += *(_DWORD *)(v27[1] + 28);
        if ( !__gl_meshDelete(v27) )
          return 0;
      }
    }
    return 1;
  }
  else
  {
LABEL_28:
    __gl_pqSortDeletePriorityQ(*((void **)a1 + 27));
    *((_DWORD *)a1 + 27) = 0;
    return 0;
  }
}


// ===== 7e0814 __gl_dictListSearch(DictList *,void *) =====
_DWORD *__fastcall __gl_dictListSearch(int a1, int a2)
{
  _DWORD *v4; // r4

  v4 = (_DWORD *)a1;
  do
    v4 = (_DWORD *)v4[1];
  while ( *v4 && !(*(int (__fastcall **)(_DWORD, int, _DWORD))(a1 + 16))(*(_DWORD *)(a1 + 12), a2, *v4) );
  return v4;
}


// ===== 7e0854 __gl_dictListDelete(DictList *,DictListNode *) =====
void __fastcall __gl_dictListDelete(int a1, _DWORD *p)
{
  *(_DWORD *)(p[1] + 8) = p[2];
  *(_DWORD *)(p[2] + 4) = p[1];
  free(p);
}


// ===== 7e0870 __gl_dictListDeleteDict(DictList *) =====
void __fastcall __gl_dictListDeleteDict(_DWORD *p)
{
  _DWORD *i; // r4

  for ( i = (_DWORD *)p[1]; i != p; i = (_DWORD *)i[1] )
    free(i);
  free(p);
}


// ===== 7e08a4 __gl_dictListInsertBefore(DictList *,DictListNode *,void *) =====
_DWORD *__fastcall __gl_dictListInsertBefore(int a1, _DWORD *a2, int a3)
{
  _DWORD *result; // r0

  do
    a2 = (_DWORD *)a2[2];
  while ( *a2 && !(*(int (__fastcall **)(_DWORD, _DWORD, int))(a1 + 16))(*(_DWORD *)(a1 + 12), *a2, a3) );
  result = LC_API_MALLOC_0(0xCu);
  if ( result )
  {
    *result = a3;
    result[1] = a2[1];
    *(_DWORD *)(a2[1] + 8) = result;
    result[2] = a2;
    a2[1] = result;
  }
  return result;
}


// ===== 7e0910 __gl_dictListNewDict(void *,int (*)(void *,void *,void *)) =====
_DWORD *__fastcall __gl_dictListNewDict(void *a1, int (*a2)(void *, void *, void *))
{
  _DWORD *result; // r0

  result = LC_API_MALLOC_0(0x14u);
  if ( result )
  {
    *result = 0;
    result[3] = a1;
    result[4] = a2;
    result[1] = result;
    result[2] = result;
  }
  return result;
}


// ===== 7e0948 FloatDown(PriorityQHeap *,long) =====
_DWORD *__fastcall FloatDown(_DWORD *result, int a2)
{
  int v2; // r7
  int v3; // r8
  int v4; // r6
  int v5; // r4
  int v6; // r9
  int v7; // r5
  int v8; // r10
  int v9; // r11
  int v10; // r12
  int v11; // r9
  double v12; // [sp+8h] [bp-24h]
  double v13; // [sp+8h] [bp-24h]
  double v14; // [sp+10h] [bp-1Ch]
  _DWORD *v15; // [sp+18h] [bp-14h]
  int v16; // [sp+1Ch] [bp-10h]
  _DWORD *v17; // [sp+20h] [bp-Ch]
  int v18; // [sp+24h] [bp-8h]

  v15 = result;
  v2 = *result;
  v3 = result[1];
  v4 = a2;
  v18 = *(_DWORD *)(*result + 4 * a2);
  v17 = (_DWORD *)(v3 + 8 * v18);
  while ( 1 )
  {
    v5 = 2 * v4;
    v6 = v15[2];
    if ( 2 * v4 < v6 )
    {
      v7 = *(_DWORD *)(v2 + 8 * v4);
      v8 = *(_DWORD *)(v3 + 8 * v7);
      v9 = v3 + 8 * v7;
      v16 = *(_DWORD *)(v3 + 8 * *(_DWORD *)(v2 + 4 * (v5 + 1)));
      v14 = *(double *)(v8 + 40);
      v12 = *(double *)(v16 + 40);
      result = (_DWORD *)(v12 < v14);
      v10 = v5 + 1;
      if ( v12 >= v14 )
      {
        if ( v12 != v14 )
          goto LABEL_6;
        result = (_DWORD *)(*(double *)(v16 + 48) <= *(double *)(v8 + 48));
        v10 = v5 + 1;
        if ( *(double *)(v16 + 48) > *(double *)(v8 + 48) )
          goto LABEL_6;
      }
      v5 = v10;
    }
    v7 = *(_DWORD *)(v2 + 4 * v5);
    if ( v5 > v6 )
      break;
    v8 = *(_DWORD *)(v3 + 8 * v7);
    v9 = v3 + 8 * v7;
    v14 = *(double *)(v8 + 40);
LABEL_6:
    v11 = *v17;
    v13 = *(double *)(*v17 + 40);
    result = (_DWORD *)(v14 > v13);
    if ( v14 > v13 )
      break;
    result = (_DWORD *)(v14 == v13);
    if ( v14 == v13 )
    {
      result = (_DWORD *)(*(double *)(v11 + 48) <= *(double *)(v8 + 48));
      if ( *(double *)(v11 + 48) <= *(double *)(v8 + 48) )
        break;
    }
    *(_DWORD *)(v2 + 4 * v4) = v7;
    *(_DWORD *)(v9 + 4) = v4;
    v4 = v5;
  }
  *(_DWORD *)(v2 + 4 * v4) = v18;
  v17[1] = v4;
  return result;
}


// ===== 7e0a90 FloatUp(PriorityQHeap *,long) =====
int *__fastcall FloatUp(int *result, int a2)
{
  int v2; // r9
  _DWORD *v3; // r11
  int v4; // r7
  int v5; // r4
  int v6; // r6
  _DWORD *v7; // r5
  int v8; // r8
  int v9; // r10
  int v10; // r5
  double v11; // [sp+0h] [bp-24h]
  double v12; // [sp+8h] [bp-1Ch]
  _DWORD *v13; // [sp+14h] [bp-10h]
  _DWORD *v14; // [sp+18h] [bp-Ch]
  int v15; // [sp+1Ch] [bp-8h]

  v2 = *result;
  v3 = (_DWORD *)result[1];
  v4 = a2 >> 1;
  v15 = *(_DWORD *)(*result + 4 * a2);
  if ( !(a2 >> 1) )
    v3 += 2 * *(_DWORD *)(*result + 4 * a2);
  v5 = *(_DWORD *)(v2 + 4 * v4);
  v6 = a2;
  v7 = (_DWORD *)(v2 + 4 * a2);
  if ( a2 >> 1 )
  {
    v8 = v3[2 * v5];
    v9 = v3[2 * v15];
    v13 = &v3[2 * v5];
    v12 = *(double *)(v8 + 40);
    v11 = *(double *)(v9 + 40);
    result = (int *)(v12 < v11);
    v14 = &v3[2 * v15];
    if ( v12 >= v11 )
    {
      while ( 1 )
      {
        result = (int *)(v12 == v11);
        v10 = v4 >> 1;
        if ( v12 == v11 )
        {
          result = (int *)(*(double *)(v8 + 48) <= *(double *)(v9 + 48));
          if ( *(double *)(v8 + 48) <= *(double *)(v9 + 48) )
            break;
        }
        *(_DWORD *)(v2 + 4 * v6) = v5;
        v13[1] = v6;
        v5 = *(_DWORD *)(v2 + 4 * v10);
        v6 = v4;
        if ( !v10 )
        {
          v7 = (_DWORD *)(v2 + 4 * v4);
          goto LABEL_13;
        }
        v8 = v3[2 * v5];
        v9 = *v14;
        v13 = &v3[2 * v5];
        v11 = *(double *)(*v14 + 40);
        v12 = *(double *)(v8 + 40);
        result = (int *)(v12 < v11);
        if ( v12 < v11 )
          break;
        v4 >>= 1;
      }
      v7 = (_DWORD *)(v2 + 4 * v6);
    }
  }
  else
  {
    v14 = v3;
  }
LABEL_13:
  *v7 = v15;
  v14[1] = v6;
  return result;
}


// ===== 7e0bb0 __gl_pqHeapInit(PriorityQHeap *) =====
_DWORD *__fastcall __gl_pqHeapInit(_DWORD *result)
{
  int v1; // r4
  _DWORD *v2; // r5

  v1 = result[2];
  v2 = result;
  if ( v1 > 0 )
  {
    do
      result = FloatDown(v2, v1--);
    while ( v1 );
  }
  v2[5] = 1;
  return result;
}


// ===== 7e0be4 __gl_pqHeapExtractMin(PriorityQHeap *) =====
int __fastcall __gl_pqHeapExtractMin(_DWORD *a1)
{
  int v1; // r5
  int v2; // r1
  int v3; // r12
  int v4; // r2
  int v5; // r4
  int v6; // r6
  int v7; // r12

  v1 = *a1;
  v2 = a1[2];
  v3 = a1[1];
  v4 = *(_DWORD *)(*a1 + 4);
  v5 = *(_DWORD *)(v3 + 8 * v4);
  if ( v2 > 0 )
  {
    v6 = *(_DWORD *)(v1 + 4 * v2);
    *(_DWORD *)(v1 + 4) = v6;
    *(_DWORD *)(v3 + 8 * v6 + 4) = 1;
    *(_DWORD *)(v3 + 8 * v4) = 0;
    *(_DWORD *)(v3 + 8 * v4 + 4) = a1[4];
    v7 = a1[2];
    a1[4] = v4;
    a1[2] = v7 - 1;
    if ( v7 - 1 > 0 )
      FloatDown(a1, 1);
  }
  return v5;
}


// ===== 7e0c50 __gl_pqHeapDelete(PriorityQHeap *,long) =====
int *__fastcall __gl_pqHeapDelete(int *result, int a2)
{
  int v2; // r6
  int v3; // r3
  int v4; // r8
  int v5; // r5
  int v6; // r2
  int *v8; // r4
  int v9; // r2
  int v10; // r10
  int v11; // r9
  double v12; // [sp+0h] [bp-10h]
  double v13; // [sp+8h] [bp-8h]

  v2 = result[1];
  v3 = *result;
  v4 = v2 + 8 * a2;
  v5 = *(_DWORD *)(v4 + 4);
  v6 = *(_DWORD *)(*result + 4 * result[2]);
  *(_DWORD *)(*result + 4 * v5) = v6;
  *(_DWORD *)(v2 + 8 * v6 + 4) = v5;
  v8 = result;
  v9 = result[2] - 1;
  result[2] = v9;
  if ( v5 <= v9 )
  {
    if ( v5 <= 1
      || (v10 = *(_DWORD *)(v2 + 8 * *(_DWORD *)(v3 + 4 * (v5 >> 1))),
          v11 = *(_DWORD *)(v2 + 8 * *(_DWORD *)(v3 + 4 * v5)),
          v13 = *(double *)(v10 + 40),
          v12 = *(double *)(v11 + 40),
          v13 < v12)
      || v13 == v12 && *(double *)(v10 + 48) <= *(double *)(v11 + 48) )
    {
      result = FloatDown(result, v5);
    }
    else
    {
      result = FloatUp(result, v5);
    }
  }
  *(_DWORD *)(v2 + 8 * a2) = 0;
  *(_DWORD *)(v4 + 4) = v8[4];
  v8[4] = a2;
  return result;
}


// ===== 7e0d34 __gl_pqSortExtractMin(PriorityQSort *) =====
int __fastcall __gl_pqSortExtractMin(_DWORD **a1)
{
  _DWORD *v1; // r6
  _DWORD *v2; // r7
  int v3; // r4
  int v4; // r10
  int v5; // r6
  _DWORD *v6; // r3
  int v8; // r9
  double v9; // [sp+0h] [bp-10h]
  double v10; // [sp+8h] [bp-8h]

  v1 = a1[3];
  if ( !v1 )
    return __gl_pqHeapExtractMin(*a1);
  v2 = a1[2];
  v3 = (int)v1 - 1;
  v4 = *(_DWORD *)v2[(_DWORD)v1 - 1];
  if ( (*a1)[2] )
  {
    v9 = *(double *)(v4 + 40);
    v8 = *(_DWORD *)((*a1)[1] + 8 * *(_DWORD *)(**a1 + 4));
    v10 = *(double *)(v8 + 40);
    if ( v10 < v9 || v10 == v9 && *(double *)(v8 + 48) <= *(double *)(v4 + 48) )
      return __gl_pqHeapExtractMin(*a1);
  }
  v5 = (int)v1 - 2;
  while ( 1 )
  {
    a1[3] = (_DWORD *)v3;
    if ( v3 <= 0 )
      break;
    v6 = (_DWORD *)v2[v5--];
    if ( *v6 )
      break;
    --v3;
  }
  return v4;
}


// ===== 7e0e18 __gl_pqSortMinimum(PriorityQSort *) =====
int __fastcall __gl_pqSortMinimum(_DWORD *a1)
{
  int v1; // r3
  int v2; // r5
  int v3; // r4

  v1 = a1[3];
  if ( !v1 )
    return *(_DWORD *)(*(_DWORD *)(*a1 + 4) + 8 * *(_DWORD *)(*(_DWORD *)*a1 + 4));
  v2 = **(_DWORD **)(a1[2] + 4 * (v1 - 1));
  if ( !*(_DWORD *)(*a1 + 8) )
    return **(_DWORD **)(a1[2] + 4 * (v1 - 1));
  v3 = *(_DWORD *)(*(_DWORD *)(*a1 + 4) + 8 * *(_DWORD *)(*(_DWORD *)*a1 + 4));
  if ( *(double *)(v3 + 40) >= *(double *)(v2 + 40)
    && (*(double *)(v3 + 40) != *(double *)(v2 + 40) || *(double *)(v3 + 48) > *(double *)(v2 + 48)) )
  {
    return **(_DWORD **)(a1[2] + 4 * (v1 - 1));
  }
  return v3;
}


// ===== 7e0ed4 __gl_pqSortIsEmpty(PriorityQSort *) =====
bool __fastcall __gl_pqSortIsEmpty(_DWORD *a1)
{
  return !a1[3] && *(_DWORD *)(*a1 + 8) == 0;
}


// ===== 7e0ef8 __gl_pqSortDelete(PriorityQSort *,long) =====
int *__fastcall __gl_pqSortDelete(int *result, int a2)
{
  int v2; // r3
  int v3; // r1
  int v4; // r12
  int v5; // r3
  _DWORD *v6; // r2

  if ( a2 >= 0 )
    return __gl_pqHeapDelete((int *)*result, a2);
  *(_DWORD *)(result[1] + 4 * ~a2) = 0;
  v2 = result[3];
  if ( v2 > 0 )
  {
    v3 = result[2];
    v4 = v2 - 1;
    if ( !**(_DWORD **)(v3 + 4 * (v2 - 1)) )
    {
      v5 = 4 * (v2 - 2);
      for ( result[3] = v4; v4; result[3] = --v4 )
      {
        v6 = *(_DWORD **)(v3 + v5);
        v5 -= 4;
        if ( *v6 )
          break;
      }
    }
  }
  return result;
}


// ===== 7e0f78 __gl_pqHeapInsert(PriorityQHeap *,void *) =====
int __fastcall __gl_pqHeapInsert(int a1, int a2, int a3)
{
  int v3; // r3
  int v5; // r5
  int v7; // r6
  bool v8; // zf
  void *v10; // r6
  int v11; // r3
  int v12; // r8
  void *v13; // r0
  void *v14; // r0

  v3 = *(_DWORD *)(a1 + 12);
  v5 = *(_DWORD *)(a1 + 8) + 1;
  *(_DWORD *)(a1 + 8) = v5;
  if ( v3 < 2 * v5 )
  {
    v10 = *(void **)a1;
    v11 = 2 * v3;
    *(_DWORD *)(a1 + 12) = v11;
    v12 = *(_DWORD *)(a1 + 4);
    v13 = realloc(v10, 4 * (v11 + 1));
    *(_DWORD *)a1 = v13;
    if ( !v13 )
    {
      *(_DWORD *)a1 = v10;
      return 0x7FFFFFFF;
    }
    v14 = realloc(*(void **)(a1 + 4), 8 * (*(_DWORD *)(a1 + 12) + 1));
    *(_DWORD *)(a1 + 4) = v14;
    if ( !v14 )
    {
      v7 = 0x7FFFFFFF;
      *(_DWORD *)(a1 + 4) = v12;
      return v7;
    }
  }
  v7 = *(_DWORD *)(a1 + 16);
  v8 = v7 == 0;
  if ( v7 )
  {
    a3 = *(_DWORD *)(a1 + 4);
    v3 = 8 * v7;
  }
  else
  {
    v7 = v5;
  }
  if ( v8 )
    v3 = 8 * v5;
  else
    a3 = *(_DWORD *)(a3 + v3 + 4);
  if ( !v8 )
    *(_DWORD *)(a1 + 16) = a3;
  *(_DWORD *)(*(_DWORD *)a1 + 4 * v5) = v7;
  *(_DWORD *)(*(_DWORD *)(a1 + 4) + v3 + 4) = v5;
  *(_DWORD *)(*(_DWORD *)(a1 + 4) + v3) = a2;
  if ( *(_DWORD *)(a1 + 20) )
    FloatUp((int *)a1, v5);
  return v7;
}


// ===== 7e105c __gl_pqSortInsert(PriorityQSort *,void *) =====
int __fastcall __gl_pqSortInsert(int *a1, int a2, int a3)
{
  int v5; // r5
  int v6; // r1
  _DWORD *v7; // r0
  void *v9; // r7

  if ( a1[5] )
    return __gl_pqHeapInsert(*a1, a2, a3);
  v5 = a1[3];
  v6 = a1[4];
  a1[3] = v5 + 1;
  if ( v5 + 1 < v6 )
  {
    v7 = (_DWORD *)a1[1];
LABEL_5:
    v7[v5] = a2;
    return ~v5;
  }
  v9 = (void *)a1[1];
  a1[4] = 2 * v6;
  v7 = realloc(v9, 8 * v6);
  a1[1] = (int)v7;
  if ( v7 )
    goto LABEL_5;
  a1[1] = (int)v9;
  return 0x7FFFFFFF;
}


// ===== 7e10d8 __gl_pqSortInit(PriorityQSort *) =====
char *__fastcall __gl_pqSortInit(int a1)
{
  char *result; // r0
  int v2; // r1
  unsigned int v3; // r2
  int v4; // r3
  _DWORD *v5; // r9
  unsigned int v6; // r3
  unsigned int v7; // r1
  _DWORD *v8; // r4
  double v9; // r8
  int v10; // r6
  int *v11; // r7
  _DWORD *v12; // r3
  int v13; // r2
  _DWORD *v14; // r4
  int v15; // r3
  _DWORD *v16; // r0
  int *v17; // r8
  _DWORD *v18; // r5
  int v19; // r6
  int v20; // r7
  double v21; // r10
  int v22; // t1
  _DWORD *v23; // [sp+0h] [bp-1CCh]
  double v24; // [sp+0h] [bp-1CCh]
  int *v25; // [sp+8h] [bp-1C4h]
  int v26; // [sp+Ch] [bp-1C0h]
  int v27; // [sp+10h] [bp-1BCh]
  int *v28; // [sp+14h] [bp-1B8h]
  _DWORD *v29; // [sp+18h] [bp-1B4h]
  unsigned int v30; // [sp+1Ch] [bp-1B0h]
  _DWORD *v31; // [sp+20h] [bp-1ACh]
  unsigned int v32; // [sp+24h] [bp-1A8h]
  unsigned int v33; // [sp+28h] [bp-1A4h]
  _DWORD v35[101]; // [sp+38h] [bp-194h] BYREF

  result = (char *)LC_API_MALLOC_0(4 * (*(_DWORD *)(a1 + 12) + 1));
  *(_DWORD *)(a1 + 8) = result;
  if ( result )
  {
    v2 = *(_DWORD *)(a1 + 4);
    v3 = (unsigned int)&result[4 * *(_DWORD *)(a1 + 12) - 4];
    if ( (unsigned int)result <= v3 )
    {
      v4 = 0;
      do
      {
        *(_DWORD *)&result[v4] = v2 + v4;
        v4 += 4;
      }
      while ( v3 >= (unsigned int)&result[v4] );
    }
    v35[0] = result;
    v35[1] = v3;
    v32 = 2016473283;
    v5 = v35;
    while ( 1 )
    {
      v31 = v5 + 2;
      v29 = (_DWORD *)*v5;
      v33 = *v5 + 40;
      v30 = v5[1];
      v6 = v30;
      if ( v30 <= v33 )
        goto LABEL_21;
      do
      {
        v32 = 1539415821 * v32 + 1;
        v7 = v32 % (((int)(v30 - (_DWORD)v29) >> 2) + 1);
        v8 = (_DWORD *)(v30 + 4);
        v28 = (int *)v29[v7];
        v29[v7] = *v29;
        *v29 = v28;
        v23 = v29 - 1;
        v27 = *v28;
        v9 = *(double *)(*v28 + 40);
        while ( 1 )
        {
          v25 = v23 + 1;
          v26 = v23[1];
          if ( *(double *)(*(_DWORD *)v26 + 40) < v9
            || *(double *)(*(_DWORD *)v26 + 40) == v9 && *(double *)(*(_DWORD *)v26 + 48) <= *(double *)(v27 + 48) )
          {
            break;
          }
LABEL_10:
          ++v23;
        }
        while ( 1 )
        {
          v10 = *(v8 - 1);
          v11 = v8 - 1;
          if ( *(double *)(*(_DWORD *)v10 + 40) > v9
            || *(double *)(*(_DWORD *)v10 + 40) == v9 && *(double *)(v27 + 48) <= *(double *)(*(_DWORD *)v10 + 48) )
          {
            break;
          }
          --v8;
        }
        v12 = v8--;
        *v25 = v10;
        *v11 = v26;
        if ( v25 < v11 )
        {
          v27 = *v28;
          v9 = *(double *)(*v28 + 40);
          goto LABEL_10;
        }
        v13 = *v25;
        *v25 = v26;
        *v11 = v13;
        if ( (int)(v30 - (_DWORD)v11) >> 2 <= v25 - v29 )
        {
          *(v31 - 2) = v29;
          v29 = v12;
          *(v31 - 1) = v23;
          v33 = (unsigned int)(v12 + 10);
        }
        else
        {
          *(v31 - 1) = v30;
          *(v31 - 2) = v12;
          v30 = (unsigned int)v23;
        }
        v6 = v30;
        v31 += 2;
      }
      while ( v30 > v33 );
LABEL_21:
      v14 = v29 + 1;
      if ( (unsigned int)(v29 + 1) <= v6 )
      {
        do
        {
          v17 = (int *)*v14;
          if ( v14 <= v29
            || (v19 = *v17,
                v20 = *(_DWORD *)*(v14 - 1),
                v21 = *(double *)(*v17 + 40),
                v24 = *(double *)(v20 + 40),
                v21 < v24) )
          {
            v18 = v14;
          }
          else
          {
            v18 = v14;
            do
            {
              if ( v21 == v24 && *(double *)(v19 + 48) <= *(double *)(v20 + 48) )
                break;
              v22 = *--v18;
              v18[1] = v22;
              if ( v29 >= v18 )
                break;
              v19 = *v17;
              v20 = *(_DWORD *)*(v18 - 1);
              v21 = *(double *)(*v17 + 40);
              v24 = *(double *)(v20 + 40);
            }
            while ( v21 >= v24 );
          }
          ++v14;
          *v18 = v17;
        }
        while ( v30 >= (unsigned int)v14 );
      }
      v5 = v31 - 4;
      if ( v31 - 4 < v35 )
      {
        v15 = *(_DWORD *)(a1 + 12);
        v16 = *(_DWORD **)a1;
        *(_DWORD *)(a1 + 20) = 1;
        *(_DWORD *)(a1 + 16) = v15;
        __gl_pqHeapInit(v16);
        return (_BYTE *)(&dword_0 + 1);
      }
    }
  }
  return result;
}


// ===== 7e14c4 __gl_pqHeapDeletePriorityQ(PriorityQHeap *) =====
void __fastcall __gl_pqHeapDeletePriorityQ(void **a1)
{
  free(a1[1]);
  free(*a1);
  free(a1);
}


// ===== 7e14e8 __gl_pqSortDeletePriorityQ(PriorityQSort *) =====
void __fastcall __gl_pqSortDeletePriorityQ(void ***p)
{
  void **v2; // r0
  void **v3; // r0
  void **v4; // r0

  v2 = *p;
  if ( v2 )
    __gl_pqHeapDeletePriorityQ(v2);
  v3 = p[2];
  if ( v3 )
    free(v3);
  v4 = p[1];
  if ( v4 )
    free(v4);
  free(p);
}


// ===== 7e152c __gl_pqHeapNewPriorityQ(int (*)(void *,void *)) =====
void **__fastcall __gl_pqHeapNewPriorityQ(int (*a1)(void *, void *))
{
  void **v2; // r0
  void **v3; // r4
  void *v4; // r6
  _DWORD *v5; // r3

  v2 = (void **)LC_API_MALLOC_0(0x1Cu);
  v3 = v2;
  if ( v2 )
  {
    v2[3] = &dword_20;
    v2[2] = nullptr;
    v4 = LC_API_MALLOC_0(0x84u);
    *v3 = v4;
    if ( v4 )
    {
      v4 = LC_API_MALLOC_0(0x108u);
      v3[1] = v4;
      if ( v4 )
      {
        v5 = *v3;
        v3[6] = a1;
        v3[5] = nullptr;
        v3[4] = nullptr;
        v5[1] = 1;
        *((_DWORD *)v3[1] + 2) = 0;
        return v3;
      }
      free(*v3);
    }
    free(v3);
    return (void **)v4;
  }
  return v3;
}


// ===== 7e15c4 __gl_pqSortNewPriorityQ(int (*)(void *,void *)) =====
void ***__fastcall __gl_pqSortNewPriorityQ(int (*a1)(void *, void *))
{
  void ***v2; // r4
  void **v3; // r6

  v2 = (void ***)LC_API_MALLOC_0(0x1Cu);
  if ( v2 )
  {
    v3 = __gl_pqHeapNewPriorityQ(a1);
    *v2 = v3;
    if ( v3 )
    {
      v3 = (void **)LC_API_MALLOC_0(0x80u);
      v2[1] = v3;
      if ( v3 )
      {
        v2[4] = (void **)&dword_20;
        v2[5] = nullptr;
        v2[6] = (void **)a1;
        v2[3] = nullptr;
        return v2;
      }
      __gl_pqHeapDeletePriorityQ(*v2);
    }
    free(v2);
    return (void ***)v3;
  }
  return v2;
}


// ===== 7e1644 b2Body::~b2Body() =====
void __fastcall b2Body::~b2Body(b2Body *this)
{
  ;
}


// ===== 7e1648 b2Body::~b2Body() =====
void __fastcall b2Body::~b2Body(b2Body *this)
{
  ;
}


// ===== 7e164c b2Body::SetXForm(b2Vec2 const&,float) =====
int __fastcall b2Body::SetXForm(b2Body *this, const b2Vec2 *a2, float x)
{
  int v3; // r8
  float v8; // r7
  float v9; // r0
  float v10; // r9
  float v11; // r11
  float v12; // r0
  int v13; // r5
  int v14; // r3
  b2Shape *v15; // r5

  v3 = *((_DWORD *)this + 22);
  if ( *(_BYTE *)(v3 + 102868) )
    return 1;
  if ( (*(_WORD *)this & 2) == 0 )
  {
    v8 = cosf(x);
    v9 = sinf(x);
    *((_DWORD *)this + 5) = LODWORD(v9) + 0x80000000;
    *((float *)this + 3) = v8;
    *((float *)this + 4) = v9;
    *((float *)this + 6) = v8;
    v10 = *((float *)this + 7);
    *((_DWORD *)this + 1) = *(_DWORD *)a2;
    *((_DWORD *)this + 2) = *((_DWORD *)a2 + 1);
    LODWORD(v11) = LODWORD(v9) + 0x80000000;
    v12 = (float)((float)(v10 * v9) + (float)(*((float *)this + 8) * v8)) + *((float *)this + 2);
    *((float *)this + 11) = (float)((float)(v10 * v8) + (float)(*((float *)this + 8) * v11)) + *((float *)this + 1);
    *((float *)this + 12) = v12;
    v13 = *((_DWORD *)this + 25);
    v14 = *((_DWORD *)this + 12);
    *((_DWORD *)this + 9) = *((_DWORD *)this + 11);
    *((_DWORD *)this + 10) = v14;
    *((float *)this + 13) = x;
    *((float *)this + 14) = x;
    if ( v13 )
    {
      while ( b2Shape::Synchronize(v13, *(_DWORD *)(v3 + 102872), (char *)this + 4, (char *)this + 4) )
      {
        v13 = *(_DWORD *)(v13 + 8);
        if ( !v13 )
        {
          v3 = *((_DWORD *)this + 22);
          goto LABEL_5;
        }
        v3 = *((_DWORD *)this + 22);
      }
      v15 = *((b2Shape **)this + 25);
      *(_WORD *)this |= 2u;
      *((_DWORD *)this + 18) = 0;
      *((_DWORD *)this + 16) = 0;
      for ( *((_DWORD *)this + 17) = 0; v15; v15 = *((b2Shape **)v15 + 2) )
        b2Shape::DestroyProxy(v15, *(b2BroadPhase **)(*((_DWORD *)this + 22) + 102872));
      return 0;
    }
LABEL_5:
    b2BroadPhase::Commit(*(b2BroadPhase **)(v3 + 102872));
    return 1;
  }
  return 0;
}


// ===== 7e1818 b2Body::SetMassFromShapes(void) =====
int __fastcall b2Body::SetMassFromShapes(int this)
{
  int v1; // r4
  _DWORD *v2; // r5
  float v3; // r8
  float v4; // r7
  _DWORD *v5; // r6
  float v6; // r0
  float v7; // r6
  float v8; // r0
  float v9; // r0
  int v10; // r3
  _DWORD *v11; // r5
  __int16 v12; // r5
  int v13; // r3
  int i; // r5
  float v15; // r0
  float v16[4]; // [sp+0h] [bp-10h] BYREF

  v1 = this;
  if ( !*(_BYTE *)(*(_DWORD *)(this + 88) + 102868) )
  {
    v2 = *(_DWORD **)(this + 100);
    *(_DWORD *)(this + 128) = 0;
    *(_DWORD *)(this + 116) = 0;
    *(_DWORD *)(this + 120) = 0;
    *(_DWORD *)(this + 124) = 0;
    v3 = *(float *)&b2Vec2_zero;
    v4 = *(float *)&dword_A2ED44;
    v5 = v2;
    if ( v2 )
    {
      do
      {
        (*(void (__fastcall **)(_DWORD *, float *))(*v2 + 16))(v2, v16);
        v6 = *(float *)(v1 + 116) + v16[0];
        v7 = v16[0];
        *(float *)(v1 + 116) = v6;
        v3 = v3 + (float)(v7 * v16[1]);
        v4 = v4 + (float)(v7 * v16[2]);
        *(float *)(v1 + 124) = *(float *)(v1 + 124) + v16[3];
        v2 = (_DWORD *)v2[2];
      }
      while ( v2 );
      if ( v6 > 0.0 )
      {
        v8 = 1.0 / v6;
        *(float *)(v1 + 120) = v8;
        v3 = v3 * v8;
        v4 = v4 * v8;
      }
      v5 = *(_DWORD **)(v1 + 100);
    }
    if ( *(float *)(v1 + 124) <= 0.0 || (*(_WORD *)v1 & 0x40) != 0 )
    {
      *(_DWORD *)(v1 + 128) = 0;
      *(_DWORD *)(v1 + 124) = 0;
    }
    else
    {
      v15 = *(float *)(v1 + 124) - (float)((float)((float)(v3 * v3) + (float)(v4 * v4)) * *(float *)(v1 + 116));
      *(float *)(v1 + 124) = v15;
      *(float *)(v1 + 128) = 1.0 / v15;
    }
    *(float *)(v1 + 32) = v4;
    *(float *)(v1 + 28) = v3;
    v9 = (float)((float)(v3 * *(float *)(v1 + 16)) + (float)(v4 * *(float *)(v1 + 24))) + *(float *)(v1 + 8);
    *(float *)(v1 + 44) = (float)((float)(v3 * *(float *)(v1 + 12)) + (float)(v4 * *(float *)(v1 + 20)))
                        + *(float *)(v1 + 4);
    *(float *)(v1 + 48) = v9;
    v10 = *(_DWORD *)(v1 + 48);
    v11 = v5;
    *(_DWORD *)(v1 + 36) = *(_DWORD *)(v1 + 44);
    for ( *(_DWORD *)(v1 + 40) = v10; v11; v11 = (_DWORD *)v11[2] )
      (*(void (__fastcall **)(_DWORD *, int))(*v11 + 28))(v11, v1 + 28);
    this = *(float *)(v1 + 120) == 0.0;
    v12 = *(_WORD *)(v1 + 2);
    if ( *(float *)(v1 + 120) == 0.0 && (this = *(float *)(v1 + 128) == 0.0) != 0 )
    {
      *(_WORD *)(v1 + 2) = 0;
      v13 = 0;
    }
    else
    {
      *(_WORD *)(v1 + 2) = 1;
      v13 = 1;
    }
    if ( v12 != v13 )
    {
      for ( i = *(_DWORD *)(v1 + 100); i; i = *(_DWORD *)(i + 8) )
        this = b2Shape::RefilterProxy(i, *(b2BroadPhase **)(*(_DWORD *)(v1 + 88) + 102872));
    }
  }
  return this;
}


// ===== 7e1b28 b2Body::SetMass(b2MassData const*) =====
int __fastcall b2Body::SetMass(int result, int a2)
{
  int v2; // r4
  float v4; // r6
  float v5; // r6
  float v6; // r1
  float v7; // r6
  float v8; // r0
  _DWORD *v9; // r5
  int v10; // r3
  __int16 v11; // r5
  int v12; // r3
  int i; // r5

  v2 = result;
  if ( !*(_BYTE *)(*(_DWORD *)(result + 88) + 102868) )
  {
    *(_DWORD *)(result + 120) = 0;
    *(_DWORD *)(result + 124) = 0;
    *(_DWORD *)(result + 128) = 0;
    v4 = *(float *)a2;
    *(_DWORD *)(result + 116) = *(_DWORD *)a2;
    if ( v4 > 0.0 )
      *(float *)(result + 120) = 1.0 / v4;
    if ( (*(_WORD *)result & 0x40) != 0 )
      v5 = *(float *)(result + 124);
    else
      v5 = *(float *)(a2 + 12);
    if ( (*(_WORD *)result & 0x40) == 0 )
      *(float *)(result + 124) = v5;
    if ( v5 > 0.0 )
      *(float *)(result + 128) = 1.0 / v5;
    v6 = *(float *)(result + 12);
    *(_DWORD *)(result + 28) = *(_DWORD *)(a2 + 4);
    v7 = *(float *)(result + 28);
    *(_DWORD *)(result + 32) = *(_DWORD *)(a2 + 8);
    v8 = (float)((float)(v7 * *(float *)(result + 16)) + (float)(*(float *)(result + 32) * *(float *)(result + 24)))
       + *(float *)(result + 8);
    *(float *)(v2 + 44) = (float)((float)(v7 * v6) + (float)(*(float *)(v2 + 32) * *(float *)(v2 + 20)))
                        + *(float *)(v2 + 4);
    *(float *)(v2 + 48) = v8;
    v9 = *(_DWORD **)(v2 + 100);
    v10 = *(_DWORD *)(v2 + 48);
    *(_DWORD *)(v2 + 36) = *(_DWORD *)(v2 + 44);
    for ( *(_DWORD *)(v2 + 40) = v10; v9; v9 = (_DWORD *)v9[2] )
      (*(void (__fastcall **)(_DWORD *, int))(*v9 + 28))(v9, v2 + 28);
    result = *(float *)(v2 + 120) == 0.0;
    v11 = *(_WORD *)(v2 + 2);
    if ( *(float *)(v2 + 120) == 0.0 && (result = *(float *)(v2 + 128) == 0.0) != 0 )
    {
      *(_WORD *)(v2 + 2) = 0;
      v12 = 0;
    }
    else
    {
      *(_WORD *)(v2 + 2) = 1;
      v12 = 1;
    }
    if ( v11 != v12 )
    {
      for ( i = *(_DWORD *)(v2 + 100); i; i = *(_DWORD *)(i + 8) )
        result = b2Shape::RefilterProxy(i, *(b2BroadPhase **)(*(_DWORD *)(v2 + 88) + 102872));
    }
  }
  return result;
}


// ===== 7e1d24 b2Body::DestroyShape(b2Shape *) =====
_DWORD *__fastcall b2Body::DestroyShape(_DWORD *this, b2Shape *a2)
{
  int v2; // r2
  _DWORD *v3; // r5
  b2BlockAllocator *v5; // r2
  b2Shape *v6; // r3
  b2Shape *v7; // r1

  v2 = *(this + 22);
  v3 = this;
  if ( !*(_BYTE *)(v2 + 102868) )
  {
    b2Shape::DestroyProxy(a2, *(b2BroadPhase **)(v2 + 102872));
    v6 = (b2Shape *)v3[25];
    if ( v6 )
    {
      if ( a2 == v6 )
      {
        v5 = (b2BlockAllocator *)(v3 + 25);
LABEL_9:
        *(_DWORD *)v5 = *((_DWORD *)a2 + 2);
      }
      else
      {
        while ( 1 )
        {
          v5 = (b2Shape *)((char *)v6 + 8);
          v6 = *((b2Shape **)v6 + 2);
          if ( !v6 )
            break;
          if ( a2 == v6 )
            goto LABEL_9;
        }
      }
    }
    *((_DWORD *)a2 + 2) = 0;
    *((_DWORD *)a2 + 3) = 0;
    v7 = (b2Shape *)v3[22];
    --v3[26];
    return (_DWORD *)b2Shape::Destroy(a2, v7, v5);
  }
  return this;
}


// ===== 7e1dc8 b2Body::CreateShape(b2ShapeDef *) =====
int __fastcall b2Body::CreateShape(b2Body *this, b2ShapeDef *a2)
{
  const b2ShapeDef *v2; // r2
  int v4; // r5
  int v5; // r0
  int v6; // r1

  v2 = *((const b2ShapeDef **)this + 22);
  if ( *((_BYTE *)v2 + 102868) )
    return 0;
  v5 = b2Shape::Create(a2, v2, v2);
  *(_DWORD *)(v5 + 8) = *((_DWORD *)this + 25);
  v6 = *((_DWORD *)this + 26);
  *((_DWORD *)this + 25) = v5;
  v4 = v5;
  *((_DWORD *)this + 26) = v6 + 1;
  *(_DWORD *)(v5 + 12) = this;
  b2Shape::CreateProxy();
  (*(void (__fastcall **)(int, char *))(*(_DWORD *)v4 + 28))(v4, (char *)this + 28);
  return v4;
}


// ===== 7e1e4c b2Body::b2Body(b2BodyDef const*,b2World *) =====
int __fastcall b2Body::b2Body(int a1, int a2, int a3)
{
  int v5; // r3
  float v6; // r7
  float v7; // r6
  float v8; // r0
  float v9; // r10
  int v10; // r3
  float v11; // r8
  int v12; // r3
  float v13; // r0
  int v14; // r2
  int v15; // r2
  float v16; // r6
  float v17; // r6
  int v18; // r2

  *(_WORD *)a1 = 0;
  if ( *(_BYTE *)(a2 + 43) )
    *(_WORD *)a1 = 32;
  if ( *(_BYTE *)(a2 + 42) )
    *(_WORD *)a1 |= 0x40u;
  if ( *(_BYTE *)(a2 + 40) )
    *(_WORD *)a1 |= 0x10u;
  v5 = *(unsigned __int8 *)(a2 + 41);
  *(_DWORD *)(a1 + 88) = a3;
  if ( v5 )
    *(_WORD *)a1 |= 8u;
  *(_DWORD *)(a1 + 4) = *(_DWORD *)(a2 + 20);
  *(_DWORD *)(a1 + 8) = *(_DWORD *)(a2 + 24);
  v6 = *(float *)(a2 + 28);
  v7 = cosf(v6);
  v8 = sinf(v6);
  LODWORD(v9) = LODWORD(v8) + 0x80000000;
  *(float *)(a1 + 12) = v7;
  *(_DWORD *)(a1 + 20) = LODWORD(v8) + 0x80000000;
  *(float *)(a1 + 16) = v8;
  *(float *)(a1 + 24) = v7;
  *(_DWORD *)(a1 + 28) = *(_DWORD *)(a2 + 4);
  v10 = *(_DWORD *)(a2 + 8);
  *(_DWORD *)(a1 + 60) = 1065353216;
  v11 = *(float *)(a1 + 28);
  *(_DWORD *)(a1 + 32) = v10;
  v12 = *(_DWORD *)(a2 + 28);
  *(_DWORD *)(a1 + 52) = v12;
  *(_DWORD *)(a1 + 56) = v12;
  v13 = (float)((float)(v11 * v8) + (float)(*(float *)(a1 + 32) * v7)) + *(float *)(a1 + 8);
  *(float *)(a1 + 44) = (float)((float)(v11 * v7) + (float)(*(float *)(a1 + 32) * v9)) + *(float *)(a1 + 4);
  *(float *)(a1 + 48) = v13;
  v14 = *(_DWORD *)(a1 + 48);
  *(_DWORD *)(a1 + 36) = *(_DWORD *)(a1 + 44);
  *(_DWORD *)(a1 + 40) = v14;
  *(_DWORD *)(a1 + 96) = 0;
  *(_DWORD *)(a1 + 108) = 0;
  *(_DWORD *)(a1 + 112) = 0;
  *(_DWORD *)(a1 + 92) = 0;
  *(_DWORD *)(a1 + 132) = *(_DWORD *)(a2 + 32);
  v15 = *(_DWORD *)(a2 + 36);
  *(_DWORD *)(a1 + 76) = 0;
  *(_DWORD *)(a1 + 80) = 0;
  *(_DWORD *)(a1 + 136) = v15;
  *(_DWORD *)(a1 + 84) = 0;
  *(_DWORD *)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 68) = 0;
  *(_DWORD *)(a1 + 72) = 0;
  *(_DWORD *)(a1 + 140) = 0;
  *(_DWORD *)(a1 + 120) = 0;
  *(_DWORD *)(a1 + 124) = 0;
  *(_DWORD *)(a1 + 128) = 0;
  v16 = *(float *)a2;
  *(_DWORD *)(a1 + 116) = *(_DWORD *)a2;
  if ( v16 > 0.0 )
    *(float *)(a1 + 120) = 1.0 / v16;
  if ( (*(_WORD *)a1 & 0x40) != 0 )
    v17 = *(float *)(a1 + 124);
  else
    v17 = *(float *)(a2 + 12);
  if ( (*(_WORD *)a1 & 0x40) == 0 )
    *(float *)(a1 + 124) = v17;
  if ( v17 > 0.0 )
    *(float *)(a1 + 128) = 1.0 / v17;
  *(_WORD *)(a1 + 2) = *(float *)(a1 + 120) != 0.0 || *(float *)(a1 + 128) != 0.0;
  v18 = *(_DWORD *)(a2 + 16);
  *(_DWORD *)(a1 + 104) = 0;
  *(_DWORD *)(a1 + 144) = v18;
  *(_DWORD *)(a1 + 100) = 0;
  return a1;
}


// ===== 7e20ac b2Body::SynchronizeShapes(void) =====
int __fastcall b2Body::SynchronizeShapes(b2Body *this)
{
  float v1; // r6
  float v3; // r4
  float v4; // r0
  float v5; // r8
  float v6; // r7
  float v7; // r0
  float v8; // r6
  int v9; // r4
  int v10; // r6
  b2Shape *v11; // r4
  int v12; // r6
  _DWORD v14[4]; // [sp+0h] [bp-18h] BYREF
  float v15; // [sp+10h] [bp-8h]
  float v16; // [sp+14h] [bp-4h]

  v1 = *((float *)this + 13);
  v3 = cosf(v1);
  v4 = sinf(v1);
  v5 = *((float *)this + 7);
  v6 = *((float *)this + 8);
  *(float *)&v14[2] = v3;
  LODWORD(v15) = LODWORD(v4) + 0x80000000;
  *(float *)&v14[3] = v4;
  v16 = v3;
  v7 = (float)(v5 * v4) + (float)(v6 * v3);
  v8 = *((float *)this + 9) - (float)((float)(v5 * v3) + (float)(v6 * v15));
  v9 = *((_DWORD *)this + 25);
  *(float *)&v14[1] = *((float *)this + 10) - v7;
  *(float *)v14 = v8;
  if ( !v9 )
    return 1;
  v10 = 102872;
  while ( b2Shape::Synchronize(v9, *(_DWORD *)(*((_DWORD *)this + 22) + 102872), v14, (char *)this + 4) )
  {
    v9 = *(_DWORD *)(v9 + 8);
    if ( !v9 )
      return 1;
  }
  v11 = *((b2Shape **)this + 25);
  if ( v11 )
    v10 = 102400;
  *(_WORD *)this |= 2u;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  if ( v11 )
  {
    v12 = v10 + 472;
    do
    {
      b2Shape::DestroyProxy(v11, *(b2BroadPhase **)(*((_DWORD *)this + 22) + v12));
      v11 = *((b2Shape **)v11 + 2);
    }
    while ( v11 );
  }
  return 0;
}


// ===== 7e2218 b2Body::b2Body(b2BodyDef const*,b2World *) =====
int __fastcall b2Body::b2Body(int a1, int a2, int a3)
{
  int v5; // r3
  float v6; // r7
  float v7; // r6
  float v8; // r0
  float v9; // r10
  int v10; // r3
  float v11; // r8
  int v12; // r3
  float v13; // r0
  int v14; // r2
  int v15; // r2
  float v16; // r6
  float v17; // r6
  int v18; // r2

  *(_WORD *)a1 = 0;
  if ( *(_BYTE *)(a2 + 43) )
    *(_WORD *)a1 = 32;
  if ( *(_BYTE *)(a2 + 42) )
    *(_WORD *)a1 |= 0x40u;
  if ( *(_BYTE *)(a2 + 40) )
    *(_WORD *)a1 |= 0x10u;
  v5 = *(unsigned __int8 *)(a2 + 41);
  *(_DWORD *)(a1 + 88) = a3;
  if ( v5 )
    *(_WORD *)a1 |= 8u;
  *(_DWORD *)(a1 + 4) = *(_DWORD *)(a2 + 20);
  *(_DWORD *)(a1 + 8) = *(_DWORD *)(a2 + 24);
  v6 = *(float *)(a2 + 28);
  v7 = cosf(v6);
  v8 = sinf(v6);
  LODWORD(v9) = LODWORD(v8) + 0x80000000;
  *(float *)(a1 + 12) = v7;
  *(_DWORD *)(a1 + 20) = LODWORD(v8) + 0x80000000;
  *(float *)(a1 + 16) = v8;
  *(float *)(a1 + 24) = v7;
  *(_DWORD *)(a1 + 28) = *(_DWORD *)(a2 + 4);
  v10 = *(_DWORD *)(a2 + 8);
  *(_DWORD *)(a1 + 60) = 1065353216;
  v11 = *(float *)(a1 + 28);
  *(_DWORD *)(a1 + 32) = v10;
  v12 = *(_DWORD *)(a2 + 28);
  *(_DWORD *)(a1 + 52) = v12;
  *(_DWORD *)(a1 + 56) = v12;
  v13 = (float)((float)(v11 * v8) + (float)(*(float *)(a1 + 32) * v7)) + *(float *)(a1 + 8);
  *(float *)(a1 + 44) = (float)((float)(v11 * v7) + (float)(*(float *)(a1 + 32) * v9)) + *(float *)(a1 + 4);
  *(float *)(a1 + 48) = v13;
  v14 = *(_DWORD *)(a1 + 48);
  *(_DWORD *)(a1 + 36) = *(_DWORD *)(a1 + 44);
  *(_DWORD *)(a1 + 40) = v14;
  *(_DWORD *)(a1 + 96) = 0;
  *(_DWORD *)(a1 + 108) = 0;
  *(_DWORD *)(a1 + 112) = 0;
  *(_DWORD *)(a1 + 92) = 0;
  *(_DWORD *)(a1 + 132) = *(_DWORD *)(a2 + 32);
  v15 = *(_DWORD *)(a2 + 36);
  *(_DWORD *)(a1 + 76) = 0;
  *(_DWORD *)(a1 + 80) = 0;
  *(_DWORD *)(a1 + 136) = v15;
  *(_DWORD *)(a1 + 84) = 0;
  *(_DWORD *)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 68) = 0;
  *(_DWORD *)(a1 + 72) = 0;
  *(_DWORD *)(a1 + 140) = 0;
  *(_DWORD *)(a1 + 120) = 0;
  *(_DWORD *)(a1 + 124) = 0;
  *(_DWORD *)(a1 + 128) = 0;
  v16 = *(float *)a2;
  *(_DWORD *)(a1 + 116) = *(_DWORD *)a2;
  if ( v16 > 0.0 )
    *(float *)(a1 + 120) = 1.0 / v16;
  if ( (*(_WORD *)a1 & 0x40) != 0 )
    v17 = *(float *)(a1 + 124);
  else
    v17 = *(float *)(a2 + 12);
  if ( (*(_WORD *)a1 & 0x40) == 0 )
    *(float *)(a1 + 124) = v17;
  if ( v17 > 0.0 )
    *(float *)(a1 + 128) = 1.0 / v17;
  *(_WORD *)(a1 + 2) = *(float *)(a1 + 120) != 0.0 || *(float *)(a1 + 128) != 0.0;
  v18 = *(_DWORD *)(a2 + 16);
  *(_DWORD *)(a1 + 104) = 0;
  *(_DWORD *)(a1 + 144) = v18;
  *(_DWORD *)(a1 + 100) = 0;
  return a1;
}


// ===== 7e2478 b2BroadPhase::~b2BroadPhase() =====
void __fastcall b2BroadPhase::~b2BroadPhase(b2BroadPhase *this)
{
  ;
}


// ===== 7e247c b2BroadPhase::~b2BroadPhase() =====
void __fastcall b2BroadPhase::~b2BroadPhase(b2BroadPhase *this)
{
  ;
}


// ===== 7e2480 b2BroadPhase::TestOverlap(b2Proxy *,b2Proxy *) =====
bool __fastcall b2BroadPhase::TestOverlap(int a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  return *(unsigned __int16 *)(a1 + 327702 + 6 * *a2) <= (unsigned int)*(unsigned __int16 *)(a1 + 327702 + 6 * a3[2])
      && *(unsigned __int16 *)(a1 + 327702 + 6 * a2[2]) >= (unsigned int)*(unsigned __int16 *)(a1 + 327702 + 6 * *a3)
      && *(unsigned __int16 *)(a1 + 352278 + 6 * a2[1]) <= (unsigned int)*(unsigned __int16 *)(a1 + 352278 + 6 * a3[3])
      && *(unsigned __int16 *)(a1 + 352278 + 6 * a2[3]) >= (unsigned int)*(unsigned __int16 *)(a1 + 352278 + 6 * a3[1]);
}


// ===== 7e252c b2BroadPhase::TestOverlap(b2BoundValues const&,b2Proxy *) =====
bool __fastcall b2BroadPhase::TestOverlap(int a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  int v3; // r0

  if ( *a2 > (unsigned int)*(unsigned __int16 *)(a1 + 327702 + 6 * a3[2]) )
    return 0;
  if ( a2[2] < (unsigned int)*(unsigned __int16 *)(a1 + 327702 + 6 * *a3) )
    return 0;
  v3 = a1 + 352278;
  return a2[1] <= (unsigned int)*(unsigned __int16 *)(v3 + 6 * a3[3])
      && a2[3] >= (unsigned int)*(unsigned __int16 *)(v3 + 6 * a3[1]);
}


// ===== 7e25b8 b2BroadPhase::ComputeBounds(ushort *,ushort *,b2AABB const&) =====
unsigned int __fastcall b2BroadPhase::ComputeBounds(float *a1, _WORD *a2, _WORD *a3, float *a4)
{
  float v4; // r5
  float v5; // r8
  float v6; // r9
  float v7; // r7
  float v8; // r10
  float v9; // r6
  unsigned int result; // r0

  v4 = *a4;
  v5 = a4[1];
  if ( *a4 >= a1[95241] )
    v4 = a1[95241];
  v6 = a1[95239];
  if ( a4[1] >= a1[95242] )
    v5 = a1[95242];
  v7 = a1[95240];
  if ( a1[95239] > v4 )
    v4 = a1[95239];
  v8 = a4[2];
  if ( a1[95240] > v5 )
    v5 = a1[95240];
  v9 = a4[3];
  if ( a1[95241] <= a4[2] )
    v8 = a1[95241];
  if ( a1[95242] <= v9 )
    v9 = a1[95242];
  if ( v6 > v8 )
    v8 = a1[95239];
  if ( v7 <= v9 )
    v7 = v9;
  *a2 = (unsigned int)(float)((float)(v4 - v6) * a1[95243]) & 0xFFFE;
  *a3 = (unsigned int)(float)((float)(v8 - a1[95239]) * a1[95243]) | 1;
  a2[1] = (unsigned int)(float)((float)(v5 - a1[95240]) * a1[95244]) & 0xFFFE;
  result = (unsigned int)(float)((float)(v7 - a1[95240]) * a1[95244]) | 1;
  a3[1] = result;
  return result;
}


// ===== 7e276c b2BroadPhase::IncrementTimeStamp(void) =====
int __fastcall b2BroadPhase::IncrementTimeStamp(int this)
{
  int v1; // r2
  int i; // r3
  int v3; // r2

  v1 = *(unsigned __int16 *)(this + 380984);
  if ( v1 == 0xFFFF )
  {
    for ( i = 0; i != 0x8000; i += 16 )
    {
      v3 = this + i;
      *(_WORD *)(v3 + 294942) = 0;
    }
    *(_WORD *)(this + 380984) = 1;
  }
  else
  {
    *(_WORD *)(this + 380984) = v1 + 1;
  }
  return this;
}

