// ===== 787e80 gameswf::array<gameswf::point>::~array() =====
_DWORD *__fastcall gameswf::array<gameswf::point>::~array(_DWORD *a1)
{
  int v1; // r2
  int v3; // r3
  _DWORD *v4; // r12

  v1 = a1[1];
  if ( v1 < 0 )
  {
    v3 = 8 * v1;
    do
    {
      ++v1;
      v4 = (_DWORD *)(*a1 + v3);
      *v4 = 0;
      v4[1] = 0;
      v3 += 8;
    }
    while ( v1 );
  }
  a1[1] = 0;
  gameswf::array<gameswf::point>::reserve((int)a1, 0);
  return a1;
}


// ===== 787eec gameswf::array<gameswf::final_shape::segment>::push_back<gameswf::final_shape::segment>(gameswf::final_shape::segment const&) =====
void __fastcall gameswf::array<gameswf::final_shape::segment>::push_back<gameswf::final_shape::segment>(
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
    gameswf::array<gameswf::final_shape::segment>::reserve((int)a1, v4 + (v4 >> 1));
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
    gameswf::array<gameswf::point>::reserve(v7, v8 + (v8 >> 1));
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


// ===== 787fc8 gameswf::final_shape::~final_shape() =====
void __fastcall gameswf::final_shape::~final_shape(gameswf::final_shape *this)
{
  int v1; // r2
  _DWORD *v3; // r0
  int v4; // r3
  _DWORD *v5; // lr

  v1 = *((_DWORD *)this + 8);
  v3 = (_DWORD *)((char *)this + 28);
  if ( v1 < 0 )
  {
    v4 = 8 * v1;
    do
    {
      ++v1;
      v5 = (_DWORD *)(*v3 + v4);
      *v5 = 0;
      v5[1] = 0;
      v4 += 8;
    }
    while ( v1 );
  }
  *((_DWORD *)this + 8) = 0;
  gameswf::array<gameswf::point>::reserve((int)v3, 0);
  gameswf::array<gameswf::final_shape::segment>::resize((_DWORD *)this + 3);
  gameswf::array<gameswf::final_shape::segment>::reserve((int)this + 12, 0);
}


// ===== 78803c gameswf::array<gameswf::final_shape>::resize(int) =====
void __fastcall gameswf::array<gameswf::final_shape>::resize(_DWORD *a1, int a2)
{
  int v2; // r6
  int v5; // r8
  int v6; // r7
  int v7; // r1
  int v8; // r3

  v2 = a1[1];
  if ( v2 > a2 )
  {
    v5 = 52 * a2;
    v6 = a2;
    do
    {
      ++v6;
      gameswf::final_shape::~final_shape((gameswf::final_shape *)(*a1 + v5));
      v5 += 52;
    }
    while ( v6 != v2 );
  }
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::final_shape>::reserve((int)a1, a2 + (a2 >> 1));
  if ( v2 < a2 )
  {
    v7 = 52 * v2;
    do
    {
      ++v2;
      v8 = *a1 + v7;
      *(_BYTE *)v8 = 0;
      *(_DWORD *)(v8 + 48) = 0;
      *(_DWORD *)(v8 + 4) = 0;
      *(_DWORD *)(v8 + 8) = 0;
      *(_DWORD *)(v8 + 12) = 0;
      *(_DWORD *)(v8 + 16) = 0;
      *(_DWORD *)(v8 + 20) = 0;
      *(_BYTE *)(v8 + 24) = 0;
      *(_DWORD *)(v8 + 28) = 0;
      *(_DWORD *)(v8 + 32) = 0;
      *(_DWORD *)(v8 + 36) = 0;
      *(_BYTE *)(v8 + 40) = 0;
      *(_DWORD *)(v8 + 44) = 0;
      v7 += 52;
    }
    while ( v2 != a2 );
  }
  a1[1] = a2;
}


// ===== 78810c gameswf::tesselator_accepter::~tesselator_accepter() =====
void __fastcall gameswf::tesselator_accepter::~tesselator_accepter(GLUtesselator **this)
{
  int v2; // r3
  _DWORD *v3; // r0
  int v4; // r2
  _DWORD *v5; // r0
  int v6; // r2
  _DWORD *v7; // r0
  int v8; // r2
  int v9; // r3
  _DWORD *v10; // lr
  int v11; // r3
  _DWORD *v12; // lr

  gluDeleteTess(*(this + 14));
  v2 = (int)*(this + 10);
  v3 = this + 9;
  if ( v2 < 0 )
  {
    v8 = 2 * v2;
    do
    {
      ++v2;
      *(_WORD *)(*v3 + v8) = 0;
      v8 += 2;
    }
    while ( v2 );
  }
  *(this + 10) = nullptr;
  gameswf::array<unsigned short>::reserve((int)v3, 0);
  v4 = (int)*(this + 6);
  v5 = this + 5;
  if ( v4 < 0 )
  {
    v9 = 8 * v4;
    do
    {
      ++v4;
      v10 = (_DWORD *)(*v5 + v9);
      *v10 = 0;
      v10[1] = 0;
      v9 += 8;
    }
    while ( v4 );
  }
  *(this + 6) = nullptr;
  gameswf::array<gameswf::point>::reserve((int)v5, 0);
  v6 = (int)*(this + 2);
  v7 = this + 1;
  if ( v6 < 0 )
  {
    v11 = 8 * v6;
    do
    {
      ++v6;
      v12 = (_DWORD *)(*v7 + v11);
      *v12 = 0;
      v12[1] = 0;
      v11 += 8;
    }
    while ( v6 );
  }
  *(this + 2) = nullptr;
  gameswf::array<gameswf::point>::reserve((int)v7, 0);
}


// ===== 788204 gameswf::triangle_intersector::~triangle_intersector() =====
void __fastcall gameswf::triangle_intersector::~triangle_intersector(GLUtesselator ***this)
{
  GLUtesselator **v1; // r5

  v1 = *this;
  if ( *this )
  {
    gameswf::tesselator_accepter::~tesselator_accepter(*this);
    gameswf::free_internal(v1);
  }
}


// ===== 788234 gameswf::triangle_intersector::~triangle_intersector() =====
void __fastcall gameswf::triangle_intersector::~triangle_intersector(GLUtesselator ***this)
{
  GLUtesselator **v1; // r5

  v1 = *this;
  if ( *this )
  {
    gameswf::tesselator_accepter::~tesselator_accepter(*this);
    gameswf::free_internal(v1);
  }
}


// ===== 788264 gameswf::tesselator_accepter::add_point(gameswf::point &) =====
float __fastcall gameswf::tesselator_accepter::add_point(GLUtesselator **this, gameswf::point *a2)
{
  double v4; // r0
  int v5; // r8
  float result; // r0
  float v7; // r0
  float v8; // r5
  int v9; // r3
  float v10; // r7
  int v11; // r4
  int v12; // r1

  v4 = *((float *)a2 + 1);
  *(double *)&gameswf::tesselate_new::s_accepter[6 * dword_A2C9F0 + 6] = *(float *)a2;
  *(double *)&gameswf::tesselate_new::s_accepter[6 * dword_A2C9F0 + 8] = v4;
  *(_QWORD *)&gameswf::tesselate_new::s_accepter[6 * dword_A2C9F0 + 10] = 0;
  v5 = dword_A2C9F0++;
  if ( !*((_BYTE *)this + 52) )
    return COERCE_FLOAT(
             gluTessVertex(
               *(this + 14),
               &gameswf::s_tesselator_accepter_allocator[3 * v5],
               &gameswf::s_tesselator_accepter_allocator[3 * v5]));
  v7 = *(double *)&gameswf::tesselate_new::s_accepter[6 * v5 + 6];
  v8 = v7;
  result = *(double *)&gameswf::tesselate_new::s_accepter[6 * v5 + 8];
  v9 = (int)*(this + 2);
  v10 = result;
  v11 = v9 + 1;
  if ( v9 + 1 > (int)*(this + 3) )
  {
    gameswf::array<gameswf::point>::reserve((int)(this + 1), v11 + (v11 >> 1));
    v9 = (int)*(this + 2);
  }
  v12 = (int)*(this + 1) + 8 * v9;
  *(float *)(v12 + 4) = v10;
  *(float *)v12 = v8;
  *(this + 2) = (GLUtesselator *)v11;
  return result;
}


// ===== 788360 gameswf::tesselator_accepter::callback_end_strip(gameswf::tesselator_accepter*) =====
void __fastcall gameswf::tesselator_accepter::callback_end_strip(
        gameswf::tesselator_accepter *this,
        gameswf::tesselator_accepter *a2)
{
  int v3; // r3
  int v4; // r2
  int v5; // r5
  int v6; // r7
  int v7; // r6
  int v8; // r3
  int v9; // r5
  int v10; // r7
  int v11; // r10
  int *v12; // r6
  int v13; // r8
  int v14; // r1
  int v15; // r3
  _DWORD *v16; // r12
  int v17; // r3
  int v18; // r12
  int v19; // r2
  int v20; // r0
  int v21; // r2
  _DWORD *v22; // r1
  int v23; // r10
  int v24; // r7
  int v25; // r6
  int v26; // r8
  _DWORD *v27; // r9
  int v28; // r5
  _DWORD *v29; // r2
  int v30; // r3
  int v31; // r9
  int v32; // r3
  int v33; // r10
  int v34; // r3
  int v35; // r6
  _DWORD *v36; // r6
  _DWORD *v37; // r2
  int v38; // r3
  int v39; // r3
  int v40; // r5
  int v41; // r9
  int v42; // r6
  int v43; // r3
  int v44; // r6
  _DWORD *v45; // r6
  _DWORD *v46; // r2
  int v47; // r3
  int v48; // r2
  int v49; // r3
  int v50; // r5
  int v51; // r7
  int v52; // r6
  int v53; // r8
  _DWORD *v54; // r10
  int v55; // r11
  int v56; // r3
  int v57; // r3
  int v58; // r3
  int v59; // r10
  int v60; // r3
  int v61; // r3
  char *v62; // [sp+4h] [bp-8h]

  if ( *((_DWORD *)this + 2) )
  {
    v3 = *((_DWORD *)this + 6);
    if ( v3 > 0 )
    {
      v4 = *((_DWORD *)this + 5);
      v5 = v3 + 1;
      v6 = *(_DWORD *)(v4 + 8 * (v3 - 1) + 4);
      v7 = *(_DWORD *)(v4 + 8 * (v3 - 1));
      if ( v3 + 1 <= *((_DWORD *)this + 7) )
      {
        *(_DWORD *)(v4 + 8 * v3 + 4) = v6;
        *(_DWORD *)(v4 + 8 * v3) = v7;
      }
      else
      {
        gameswf::array<gameswf::point>::reserve((int)this + 20, v5 + (v5 >> 1));
        v22 = (_DWORD *)(*((_DWORD *)this + 5) + 8 * *((_DWORD *)this + 6));
        v22[1] = v6;
        *v22 = v7;
      }
      *((_DWORD *)this + 6) = v5;
    }
    v8 = *(_DWORD *)this;
    if ( *(_DWORD *)this == 5 )
    {
      if ( *((int *)this + 6) > 0 )
        gameswf::array<gameswf::point>::push_back<gameswf::point>((_DWORD *)this + 5, *((int **)this + 1));
      v9 = *((_DWORD *)this + 1);
      v10 = *((_DWORD *)this + 2);
      if ( v10 > 0 )
      {
        v11 = *((_DWORD *)this + 6);
        v12 = (int *)((char *)this + 20);
        v13 = v11 + v10;
        if ( v11 + v10 && v13 > *((_DWORD *)this + 7) )
          gameswf::array<gameswf::point>::reserve((int)this + 20, v13 + (v13 >> 1));
        if ( v11 < v13 )
        {
          v14 = 8 * v11;
          v15 = 8 * v11;
          do
          {
            ++v11;
            v16 = (_DWORD *)(*v12 + v15);
            *v16 = 0;
            v16[1] = 0;
            v15 += 8;
          }
          while ( v11 != v13 );
        }
        else
        {
          v14 = 8 * v11;
        }
        *((_DWORD *)this + 6) = v13;
        v17 = 0;
        do
        {
          v18 = *(_DWORD *)(v9 + 8 * v17);
          v19 = *v12;
          v20 = v9 + 8 * v17++;
          *(_DWORD *)(v19 + v14) = v18;
          v21 = v19 + v14;
          v14 += 8;
          *(_DWORD *)(v21 + 4) = *(_DWORD *)(v20 + 4);
        }
        while ( v17 != v10 );
      }
    }
    else if ( v8 == 6 )
    {
      if ( *((int *)this + 6) > 0 )
        gameswf::array<gameswf::point>::push_back<gameswf::point>(
          (_DWORD *)this + 5,
          (int *)(*((_DWORD *)this + 1) + 8));
      if ( *((int *)this + 2) > 3 )
      {
        gameswf::array<gameswf::point>::push_back<gameswf::point>(
          (_DWORD *)this + 5,
          (int *)(*((_DWORD *)this + 1) + 8));
        gameswf::array<gameswf::point>::push_back<gameswf::point>((_DWORD *)this + 5, *((int **)this + 1));
        gameswf::array<gameswf::point>::push_back<gameswf::point>(
          (_DWORD *)this + 5,
          (int *)(*((_DWORD *)this + 1) + 16));
        gameswf::array<gameswf::point>::push_back<gameswf::point>(
          (_DWORD *)this + 5,
          (int *)(*((_DWORD *)this + 1) + 24));
        if ( *((int *)this + 2) > 4 )
        {
          v50 = *((_DWORD *)this + 6);
          v51 = 4;
          do
          {
            v52 = v50 + 1;
            v53 = 8 * v51++;
            v54 = *((_DWORD **)this + 1);
            v55 = v50;
            if ( *((_DWORD *)this + 7) < v50 + 1 )
            {
              gameswf::array<gameswf::point>::reserve((int)this + 20, v52 + (v52 >> 1));
              v50 = *((_DWORD *)this + 6);
            }
            v56 = *((_DWORD *)this + 5);
            *(_DWORD *)(v56 + 8 * v50) = *v54;
            v57 = v56 + 8 * v50;
            v50 = v55 + 2;
            *(_DWORD *)(v57 + 4) = v54[1];
            v58 = *((_DWORD *)this + 7);
            v59 = *((_DWORD *)this + 1);
            *((_DWORD *)this + 6) = v52;
            if ( v55 + 2 > v58 )
            {
              gameswf::array<gameswf::point>::reserve((int)this + 20, v50 + (v50 >> 1));
              v52 = *((_DWORD *)this + 6);
            }
            v60 = *((_DWORD *)this + 5);
            *(_DWORD *)(v60 + 8 * v52) = *(_DWORD *)(v59 + v53);
            *(_DWORD *)(v60 + 8 * v52 + 4) = *(_DWORD *)(v59 + v53 + 4);
            v61 = *((_DWORD *)this + 2);
            *((_DWORD *)this + 6) = v50;
          }
          while ( v51 < v61 );
        }
      }
    }
    else if ( v8 == 4 )
    {
      if ( *((int *)this + 6) > 0 )
        gameswf::array<gameswf::point>::push_back<gameswf::point>((_DWORD *)this + 5, *((int **)this + 1));
      if ( *((int *)this + 2) > 0 )
      {
        v23 = *((_DWORD *)this + 6);
        v62 = (char *)this + 20;
        v24 = 0;
        v25 = v23 + 1;
        v26 = 16;
        v27 = *((_DWORD **)this + 1);
        if ( v23 + 1 <= *((_DWORD *)this + 7) )
          goto LABEL_27;
LABEL_26:
        gameswf::array<gameswf::point>::reserve((int)v62, v25 + (v25 >> 1));
        v23 = *((_DWORD *)this + 6);
        while ( 1 )
        {
LABEL_27:
          v28 = v25 + 1;
          v29 = (_DWORD *)(*((_DWORD *)this + 5) + 8 * v23);
          *v29 = *v27;
          v29[1] = v27[1];
          v30 = *((_DWORD *)this + 7);
          v31 = *((_DWORD *)this + 1);
          *((_DWORD *)this + 6) = v25;
          if ( v25 + 1 > v30 )
          {
            gameswf::array<gameswf::point>::reserve((int)v62, v28 + (v28 >> 1));
            v25 = *((_DWORD *)this + 6);
          }
          v32 = *((_DWORD *)this + 5);
          v33 = v28 + 1;
          *(_DWORD *)(v32 + 8 * v25) = *(_DWORD *)(v31 + v26 - 8);
          *(_DWORD *)(v32 + 8 * v25 + 4) = *(_DWORD *)(v31 + v26 - 8 + 4);
          v34 = *((_DWORD *)this + 7);
          v35 = *((_DWORD *)this + 1);
          *((_DWORD *)this + 6) = v28;
          v36 = (_DWORD *)(v35 + v26);
          if ( v28 + 1 > v34 )
          {
            gameswf::array<gameswf::point>::reserve((int)v62, v33 + (v33 >> 1));
            v28 = *((_DWORD *)this + 6);
          }
          v24 += 3;
          v37 = (_DWORD *)(*((_DWORD *)this + 5) + 8 * v28);
          *v37 = *v36;
          v37[1] = v36[1];
          v38 = *((_DWORD *)this + 2);
          *((_DWORD *)this + 6) = v33;
          if ( v24 >= v38 )
            break;
          v39 = *((_DWORD *)this + 5);
          v40 = v33 + 1;
          v41 = *(_DWORD *)(v39 + 8 * (v33 - 1) + 4);
          v42 = *(_DWORD *)(v39 + 8 * (v33 - 1));
          if ( v33 + 1 > *((_DWORD *)this + 7) )
          {
            gameswf::array<gameswf::point>::reserve((int)v62, v40 + (v40 >> 1));
            v39 = *((_DWORD *)this + 5);
            v33 = *((_DWORD *)this + 6);
          }
          *(_DWORD *)(v39 + 8 * v33 + 4) = v41;
          *(_DWORD *)(v39 + 8 * v33) = v42;
          v43 = *((_DWORD *)this + 7);
          v44 = *((_DWORD *)this + 1);
          v23 = v40 + 1;
          *((_DWORD *)this + 6) = v40;
          v45 = (_DWORD *)(v44 + 8 * v24);
          if ( v40 + 1 > v43 )
          {
            gameswf::array<gameswf::point>::reserve((int)v62, v23 + (v23 >> 1));
            v40 = *((_DWORD *)this + 6);
          }
          v26 += 24;
          v46 = (_DWORD *)(*((_DWORD *)this + 5) + 8 * v40);
          *v46 = *v45;
          v47 = v45[1];
          v25 = v23 + 1;
          v46[1] = v47;
          v48 = *((_DWORD *)this + 7);
          v49 = *((_DWORD *)this + 1);
          *((_DWORD *)this + 6) = v23;
          v27 = (_DWORD *)(v49 + 8 * v24);
          if ( v23 + 1 > v48 )
            goto LABEL_26;
        }
      }
    }
  }
}


// ===== 7887a8 gameswf::tesselator_accepter::end_shape(gameswf::array<gameswf::point> &,gameswf::array<ushort> &) =====
void __fastcall gameswf::tesselator_accepter::end_shape(int a1, _DWORD *a2, _DWORD *a3)
{
  int v6; // r10
  int *v7; // r6
  int v8; // r8
  int v9; // r3
  _DWORD *v10; // r0
  int v11; // r3
  _DWORD *v12; // r0
  _DWORD *v13; // r1
  int v14; // r8
  int v15; // r4
  int v16; // r3
  int v17; // r3
  int v18; // r2
  __int16 v19; // r0
  int v20; // r2
  int v21; // r8
  int v22; // r7
  int v23; // r3
  _DWORD *v24; // r0
  int v25; // r3
  _DWORD *v26; // r0
  _DWORD *v27; // r1
  int v28; // r3
  int v29; // r1

  gluTessEndPolygon(*(GLUtesselator **)(a1 + 56));
  if ( *(_BYTE *)(a1 + 53) )
  {
    v21 = *(_DWORD *)(a1 + 24);
    v7 = (int *)(a1 + 20);
    v22 = a2[1];
    if ( v21 && v21 > a2[2] )
      gameswf::array<gameswf::point>::reserve((int)a2, v21 + (v21 >> 1));
    if ( v21 > v22 )
    {
      v23 = 8 * v22;
      do
      {
        ++v22;
        v24 = (_DWORD *)(*a2 + v23);
        *v24 = 0;
        v24[1] = 0;
        v23 += 8;
      }
      while ( v22 != v21 );
    }
    a2[1] = v21;
    if ( v21 > 0 )
    {
      v25 = 0;
      do
      {
        v26 = (_DWORD *)(*v7 + 8 * v25);
        v27 = (_DWORD *)(*a2 + 8 * v25);
        *v27 = *v26;
        ++v25;
        v27[1] = v26[1];
      }
      while ( v25 < a2[1] );
    }
  }
  else
  {
    v6 = *(_DWORD *)(a1 + 24);
    v7 = (int *)(a1 + 20);
    v8 = a2[1];
    if ( v6 && v6 > a2[2] )
      gameswf::array<gameswf::point>::reserve((int)a2, v6 + (v6 >> 1));
    if ( v6 > v8 )
    {
      v9 = 8 * v8;
      do
      {
        ++v8;
        v10 = (_DWORD *)(*a2 + v9);
        *v10 = 0;
        v10[1] = 0;
        v9 += 8;
      }
      while ( v8 != v6 );
    }
    a2[1] = v6;
    if ( v6 > 0 )
    {
      v11 = 0;
      do
      {
        v12 = (_DWORD *)(*v7 + 8 * v11);
        v13 = (_DWORD *)(*a2 + 8 * v11);
        *v13 = *v12;
        ++v11;
        v13[1] = v12[1];
      }
      while ( v11 < a2[1] );
    }
    v14 = *(_DWORD *)(a1 + 40);
    v15 = a3[1];
    if ( v14 && v14 > a3[2] )
      gameswf::array<unsigned short>::reserve((int)a3, v14 + (v14 >> 1));
    if ( v14 > v15 )
    {
      v16 = 2 * v15;
      do
      {
        ++v15;
        *(_WORD *)(*a3 + v16) = 0;
        v16 += 2;
      }
      while ( v15 != v14 );
    }
    a3[1] = v14;
    if ( v14 > 0 )
    {
      v17 = 0;
      do
      {
        v18 = 2 * v17;
        v19 = *(_WORD *)(*(_DWORD *)(a1 + 36) + 2 * v17++);
        *(_WORD *)(*a3 + v18) = v19;
      }
      while ( v17 < a3[1] );
    }
  }
  v20 = *(_DWORD *)(a1 + 24);
  if ( v20 < 0 )
  {
    v28 = 8 * v20;
    do
    {
      v29 = *v7;
      ++v20;
      *(_DWORD *)(v29 + v28) = 0;
      *(_DWORD *)(v29 + v28 + 4) = 0;
      v28 += 8;
    }
    while ( v20 );
    *(_DWORD *)(a1 + 24) = 0;
  }
  else
  {
    *(_DWORD *)(a1 + 24) = 0;
  }
}


// ===== 7889ec gameswf::triangle_intersector::process(gameswf::point *,gameswf::point *,gameswf::array<gameswf::point> &) =====
void __fastcall gameswf::triangle_intersector::process(int **a1, float *a2, float *a3, _DWORD *a4)
{
  int *v7; // r7
  gameswf::point *v8; // r10
  bool v9; // r8
  int v10; // r7
  gameswf::point *v11; // r1
  int v12; // r5
  int i; // r5
  gameswf::point *v14; // r1
  int *v15; // r0
  int v16; // r3
  int v17; // r5
  gameswf::point *v18; // r10
  int v19; // r2
  int v20; // r2
  int v21; // r3
  _DWORD *v22; // r12
  int v24; // [sp+8h] [bp-14h] BYREF
  int v25; // [sp+Ch] [bp-10h]
  int v26; // [sp+10h] [bp-Ch]
  char v27; // [sp+14h] [bp-8h]

  gameswf::tesselator_accepter::init(*a1);
  v7 = *a1;
  gluTessBeginPolygon((GLUtesselator *)(*a1)[14], *a1);
  if ( *((_BYTE *)v7 + 52) )
  {
    *v7 = 3;
    v19 = v7[2];
    if ( v19 < 0 )
    {
      v21 = 8 * v19;
      do
      {
        ++v19;
        v22 = (_DWORD *)(v7[1] + v21);
        *v22 = 0;
        v22[1] = 0;
        v21 += 8;
      }
      while ( v19 );
    }
    v7[2] = 0;
  }
  v8 = (gameswf::point *)(a3 + 4);
  v9 = (float)((float)((float)((float)(a2[5] - a2[1]) * COERCE_FLOAT(COERCE_INT(a2[2] - *a2) + 0x80000000))
                     + (float)((float)(a2[3] - a2[1]) * (float)(a2[4] - *a2)))
             * (float)((float)((float)(a3[5] - a3[1]) * COERCE_FLOAT(COERCE_INT(a3[2] - *a3) + 0x80000000))
                     + (float)((float)(a3[3] - a3[1]) * (float)(a3[4] - *a3)))) >= 0.0;
  v10 = 0;
  gluTessBeginContour((GLUtesselator *)(*a1)[14]);
  do
  {
    v11 = (gameswf::point *)&a2[v10];
    v10 += 2;
    gameswf::tesselator_accepter::add_point((GLUtesselator **)*a1, v11);
  }
  while ( v10 != 6 );
  gluTessEndContour((GLUtesselator *)(*a1)[14]);
  gluTessBeginContour((GLUtesselator *)(*a1)[14]);
  if ( v9 )
  {
    for ( i = 0; i != 6; i += 2 )
    {
      v14 = (gameswf::point *)&a3[i];
      gameswf::tesselator_accepter::add_point((GLUtesselator **)*a1, v14);
    }
  }
  else
  {
    v12 = 2;
    do
    {
      v17 = v12 - 1;
      gameswf::tesselator_accepter::add_point((GLUtesselator **)*a1, v8);
      v18 = (gameswf::point *)((char *)v8 - 8);
      if ( v17 == -1 )
        break;
      v12 = v17 - 1;
      gameswf::tesselator_accepter::add_point((GLUtesselator **)*a1, v18);
      v8 = (gameswf::point *)((char *)v18 - 8);
    }
    while ( v12 != -1 );
  }
  gluTessEndContour((GLUtesselator *)(*a1)[14]);
  v15 = *a1;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  gameswf::tesselator_accepter::end_shape((int)v15, a4, &v24);
  v16 = v25;
  if ( v25 < 0 )
  {
    v20 = 2 * v25;
    do
    {
      ++v16;
      *(_WORD *)(v24 + v20) = 0;
      v20 += 2;
    }
    while ( v16 );
  }
  v25 = 0;
  gameswf::array<unsigned short>::reserve((int)&v24, 0);
}


// ===== 788cac gameswf::tesselator_accepter::callback_end_tris(gameswf::tesselator_accepter*) =====
void __fastcall gameswf::tesselator_accepter::callback_end_tris(
        gameswf::tesselator_accepter *this,
        gameswf::tesselator_accepter *a2)
{
  int v2; // r5
  __int16 v4; // r6
  int v5; // r8
  int *v6; // r7
  _DWORD *v7; // r6
  int v8; // r10
  int v9; // r3
  int v10; // r2
  _DWORD *v11; // r12
  int v12; // r2
  int v13; // r12
  int v14; // r1
  _DWORD *v15; // r0
  int v16; // r1
  int v17; // r8
  _DWORD *v18; // r2
  int v19; // r7
  int v20; // r10
  int v21; // r9
  int *v22; // r8
  int v23; // r3
  int v24; // r2
  _DWORD *v25; // r12
  int v26; // r2
  int v27; // r12
  int v28; // r1
  int v29; // r0
  int v30; // r1
  int v31; // r3
  int v32; // r7
  int v33; // r5
  int v34; // r3
  int v35; // r7
  int v36; // r10
  int v37; // r9
  int *v38; // r8
  int v39; // r3
  int v40; // r2
  _DWORD *v41; // r12
  int v42; // r2
  int v43; // r12
  int v44; // r1
  int v45; // r0
  int v46; // r1
  int v47; // r5
  __int16 v48; // r11
  __int16 v49; // r9
  int v50; // r10
  int v51; // r8
  int v52; // r7
  int v53; // r3
  int v54; // r2
  int v55; // r3
  int v56; // r2
  int v57; // r7
  int v58; // r10
  int v59; // r9
  int *v60; // r8
  int v61; // r3
  int v62; // r2
  _DWORD *v63; // r12
  int v64; // r2
  int v65; // r12
  int v66; // r1
  int v67; // r0
  int v68; // r1
  int v69; // r5
  __int16 v70; // r11
  __int16 v71; // r10
  int v72; // r9
  int v73; // r8
  int v74; // r7
  int v75; // r3
  int v76; // r2
  int v77; // r3
  int v78; // r2
  int v79; // r6
  int v80; // r8
  int v81; // r10
  int *v82; // r7
  int v83; // r3
  int v84; // r2
  _DWORD *v85; // r12
  int v86; // r2
  int v87; // r12
  int v88; // r1
  int v89; // r0
  int v90; // r1
  int v91; // [sp+4h] [bp-10h]
  int v92; // [sp+4h] [bp-10h]
  char *v93; // [sp+8h] [bp-Ch]
  char *v94; // [sp+8h] [bp-Ch]

  v2 = *((_DWORD *)this + 6);
  v4 = v2;
  switch ( *(_DWORD *)this )
  {
    case 2:
      v5 = *((_DWORD *)this + 2);
      v6 = (int *)((char *)this + 20);
      v7 = *((_DWORD **)this + 1);
      if ( v5 > 0 )
      {
        v8 = v5 + v2;
        if ( v5 + v2 && v8 > *((_DWORD *)this + 7) )
          gameswf::array<gameswf::point>::reserve((int)this + 20, v8 + (v8 >> 1));
        if ( v2 < v8 )
        {
          v9 = 8 * v2;
          v10 = 8 * v2;
          do
          {
            ++v2;
            v11 = (_DWORD *)(*v6 + v10);
            *v11 = 0;
            v11[1] = 0;
            v10 += 8;
          }
          while ( v2 != v8 );
        }
        else
        {
          v9 = 8 * v2;
        }
        *((_DWORD *)this + 6) = v8;
        v12 = 0;
        do
        {
          v13 = v7[2 * v12];
          v14 = *v6;
          v15 = &v7[2 * v12++];
          *(_DWORD *)(v14 + v9) = v13;
          v16 = v14 + v9;
          v9 += 8;
          *(_DWORD *)(v16 + 4) = v15[1];
        }
        while ( v12 != v5 );
        v7 = *((_DWORD **)this + 1);
        v2 = *((_DWORD *)this + 6);
      }
      v17 = v2 + 1;
      if ( v2 + 1 > *((_DWORD *)this + 7) )
      {
        gameswf::array<gameswf::point>::reserve((int)v6, v17 + (v17 >> 1));
        v2 = *((_DWORD *)this + 6);
      }
      v18 = (_DWORD *)(*((_DWORD *)this + 5) + 8 * v2);
      *v18 = *v7;
      v18[1] = v7[1];
      *((_DWORD *)this + 6) = v17;
      break;
    case 3:
      v79 = *((_DWORD *)this + 1);
      v80 = *((_DWORD *)this + 2);
      if ( v80 > 0 )
      {
        v81 = v80 + v2;
        v82 = (int *)((char *)this + 20);
        if ( v80 + v2 && v81 > *((_DWORD *)this + 7) )
          gameswf::array<gameswf::point>::reserve((int)this + 20, v81 + (v81 >> 1));
        if ( v2 < v81 )
        {
          v83 = 8 * v2;
          v84 = 8 * v2;
          do
          {
            ++v2;
            v85 = (_DWORD *)(*v82 + v84);
            *v85 = 0;
            v85[1] = 0;
            v84 += 8;
          }
          while ( v2 != v81 );
        }
        else
        {
          v83 = 8 * v2;
        }
        *((_DWORD *)this + 6) = v81;
        v86 = 0;
        do
        {
          v87 = *(_DWORD *)(v79 + 8 * v86);
          v88 = *v82;
          v89 = v79 + 8 * v86++;
          *(_DWORD *)(v88 + v83) = v87;
          v90 = v88 + v83;
          v83 += 8;
          *(_DWORD *)(v90 + 4) = *(_DWORD *)(v89 + 4);
        }
        while ( v86 != v80 );
      }
      break;
    case 4:
      v19 = *((_DWORD *)this + 1);
      v20 = *((_DWORD *)this + 2);
      if ( v20 > 0 )
      {
        v21 = v20 + v2;
        v22 = (int *)((char *)this + 20);
        if ( v20 + v2 && v21 > *((_DWORD *)this + 7) )
          gameswf::array<gameswf::point>::reserve((int)this + 20, v21 + (v21 >> 1));
        if ( v2 < v21 )
        {
          v23 = 8 * v2;
          v24 = 8 * v2;
          do
          {
            ++v2;
            v25 = (_DWORD *)(*v22 + v24);
            *v25 = 0;
            v25[1] = 0;
            v24 += 8;
          }
          while ( v2 != v21 );
        }
        else
        {
          v23 = 8 * v2;
        }
        *((_DWORD *)this + 6) = v21;
        v26 = 0;
        do
        {
          v27 = *(_DWORD *)(v19 + 8 * v26);
          v28 = *v22;
          v29 = v19 + 8 * v26++;
          *(_DWORD *)(v28 + v23) = v27;
          v30 = v28 + v23;
          v23 += 8;
          *(_DWORD *)(v30 + 4) = *(_DWORD *)(v29 + 4);
        }
        while ( v26 != v20 );
        if ( *((int *)this + 2) > 0 )
        {
          v31 = *((_DWORD *)this + 10);
          v32 = 0;
          while ( 1 )
          {
            v33 = v31 + 1;
            ++v32;
            if ( v31 + 1 > *((_DWORD *)this + 11) )
            {
              gameswf::array<unsigned short>::reserve((int)this + 36, v33 + (v33 >> 1));
              v31 = *((_DWORD *)this + 10);
            }
            *(_WORD *)(*((_DWORD *)this + 9) + 2 * v31) = v4;
            v34 = *((_DWORD *)this + 2);
            *((_DWORD *)this + 10) = v33;
            ++v4;
            if ( v32 >= v34 )
              break;
            v31 = v33;
          }
        }
      }
      break;
    case 5:
      v57 = *((_DWORD *)this + 1);
      v58 = *((_DWORD *)this + 2);
      if ( v58 > 0 )
      {
        v59 = v58 + v2;
        v60 = (int *)((char *)this + 20);
        if ( v58 + v2 && v59 > *((_DWORD *)this + 7) )
          gameswf::array<gameswf::point>::reserve((int)this + 20, v59 + (v59 >> 1));
        if ( v2 < v59 )
        {
          v61 = 8 * v2;
          v62 = 8 * v2;
          do
          {
            ++v2;
            v63 = (_DWORD *)(*v60 + v62);
            *v63 = 0;
            v63[1] = 0;
            v62 += 8;
          }
          while ( v2 != v59 );
        }
        else
        {
          v61 = 8 * v2;
        }
        *((_DWORD *)this + 6) = v59;
        v64 = 0;
        do
        {
          v65 = *(_DWORD *)(v57 + 8 * v64);
          v66 = *v60;
          v67 = v57 + 8 * v64++;
          *(_DWORD *)(v66 + v61) = v65;
          v68 = v66 + v61;
          v61 += 8;
          *(_DWORD *)(v68 + 4) = *(_DWORD *)(v67 + 4);
        }
        while ( v64 != v58 );
        if ( *((int *)this + 2) > 2 )
        {
          v69 = *((_DWORD *)this + 10);
          v70 = v4 + 2;
          v94 = (char *)this + 36;
          v71 = 0;
          v72 = 2;
          do
          {
            v73 = v69 + 1;
            ++v72;
            v74 = v69 + 2;
            v75 = v69;
            if ( *((_DWORD *)this + 11) < v69 + 1 )
            {
              v92 = v69;
              gameswf::array<unsigned short>::reserve((int)v94, v73 + (v73 >> 1));
              v69 = *((_DWORD *)this + 10);
              v75 = v92;
            }
            *(_WORD *)(*((_DWORD *)this + 9) + 2 * v69) = v4 + v71;
            v76 = *((_DWORD *)this + 11);
            v69 = v75 + 3;
            *((_DWORD *)this + 10) = v73;
            if ( v76 < v74 )
            {
              gameswf::array<unsigned short>::reserve((int)v94, v74 + (v74 >> 1));
              v73 = *((_DWORD *)this + 10);
            }
            *(_WORD *)(*((_DWORD *)this + 9) + 2 * v73) = v71 + v4 + 1;
            v77 = *((_DWORD *)this + 11);
            *((_DWORD *)this + 10) = v74;
            if ( v77 < v69 )
            {
              gameswf::array<unsigned short>::reserve((int)v94, v69 + (v69 >> 1));
              v74 = *((_DWORD *)this + 10);
            }
            *(_WORD *)(*((_DWORD *)this + 9) + 2 * v74) = v70;
            v78 = *((_DWORD *)this + 2);
            *((_DWORD *)this + 10) = v69;
            ++v70;
            ++v71;
          }
          while ( v72 < v78 );
        }
      }
      break;
    case 6:
      v35 = *((_DWORD *)this + 1);
      v36 = *((_DWORD *)this + 2);
      if ( v36 > 0 )
      {
        v37 = v36 + v2;
        v38 = (int *)((char *)this + 20);
        if ( v36 + v2 && v37 > *((_DWORD *)this + 7) )
          gameswf::array<gameswf::point>::reserve((int)this + 20, v37 + (v37 >> 1));
        if ( v2 < v37 )
        {
          v39 = 8 * v2;
          v40 = 8 * v2;
          do
          {
            ++v2;
            v41 = (_DWORD *)(*v38 + v40);
            *v41 = 0;
            v41[1] = 0;
            v40 += 8;
          }
          while ( v2 != v37 );
        }
        else
        {
          v39 = 8 * v2;
        }
        *((_DWORD *)this + 6) = v37;
        v42 = 0;
        do
        {
          v43 = *(_DWORD *)(v35 + 8 * v42);
          v44 = *v38;
          v45 = v35 + 8 * v42++;
          *(_DWORD *)(v44 + v39) = v43;
          v46 = v44 + v39;
          v39 += 8;
          *(_DWORD *)(v46 + 4) = *(_DWORD *)(v45 + 4);
        }
        while ( v42 != v36 );
        if ( *((int *)this + 2) > 2 )
        {
          v47 = *((_DWORD *)this + 10);
          v48 = v4 + 2;
          v49 = v4 + 1;
          v93 = (char *)this + 36;
          v50 = 2;
          do
          {
            v51 = v47 + 1;
            ++v50;
            v52 = v47 + 2;
            v53 = v47;
            if ( *((_DWORD *)this + 11) < v47 + 1 )
            {
              v91 = v47;
              gameswf::array<unsigned short>::reserve((int)v93, v51 + (v51 >> 1));
              v47 = *((_DWORD *)this + 10);
              v53 = v91;
            }
            *(_WORD *)(*((_DWORD *)this + 9) + 2 * v47) = v4;
            v54 = *((_DWORD *)this + 11);
            v47 = v53 + 3;
            *((_DWORD *)this + 10) = v51;
            if ( v54 < v52 )
            {
              gameswf::array<unsigned short>::reserve((int)v93, v52 + (v52 >> 1));
              v51 = *((_DWORD *)this + 10);
            }
            *(_WORD *)(*((_DWORD *)this + 9) + 2 * v51) = v49;
            v55 = *((_DWORD *)this + 11);
            *((_DWORD *)this + 10) = v52;
            if ( v55 < v47 )
            {
              gameswf::array<unsigned short>::reserve((int)v93, v47 + (v47 >> 1));
              v52 = *((_DWORD *)this + 10);
            }
            *(_WORD *)(*((_DWORD *)this + 9) + 2 * v52) = v48;
            v56 = *((_DWORD *)this + 2);
            *((_DWORD *)this + 10) = v47;
            ++v48;
            ++v49;
          }
          while ( v50 < v56 );
        }
      }
      break;
    default:
      return;
  }
}


// ===== 789298 gameswf::tesselator_accepter::end_shape(gameswf::mesh_set *,int) =====
void __fastcall gameswf::tesselator_accepter::end_shape(
        gameswf::tesselator_accepter *this,
        gameswf::mesh_set *a2,
        int a3)
{
  gameswf::tesselator_accepter *v6; // r1
  int v7; // r3
  int *v8; // r5
  _DWORD *mutable_mesh; // r0
  int v10; // r2
  int v11; // r1

  gluTessEndPolygon(*((GLUtesselator **)this + 14));
  if ( *((_BYTE *)this + 52) )
  {
    gameswf::tesselator_accepter::callback_end_tris(this, v6);
    if ( *((_BYTE *)this + 52) )
    {
      v7 = *((_DWORD *)this + 6);
      if ( v7 > 1 )
      {
        gameswf::mesh_set::add_line_strip((int)a2, a3, *((_DWORD *)this + 5), v7);
        v7 = *((_DWORD *)this + 6);
      }
LABEL_16:
      v8 = (int *)((char *)this + 20);
      if ( v7 > 0 )
        goto LABEL_5;
      goto LABEL_9;
    }
  }
  if ( *((_BYTE *)this + 53) )
  {
    v7 = *((_DWORD *)this + 6);
    if ( v7 > 0 )
    {
      gameswf::mesh_set::set_tri_strip(a2, a3, *((_DWORD *)this + 5), v7);
      v7 = *((_DWORD *)this + 6);
      v8 = (int *)((char *)this + 20);
      if ( v7 > 0 )
        goto LABEL_5;
      goto LABEL_9;
    }
  }
  else
  {
    v7 = *((_DWORD *)this + 6);
    if ( v7 > 0 )
    {
      mutable_mesh = (_DWORD *)gameswf::mesh_set::get_mutable_mesh(a2, a3);
      gameswf::mesh::set_triangles(
        mutable_mesh,
        *((const float **)this + 5),
        2 * *((_DWORD *)this + 6),
        *((const unsigned __int16 **)this + 9),
        *((_DWORD *)this + 10));
      v7 = *((_DWORD *)this + 6);
      goto LABEL_16;
    }
  }
  v8 = (int *)((char *)this + 20);
LABEL_9:
  if ( v7 < 0 )
  {
    v10 = 8 * v7;
    do
    {
      v11 = *v8;
      ++v7;
      *(_DWORD *)(v11 + v10) = 0;
      *(_DWORD *)(v11 + v10 + 4) = 0;
      v10 += 8;
    }
    while ( v7 );
  }
LABEL_5:
  *((_DWORD *)this + 6) = 0;
}


// ===== 7893bc gameswf::final_shape::flush(gameswf::mesh_set *,gameswf::tesselator_accepter &) =====
void __fastcall gameswf::final_shape::flush(
        gameswf::final_shape *this,
        gameswf::mesh_set *a2,
        gameswf::tesselator_accepter *a3)
{
  int v5; // r9
  int v6; // r11
  int v7; // r8
  int v8; // r5
  float *v9; // r6
  int v10; // r7
  int v11; // r5
  gameswf::point *v12; // r1
  int v13; // r5
  _BOOL4 v14; // r0
  float *v15; // r5
  int v16; // r2
  int v17; // r3
  _DWORD *v18; // r12

  gameswf::tesselator_accepter::init((int *)a3);
  gluTessBeginPolygon(*((GLUtesselator **)a3 + 14), a3);
  if ( *((_BYTE *)a3 + 52) )
  {
    *(_DWORD *)a3 = 3;
    v16 = *((_DWORD *)a3 + 2);
    if ( v16 < 0 )
    {
      v17 = 8 * v16;
      do
      {
        ++v16;
        v18 = (_DWORD *)(*((_DWORD *)a3 + 1) + v17);
        *v18 = 0;
        v18[1] = 0;
        v17 += 8;
      }
      while ( v16 );
    }
    *((_DWORD *)a3 + 2) = 0;
  }
  gluTessBeginContour(*((GLUtesselator **)a3 + 14));
  if ( *((int *)this + 4) > 0 )
  {
    v5 = 0;
    do
    {
      v6 = *((_DWORD *)this + 3);
      v7 = v6 + 16 * v5;
      v8 = *(_DWORD *)(v7 + 4);
      if ( *(_BYTE *)this )
      {
        v9 = *(float **)(v6 + 16 * v5);
        v10 = *(_DWORD *)(v7 + 4);
      }
      else
      {
        v9 = *(float **)(v6 + 16 * v5);
        v10 = v8 - 1;
        if ( *v9 != v9[2 * v8 - 2] || v9[1] != v9[2 * v8 - 1] )
          v10 = *(_DWORD *)(v7 + 4);
      }
      if ( v10 > 0 )
      {
        v11 = 0;
        while ( 1 )
        {
          v12 = (gameswf::point *)&v9[2 * v11++];
          gameswf::tesselator_accepter::add_point((GLUtesselator **)a3, v12);
          if ( v11 == v10 )
            break;
          v9 = *(float **)v7;
        }
        v8 = *(_DWORD *)(v7 + 4);
        v9 = *(float **)(v6 + 16 * v5);
      }
      v13 = v8 - 1;
      v14 = *v9 == v9[2 * v13];
      v15 = &v9[2 * v13];
      if ( v14 && v9[1] == v15[1] )
      {
        gluTessEndContour(*((GLUtesselator **)a3 + 14));
        gluTessBeginContour(*((GLUtesselator **)a3 + 14));
      }
      ++v5;
    }
    while ( v5 < *((_DWORD *)this + 4) );
  }
  gluTessEndContour(*((GLUtesselator **)a3 + 14));
  gameswf::tesselator_accepter::end_shape(a3, a2, *((_DWORD *)this + 1));
  gameswf::array<gameswf::final_shape::segment>::resize((_DWORD *)this + 3);
}


// ===== 78956c gameswf::final_shape::merge_segment(gameswf::final_shape::segment *) =====
int __fastcall gameswf::final_shape::merge_segment(int a1, float **a2)
{
  int v3; // r4
  float **v4; // r5
  int v5; // r7
  float *v6; // r8
  int v7; // r11
  float *v8; // r9
  int v9; // r10
  int v10; // r3
  float *v11; // r0
  float *v12; // r4
  int v13; // r7
  int v14; // r8
  int v15; // r3
  int v16; // r2
  _DWORD *v17; // r12
  int v18; // r10
  int v19; // r3
  float v20; // r0
  float *v21; // r2
  float *v22; // r1
  float *v23; // r2
  int v24; // r4
  int v25; // r7
  float *v26; // r1
  int v27; // r3
  float *v28; // r0
  float *v29; // r1
  int v31; // r3
  float *v32; // r0
  int v33; // r1
  int v34; // r3
  int v35; // r1
  float v36; // r7
  float *v37; // r0
  float v38; // r12
  float v39; // r4
  int v40; // r1
  float *v41; // r2
  int v42; // r1
  float *v43; // r4
  int v44; // r7
  int v45; // r6
  int v46; // r1
  int v47; // r3
  float *v48; // r12
  int v49; // r3
  float v50; // r12
  float *v51; // r2
  float *v52; // r0
  float *v53; // r2
  int v54; // r3
  float *v55; // r0
  float *v56; // r4
  int v57; // r7
  int v58; // r6
  int v59; // r2
  int v60; // r3
  _DWORD *v61; // r12
  int v62; // r8
  int v63; // r3
  float v64; // r0
  float *v65; // r2
  float *v66; // r1
  float *v67; // r2
  int v68; // r3
  int v69; // r1
  int v70; // r1
  float *v71; // r2
  float v72; // r0
  float v73; // r4
  float *v74; // r2
  int v75; // r1
  float *v76; // r11
  int v77; // r8
  float *v78; // r4
  int v79; // r7
  int v80; // r8
  int v81; // r1
  int v82; // r3
  float *v83; // r12
  int v84; // r3
  float v85; // r12
  float *v86; // r2
  float *v87; // r0
  float *v88; // r2
  int v89; // r4
  int v90; // r7
  float *v91; // r1
  int v92; // r3
  float *v93; // r0
  float *v94; // r1
  float v95; // [sp+0h] [bp-2Ch]
  int v96; // [sp+4h] [bp-28h]
  int v97; // [sp+4h] [bp-28h]
  int v98; // [sp+8h] [bp-24h]
  float v99; // [sp+10h] [bp-1Ch]
  int v100; // [sp+18h] [bp-14h]
  float *v101; // [sp+1Ch] [bp-10h]
  int v102; // [sp+20h] [bp-Ch]
  int v103; // [sp+24h] [bp-8h]

  if ( *(int *)(a1 + 16) <= 0 )
    return 0;
  v3 = 0;
  v98 = *(_DWORD *)(a1 + 12);
  while ( 1 )
  {
    v4 = (float **)(v98 + 16 * v3);
    v5 = (int)v4[1];
    if ( !v5 || a2 == v4 )
      goto LABEL_33;
    v6 = *a2;
    v7 = (int)a2[1];
    v8 = *(float **)(v98 + 16 * v3);
    v9 = v7 - 1;
    v95 = (*a2)[2 * v7 - 2];
    v96 = 2 * (v7 - 1);
    v103 = v7 - 1;
    v100 = (int)&(*a2)[v96];
    if ( *v8 == v95 && v8[1] == *(float *)(v100 + 4) )
    {
      if ( v7 != 1 && (int)a2[2] < v9 )
        gameswf::array<gameswf::point>::reserve((int)a2, v9 + (v9 >> 1));
      if ( v9 > v7 )
      {
        v10 = 2 * v7;
        do
        {
          ++v7;
          v11 = &(*a2)[v10];
          *v11 = 0.0;
          v11[1] = 0.0;
          v10 += 2;
        }
        while ( v7 != v9 );
      }
      a2[1] = (float *)v9;
      v12 = *v4;
      v13 = (int)v4[1];
      if ( v13 > 0 )
      {
        v14 = v9 + v13;
        if ( v9 + v13 && v14 > (int)a2[2] )
          gameswf::array<gameswf::point>::reserve((int)a2, v14 + (v14 >> 1));
        if ( v14 > v9 )
        {
          v15 = v96 * 4;
          v16 = v103;
          do
          {
            ++v16;
            v17 = (_DWORD *)((char *)*a2 + v15);
            *v17 = 0;
            v17[1] = 0;
            v15 += 8;
          }
          while ( v16 != v14 );
        }
        a2[1] = (float *)v14;
        v18 = 2 * v9;
        v19 = 0;
        do
        {
          v20 = v12[2 * v19];
          v21 = *a2;
          v22 = &v12[2 * v19++];
          v21[v18] = v20;
          v23 = &v21[v18];
          v18 += 2;
          v23[1] = v22[1];
        }
        while ( v19 != v13 );
        v103 = (int)a2[1];
        v13 = (int)v4[1];
      }
      v24 = v13;
      if ( v103 && (int)v4[2] < v103 )
        gameswf::array<gameswf::point>::reserve((int)v4, v103 + (v103 >> 1));
      if ( v13 < v103 )
      {
        v25 = 2 * v13;
        do
        {
          ++v24;
          v26 = &(*v4)[v25];
          *v26 = 0.0;
          v26[1] = 0.0;
          v25 += 2;
        }
        while ( v24 != v103 );
      }
      v4[1] = (float *)v103;
      if ( v103 > 0 )
      {
        v27 = 0;
        do
        {
          v28 = &(*a2)[2 * v27];
          v29 = &(*v4)[2 * v27];
          *v29 = *v28;
          ++v27;
          v29[1] = v28[1];
        }
        while ( v27 < (int)v4[1] );
      }
      return 1;
    }
    v97 = v5 - 1;
    v99 = v8[2 * v5 - 2];
    v102 = 2 * (v5 - 1);
    v101 = &v8[v102];
    if ( v95 == v99 && v101[1] == *(float *)(v100 + 4) )
      break;
    if ( v99 == *v6 && v101[1] == v6[1] )
    {
      if ( v5 != 1 && (int)v4[2] < v97 )
        gameswf::array<gameswf::point>::reserve(v98 + 16 * v3, v97 + (v97 >> 1));
      if ( v97 > v5 )
      {
        v54 = 2 * v5;
        do
        {
          ++v5;
          v55 = &(*v4)[v54];
          *v55 = 0.0;
          v55[1] = 0.0;
          v54 += 2;
        }
        while ( v5 != v97 );
      }
      v4[1] = (float *)v97;
      v56 = *a2;
      v57 = (int)a2[1];
      if ( v57 <= 0 )
        return 1;
      v58 = v97 + v57;
      if ( v97 + v57 && v58 > (int)v4[2] )
        gameswf::array<gameswf::point>::reserve((int)v4, v58 + (v58 >> 1));
      v59 = v97;
      if ( v58 > v97 )
      {
        v60 = v102 * 4;
        do
        {
          ++v59;
          v61 = (_DWORD *)((char *)*v4 + v60);
          *v61 = 0;
          v61[1] = 0;
          v60 += 8;
        }
        while ( v59 != v58 );
      }
      v4[1] = (float *)v58;
      v62 = 2 * v97;
      v63 = 0;
      do
      {
        v64 = v56[2 * v63];
        v65 = *v4;
        v66 = &v56[2 * v63++];
        v65[v62] = v64;
        v67 = &v65[v62];
        v62 += 2;
        v67[1] = v66[1];
      }
      while ( v63 != v57 );
      return 1;
    }
    if ( *v8 == *v6 && v8[1] == v6[1] )
    {
      if ( v7 > 1 )
      {
        v68 = 0;
        v69 = v7 - 1;
        while ( 1 )
        {
          v70 = v69 - v68;
          v71 = &v6[2 * v68];
          v72 = *v71;
          v73 = v71[1];
          *v71 = v6[2 * v70];
          v71[1] = v6[2 * v70 + 1];
          v74 = *a2;
          v75 = (int)a2[1] - v68 - 1;
          (*a2)[2 * v75 + 1] = v73;
          v74[2 * v75] = v72;
          v76 = a2[1];
          ++v68;
          v69 = (int)v76 - 1;
          if ( v68 >= (int)v76 / 2 )
            break;
          v6 = *a2;
        }
        v9 = (int)v76 - 1;
      }
      v77 = v9;
      if ( v9 && v9 > (int)a2[2] )
        gameswf::array<gameswf::point>::reserve((int)a2, v9 + (v9 >> 1));
      a2[1] = (float *)v9;
      v78 = *v4;
      v79 = (int)v4[1];
      if ( v79 > 0 )
      {
        v80 = v9 + v79;
        if ( v9 + v79 && v80 > (int)a2[2] )
          gameswf::array<gameswf::point>::reserve((int)a2, v80 + (v80 >> 1));
        if ( v9 < v80 )
        {
          v81 = 2 * v9;
          v82 = 2 * v9;
          do
          {
            ++v9;
            v83 = &(*a2)[v82];
            *v83 = 0.0;
            v83[1] = 0.0;
            v82 += 2;
          }
          while ( v80 > v9 );
        }
        else
        {
          v81 = 2 * v9;
        }
        a2[1] = (float *)v80;
        v84 = 0;
        do
        {
          v85 = v78[2 * v84];
          v86 = *a2;
          v87 = &v78[2 * v84++];
          v86[v81] = v85;
          v88 = &v86[v81];
          v81 += 2;
          v88[1] = v87[1];
        }
        while ( v84 != v79 );
        v77 = (int)a2[1];
        v79 = (int)v4[1];
      }
      v89 = v79;
      if ( v77 && (int)v4[2] < v77 )
        gameswf::array<gameswf::point>::reserve((int)v4, v77 + (v77 >> 1));
      if ( v79 < v77 )
      {
        v90 = 2 * v79;
        do
        {
          ++v89;
          v91 = &(*v4)[v90];
          *v91 = 0.0;
          v91[1] = 0.0;
          v90 += 2;
        }
        while ( v89 != v77 );
      }
      v4[1] = (float *)v77;
      if ( v77 <= 0 )
        return 1;
      v92 = 0;
      do
      {
        v93 = &(*a2)[2 * v92];
        v94 = &(*v4)[2 * v92];
        *v94 = *v93;
        ++v92;
        v94[1] = v93[1];
      }
      while ( v92 < (int)v4[1] );
      return 1;
    }
LABEL_33:
    if ( ++v3 == *(_DWORD *)(a1 + 16) )
      return 0;
  }
  if ( v7 != 1 && (int)a2[2] < v9 )
    gameswf::array<gameswf::point>::reserve((int)a2, v9 + (v9 >> 1));
  if ( v9 > v7 )
  {
    v31 = 2 * v7;
    do
    {
      ++v7;
      v32 = &(*a2)[v31];
      *v32 = 0.0;
      v32[1] = 0.0;
      v31 += 2;
    }
    while ( v7 != v9 );
  }
  a2[1] = (float *)v9;
  if ( v9 > 1 )
  {
    v33 = v103;
    v34 = 0;
    do
    {
      v35 = v33 - 1 - v34;
      v36 = (*a2)[2 * v35];
      v37 = &(*a2)[2 * v34];
      v38 = *v37;
      v39 = v37[1];
      v40 = (int)&(*a2)[2 * v35];
      *v37 = v36;
      v37[1] = *(float *)(v40 + 4);
      v41 = *a2;
      v42 = (int)a2[1] - v34 - 1;
      (*a2)[2 * v42 + 1] = v39;
      v41[2 * v42] = v38;
      v33 = (int)a2[1];
      ++v34;
    }
    while ( v34 < v33 / 2 );
    v103 = (int)a2[1];
  }
  v43 = *a2;
  if ( v103 <= 0 )
    return 1;
  v44 = (int)v4[1];
  v45 = v103 + v44;
  if ( v103 + v44 && v45 > (int)v4[2] )
    gameswf::array<gameswf::point>::reserve((int)v4, v45 + (v45 >> 1));
  if ( v44 < v45 )
  {
    v46 = 2 * v44;
    v47 = 2 * v44;
    do
    {
      ++v44;
      v48 = &(*v4)[v47];
      *v48 = 0.0;
      v48[1] = 0.0;
      v47 += 2;
    }
    while ( v44 != v45 );
  }
  else
  {
    v46 = 2 * v44;
  }
  v4[1] = (float *)v45;
  v49 = 0;
  do
  {
    v50 = v43[2 * v49];
    v51 = *v4;
    v52 = &v43[2 * v49++];
    v51[v46] = v50;
    v53 = &v51[v46];
    v46 += 2;
    v53[1] = v52[1];
  }
  while ( v49 != v103 );
  return 1;
}


// ===== 789cfc gameswf::final_shape::end_path(void) =====
void __fastcall gameswf::final_shape::end_path(gameswf::final_shape *this)
{
  int *v2; // r4
  int v3; // r2
  int v4; // r3
  int v5; // r1

  if ( *((_DWORD *)this + 8) )
  {
    if ( *(_BYTE *)this )
    {
      v2 = (int *)((char *)this + 28);
      gameswf::array<gameswf::final_shape::segment>::push_back<gameswf::final_shape::segment>(
        (_DWORD *)this + 3,
        (_DWORD *)this + 7);
    }
    else
    {
      v2 = (int *)((char *)this + 28);
      if ( !gameswf::final_shape::merge_segment((int)this, (float **)this + 7) )
        gameswf::array<gameswf::final_shape::segment>::push_back<gameswf::final_shape::segment>((_DWORD *)this + 3, v2);
    }
    v3 = *((_DWORD *)this + 8);
    if ( v3 < 0 )
    {
      v4 = 8 * v3;
      do
      {
        v5 = *v2;
        ++v3;
        *(_DWORD *)(v5 + v4) = 0;
        *(_DWORD *)(v5 + v4 + 4) = 0;
        v4 += 8;
      }
      while ( v3 );
    }
    *((_DWORD *)this + 8) = 0;
  }
}


// ===== 789d98 gameswf::execute_tesselate(gameswf::mesh_set *,gameswf::shape_character_def const*,float) =====
void __fastcall gameswf::execute_tesselate(
        gameswf *this,
        gameswf::mesh_set *a2,
        const gameswf::shape_character_def *a3,
        float a4)
{
  char v5; // r5
  int v6; // r1
  int v7; // r1
  int i; // r3
  int v9; // r0
  int v10; // r2
  int v11; // r1
  int v12; // r1
  int j; // r3
  int v14; // r0
  int v15; // r2
  int v16; // r7
  int v17; // r3
  int v18; // r8
  int v19; // r10
  int v20; // r4
  int v21; // r2
  int v22; // r4
  int v23; // r5
  int v24; // r3
  int v25; // r6
  _DWORD *v26; // r1
  int v27; // r3
  int v28; // r5
  int v29; // r10
  int v30; // r9
  float *v31; // r1
  int v32; // r3
  int v33; // r3
  float *v34; // r9
  float v35; // r6
  float v36; // r8
  int v37; // r4
  int m; // r5
  int v39; // r4
  int n; // r5
  int v41; // r3
  int k; // [sp+14h] [bp-D8h]
  int v43; // [sp+18h] [bp-D4h]
  int v44; // [sp+1Ch] [bp-D0h]
  int v45; // [sp+20h] [bp-CCh]
  int v46; // [sp+24h] [bp-C8h]
  int v47; // [sp+28h] [bp-C4h]
  int v48; // [sp+2Ch] [bp-C0h]
  int v49; // [sp+30h] [bp-BCh]
  int v51; // [sp+38h] [bp-B4h]
  GLUtesselator *v53[15]; // [sp+50h] [bp-9Ch] BYREF
  GLUtesselator *v54[15]; // [sp+8Ch] [bp-60h] BYREF
  int v55; // [sp+C8h] [bp-24h] BYREF
  int v56; // [sp+CCh] [bp-20h]
  int v57; // [sp+D0h] [bp-1Ch]
  char v58; // [sp+D4h] [bp-18h]
  int v59; // [sp+D8h] [bp-14h] BYREF
  int v60; // [sp+DCh] [bp-10h]
  int v61; // [sp+E0h] [bp-Ch]
  char v62; // [sp+E4h] [bp-8h]

  gameswf::tesselator_accepter::tesselator_accepter((gameswf::tesselator_accepter *)v54, 0, 0, 0);
  gameswf::tesselator_accepter::tesselator_accepter((gameswf::tesselator_accepter *)v53, 0, 1, 0);
  v5 = 0;
  v6 = *((_DWORD *)a2 + 10);
  if ( v6 < 1 )
    v6 = 1;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  gameswf::array<gameswf::final_shape>::resize(&v59, v6);
  if ( v60 > 0 )
  {
    v7 = 0;
    if ( *(float *)&a3 > 0.0 )
      v5 = 1;
    for ( i = 0; i < v60; ++i )
    {
      v9 = 1065353216;
      v10 = v59 + v7;
      if ( v5 )
        v9 = (int)a3;
      *(_DWORD *)(v10 + 4) = i;
      *(_DWORD *)(v10 + 8) = v9;
      *(_BYTE *)v10 = 0;
      v7 += 52;
    }
  }
  v11 = *((_DWORD *)a2 + 14);
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  gameswf::array<gameswf::final_shape>::resize(&v55, v11);
  if ( v56 > 0 )
  {
    v12 = 0;
    for ( j = 0; j < v56; ++j )
    {
      v14 = 1065353216;
      v15 = v55 + v12;
      if ( *(float *)&a3 > 0.0 )
        v14 = (int)a3;
      *(_DWORD *)(v15 + 4) = j;
      *(_DWORD *)(v15 + 8) = v14;
      *(_BYTE *)v15 = 1;
      v12 += 52;
    }
  }
  gameswf::mesh_set::new_layer(this);
  v46 = *((_DWORD *)a2 + 18);
  if ( v46 > 0 )
  {
    v43 = 1;
    v44 = 0;
    do
    {
      v16 = *((_DWORD *)a2 + 17) + v44;
      if ( *(_DWORD *)(v16 + 24) )
      {
        v47 = v43;
        if ( v46 > v43 && *(_BYTE *)(v16 + 76) )
        {
          v48 = 1;
          v49 = 1;
          v51 = 1;
        }
        else if ( v46 == v43 )
        {
          v49 = 1;
          v48 = 0;
          v51 = 1;
        }
        else
        {
          v48 = 0;
          v49 = 0;
          v51 = 0;
        }
        for ( k = 0; k != 3; ++k )
        {
          if ( k )
          {
            if ( k == 1 )
              v41 = *(_DWORD *)(v16 + 4);
            else
              v41 = *(_DWORD *)(v16 + 8);
            if ( k != 1 )
              v49 = 1;
            v17 = v41 - 1;
          }
          else
          {
            v17 = *(_DWORD *)v16 - 1;
          }
          if ( v17 != -1 )
          {
            v18 = *(_DWORD *)(v16 + 12);
            v19 = *(_DWORD *)(v16 + 16);
            if ( k == 2 )
              v20 = v55;
            else
              v20 = v59;
            v21 = 52;
            v22 = v20 + 52 * v17;
            v23 = *(_DWORD *)(v22 + 32);
            v24 = *(_DWORD *)(v22 + 36);
            *(_DWORD *)(v22 + 44) = v18;
            v25 = v23 + 1;
            *(_DWORD *)(v22 + 48) = v19;
            if ( v23 + 1 <= v24 )
              v21 = v23;
            v45 = v22 + 28;
            if ( v23 + 1 > v24 )
            {
              gameswf::array<gameswf::point>::reserve(v45, v25 + (v25 >> 1));
              v21 = *(_DWORD *)(v22 + 32);
            }
            v26 = (_DWORD *)(*(_DWORD *)(v22 + 28) + 8 * v21);
            v26[1] = v19;
            *v26 = v18;
            v27 = *(_DWORD *)(v22 + 28);
            *(_DWORD *)(v22 + 32) = v25;
            *(_DWORD *)(v22 + 44) = *(_DWORD *)(v27 + 8 * v23);
            *(_DWORD *)(v22 + 48) = *(_DWORD *)(v27 + 8 * v23 + 4);
            if ( *(int *)(v16 + 24) > 0 )
            {
              v28 = 0;
              while ( 1 )
              {
                v33 = *(_DWORD *)(v16 + 20);
                v34 = (float *)(v33 + 16 * v28);
                v35 = v34[2];
                if ( *v34 != v35 )
                  break;
                v36 = v34[3];
                if ( v34[1] == v36 )
                {
                  v29 = *(_DWORD *)(v22 + 32);
                  v30 = v29 + 1;
                  if ( v29 + 1 > *(_DWORD *)(v22 + 36) )
                    gameswf::array<gameswf::point>::reserve(v45, v30 + (v30 >> 1));
                  ++v28;
                  v31 = (float *)(*(_DWORD *)(v22 + 28) + 8 * *(_DWORD *)(v22 + 32));
                  v31[1] = v36;
                  *v31 = v35;
                  v32 = *(_DWORD *)(v22 + 28);
                  *(_DWORD *)(v22 + 32) = v30;
                  *(_DWORD *)(v22 + 44) = *(_DWORD *)(v32 + 8 * v29);
                  *(_DWORD *)(v22 + 48) = *(_DWORD *)(v32 + 8 * v29 + 4);
                  if ( v28 >= *(_DWORD *)(v16 + 24) )
                    goto LABEL_43;
                }
                else
                {
                  gameswf::final_shape::add_curve(
                    (gameswf::final_shape *)v22,
                    *(float *)(v22 + 44),
                    *(float *)(v22 + 48),
                    *(float *)(v33 + 16 * v28),
                    v34[1],
                    v35,
                    v36);
LABEL_42:
                  if ( ++v28 >= *(_DWORD *)(v16 + 24) )
                    goto LABEL_43;
                }
              }
              gameswf::final_shape::add_curve(
                (gameswf::final_shape *)v22,
                *(float *)(v22 + 44),
                *(float *)(v22 + 48),
                *(float *)(v33 + 16 * v28),
                v34[1],
                v35,
                v34[3]);
              goto LABEL_42;
            }
LABEL_43:
            gameswf::final_shape::end_path((gameswf::final_shape *)v22);
          }
        }
        if ( v51 && v60 > 0 )
        {
          v37 = 0;
          for ( m = 0; m < v60; ++m )
          {
            gameswf::final_shape::flush((gameswf::final_shape *)(v59 + v37), this, (gameswf::tesselator_accepter *)v54);
            v37 += 52;
          }
        }
        if ( v49 && v56 > 0 )
        {
          v39 = 0;
          for ( n = 0; n < v56; ++n )
          {
            gameswf::final_shape::flush((gameswf::final_shape *)(v55 + v39), this, (gameswf::tesselator_accepter *)v53);
            v39 += 52;
          }
        }
        if ( v48 )
          gameswf::mesh_set::new_layer(this);
      }
      else
      {
        v47 = v43;
      }
      v44 += 40;
      ++v43;
    }
    while ( v46 > v47 );
  }
  gameswf::array<gameswf::final_shape>::resize(&v55, 0);
  gameswf::array<gameswf::final_shape>::reserve((int)&v55, 0);
  gameswf::array<gameswf::final_shape>::resize(&v59, 0);
  gameswf::array<gameswf::final_shape>::reserve((int)&v59, 0);
  gameswf::tesselator_accepter::~tesselator_accepter(v53);
  gameswf::tesselator_accepter::~tesselator_accepter(v54);
}


// ===== 78a2e4 gameswf::edit_text_character_def::get_bound(gameswf::rect *) =====
int __fastcall gameswf::edit_text_character_def::get_bound(int a1, _DWORD *a2)
{
  int result; // r0
  int v4; // r1
  int v5; // r2
  int v6; // r3
  _DWORD *v7; // t0

  v7 = (_DWORD *)(a1 + 36);
  result = *(_DWORD *)(a1 + 36);
  v4 = *++v7;
  v5 = *++v7;
  v6 = v7[1];
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}


// ===== 78a2f8 gameswf::edit_text_character::is(int) =====
bool __fastcall gameswf::edit_text_character::is(gameswf::edit_text_character *this, int a2)
{
  return a2 == 32 || a2 == 1 || a2 == 0;
}


// ===== 78a31c gameswf::edit_text_character::get_character_def(void) =====
int __fastcall gameswf::edit_text_character::get_character_def(gameswf::edit_text_character *this)
{
  return *((_DWORD *)this + 40);
}


// ===== 78a324 gameswf::text_character_def::get_bound(gameswf::rect *) =====
int __fastcall gameswf::text_character_def::get_bound(int a1, _DWORD *a2)
{
  int result; // r0
  int v4; // r1
  int v5; // r2
  int v6; // r3
  _DWORD *v7; // t0

  v7 = (_DWORD *)(a1 + 36);
  result = *(_DWORD *)(a1 + 36);
  v4 = *++v7;
  v5 = *++v7;
  v6 = v7[1];
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}


// ===== 78a338 gameswf::edit_text_character::can_handle_mouse_event(void) =====
int __fastcall gameswf::edit_text_character::can_handle_mouse_event(gameswf::edit_text_character *this)
{
  return *(unsigned __int8 *)(*((_DWORD *)this + 40) + 75) ^ 1;
}


// ===== 78a348 gameswf::edit_text_character::hit_test(float,float) =====
bool __fastcall gameswf::edit_text_character::hit_test(gameswf::edit_text_character *this, float a2, float a3)
{
  return (*(int (__fastcall **)(gameswf::edit_text_character *, _DWORD, _DWORD))(*(_DWORD *)this + 104))(
           this,
           LODWORD(a2),
           LODWORD(a3)) != 0;
}


// ===== 78a364 gameswf::edit_text_character::get_var_name(void) =====
int __fastcall gameswf::edit_text_character::get_var_name(gameswf::edit_text_character *this)
{
  return *((_DWORD *)this + 40) + 52;
}


// ===== 78a370 gameswf::edit_text_character::reset_bounding_box(float,float) =====
float *__fastcall gameswf::edit_text_character::reset_bounding_box(float *this, float a2, float a3)
{
  *(this + 77) = a3;
  *(this + 75) = a2;
  *(this + 74) = a2;
  *(this + 76) = a3;
  return this;
}


// ===== 78a384 gameswf::edit_text_character::advance(float) =====
int __fastcall gameswf::edit_text_character::advance(gameswf::edit_text_character *this, float a2)
{
  return (*(int (__fastcall **)(gameswf::edit_text_character *, _DWORD))(*(_DWORD *)this + 12))(this, LODWORD(a2));
}


// ===== 78a398 gameswf::edit_text_character::align_line(gameswf::edit_text_character_def::alignment,int,float) =====
float __fastcall gameswf::edit_text_character::align_line(int a1, int a2, int a3, float a4)
{
  int v5; // r0
  bool v6; // zf
  float v9; // r1
  float result; // r0
  float v11; // r0
  float v12; // r8
  int v13; // r2
  int v14; // r5
  int v15; // r7

  v5 = *(_DWORD *)(a1 + 160);
  v6 = a2 == 0;
  v9 = *(float *)(v5 + 36);
  result = *(float *)(v5 + 40);
  if ( !v6 )
  {
    v11 = (float)((float)((float)(result - v9) - *(float *)(a1 + 388)) - a4) - 80.0;
    v12 = v11;
    if ( a2 == 2 )
    {
      v12 = v11 * 0.5;
    }
    else if ( a2 != 1 )
    {
      v12 = 0.0;
    }
    v13 = *(_DWORD *)(a1 + 168);
    if ( a3 < v13 )
    {
      v14 = 48 * a3;
      do
      {
        ++a3;
        v15 = *(_DWORD *)(a1 + 164) + v14;
        v14 += 48;
        if ( *(_BYTE *)(v15 + 28) )
        {
          *(float *)(v15 + 16) = *(float *)(v15 + 16) + v12;
          v13 = *(_DWORD *)(a1 + 168);
        }
      }
      while ( a3 < v13 );
    }
    result = *(float *)(a1 + 340) + v12;
    *(float *)(a1 + 340) = result;
  }
  return result;
}


// ===== 78a464 gameswf::array<gameswf::glyph>::reserve(int) =====
void __fastcall gameswf::array<gameswf::glyph>::reserve(int a1, int a2)
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
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 36 * a2, 36 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(36 * a2);
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


// ===== 78a4ec gameswf::array<gameswf::glyph>::resize(int) =====
void __fastcall gameswf::array<gameswf::glyph>::resize(_DWORD *a1, int a2)
{
  int v2; // r6
  int v5; // r8
  int v6; // r7
  void (__fastcall ***v7)(_DWORD); // r0
  int v8; // r1
  int v9; // r3

  v2 = a1[1];
  if ( v2 > a2 )
  {
    v5 = 36 * a2;
    v6 = a2;
    do
    {
      ++v6;
      v7 = *(void (__fastcall ****)(_DWORD))(*a1 + v5 + 4);
      v5 += 36;
      if ( v7 )
        gameswf::ref_counted::drop_ref(v7);
    }
    while ( v6 != v2 );
  }
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::glyph>::reserve((int)a1, a2 + (a2 >> 1));
  if ( v2 < a2 )
  {
    v8 = 36 * v2;
    do
    {
      ++v2;
      v9 = *a1 + v8;
      *(_DWORD *)v9 = 1140850688;
      *(_BYTE *)(v9 + 34) = 0;
      *(_DWORD *)(v9 + 4) = 0;
      *(_DWORD *)(v9 + 24) = 0;
      *(_WORD *)(v9 + 28) = 0;
      *(_WORD *)(v9 + 30) = -1;
      *(_WORD *)(v9 + 32) = 0;
      v8 += 36;
    }
    while ( v2 != a2 );
  }
  a1[1] = a2;
}


// ===== 78a5b8 gameswf::text_glyph_record::~text_glyph_record() =====
void __fastcall gameswf::text_glyph_record::~text_glyph_record(gameswf::text_glyph_record *this)
{
  char *v1; // r5
  void (__fastcall ***v3)(_DWORD); // r0

  v1 = (char *)this + 32;
  gameswf::array<gameswf::glyph>::resize((_DWORD *)this + 8, 0);
  gameswf::array<gameswf::glyph>::reserve((int)v1, 0);
  v3 = *((void (__fastcall ****)(_DWORD))this + 1);
  if ( v3 )
    gameswf::ref_counted::drop_ref(v3);
}


// ===== 78a5f4 gameswf::array<gameswf::text_glyph_record>::reserve(int) =====
void __fastcall gameswf::array<gameswf::text_glyph_record>::reserve(int a1, int a2)
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
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 48 * a2, 48 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(48 * a2);
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


// ===== 78a67c gameswf::array<gameswf::edit_text_character::text_attributes>::reserve(int) =====
void __fastcall gameswf::array<gameswf::edit_text_character::text_attributes>::reserve(int a1, int a2)
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


// ===== 78a6f8 gameswf::array<gameswf::render_cache::entry>::reserve(int) =====
void __fastcall gameswf::array<gameswf::render_cache::entry>::reserve(int a1, int a2)
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
        *(_DWORD *)a1 = gameswf::realloc_internal(*(void **)a1, 24 * a2, 24 * v3);
      else
        *(_DWORD *)a1 = gameswf::malloc_internal(24 * a2);
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


// ===== 78a780 gameswf::array<gameswf::glyph>::operator=(gameswf::array<gameswf::glyph> const&) =====
void __fastcall gameswf::array<gameswf::glyph>::operator=(_DWORD *a1, _DWORD *a2)
{
  int v4; // r6
  int v5; // r8
  int v6; // r4
  int v7; // r5
  int v8; // r1
  int v9; // r2
  int v10; // r3

  gameswf::array<gameswf::glyph>::resize(a1, a2[1]);
  if ( (int)a1[1] > 0 )
  {
    v4 = 0;
    v5 = 0;
    do
    {
      ++v5;
      v6 = *a1 + v4;
      v7 = *a2 + v4;
      *(_DWORD *)v6 = *(_DWORD *)v7;
      gameswf::smart_ptr<gameswf::bitmap_info>::set_ref(
        (gameswf::ref_counted **)(v6 + 4),
        *(gameswf::ref_counted **)(v7 + 4));
      v8 = *(_DWORD *)(v7 + 12);
      v9 = *(_DWORD *)(v7 + 16);
      v10 = *(_DWORD *)(v7 + 20);
      *(_DWORD *)(v6 + 8) = *(_DWORD *)(v7 + 8);
      *(_DWORD *)(v6 + 12) = v8;
      *(_DWORD *)(v6 + 16) = v9;
      *(_DWORD *)(v6 + 20) = v10;
      v4 += 36;
      *(_DWORD *)(v6 + 24) = *(_DWORD *)(v7 + 24);
      *(_WORD *)(v6 + 28) = *(_WORD *)(v7 + 28);
      *(_WORD *)(v6 + 30) = *(_WORD *)(v7 + 30);
      *(_WORD *)(v6 + 32) = *(_WORD *)(v7 + 32);
      *(_BYTE *)(v6 + 34) = *(_BYTE *)(v7 + 34);
    }
    while ( a1[1] > v5 );
  }
}


// ===== 78a81c gameswf::array<gameswf::glyph>::push_back<gameswf::glyph>(gameswf::glyph const&) =====
int __fastcall gameswf::array<gameswf::glyph>::push_back<gameswf::glyph>(int *a1, int a2)
{
  int v2; // r3
  int v4; // r7
  int v6; // r3
  int v7; // r2
  int v8; // r0
  int v9; // r5
  int result; // r0
  int v11; // r1
  int v12; // r2
  int v13; // r3

  v2 = a1[1];
  v4 = v2 + 1;
  if ( v2 + 1 > a1[2] )
  {
    gameswf::array<gameswf::glyph>::reserve((int)a1, v4 + (v4 >> 1));
    v2 = a1[1];
  }
  v6 = 36 * v2;
  v7 = *a1;
  *(_DWORD *)(v7 + v6) = *(_DWORD *)a2;
  v8 = *(_DWORD *)(a2 + 4);
  v9 = v7 + v6;
  *(_DWORD *)(v7 + v6 + 4) = v8;
  if ( v8 )
    gameswf::ref_counted::add_ref(v8);
  result = *(_DWORD *)(a2 + 8);
  v11 = *(_DWORD *)(a2 + 12);
  v12 = *(_DWORD *)(a2 + 16);
  v13 = *(_DWORD *)(a2 + 20);
  *(_DWORD *)(v9 + 8) = result;
  *(_DWORD *)(v9 + 12) = v11;
  *(_DWORD *)(v9 + 16) = v12;
  *(_DWORD *)(v9 + 20) = v13;
  *(_DWORD *)(v9 + 24) = *(_DWORD *)(a2 + 24);
  *(_WORD *)(v9 + 28) = *(_WORD *)(a2 + 28);
  *(_WORD *)(v9 + 30) = *(_WORD *)(a2 + 30);
  *(_WORD *)(v9 + 32) = *(_WORD *)(a2 + 32);
  *(_BYTE *)(v9 + 34) = *(_BYTE *)(a2 + 34);
  a1[1] = v4;
  return result;
}


// ===== 78a8b8 gameswf::text_glyph_record::text_glyph_record(gameswf::text_glyph_record const&) =====
gameswf::text_glyph_record *__fastcall gameswf::text_glyph_record::text_glyph_record(
        gameswf::text_glyph_record *this,
        const gameswf::text_glyph_record *a2)
{
  int v4; // r0
  char v5; // r2

  *(_DWORD *)this = *(_DWORD *)a2;
  v4 = *((_DWORD *)a2 + 1);
  *((_DWORD *)this + 1) = v4;
  if ( v4 )
    gameswf::ref_counted::add_ref(v4);
  *((_DWORD *)this + 2) = *((_DWORD *)a2 + 2);
  *((_BYTE *)this + 12) = *((_BYTE *)a2 + 12);
  *((_DWORD *)this + 4) = *((_DWORD *)a2 + 4);
  *((_DWORD *)this + 5) = *((_DWORD *)a2 + 5);
  *((_DWORD *)this + 6) = *((_DWORD *)a2 + 6);
  *((_BYTE *)this + 28) = *((_BYTE *)a2 + 28);
  *((_BYTE *)this + 29) = *((_BYTE *)a2 + 29);
  v5 = *((_BYTE *)a2 + 30);
  *((_BYTE *)this + 44) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_BYTE *)this + 30) = v5;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  gameswf::array<gameswf::glyph>::operator=((_DWORD *)this + 8, (_DWORD *)a2 + 8);
  return this;
}


// ===== 78a948 gameswf::array<gameswf::text_glyph_record>::push_back<gameswf::text_glyph_record>(gameswf::text_glyph_record const&) =====
gameswf::text_glyph_record *__fastcall gameswf::array<gameswf::text_glyph_record>::push_back<gameswf::text_glyph_record>(
        _DWORD *a1,
        gameswf::text_glyph_record *a2)
{
  int v2; // r3
  int v4; // r5
  gameswf::text_glyph_record *result; // r0

  v2 = a1[1];
  v4 = v2 + 1;
  if ( v2 + 1 > a1[2] )
  {
    gameswf::array<gameswf::text_glyph_record>::reserve((int)a1, v4 + (v4 >> 1));
    v2 = a1[1];
  }
  result = gameswf::text_glyph_record::text_glyph_record((gameswf::text_glyph_record *)(*a1 + 48 * v2), a2);
  a1[1] = v4;
  return result;
}


// ===== 78a990 gameswf::edit_text_character::append_image(gameswf::tu_string const&,int,int) =====
void __fastcall gameswf::edit_text_character::append_image(
        gameswf::edit_text_character *this,
        const gameswf::tu_string *a2,
        int a3,
        int a4)
{
  int v8; // r0
  int v9; // r8
  const gameswf::tu_string *v10; // r0
  int v11; // r1
  gameswf::ref_counted *v12; // r7
  float v13; // r1
  float v14; // r0
  int v15; // r1
  float v16; // r9
  int v17; // r7
  int v18; // r1
  int v19; // r3
  int v20; // r7
  int v21; // r10
  int v22; // r7
  int v23; // r8
  int v24; // r6
  int v25; // r8
  _BOOL4 v26; // r0
  float v27; // r6
  float v28; // r0
  int v29; // [sp+Ch] [bp-58h] BYREF
  gameswf::ref_counted *v30; // [sp+10h] [bp-54h] BYREF
  int v31; // [sp+14h] [bp-50h]
  char v32; // [sp+18h] [bp-4Ch]
  float v33; // [sp+1Ch] [bp-48h]
  float v34; // [sp+20h] [bp-44h]
  int v35; // [sp+24h] [bp-40h]
  char v36; // [sp+28h] [bp-3Ch]
  char v37; // [sp+29h] [bp-3Bh]
  char v38; // [sp+2Ah] [bp-3Ah]
  int v39[3]; // [sp+2Ch] [bp-38h] BYREF
  char v40; // [sp+38h] [bp-2Ch]
  float v41; // [sp+3Ch] [bp-28h] BYREF
  gameswf::ref_counted *v42[4]; // [sp+40h] [bp-24h] BYREF
  float v43; // [sp+50h] [bp-14h]
  int v44; // [sp+54h] [bp-10h]
  __int16 v45; // [sp+58h] [bp-Ch]
  __int16 v46; // [sp+5Ah] [bp-Ah]
  __int16 v47; // [sp+5Ch] [bp-8h]
  char v48; // [sp+5Eh] [bp-6h]

  v8 = (*(int (__fastcall **)(gameswf::edit_text_character *))(*(_DWORD *)this + 132))(this);
  v9 = v8;
  if ( v8 && (*(int (__fastcall **)(int, int))(*(_DWORD *)v8 + 8))(v8, 33) )
  {
    v12 = (gameswf::ref_counted *)(*(int (__fastcall **)(int))(*(_DWORD *)v9 + 44))(v9);
    if ( a3 > 0 )
      goto LABEL_9;
LABEL_26:
    a3 = (*(int (__fastcall **)(gameswf::ref_counted *))(*(_DWORD *)v12 + 36))(v12);
    if ( a4 > 0 )
      goto LABEL_10;
LABEL_27:
    a4 = (*(int (__fastcall **)(gameswf::ref_counted *))(*(_DWORD *)v12 + 40))(v12);
    goto LABEL_10;
  }
  if ( !gameswf::s_texture_loader_callback )
    return;
  v10 = *(char *)a2 == -1 ? *((const gameswf::tu_string **)a2 + 3) : (const gameswf::tu_string *)((char *)a2 + 1);
  v11 = ((int (__fastcall *)(const gameswf::tu_string *, int, int))gameswf::s_texture_loader_callback)(v10, a3, a4);
  if ( !v11 )
    return;
  v12 = (gameswf::ref_counted *)(*(int (__fastcall **)(int, int))(*(_DWORD *)gameswf::s_render_handler + 24))(
                                  gameswf::s_render_handler,
                                  v11);
  if ( a3 <= 0 )
    goto LABEL_26;
LABEL_9:
  if ( a4 <= 0 )
    goto LABEL_27;
LABEL_10:
  v48 = 2;
  v42[0] = nullptr;
  v44 = 0;
  v45 = 0;
  v46 = -1;
  v47 = 0;
  gameswf::smart_ptr<gameswf::bitmap_info>::set_ref(v42, v12);
  v45 = 1024;
  v42[1] = nullptr;
  v42[3] = nullptr;
  v41 = (float)a3 * 20.0;
  v47 = -1;
  *(float *)&v42[2] = v41;
  v13 = *((float *)this + 88);
  v43 = (float)a4 * 20.0;
  v14 = v43 + v13;
  v15 = *((_DWORD *)this + 42);
  v16 = v14;
  v35 = 1065353216;
  v34 = 0.0;
  v33 = 0.0;
  v29 = -1;
  v38 = 1;
  v40 = 0;
  v30 = nullptr;
  v31 = -1;
  v32 = 0;
  v36 = 0;
  v37 = 0;
  memset(v39, 0, sizeof(v39));
  if ( v15 > 0 )
  {
    v17 = *((_DWORD *)this + 41);
    v18 = 48 * (v15 - 1);
    v19 = *(_DWORD *)(v17 + v18);
    v20 = v17 + v18;
    v29 = v19;
    gameswf::smart_ptr<gameswf::font>::set_ref(&v30, *(gameswf::ref_counted **)(v20 + 4));
    v31 = *(_DWORD *)(v20 + 8);
    v32 = *(_BYTE *)(v20 + 12);
    v33 = *(float *)(v20 + 16);
    v34 = *(float *)(v20 + 20);
    v35 = *(_DWORD *)(v20 + 24);
    v36 = *(_BYTE *)(v20 + 28);
    v37 = *(_BYTE *)(v20 + 29);
    v38 = *(_BYTE *)(v20 + 30);
    if ( v16 > v34 )
    {
      v21 = *((_DWORD *)this + 42);
      if ( v21 - 1 >= 0 )
      {
        v22 = 48 * (v21 - 1);
        v23 = *((_DWORD *)this + 41) + v22;
        if ( v34 == *(float *)(v23 + 20) )
        {
          v24 = 48 * (v21 - 2);
          while ( 1 )
          {
            *(float *)(v23 + 20) = v16;
            if ( v21 == 1 )
              break;
            v25 = *((_DWORD *)this + 41);
            v22 -= 48;
            v26 = *(float *)(v25 + v24 + 20) == v34;
            --v21;
            v24 -= 48;
            if ( !v26 )
              break;
            v23 = v25 + v22;
          }
        }
      }
      v34 = v16;
    }
  }
  else
  {
    v34 = v14;
  }
  v27 = *((float *)this + 96) + *((float *)this + 98);
  if ( v27 <= 0.0 )
    v27 = 0.0;
  v33 = *((float *)this + 87) + v27;
  gameswf::smart_ptr<gameswf::font>::set_ref(&v30, nullptr);
  v28 = *((float *)this + 87);
  v35 = 1149239296;
  v37 = 1;
  v38 = 0;
  v31 = -1;
  v32 = 0;
  v36 = 1;
  *((float *)this + 87) = v28 + (float)((float)a3 * 20.0);
  gameswf::array<gameswf::glyph>::push_back<gameswf::glyph>(v39, (int)&v41);
  gameswf::array<gameswf::text_glyph_record>::push_back<gameswf::text_glyph_record>(
    (_DWORD *)this + 41,
    (gameswf::text_glyph_record *)&v29);
  gameswf::text_glyph_record::~text_glyph_record((gameswf::text_glyph_record *)&v29);
  if ( v42[0] )
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v42[0]);
}


// ===== 78ad54 gameswf::array<gameswf::edit_text_character::text_attributes>::push_back<gameswf::edit_text_character::text_attributes>(gameswf::edit_text_character::text_attributes const&) =====
int __fastcall gameswf::array<gameswf::edit_text_character::text_attributes>::push_back<gameswf::edit_text_character::text_attributes>(
        int *a1,
        int a2)
{
  int v2; // r3
  int v4; // r6
  int result; // r0
  int v7; // r7
  bool v8; // zf
  int v9; // r7

  v2 = a1[1];
  v4 = v2 + 1;
  if ( v2 + 1 > a1[2] )
  {
    gameswf::array<gameswf::edit_text_character::text_attributes>::reserve((int)a1, v4 + (v4 >> 1));
    v2 = a1[1];
  }
  result = *(_DWORD *)a2;
  v7 = *a1;
  v8 = *(_DWORD *)a2 == 0;
  *(_DWORD *)(*a1 + 16 * v2) = *(_DWORD *)a2;
  v9 = v7 + 16 * v2;
  if ( !v8 )
    result = gameswf::ref_counted::add_ref(result);
  *(_DWORD *)(v9 + 4) = *(_DWORD *)(a2 + 4);
  *(_DWORD *)(v9 + 8) = *(_DWORD *)(a2 + 8);
  *(_BYTE *)(v9 + 12) = *(_BYTE *)(a2 + 12);
  a1[1] = v4;
  return result;
}


// ===== 78adc0 gameswf::array<gameswf::smart_ptr<gameswf::character>>::push_back<gameswf::edit_text_character *>(gameswf::edit_text_character * const&) =====
int __fastcall gameswf::array<gameswf::smart_ptr<gameswf::character>>::push_back<gameswf::edit_text_character *>(
        _DWORD *a1,
        int *a2)
{
  int v2; // r3
  int v4; // r5
  int result; // r0
  bool v7; // zf

  v2 = a1[1];
  v4 = v2 + 1;
  if ( v2 + 1 > a1[2] )
  {
    gameswf::array<gameswf::smart_ptr<gameswf::character>>::reserve((int)a1, v4 + (v4 >> 1));
    v2 = a1[1];
  }
  result = *a2;
  v7 = *a2 == 0;
  *(_DWORD *)(*a1 + 4 * v2) = *a2;
  if ( !v7 )
    result = gameswf::ref_counted::add_ref(result);
  a1[1] = v4;
  return result;
}


// ===== 78ae10 gameswf::edit_text_character::update_world_cxform(void) =====
void __fastcall gameswf::edit_text_character::update_world_cxform(gameswf::edit_text_character *this)
{
  gameswf::character::update_world_cxform(this);
  *((_QWORD *)this + 28) = -1;
  *((_QWORD *)this + 27) = -1;
}


// ===== 78ae30 gameswf::edit_text_character::update_world_matrix(void) =====
int __fastcall gameswf::edit_text_character::update_world_matrix(gameswf::edit_text_character *this)
{
  int result; // r0

  result = gameswf::character::update_world_matrix(this);
  *((_QWORD *)this + 28) = -1;
  *((_QWORD *)this + 27) = -1;
  return result;
}


// ===== 78ae50 gameswf::text_style::resolve_font(gameswf::movie_definition_sub *) =====
void __fastcall gameswf::text_style::resolve_font(gameswf::ref_counted **this, gameswf::movie_definition_sub *a2)
{
  gameswf::ref_counted *v4; // r0

  if ( !*(this + 1) && *((_BYTE *)this + 30) )
  {
    v4 = (gameswf::ref_counted *)(*(int (__fastcall **)(gameswf::movie_definition_sub *, gameswf::ref_counted *))(*(_DWORD *)a2 + 124))(
                                   a2,
                                   *this);
    gameswf::smart_ptr<gameswf::font>::set_ref(this + 1, v4);
    if ( !*(this + 1) )
      gameswf::log_error("error: text style with undefined font; font_id = %d\n", (const char *)*this);
  }
}


// ===== 78aebc gameswf::tu_string::operator==(char const*) =====
bool __fastcall gameswf::tu_string::operator==(char *a1, const char *a2)
{
  const char *v2; // r0

  if ( *a1 == -1 )
    v2 = *((const char **)a1 + 3);
  else
    v2 = a1 + 1;
  return LC_API_STRCMP_0(v2, a2) == 0;
}


// ===== 78aee0 gameswf::edit_text_character::get_member(gameswf::tu_stringi const&,gameswf::as_value *) =====
int __fastcall gameswf::edit_text_character::get_member(int a1, gameswf::tu_string *this, gameswf::as_value *a3)
{
  int v6; // r0
  float v8; // r1
  float v9; // r0
  const char *v10; // r1
  void *v11[5]; // [sp+0h] [bp-1Ch] BYREF

  switch ( gameswf::get_standard_member(this) )
  {
    case 22:
    case 23:
      gameswf::as_value::set_tu_string(a3, (const gameswf::tu_string *)(a1 + 312));
      break;
    case 24:
      v8 = *(float *)(a1 + 296);
      v9 = *(float *)(a1 + 300);
      goto LABEL_10;
    case 25:
      v8 = *(float *)(a1 + 304);
      v9 = *(float *)(a1 + 308);
LABEL_10:
      gameswf::as_value::set_double(a3, (float)((float)(v9 - v8) / 20.0));
      break;
    case 26:
      v6 = (*(unsigned __int8 *)(a1 + 369) << 8)
         + (*(unsigned __int8 *)(a1 + 368) << 16)
         + *(unsigned __int8 *)(a1 + 370);
      goto LABEL_3;
    case 27:
      gameswf::as_value::set_bool(a3, *(_BYTE *)(*(_DWORD *)(a1 + 160) + 78));
      break;
    case 28:
      gameswf::as_value::set_bool(a3, *(_BYTE *)(*(_DWORD *)(a1 + 160) + 73));
      break;
    case 29:
      gameswf::as_value::set_bool(a3, *(_BYTE *)(*(_DWORD *)(a1 + 160) + 72));
      break;
    case 30:
      if ( *(_BYTE *)(*(_DWORD *)(a1 + 160) + 75) )
        v10 = "dynamic";
      else
        v10 = "input";
      gameswf::tu_string::tu_string((gameswf::tu_string *)v11, v10);
      gameswf::as_value::set_tu_string(a3, (const gameswf::tu_string *)v11);
      gameswf::tu_string::~tu_string(v11);
      break;
    case 31:
      v6 = (*(unsigned __int8 *)(a1 + 405) << 8)
         | (*(unsigned __int8 *)(a1 + 404) << 16)
         | *(unsigned __int8 *)(a1 + 406);
LABEL_3:
      gameswf::as_value::set_double(a3, (double)v6);
      break;
    default:
      break;
  }
  if ( gameswf::get_builtin(6, this, a3) )
    return 1;
  else
    return gameswf::character::get_member((_DWORD *)a1, this, a3);
}


// ===== 78b0c0 gameswf::tu_string::insert(int,char) =====
void *__fastcall gameswf::tu_string::insert(gameswf::tu_string *this, int a2, char a3)
{
  int v3; // r8
  char *v7; // r6
  void *result; // r0

  v3 = *(char *)this;
  if ( v3 == -1 )
    v3 = *((_DWORD *)this + 1);
  gameswf::tu_string::resize(this, v3);
  if ( *(char *)this == -1 )
    v7 = *((char **)this + 3);
  else
    v7 = (char *)this + 1;
  result = memmove(&v7[a2 + 1], &v7[a2], v3 - a2);
  v7[a2] = a3;
  *((_DWORD *)this + 4) = *((_DWORD *)this + 4) & 0xFF000000 | 0xFFFFFF;
  return result;
}


// ===== 78b128 gameswf::edit_text_character::show_cursor(void) =====
int __fastcall gameswf::edit_text_character::show_cursor(gameswf::edit_text_character *this)
{
  float v1; // r3
  float v2; // r1
  char *world_matrix; // r0
  int v4; // r1
  int v5; // r2
  int v6; // r3
  int v7; // r1
  int result; // r0
  int (__fastcall *v9)(int, int); // r3
  _DWORD v10[6]; // [sp+4h] [bp-2Ch] BYREF
  _DWORD v11[2]; // [sp+1Ch] [bp-14h] BYREF
  int v12; // [sp+24h] [bp-Ch]
  float v13; // [sp+28h] [bp-8h]
  int v14; // [sp+2Ch] [bp-4h]

  v1 = *((float *)this + 86);
  v2 = *((float *)this + 93);
  v12 = *((_DWORD *)this + 85);
  v11[0] = v12;
  *(float *)&v11[1] = v1;
  v13 = v1 + v2;
  world_matrix = gameswf::character::get_world_matrix(this);
  v4 = *((_DWORD *)world_matrix + 1);
  v5 = *((_DWORD *)world_matrix + 2);
  v6 = *((_DWORD *)world_matrix + 3);
  v10[0] = *(_DWORD *)world_matrix;
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = *((_DWORD *)world_matrix + 5);
  result = *((_DWORD *)world_matrix + 4);
  v10[5] = v7;
  v10[4] = result;
  if ( gameswf::s_render_handler )
  {
    (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)gameswf::s_render_handler + 80))(gameswf::s_render_handler, v10);
    result = gameswf::s_render_handler;
    if ( gameswf::s_render_handler )
    {
      v9 = *(int (__fastcall **)(int, int))(*(_DWORD *)gameswf::s_render_handler + 120);
      v14 = -16776961;
      result = v9(gameswf::s_render_handler, -16776961);
      if ( gameswf::s_render_handler )
      {
        result = (*(int (__fastcall **)(int, int))(*(_DWORD *)gameswf::s_render_handler + 124))(
                   gameswf::s_render_handler,
                   1109393408);
        if ( gameswf::s_render_handler )
          return (*(int (__fastcall **)(int, _DWORD *, int))(*(_DWORD *)gameswf::s_render_handler + 96))(
                   gameswf::s_render_handler,
                   v11,
                   2);
      }
    }
  }
  return result;
}


// ===== 78b240 gameswf::preload_glyph_codes(gameswf::player_context *,ushort *,int,gameswf::font *,int,gameswf::filter const*) =====
int __fastcall gameswf::preload_glyph_codes(int a1, int a2, int a3, gameswf::font *a4, int a5, int a6)
{
  int v6; // r4
  int v11; // r10
  int v12; // r11
  int v13; // r3
  float v14; // r0
  glyph v16; // [sp+20h] [bp-3Ch] BYREF
  void *v17; // [sp+38h] [bp-24h]
  unsigned __int16 v18; // [sp+3Ch] [bp-20h]
  __int16 v19; // [sp+3Eh] [bp-1Eh]
  unsigned __int16 v20; // [sp+40h] [bp-1Ch]
  char v21; // [sp+42h] [bp-1Ah]
  _BYTE v22[16]; // [sp+44h] [bp-18h] BYREF
  char v23; // [sp+54h] [bp-8h] BYREF
  char v24; // [sp+55h] [bp-7h]
  char v25; // [sp+56h] [bp-6h]

  v6 = 0;
  v16.width = 1140850688;
  v21 = 0;
  v16.height = 0;
  v17 = nullptr;
  v19 = -1;
  v18 = a5;
  if ( a3 <= 0 )
    return 0;
  v11 = 2 * a3;
  do
  {
    while ( 1 )
    {
      v20 = *(_WORD *)(a2 + v6);
      if ( !gameswf::font::get_glyph(a4, &v16, v20, a5) )
        goto LABEL_5;
      v12 = *(_DWORD *)(a1 + 12);
      v13 = *(_DWORD *)(v12 + 40);
      if ( !v13 && !*(_DWORD *)(*(_DWORD *)(a1 + 16) + 12) )
        goto LABEL_5;
      if ( v16.height == *(_DWORD *)(v13 + 52) )
        break;
      gameswf::bitmap_glyph_texture_cache::get_glyph_region(
        *(gameswf::bitmap_glyph_texture_cache **)(*(_DWORD *)(a1 + 16) + 12),
        v20,
        v17,
        v18,
        (gameswf::rect *)v22);
LABEL_5:
      v6 += 2;
      if ( v6 == v11 )
        goto LABEL_14;
    }
    v23 = 0;
    v24 = 0;
    v25 = 0;
    if ( a6 )
    {
      if ( *(_DWORD *)a6 == 2 )
      {
        if ( *(float *)(a6 + 32) > *(float *)(a6 + 36) )
          v14 = *(float *)(a6 + 32);
        else
          v14 = *(float *)(a6 + 36);
        v23 = (unsigned int)v14;
      }
      else if ( *(_DWORD *)a6 <= 1u )
      {
        v24 = (unsigned int)*(float *)(a6 + 32);
        v25 = (unsigned int)*(float *)(a6 + 36);
      }
    }
    v6 += 2;
    gameswf::glyph_texture_cache::get_glyph_region(*(_DWORD *)(v12 + 40), v20, v17, v18, &v23, v22);
  }
  while ( v6 != v11 );
LABEL_14:
  if ( v16.height )
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v16.height);
  return a3;
}


// ===== 78b410 gameswf::edit_text_character_def::csm_textsetting(gameswf::stream *,int) =====
int __fastcall gameswf::edit_text_character_def::csm_textsetting(
        gameswf::edit_text_character_def *this,
        gameswf::stream *a2,
        int a3)
{
  *((_BYTE *)this + 144) = gameswf::stream::read_uint(a2, 2) != 0;
  *((_DWORD *)this + 37) = gameswf::stream::read_uint(a2, 3);
  gameswf::stream::read_uint(a2, 3);
  *((float *)this + 38) = gameswf::stream::read_fixed(a2);
  *((float *)this + 39) = gameswf::stream::read_fixed(a2);
  return gameswf::stream::read_u8(a2);
}


// ===== 78b474 gameswf::text_character_def::csm_textsetting(gameswf::stream *,int) =====
int __fastcall gameswf::text_character_def::csm_textsetting(
        gameswf::text_character_def *this,
        gameswf::stream *a2,
        int a3)
{
  *((_BYTE *)this + 92) = gameswf::stream::read_uint(a2, 2) != 0;
  *((_DWORD *)this + 24) = gameswf::stream::read_uint(a2, 3);
  gameswf::stream::read_uint(a2, 3);
  *((float *)this + 25) = gameswf::stream::read_fixed(a2);
  *((float *)this + 26) = gameswf::stream::read_fixed(a2);
  return gameswf::stream::read_u8(a2);
}


// ===== 78b4d8 gameswf::removeHTML(gameswf::tu_string &) =====
char *__fastcall gameswf::removeHTML(gameswf *this, gameswf::tu_string *a2)
{
  int v2; // r10
  const char *v4; // r8
  char *result; // r0
  int v6; // r10
  const char *v7; // r8
  char *v8; // r1
  _BYTE *v9; // r1
  int v10; // r7
  char v11[520]; // [sp+4h] [bp-208h] BYREF

  v2 = *(char *)this;
  if ( v2 == -1 )
  {
    v4 = *((const char **)this + 3);
    result = LC_API_STRSTR_0(v4, "</");
    v6 = *((_DWORD *)this + 1) - 1;
  }
  else
  {
    v4 = (char *)this + 1;
    result = LC_API_STRSTR_0((const char *)this + 1, "</");
    v6 = v2 - 1;
  }
  if ( v6 >= 0 )
  {
    v7 = v4 - 1;
    if ( result > v7 )
    {
      if ( *result == 62 )
      {
        v8 = result;
LABEL_11:
        v9 = v8 + 1;
        v10 = result - v9;
        if ( result - v9 <= 0 )
        {
          return gameswf::tu_string::operator=((char *)this, "");
        }
        else
        {
          memcpy(v11, v9, result - v9);
          v11[v10] = 0;
          return gameswf::tu_string::operator=((char *)this, v11);
        }
      }
      else
      {
        v8 = result;
        while ( --v7 < --v8 )
        {
          if ( *v8 == 62 )
            goto LABEL_11;
        }
      }
    }
  }
  return result;
}


// ===== 78b610 gameswf::edit_text_character_def::read(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
char *__fastcall gameswf::edit_text_character_def::read(
        gameswf::edit_text_character_def *this,
        gameswf::stream *a2,
        int a3,
        gameswf::movie_definition_sub *a4)
{
  int uint; // r6
  int v7; // r10
  int v8; // r8
  int v9; // r9
  int v10; // r7
  char *result; // r0
  gameswf::tu_string *v12; // r5
  gameswf::tu_string *v13; // r1

  gameswf::rect::read((gameswf::edit_text_character_def *)((char *)this + 36), a2);
  gameswf::stream::align((int)a2);
  uint = gameswf::stream::read_uint(a2, 1);
  *((_BYTE *)this + 72) = gameswf::stream::read_uint(a2, 1) != 0;
  *((_BYTE *)this + 73) = gameswf::stream::read_uint(a2, 1) != 0;
  *((_BYTE *)this + 74) = gameswf::stream::read_uint(a2, 1) != 0;
  *((_BYTE *)this + 75) = gameswf::stream::read_uint(a2, 1) != 0;
  v7 = gameswf::stream::read_uint(a2, 1);
  v8 = gameswf::stream::read_uint(a2, 1);
  v9 = gameswf::stream::read_uint(a2, 1);
  gameswf::stream::read_uint(a2, 1);
  *((_BYTE *)this + 76) = gameswf::stream::read_uint(a2, 1) != 0;
  v10 = gameswf::stream::read_uint(a2, 1);
  *((_BYTE *)this + 77) = gameswf::stream::read_uint(a2, 1) != 0;
  *((_BYTE *)this + 78) = gameswf::stream::read_uint(a2, 1) != 0;
  gameswf::stream::read_uint(a2, 1);
  *((_BYTE *)this + 79) = gameswf::stream::read_uint(a2, 1) != 0;
  *((_BYTE *)this + 80) = gameswf::stream::read_uint(a2, 1) != 0;
  if ( v9 )
  {
    *((_DWORD *)this + 21) = gameswf::stream::read_u16(a2);
    *((float *)this + 23) = (float)(unsigned int)gameswf::stream::read_u16(a2);
  }
  if ( v7 )
    gameswf::rgba::read_rgba((gameswf::edit_text_character_def *)((char *)this + 96), a2);
  if ( v8 )
    *((_DWORD *)this + 25) = gameswf::stream::read_u16(a2);
  if ( v10 )
  {
    *((_DWORD *)this + 26) = gameswf::stream::read_u8(a2);
    *((float *)this + 27) = (float)(unsigned int)gameswf::stream::read_u16(a2);
    *((float *)this + 28) = (float)(unsigned int)gameswf::stream::read_u16(a2);
    *((float *)this + 29) = (float)(__int16)gameswf::stream::read_s16(a2);
    *((float *)this + 30) = (float)(__int16)gameswf::stream::read_s16(a2);
  }
  result = gameswf::stream::read_string(a2, (gameswf::edit_text_character_def *)((char *)this + 52));
  if ( uint )
  {
    v12 = (gameswf::edit_text_character_def *)((char *)this + 124);
    gameswf::stream::read_string(a2, v12);
    return gameswf::removeHTML(v12, v13);
  }
  return result;
}


// ===== 78b858 gameswf::text_glyph_record::read(gameswf::stream *,int,int,int) =====
void __fastcall gameswf::text_glyph_record::read(
        gameswf::text_glyph_record *this,
        gameswf::stream *a2,
        int a3,
        int a4,
        int a5)
{
  int v9; // r7
  int v10; // r8
  int v11; // r10
  int v12; // r10

  gameswf::array<gameswf::glyph>::resize((_DWORD *)this + 8, a3);
  if ( a3 > 0 )
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *((_DWORD *)this + 8);
      *(_WORD *)(v11 + v9 + 30) = gameswf::stream::read_uint(a2, a4);
      v12 = *((_DWORD *)this + 8);
      ++v10;
      *(float *)(v12 + v9) = (float)gameswf::stream::read_sint(a2, a5);
      v9 += 36;
    }
    while ( v10 != a3 );
  }
}


// ===== 78b8d0 gameswf::array<gameswf::line_style>::resize(int) [clone] =====
gameswf::line_style *__fastcall gameswf::array<gameswf::line_style>::resize(gameswf::line_style *result)
{
  int v1; // r4
  gameswf::line_style *v2; // r7
  int v3; // r5
  int i; // r6
  int v5; // r5

  v1 = *((_DWORD *)result + 1);
  v2 = result;
  if ( v1 <= 0 )
  {
    if ( v1 < 0 )
    {
      v5 = 108 * v1;
      do
      {
        result = gameswf::line_style::line_style((gameswf::line_style *)(*(_DWORD *)v2 + v5));
        ++v1;
        v5 += 108;
      }
      while ( v1 );
    }
  }
  else
  {
    v3 = 0;
    for ( i = 0; i != v1; ++i )
    {
      result = (gameswf::line_style *)(**(int (__fastcall ***)(int))(*(_DWORD *)v2 + v3))(*(_DWORD *)v2 + v3);
      v3 += 108;
    }
  }
  *((_DWORD *)v2 + 1) = 0;
  return result;
}


// ===== 78b94c gameswf::tu_string::erase(int,int) [clone] =====
void __fastcall gameswf::tu_string::erase(gameswf::tu_string *this, int a2, int a3)
{
  int v3; // r3
  gameswf::tu_string *v4; // r4
  bool v5; // zf
  char *v6; // r3
  const char *v7; // r1
  int v8; // r1

  v3 = *(char *)this;
  v4 = this;
  v5 = v3 == -1;
  if ( v3 == -1 )
  {
    v6 = *((char **)this + 3);
  }
  else
  {
    v6 = (char *)this + 1;
    this = (gameswf::tu_string *)((char *)this + a2);
  }
  if ( v5 )
    this = (gameswf::tu_string *)&v6[a2];
  v7 = &v6[a2 + 1];
  if ( !v5 )
    this = (gameswf::tu_string *)((char *)this + 1);
  LC_API_STRCPY_0((char *)this, v7);
  v8 = *(char *)v4;
  if ( v8 == -1 )
    v8 = *((_DWORD *)v4 + 1);
  gameswf::tu_string::resize(v4, v8 - 2);
  *((_DWORD *)v4 + 4) = *((_DWORD *)v4 + 4) & 0xFF000000 | 0xFFFFFF;
}


// ===== 78b9ac gameswf::array<gameswf::as_value>::resize(int) [clone] =====
int __fastcall gameswf::array<gameswf::as_value>::resize(int result)
{
  int v1; // r4
  _DWORD *v2; // r7
  int v3; // r5
  int i; // r6
  int v5; // r3

  v1 = *(_DWORD *)(result + 4);
  v2 = (_DWORD *)result;
  if ( v1 <= 0 )
  {
    if ( v1 < 0 )
    {
      v5 = 12 * v1;
      do
      {
        ++v1;
        result = *v2 + v5;
        *(_BYTE *)result = 0;
        *(_BYTE *)(result + 1) = 0;
        v5 += 12;
      }
      while ( v1 );
    }
  }
  else
  {
    v3 = 0;
    for ( i = 0; i != v1; ++i )
    {
      result = gameswf::as_value::drop_refs((gameswf::as_value *)(*v2 + v3));
      v3 += 12;
    }
  }
  v2[1] = 0;
  return result;
}


// ===== 78ba28 gameswf::render_cache::~render_cache() =====
void __fastcall gameswf::render_cache::~render_cache(gameswf::render_cache *this)
{
  int v1; // r3
  char *v3; // r0
  int v4; // r3
  void *v5; // r0
  int v6; // r3
  void *v7; // r0
  int v8; // r12
  _DWORD *v9; // r0
  int v10; // r2
  int v11; // r1
  _DWORD *v12; // r2

  v1 = *((_DWORD *)this + 17);
  v3 = (char *)this + 64;
  if ( v1 < 0 )
  {
    v10 = 2 * v1;
    do
    {
      ++v1;
      *(_WORD *)(*((_DWORD *)this + 16) + v10) = 0;
      v10 += 2;
    }
    while ( v1 );
  }
  *((_DWORD *)this + 17) = 0;
  gameswf::array<unsigned short>::reserve((int)v3, 0);
  v4 = *((unsigned __int8 *)this + 60);
  *((_DWORD *)this + 13) = 0;
  if ( !v4 )
  {
    v5 = *((void **)this + 12);
    *((_DWORD *)this + 14) = 0;
    if ( v5 )
      gameswf::free_internal(v5);
    *((_DWORD *)this + 12) = 0;
  }
  v6 = *((unsigned __int8 *)this + 44);
  *((_DWORD *)this + 9) = 0;
  if ( !v6 )
  {
    v7 = *((void **)this + 8);
    *((_DWORD *)this + 10) = 0;
    if ( v7 )
      gameswf::free_internal(v7);
    *((_DWORD *)this + 8) = 0;
  }
  v8 = *((_DWORD *)this + 5);
  v9 = (_DWORD *)((char *)this + 16);
  if ( v8 < 0 )
  {
    v11 = 24 * v8;
    do
    {
      ++v8;
      v12 = (_DWORD *)(*v9 + v11);
      *v12 = 0;
      v12[5] = 0;
      v12[1] = 0;
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = 0;
      v11 += 24;
    }
    while ( v8 );
  }
  *((_DWORD *)this + 5) = 0;
  gameswf::array<gameswf::render_cache::entry>::reserve((int)v9, 0);
}


// ===== 78bb58 gameswf::edit_text_character::get_topmost_mouse_entity(float,float) =====
gameswf::edit_text_character *__fastcall gameswf::edit_text_character::get_topmost_mouse_entity(
        gameswf::edit_text_character *this,
        float a2,
        float a3)
{
  gameswf::matrix *v5; // r0
  float *v6; // r5
  _DWORD v7[2]; // [sp+0h] [bp-14h] BYREF
  float v8; // [sp+8h] [bp-Ch] BYREF
  float v9; // [sp+Ch] [bp-8h]

  if ( *((_BYTE *)this + 155)
    && (v5 = *((gameswf::matrix **)this + 19),
        v9 = 0.0,
        *(float *)v7 = a2,
        *(float *)&v7[1] = a3,
        v8 = 0.0,
        gameswf::matrix::transform_by_inverse(v5, (gameswf::point *)&v8, (const gameswf::point *)v7),
        v6 = *((float **)this + 40),
        v8 >= v6[9])
    && v8 <= v6[10]
    && v9 >= v6[11]
    && v9 <= v6[12] )
  {
    return this;
  }
  else
  {
    return nullptr;
  }
}


// ===== 78bc0c gameswf::array<gameswf::edit_text_character::text_attributes>::resize(int) =====
void __fastcall gameswf::array<gameswf::edit_text_character::text_attributes>::resize(_DWORD *a1, int a2)
{
  int v2; // r6
  int v5; // r8
  int v6; // r7
  void (__fastcall ***v7)(_DWORD); // r0
  int v8; // r1
  int v9; // r6
  int v10; // r3

  v2 = a1[1];
  if ( v2 > a2 )
  {
    v5 = 16 * a2;
    v6 = a2;
    do
    {
      ++v6;
      v7 = *(void (__fastcall ****)(_DWORD))(*a1 + v5);
      v5 += 16;
      if ( v7 )
        gameswf::ref_counted::drop_ref(v7);
    }
    while ( v6 != v2 );
  }
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::edit_text_character::text_attributes>::reserve((int)a1, a2 + (a2 >> 1));
  if ( v2 < a2 )
  {
    v8 = v2;
    v9 = 16 * v2;
    do
    {
      ++v8;
      v10 = *a1 + v9;
      *(_DWORD *)v10 = 0;
      *(_BYTE *)(v10 + 12) = 0;
      *(_DWORD *)(v10 + 4) = 12;
      *(_BYTE *)(v10 + 8) = 0;
      *(_BYTE *)(v10 + 9) = 0;
      *(_BYTE *)(v10 + 10) = 0;
      *(_BYTE *)(v10 + 11) = 1;
      v9 += 16;
    }
    while ( v8 != a2 );
  }
  a1[1] = a2;
}


// ===== 78bccc gameswf::array<gameswf::text_glyph_record>::resize(int) =====
void __fastcall gameswf::array<gameswf::text_glyph_record>::resize(_DWORD *a1, int a2)
{
  int v2; // r6
  int v5; // r8
  int v6; // r7
  int v7; // r12
  int v8; // r3

  v2 = a1[1];
  if ( v2 > a2 )
  {
    v5 = 48 * a2;
    v6 = a2;
    do
    {
      ++v6;
      gameswf::text_glyph_record::~text_glyph_record((gameswf::text_glyph_record *)(*a1 + v5));
      v5 += 48;
    }
    while ( v6 != v2 );
  }
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::text_glyph_record>::reserve((int)a1, a2 + (a2 >> 1));
  if ( v2 < a2 )
  {
    v7 = 48 * v2;
    do
    {
      ++v2;
      v8 = *a1 + v7;
      memset((void *)(v8 + 12), 0, 0x1Cu);
      *(_DWORD *)(v8 + 40) = 0;
      *(_DWORD *)(v8 + 44) = 0;
      *(_DWORD *)v8 = -1;
      *(_BYTE *)(v8 + 44) = 0;
      *(_DWORD *)(v8 + 4) = 0;
      *(_BYTE *)(v8 + 8) = -1;
      *(_BYTE *)(v8 + 9) = -1;
      *(_BYTE *)(v8 + 10) = -1;
      *(_BYTE *)(v8 + 11) = -1;
      *(_BYTE *)(v8 + 12) = 0;
      *(_DWORD *)(v8 + 16) = 0;
      *(_DWORD *)(v8 + 20) = 0;
      *(_DWORD *)(v8 + 24) = 1065353216;
      *(_BYTE *)(v8 + 28) = 0;
      *(_BYTE *)(v8 + 29) = 0;
      *(_BYTE *)(v8 + 30) = 1;
      *(_DWORD *)(v8 + 32) = 0;
      *(_DWORD *)(v8 + 36) = 0;
      *(_DWORD *)(v8 + 40) = 0;
      v7 += 48;
    }
    while ( v2 != a2 );
  }
  a1[1] = a2;
}


// ===== 78bde0 gameswf::text_character_def::~text_character_def() =====
void __fastcall gameswf::text_character_def::~text_character_def(gameswf::text_character_def *this)
{
  char *v2; // r5

  *(_DWORD *)this = off_990AD0;
  v2 = (char *)this + 76;
  gameswf::array<gameswf::text_glyph_record>::resize((_DWORD *)this + 19, 0);
  gameswf::array<gameswf::text_glyph_record>::reserve((int)v2, 0);
  gameswf::character_def::~character_def(this);
  LC_API_FREE_0(this);
}


// ===== 78be3c gameswf::text_character_def::~text_character_def() =====
void __fastcall gameswf::text_character_def::~text_character_def(gameswf::text_character_def *this)
{
  char *v2; // r4

  *(_DWORD *)this = off_990AD0;
  v2 = (char *)this + 76;
  gameswf::array<gameswf::text_glyph_record>::resize((_DWORD *)this + 19, 0);
  gameswf::array<gameswf::text_glyph_record>::reserve((int)v2, 0);
  gameswf::character_def::~character_def(this);
}


// ===== 78be90 gameswf::text_character_def::read(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
void __fastcall gameswf::text_character_def::read(
        gameswf::text_character_def *this,
        gameswf::stream *a2,
        int a3,
        gameswf::movie_definition_sub *a4)
{
  int v6; // r6
  unsigned int v7; // r11
  int v8; // r5
  int v9; // r6
  int v10; // r3
  int v11; // r11
  int v12; // r3
  int v13; // r5
  int v14; // r5
  int u16; // r0
  int v16; // [sp+8h] [bp-3Ch]
  int u8; // [sp+18h] [bp-2Ch]
  int v19; // [sp+1Ch] [bp-28h]
  int v20; // [sp+20h] [bp-24h]
  int v21; // [sp+28h] [bp-1Ch] BYREF
  char v22; // [sp+2Ch] [bp-18h]
  float s16; // [sp+30h] [bp-14h]
  float v24; // [sp+34h] [bp-10h]
  float v25; // [sp+38h] [bp-Ch]
  char v26; // [sp+3Ch] [bp-8h]
  char v27; // [sp+3Dh] [bp-7h]
  char v28; // [sp+3Eh] [bp-6h]

  gameswf::rect::read((gameswf::text_character_def *)((char *)this + 36), a2);
  gameswf::matrix::read((gameswf::text_character_def *)((char *)this + 52), a2);
  u8 = gameswf::stream::read_u8(a2);
  v6 = 0;
  v20 = -1;
  v21 = -1;
  v19 = gameswf::stream::read_u8(a2);
  v25 = 1.0;
  v22 = 0;
  s16 = 0.0;
  v24 = 0.0;
  v26 = 0;
  v27 = 0;
  v28 = 1;
LABEL_2:
  while ( 1 )
  {
    v7 = gameswf::stream::read_u8(a2);
    if ( !v7 )
      break;
    while ( !v6 )
    {
      v8 = (v7 >> 3) & 1;
      v9 = v7 & 1;
      v10 = v7 & 4;
      v11 = v7 & 2;
      if ( v8 )
      {
        v16 = v10;
        u16 = gameswf::stream::read_u16(a2);
        v10 = v16;
        v20 = u16;
      }
      if ( v10 )
      {
        if ( a3 == 11 )
          gameswf::rgba::read_rgb((gameswf::rgba *)&v21, a2);
        else
          gameswf::rgba::read_rgba((gameswf::rgba *)&v21, a2);
      }
      if ( v9 )
      {
        v26 = 1;
        s16 = (float)(__int16)gameswf::stream::read_s16(a2);
      }
      else
      {
        v26 = 0;
        s16 = 0.0;
      }
      if ( v11 )
      {
        v27 = 1;
        v24 = (float)(__int16)gameswf::stream::read_s16(a2);
      }
      else
      {
        v27 = 0;
        v24 = 0.0;
      }
      if ( !v8 )
      {
        v6 = 1;
        goto LABEL_2;
      }
      v25 = (float)(unsigned int)gameswf::stream::read_u16(a2);
      v7 = gameswf::stream::read_u8(a2);
      v6 = 1;
      if ( !v7 )
        return;
    }
    v6 = 0;
    gameswf::array<gameswf::text_glyph_record>::resize((_DWORD *)this + 19, *((_DWORD *)this + 20) + 1);
    v12 = *((_DWORD *)this + 19);
    v13 = 48 * (*((_DWORD *)this + 20) - 1);
    *(_DWORD *)(v12 + v13) = v20;
    v14 = v12 + v13;
    gameswf::smart_ptr<gameswf::font>::set_ref((gameswf::ref_counted **)(v14 + 4), nullptr);
    *(_DWORD *)(v14 + 8) = v21;
    *(_BYTE *)(v14 + 12) = v22;
    *(float *)(v14 + 16) = s16;
    *(float *)(v14 + 20) = v24;
    *(float *)(v14 + 24) = v25;
    *(_BYTE *)(v14 + 28) = v26;
    *(_BYTE *)(v14 + 29) = v27;
    *(_BYTE *)(v14 + 30) = v28;
    gameswf::text_glyph_record::read(
      (gameswf::text_glyph_record *)(*((_DWORD *)this + 19) + 48 * (*((_DWORD *)this + 20) - 1)),
      a2,
      v7,
      u8,
      v19);
  }
}


// ===== 78c0ec gameswf::edit_text_character::preload_glyphs(gameswf::filter const*) =====
void __fastcall gameswf::edit_text_character::preload_glyphs(_DWORD *a1, int a2)
{
  int v2; // r3
  int v3; // r6
  int v5; // r3
  bool v6; // nf
  int v7; // r9
  int v8; // r3
  int v9; // r10
  int v10; // r3
  int v11; // r8
  int v12; // r11
  int v13; // r3
  _BYTE *v14; // r0
  int v15; // r2
  int v17; // r2
  int v18; // [sp+8h] [bp-8h]
  int v20; // [sp+10h] [bp+0h] BYREF
  int v21; // [sp+14h] [bp+4h]
  int v22; // [sp+18h] [bp+8h]
  char v23; // [sp+1Ch] [bp+Ch]

  v2 = a1[42];
  v3 = 0;
  v20 = 0;
  v22 = 0;
  v23 = 0;
  if ( v2 > 0 )
  {
    v18 = 0;
    v5 = 0;
    v6 = 0;
    v7 = a1[41];
LABEL_14:
    if ( v6 )
    {
      v15 = 2 * v5;
      do
      {
        ++v5;
        *(_WORD *)(v20 + v15) = 0;
        v15 += 2;
      }
      while ( v5 );
    }
    while ( 1 )
    {
      v21 = 0;
      if ( *(int *)(v7 + 36) > 0 )
      {
        v9 = 0;
        v10 = 0;
        do
        {
          v11 = v10 + 1;
          v12 = *(_DWORD *)(v7 + 32) + v9;
          if ( v10 + 1 > v22 )
          {
            gameswf::array<unsigned short>::reserve((int)&v20, v11 + (v11 >> 1));
            v10 = v21;
          }
          v9 += 36;
          *(_WORD *)(v20 + 2 * v10) = *(_WORD *)(v12 + 32);
          v21 = v11;
          v10 = v11;
        }
        while ( v11 < *(_DWORD *)(v7 + 36) );
        v13 = a1[12];
        if ( v13 )
        {
          v14 = (_BYTE *)a1[11];
          if ( !v14[4] )
          {
            if ( (*(_DWORD *)v14)-- == 1 )
              gameswf::free_internal(v14);
            v11 = v21;
            v13 = 0;
            a1[11] = 0;
            a1[12] = 0;
          }
        }
        gameswf::preload_glyph_codes(
          *(_DWORD *)(v13 + 172),
          v20,
          v11,
          *(gameswf::font **)(v7 + 4),
          (int)(float)(*(float *)(v7 + 24) / 20.0),
          a2);
        v8 = v21;
      }
      else
      {
        v8 = 0;
      }
      v3 += 48;
      if ( ++v18 >= a1[42] )
        break;
      v5 = v21;
      v6 = v21 < 0;
      v7 = a1[41] + v3;
      if ( v21 <= 0 )
        goto LABEL_14;
    }
    if ( v8 < 0 )
    {
      v17 = 2 * v8;
      do
      {
        ++v8;
        *(_WORD *)(v20 + v17) = 0;
        v17 += 2;
      }
      while ( v8 );
    }
  }
  v21 = 0;
  gameswf::array<unsigned short>::reserve((int)&v20, 0);
}


// ===== 78c2d0 gameswf::edit_text_character::preload_glyphs(void) =====
void __fastcall gameswf::edit_text_character::preload_glyphs(gameswf::edit_text_character *this)
{
  int v1; // r3
  int v3; // r4
  int v4; // r5

  v1 = *((_DWORD *)this + 20);
  if ( *(int *)(v1 + 8) > 0 )
  {
    v3 = 0;
    v4 = 0;
    do
    {
      ++v4;
      gameswf::edit_text_character::preload_glyphs(this, *(_DWORD *)(v1 + 4) + v3);
      v1 = *((_DWORD *)this + 20);
      v3 += 44;
    }
    while ( v4 < *(_DWORD *)(v1 + 8) );
  }
  gameswf::edit_text_character::preload_glyphs(this, 0);
}


// ===== 78c328 gameswf::edit_text_character::~edit_text_character() =====
void __fastcall gameswf::edit_text_character::~edit_text_character(gameswf::edit_text_character *this)
{
  void (__fastcall ***v2)(_DWORD); // r0
  void (__fastcall ***v3)(_DWORD); // r0

  v2 = *((void (__fastcall ****)(_DWORD))this + 94);
  *(_DWORD *)this = off_990918;
  if ( v2 )
    gameswf::ref_counted::drop_ref(v2);
  if ( *((unsigned __int8 *)this + 312) == 255 )
    gameswf::free_internal(*((void **)this + 81));
  gameswf::render_cache::~render_cache((gameswf::edit_text_character *)((char *)this + 216));
  gameswf::array<gameswf::line_style>::resize((gameswf::edit_text_character *)((char *)this + 196));
  gameswf::array<gameswf::line_style>::reserve((int)this + 196, 0);
  gameswf::array<gameswf::fill_style>::resize((_DWORD *)this + 45, 0);
  gameswf::array<gameswf::fill_style>::reserve((int)this + 180, 0);
  gameswf::array<gameswf::text_glyph_record>::resize((_DWORD *)this + 41, 0);
  gameswf::array<gameswf::text_glyph_record>::reserve((int)this + 164, 0);
  v3 = *((void (__fastcall ****)(_DWORD))this + 40);
  if ( v3 )
    gameswf::ref_counted::drop_ref(v3);
  gameswf::character::~character(this);
}


// ===== 78c3f4 gameswf::edit_text_character::~edit_text_character() =====
void __fastcall gameswf::edit_text_character::~edit_text_character(gameswf::edit_text_character *this)
{
  gameswf::edit_text_character::~edit_text_character(this);
  LC_API_FREE_0(this);
}


// ===== 78c410 gameswf::edit_text_character::~edit_text_character() =====
void __fastcall gameswf::edit_text_character::~edit_text_character(gameswf::edit_text_character *this)
{
  void (__fastcall ***v2)(_DWORD); // r0
  void (__fastcall ***v3)(_DWORD); // r0

  v2 = *((void (__fastcall ****)(_DWORD))this + 94);
  *(_DWORD *)this = off_990918;
  if ( v2 )
    gameswf::ref_counted::drop_ref(v2);
  if ( *((unsigned __int8 *)this + 312) == 255 )
    gameswf::free_internal(*((void **)this + 81));
  gameswf::render_cache::~render_cache((gameswf::edit_text_character *)((char *)this + 216));
  gameswf::array<gameswf::line_style>::resize((gameswf::edit_text_character *)((char *)this + 196));
  gameswf::array<gameswf::line_style>::reserve((int)this + 196, 0);
  gameswf::array<gameswf::fill_style>::resize((_DWORD *)this + 45, 0);
  gameswf::array<gameswf::fill_style>::reserve((int)this + 180, 0);
  gameswf::array<gameswf::text_glyph_record>::resize((_DWORD *)this + 41, 0);
  gameswf::array<gameswf::text_glyph_record>::reserve((int)this + 164, 0);
  v3 = *((void (__fastcall ****)(_DWORD))this + 40);
  if ( v3 )
    gameswf::ref_counted::drop_ref(v3);
  gameswf::character::~character(this);
}


// ===== 78c4dc gameswf::edit_text_character_def::~edit_text_character_def() =====
void __fastcall gameswf::edit_text_character_def::~edit_text_character_def(void **this)
{
  int v1; // r1

  v1 = *((char *)this + 124);
  *this = off_990A98;
  if ( v1 == -1 )
  {
    gameswf::free_internal(*(this + 34));
    if ( *((char *)this + 52) != -1 )
      goto LABEL_3;
  }
  else if ( *((char *)this + 52) != -1 )
  {
LABEL_3:
    gameswf::character_def::~character_def((gameswf::character_def *)this);
    return;
  }
  gameswf::free_internal(*(this + 16));
  gameswf::character_def::~character_def((gameswf::character_def *)this);
}


// ===== 78c560 gameswf::edit_text_character_def::~edit_text_character_def() =====
void __fastcall gameswf::edit_text_character_def::~edit_text_character_def(void **this)
{
  gameswf::edit_text_character_def::~edit_text_character_def(this);
  LC_API_FREE_0(this);
}


// ===== 78c57c gameswf::edit_text_character_def::~edit_text_character_def() =====
void __fastcall gameswf::edit_text_character_def::~edit_text_character_def(void **this)
{
  int v1; // r1

  v1 = *((char *)this + 124);
  *this = off_990A98;
  if ( v1 == -1 )
  {
    gameswf::free_internal(*(this + 34));
    if ( *((char *)this + 52) != -1 )
      goto LABEL_3;
  }
  else if ( *((char *)this + 52) != -1 )
  {
LABEL_3:
    gameswf::character_def::~character_def((gameswf::character_def *)this);
    return;
  }
  gameswf::free_internal(*(this + 16));
  gameswf::character_def::~character_def((gameswf::character_def *)this);
}


// ===== 78c600 gameswf::hash<gameswf::tu_stringi,gameswf::tu_string,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear(void) =====
void __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::tu_string,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear(
        _DWORD **a1)
{
  _DWORD *v2; // r0
  int v3; // r7
  int v4; // r6
  int v5; // r4
  _DWORD *v6; // r5

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
        if ( v2[v5] == -2 || v6[1] == -1 )
          goto LABEL_6;
        if ( *((char *)v6 + 8) == -1 )
        {
          gameswf::free_internal((void *)v6[5]);
          if ( *((char *)v6 + 28) == -1 )
LABEL_11:
            gameswf::free_internal((void *)v6[10]);
        }
        else if ( *((char *)v6 + 28) == -1 )
        {
          goto LABEL_11;
        }
        *v6 = -2;
        v6[1] = 0;
        v2 = *a1;
LABEL_6:
        v5 += 12;
      }
      while ( v3 >= v4 );
    }
    gameswf::free_internal(v2);
    *a1 = nullptr;
  }
}


// ===== 78c6cc gameswf::hash<gameswf::tu_stringi,gameswf::tu_string,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set_raw_capacity(int) =====
void __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::tu_string,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set_raw_capacity(
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
  _DWORD v12[2]; // [sp+4h] [bp-8h] BYREF

  v2 = a1;
  if ( a2 <= 0 )
  {
LABEL_21:
    gameswf::hash<gameswf::tu_stringi,gameswf::tu_string,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear(a1);
    return;
  }
  v3 = 1 << (int)(float)((float)(logf((float)(a2 - 1)) / 0.69315) + 1.0);
  v4 = (_DWORD *)*v2;
  if ( v3 < 4 )
    v3 = 4;
  if ( !v4 || v4[1] + 1 != v3 )
  {
    v5 = 0;
    v12[0] = gameswf::malloc_internal(8 * (6 * v3 + 1));
    *(_DWORD *)v12[0] = 0;
    *(_DWORD *)(v12[0] + 4) = v3 - 1;
    v6 = 8;
    do
    {
      ++v5;
      *(_DWORD *)(v12[0] + v6) = -2;
      v6 += 48;
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
          if ( v7[v10] == -2 || v11[1] == -1 )
            goto LABEL_13;
          gameswf::hash<gameswf::tu_stringi,gameswf::tu_string,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
            v12,
            &v7[v10 + 2],
            &v7[v10 + 7]);
          if ( *((char *)v11 + 8) == -1 )
          {
            gameswf::free_internal((void *)v11[5]);
            if ( *((char *)v11 + 28) == -1 )
LABEL_18:
              gameswf::free_internal((void *)v11[10]);
          }
          else if ( *((char *)v11 + 28) == -1 )
          {
            goto LABEL_18;
          }
          *v11 = -2;
          v11[1] = 0;
          v7 = (_DWORD *)*v2;
LABEL_13:
          v10 += 12;
        }
        while ( v8 >= v9 );
      }
      gameswf::free_internal(v7);
    }
    a1 = (_DWORD **)v12;
    *v2 = v12[0];
    v12[0] = 0;
    goto LABEL_21;
  }
}


// ===== 78c878 gameswf::hash<gameswf::tu_stringi,gameswf::tu_string,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::check_expand(void) =====
void __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::tu_string,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::check_expand(
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
  gameswf::hash<gameswf::tu_stringi,gameswf::tu_string,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set_raw_capacity(
    a1,
    v2);
}


// ===== 78c8ac gameswf::hash<gameswf::tu_stringi,gameswf::tu_string,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(gameswf::tu_stringi const&,gameswf::tu_string const&) =====
gameswf::tu_string *__fastcall gameswf::hash<gameswf::tu_stringi,gameswf::tu_string,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
        _DWORD **a1,
        const gameswf::tu_string *a2,
        const gameswf::tu_string *a3)
{
  char *v5; // r12
  int v6; // lr
  int v7; // r10
  _DWORD *v8; // r5
  int v9; // r2
  int v10; // r1
  int v11; // r3
  int v12; // r12
  _DWORD *v13; // r9
  int v14; // r8
  int v15; // r6
  int v16; // r7
  int v17; // r0
  _DWORD *v18; // r7
  int v19; // r2
  int v20; // r8
  int *v21; // r8
  int v22; // r3
  bool v23; // zf
  int v24; // r3
  int v25; // r2
  char *v26; // r3
  int v27; // r2
  int v28; // r1
  int v29; // r2
  gameswf::tu_string *result; // r0
  int v31; // [sp+4h] [bp-10h]
  int v32; // [sp+4h] [bp-10h]

  gameswf::hash<gameswf::tu_stringi,gameswf::tu_string,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::check_expand(a1);
  ++**a1;
  v6 = *((_DWORD *)a2 + 4);
  if ( (v6 & 0xFFFFFF) == 0xFFFFFF )
  {
    v22 = *(char *)a2;
    v23 = v22 == -1;
    if ( v22 == -1 )
    {
      v24 = *((_DWORD *)a2 + 1);
    }
    else
    {
      v24 = v22 - 1;
      v5 = (char *)a2 + 1;
    }
    if ( v23 )
    {
      --v24;
      v5 = *((char **)a2 + 3);
    }
    if ( v24 > 0 )
    {
      v26 = &v5[v24];
      v27 = 5381;
      do
      {
        v28 = (unsigned __int8)*--v26;
        v29 = 33 * v27;
        if ( (unsigned __int8)(v28 - 65) <= 0x19u )
          v28 += 32;
        v27 = v28 ^ v29;
      }
      while ( v26 != v5 );
      v25 = v27 << 8 >> 8;
      v7 = v25;
    }
    else
    {
      v7 = 5381;
      v25 = 5381;
    }
    *((_DWORD *)a2 + 4) = v6 & 0xFF000000 | v25 & 0xFFFFFF;
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
  v11 = 6 * (v7 & v9) + 1;
  v12 = v8[2 * v11];
  v13 = &v8[2 * v11];
  if ( v12 == -2 )
  {
    v8[2 * v11] = -1;
LABEL_29:
    v13[1] = v7;
    gameswf::tu_string::tu_string((gameswf::tu_string *)(v13 + 2), a2);
    return gameswf::tu_string::tu_string((gameswf::tu_string *)(v13 + 7), a3);
  }
  v14 = v13[1];
  if ( v14 == -1 )
    goto LABEL_29;
  v15 = v7 & v9;
  do
  {
    v15 = (v15 + 1) & v9;
    v16 = 6 * v15 + 1;
    v17 = v8[2 * v16];
    v18 = &v8[2 * v16];
  }
  while ( v17 != -2 );
  v19 = v9 & v14;
  if ( v19 == v10 )
  {
    *v18 = v12;
    v18[1] = v13[1];
    v32 = v11;
    gameswf::tu_string::tu_string((gameswf::tu_string *)(v18 + 2), (const gameswf::tu_string *)(v13 + 2));
    gameswf::tu_string::tu_string((gameswf::tu_string *)(v18 + 7), (const gameswf::tu_string *)(v13 + 7));
    gameswf::tu_string::operator=((gameswf::tu_string *)(v13 + 2), (char *)a2);
    result = gameswf::tu_string::operator=((gameswf::tu_string *)(v13 + 7), (char *)a3);
    v8[2 * v32] = v15;
    v13[1] = v7;
  }
  else
  {
    do
    {
      v20 = 6 * v19 + 1;
      v19 = v8[2 * v20];
      v21 = &v8[2 * v20];
    }
    while ( v19 != v10 );
    *v18 = v12;
    v18[1] = v13[1];
    v31 = v11;
    gameswf::tu_string::tu_string((gameswf::tu_string *)(v18 + 2), (const gameswf::tu_string *)(v13 + 2));
    gameswf::tu_string::tu_string((gameswf::tu_string *)(v18 + 7), (const gameswf::tu_string *)(v13 + 7));
    *v21 = v15;
    gameswf::tu_string::operator=((gameswf::tu_string *)(v13 + 2), (char *)a2);
    result = gameswf::tu_string::operator=((gameswf::tu_string *)(v13 + 7), (char *)a3);
    v13[1] = v7;
    v8[2 * v31] = -1;
  }
  return result;
}


// ===== 78cad4 gameswf::edit_text_character_def::create_character_instance(gameswf::character *,int) =====
gameswf::ref_counted **__fastcall gameswf::edit_text_character_def::create_character_instance(
        gameswf::edit_text_character_def *this,
        gameswf::character *a2,
        int a3)
{
  gameswf::player *v6; // r0
  _BYTE *v7; // r3
  int v10; // r3
  int v11; // r0

  if ( !*((_DWORD *)this + 22) )
  {
    v10 = *((_DWORD *)this + 8);
    if ( v10 )
    {
      v11 = (*(int (__fastcall **)(_DWORD, _DWORD))(*(_DWORD *)v10 + 124))(
              *((_DWORD *)this + 8),
              *((_DWORD *)this + 21));
      *((_DWORD *)this + 22) = v11;
      if ( !v11 )
        gameswf::log_error("error: text style with undefined font; font_id = %d\n", *((const char **)this + 21));
    }
  }
  v6 = *((gameswf::player **)this + 7);
  if ( v6 )
  {
    v7 = *((_BYTE **)this + 6);
    if ( !v7[4] )
    {
      if ( (*(_DWORD *)v7)-- == 1 )
        gameswf::free_internal(v7);
      v6 = nullptr;
      *((_DWORD *)this + 6) = 0;
      *((_DWORD *)this + 7) = 0;
    }
  }
  return gameswf::player::create_edit_text_character(v6, this, a2, a3);
}


// ===== 78cb90 gameswf::edit_text_character::append_text(gameswf::tu_string const&,gameswf::edit_text_character::text_attributes &,bool) =====
void __fastcall gameswf::edit_text_character::append_text(int a1, char *a2, int *a3, int a4)
{
  int v4; // r4
  int v7; // r3
  float v8; // r5
  _BYTE *v9; // r0
  float v10; // r6
  float v11; // r5
  gameswf::font *v12; // r5
  int v13; // r0
  float v14; // r6
  int v15; // r3
  float v16; // r10
  int v17; // r6
  int v18; // r3
  int v19; // r2
  int v20; // r6
  float v21; // r6
  char v22; // r3
  int v23; // r0
  float v24; // r1
  gameswf::font *v25; // r3
  int v26; // r10
  float v27; // r6
  char *v28; // r11
  const char *unicode_character; // r8
  float v30; // r0
  int v31; // r1
  bool v32; // zf
  int v33; // r5
  char v35; // r3
  int v36; // r0
  int v37; // r2
  unsigned __int16 v38; // r9
  int v39; // r0
  gameswf::font *v40; // r2
  char *v41; // r2
  int v42; // r0
  float v43; // r10
  float v44; // r0
  float v45; // r10
  float v46; // r8
  float v47; // r9
  float v48; // r10
  float v49; // r9
  void (__fastcall ***height)(_DWORD); // r0
  int v51; // r3
  int v52; // r8
  float v53; // r0
  char v54; // r3
  int v55; // r0
  int v56; // r12
  int v57; // r1
  int v58; // r9
  int v59; // r11
  int v60; // r8
  float v61; // r0
  int v62; // r10
  float v63; // r2
  int v64; // r8
  int v65; // r9
  float v66; // r5
  float v67; // r4
  float v68; // r0
  int v69; // r1
  float v70; // r2
  int v71; // r3
  char *v72; // r5
  char *v73; // r3
  int v74; // r8
  int v75; // r6
  int v76; // r9
  int v77; // r5
  int v78; // r9
  _BOOL4 v79; // r0
  int v80; // r1
  float v81; // r8
  float v82; // [sp+0h] [bp-A4h]
  float v83; // [sp+4h] [bp-A0h]
  float v84; // [sp+Ch] [bp-98h]
  int v85; // [sp+14h] [bp-90h]
  float v86; // [sp+18h] [bp-8Ch]
  int v87; // [sp+18h] [bp-8Ch]
  float v88; // [sp+1Ch] [bp-88h]
  _DWORD *v89; // [sp+20h] [bp-84h]
  float v90; // [sp+24h] [bp-80h]
  char **v91; // [sp+28h] [bp-7Ch]
  float v92; // [sp+30h] [bp-74h]
  int v94; // [sp+40h] [bp-64h]
  int v95; // [sp+48h] [bp-5Ch] BYREF
  gameswf::ref_counted *v96; // [sp+4Ch] [bp-58h] BYREF
  int v97; // [sp+50h] [bp-54h]
  char v98; // [sp+54h] [bp-50h]
  float v99; // [sp+58h] [bp-4Ch]
  float v100; // [sp+5Ch] [bp-48h]
  float v101; // [sp+60h] [bp-44h]
  char v102; // [sp+64h] [bp-40h]
  char v103; // [sp+65h] [bp-3Fh]
  char v104; // [sp+66h] [bp-3Eh]
  int v105; // [sp+68h] [bp-3Ch] BYREF
  int v106; // [sp+6Ch] [bp-38h]
  int v107; // [sp+70h] [bp-34h]
  char v108; // [sp+74h] [bp-30h]
  glyph v109; // [sp+78h] [bp-2Ch] BYREF
  int v110; // [sp+90h] [bp-14h]
  __int16 v111; // [sp+94h] [bp-10h]
  __int16 v112; // [sp+96h] [bp-Eh]
  unsigned __int16 v113; // [sp+98h] [bp-Ch]
  char v114; // [sp+9Ah] [bp-Ah]
  char *v115; // [sp+9Ch] [bp-8h] BYREF

  v4 = a1;
  v7 = *(_DWORD *)(a1 + 48);
  v8 = (float)a3[1];
  if ( v7 )
  {
    v9 = *(_BYTE **)(a1 + 44);
    if ( !v9[4] )
    {
      v32 = (*(_DWORD *)v9)-- == 1;
      if ( v32 )
        gameswf::free_internal(v9);
      v7 = 0;
      *(_DWORD *)(v4 + 44) = 0;
      *(_DWORD *)(v4 + 48) = 0;
    }
  }
  v83 = v8 / (float)(*(float *)(*(_DWORD *)(*(_DWORD *)(v7 + 172) + 12) + 4) * 1024.0);
  if ( *(_DWORD *)(*a3 + 124) )
    v83 = (float)(v8 / (float)(*(float *)(*(_DWORD *)(*(_DWORD *)(v7 + 172) + 12) + 4) * 1024.0)) / 20.0;
  v10 = COERCE_FLOAT(gameswf::font::get_units_per_em((gameswf::font *)*a3));
  v11 = (float)a3[1];
  v90 = v11 * (float)(COERCE_FLOAT(gameswf::font::get_height((gameswf::font *)*a3)) / v10);
  if ( v90 == 0.0 )
    v90 = (float)a3[1];
  v12 = (gameswf::font *)*a3;
  v13 = a3[1];
  v101 = 1.0;
  v108 = 0;
  v96 = nullptr;
  v98 = 0;
  v102 = 0;
  v103 = 0;
  v105 = 0;
  v106 = 0;
  v107 = 0;
  v104 = 1;
  v95 = -1;
  v97 = -1;
  v100 = 0.0;
  v99 = 0.0;
  v14 = (float)v13 + *(float *)(v4 + 352);
  v15 = *(_DWORD *)(v4 + 168);
  v16 = v14 + (float)((float)(*((float *)v12 + 23) - *((float *)v12 + 22)) * v83);
  if ( v15 <= 0 )
  {
    v100 = v14 + (float)((float)(*((float *)v12 + 23) - *((float *)v12 + 22)) * v83);
  }
  else
  {
    v17 = *(_DWORD *)(v4 + 164);
    v18 = 48 * (v15 - 1);
    v19 = *(_DWORD *)(v17 + v18);
    v20 = v17 + v18;
    v95 = v19;
    gameswf::smart_ptr<gameswf::font>::set_ref(&v96, *(gameswf::ref_counted **)(v20 + 4));
    v97 = *(_DWORD *)(v20 + 8);
    v98 = *(_BYTE *)(v20 + 12);
    v99 = *(float *)(v20 + 16);
    v100 = *(float *)(v20 + 20);
    v101 = *(float *)(v20 + 24);
    v102 = *(_BYTE *)(v20 + 28);
    v103 = *(_BYTE *)(v20 + 29);
    v104 = *(_BYTE *)(v20 + 30);
    if ( v16 > v100 )
    {
      v74 = *(_DWORD *)(v4 + 168);
      if ( v74 - 1 >= 0 )
      {
        v75 = 48 * (v74 - 1);
        v76 = *(_DWORD *)(v4 + 164) + v75;
        if ( *(float *)(v76 + 20) == v100 )
        {
          v77 = 48 * (v74 - 2);
          while ( 1 )
          {
            *(float *)(v76 + 20) = v16;
            if ( v74 == 1 )
              break;
            v78 = *(_DWORD *)(v4 + 164);
            v75 -= 48;
            v79 = *(float *)(v78 + v77 + 20) == v100;
            --v74;
            v77 -= 48;
            if ( !v79 )
              break;
            v76 = v78 + v75;
          }
        }
      }
      v100 = v16;
    }
    v12 = (gameswf::font *)*a3;
  }
  v21 = *(float *)(v4 + 384) + *(float *)(v4 + 392);
  if ( v21 <= 0.0 )
    v21 = 0.0;
  v99 = v21;
  gameswf::smart_ptr<gameswf::font>::set_ref(&v96, v12);
  v22 = *((_BYTE *)a3 + 12);
  v23 = a3[1];
  v97 = a3[2];
  v98 = v22;
  v101 = (float)v23;
  v24 = *(float *)(v4 + 348);
  v104 = 1;
  v102 = 1;
  v103 = 1;
  v88 = v99 + v24;
  v25 = (gameswf::font *)*a3;
  v99 = v88;
  *(float *)&v91 = v100;
  v92 = (float)(v83 * *((float *)v25 + 23)) + *(float *)(v4 + 396);
  *(float *)(v4 + 340) = v88;
  v26 = -1;
  *(float *)(v4 + 344) = *(float *)&v91;
  v27 = v88;
  if ( *a2 == -1 )
    v28 = *((char **)a2 + 3);
  else
    v28 = a2 + 1;
  v85 = 0;
  v115 = v28;
  v89 = (_DWORD *)(v4 + 164);
  v84 = *(float *)&v91;
  unicode_character = (const char *)gameswf::decode_next_unicode_character((gameswf *)&v115, (const char **)v91);
  if ( unicode_character )
  {
    while ( 1 )
    {
      v30 = v27
          + (float)(COERCE_FLOAT(gameswf::font::get_kerning_adjustment((gameswf::font *)*a3, v26, (int)unicode_character))
                  * v83);
      v32 = unicode_character == &byte_9[1];
      if ( unicode_character != &byte_9[1] )
        v32 = unicode_character == &byte_9[4];
      v33 = (int)unicode_character;
      v27 = v30;
      if ( v32 )
      {
        if ( v26 != 13 || unicode_character != &byte_9[1] )
        {
          gameswf::array<gameswf::text_glyph_record>::push_back<gameswf::text_glyph_record>(
            v89,
            (gameswf::text_glyph_record *)&v95);
          gameswf::edit_text_character::align_line(v4, *(_DWORD *)(v4 + 380), *(_DWORD *)(v4 + 356), v27);
          v27 = *(float *)(v4 + 384) + *(float *)(v4 + 392);
          if ( v27 <= 0.0 )
            v27 = 0.0;
          v84 = v84 + (float)(v90 + v92);
          gameswf::array<gameswf::glyph>::resize(&v105, 0);
          v26 = (int)unicode_character;
          gameswf::smart_ptr<gameswf::font>::set_ref(&v96, (gameswf::ref_counted *)*a3);
          v35 = *((_BYTE *)a3 + 12);
          v36 = a3[1];
          v97 = a3[2];
          v98 = v35;
          v100 = v84;
          v99 = v27;
          v37 = *(_DWORD *)(v4 + 168);
          v31 = -1;
          v101 = (float)v36;
          v104 = 1;
          *(_DWORD *)(v4 + 364) = -1;
          *(_DWORD *)(v4 + 356) = v37;
          v102 = 1;
          v103 = 1;
          *(_DWORD *)(v4 + 360) = v37;
          goto LABEL_25;
        }
        goto LABEL_24;
      }
      if ( unicode_character == byte_8 )
      {
        if ( v106 > 0 )
        {
          v52 = 36 * (v106 - 1);
          v53 = v30 - *(float *)(v105 + v52);
          *(_DWORD *)(v105 + v52) = 0;
          v27 = v53;
          v26 = v33;
          goto LABEL_25;
        }
        goto LABEL_24;
      }
      if ( unicode_character == (_BYTE *)&word_10 + 1 )
        break;
      if ( unicode_character == (const char *)&dword_20 )
      {
        v86 = 1.0;
        goto LABEL_60;
      }
      if ( unicode_character == (const char *)&dword_A0 )
      {
        v33 = 32;
        v38 = 32;
        v86 = 1.0;
        unicode_character = (const char *)&dword_20;
      }
      else if ( unicode_character == (_BYTE *)&dword_24 + 2 )
      {
        if ( !a4 || (v72 = v115, LC_API_STRNCMP_0(v115, "nbsp;", 5u)) )
        {
          v33 = 38;
          v86 = 1.0;
          v38 = 38;
        }
        else
        {
          v73 = v72 + 5;
          v33 = 32;
          v115 = v73;
          v38 = 32;
          v86 = 1.0;
          unicode_character = (const char *)&dword_20;
        }
      }
      else
      {
        v38 = (unsigned __int16)unicode_character;
        v86 = 1.0;
      }
LABEL_36:
      v39 = a3[1];
      v109.width = 1140850688;
      v112 = -1;
      v113 = 0;
      v109.height = 0;
      v110 = 0;
      v111 = 0;
      v114 = 0;
      if ( !gameswf::font::get_glyph((gameswf::font *)*a3, &v109, v38, (int)(float)((float)v39 / 20.0))
        && gameswf::edit_text_character::append_text(gameswf::tu_string const&,gameswf::edit_text_character::text_attributes &,bool)::s_log_count <= 9 )
      {
        ++gameswf::edit_text_character::append_text(gameswf::tu_string const&,gameswf::edit_text_character::text_attributes &,bool)::s_log_count;
        v40 = (gameswf::font *)*a3;
        if ( *(char *)(*a3 + 48) == -1 )
          v41 = *((char **)v40 + 15);
        else
          v41 = (char *)v40 + 49;
        gameswf::log_error(
          "edit_text_character::display() -- missing glyph for char %d -- make sure character shapes for font %s are bein"
          "g exported into your SWF file!\n",
          unicode_character,
          v41);
      }
      *(float *)&v42 = (float)(*(float *)&v109.width + *(float *)(v4 + 400)) * (float)(v83 * v86);
      v109.width = v42;
      if ( (unsigned int)unicode_character > 0x1000 )
        *(float *)&v109.width = *(float *)&v42 * 1.1;
      v111 = (int)(float)((float)a3[1] / 20.0);
      v113 = v38;
      gameswf::array<gameswf::glyph>::push_back<gameswf::glyph>(&v105, (int)&v109);
      v43 = v27 + *(float *)&v109.width;
      if ( (float)((float)((float)(*(float *)(*(_DWORD *)(v4 + 160) + 40) - *(float *)(*(_DWORD *)(v4 + 160) + 36))
                         - *(float *)(v4 + 388))
                 - 80.0) <= (float)(v27 + *(float *)&v109.width) )
      {
        gameswf::array<gameswf::text_glyph_record>::push_back<gameswf::text_glyph_record>(
          v89,
          (gameswf::text_glyph_record *)&v95);
        v84 = v84 + (float)(v90 + v92);
        v27 = *(float *)(v4 + 384);
        gameswf::array<gameswf::glyph>::resize(&v105, 0);
        gameswf::smart_ptr<gameswf::font>::set_ref(&v96, (gameswf::ref_counted *)*a3);
        v54 = *((_BYTE *)a3 + 12);
        v55 = a3[1];
        v97 = a3[2];
        v98 = v54;
        v99 = v27;
        v100 = v84;
        v56 = *(_DWORD *)(v4 + 364);
        v57 = *(_DWORD *)(v4 + 164);
        v58 = *(_DWORD *)(v4 + 168) - 1;
        v101 = (float)v55;
        v103 = 1;
        v102 = 1;
        v59 = v57 + 48 * v58;
        if ( v56 == -1 )
        {
          v80 = *(_DWORD *)(v59 + 36);
          if ( v80 > 0 )
          {
            gameswf::array<gameswf::glyph>::push_back<gameswf::glyph>(&v105, *(_DWORD *)(v59 + 32) + 36 * (v80 - 1));
            v81 = *(float *)(*(_DWORD *)(v59 + 32) + 36 * (*(_DWORD *)(v59 + 36) - 1));
            v27 = v27 + v81;
            gameswf::array<gameswf::glyph>::resize((_DWORD *)(v59 + 32), *(_DWORD *)(v59 + 36) - 1);
            v70 = v43 - v81;
          }
          else
          {
            v70 = v43;
          }
        }
        else
        {
          v60 = *(_DWORD *)(v4 + 360);
          v61 = v43 - *(float *)(*(_DWORD *)(v57 + 48 * v60 + 32) + 36 * v56);
          if ( v60 == v58 )
            v62 = v56 + 1;
          else
            v62 = 0;
          v63 = v61;
          if ( v62 < *(_DWORD *)(v59 + 36) )
          {
            v64 = 36 * v62;
            v65 = *(_DWORD *)(v59 + 32);
            v87 = v33;
            v66 = v61;
            v94 = v4;
            do
            {
              gameswf::array<gameswf::glyph>::push_back<gameswf::glyph>(&v105, v65 + v64);
              v65 = *(_DWORD *)(v59 + 32);
              ++v62;
              v67 = *(float *)(v65 + v64);
              v64 += 36;
              v27 = v27 + v67;
              v68 = v66 - v67;
              v66 = v66 - v67;
            }
            while ( v62 < *(_DWORD *)(v59 + 36) );
            v4 = v94;
            v33 = v87;
            v60 = *(_DWORD *)(v94 + 360);
            v63 = v68;
            v58 = *(_DWORD *)(v94 + 168) - 1;
          }
          if ( v58 == v60 )
            v69 = *(_DWORD *)(v4 + 364);
          else
            v69 = 0;
          v82 = v63;
          gameswf::array<gameswf::glyph>::resize((_DWORD *)(v59 + 32), v69);
          v70 = v82;
        }
        gameswf::edit_text_character::align_line(v4, *(_DWORD *)(v4 + 380), *(_DWORD *)(v4 + 356), v70);
        v71 = *(_DWORD *)(v4 + 168);
        *(_DWORD *)(v4 + 364) = -1;
        *(_DWORD *)(v4 + 356) = v71;
        *(_DWORD *)(v4 + 360) = v71;
      }
      else
      {
        v27 = v27 + *(float *)&v109.width;
      }
      if ( v85 < *(_DWORD *)(v4 + 336) )
      {
        *(float *)(v4 + 340) = v27;
        *(float *)(v4 + 344) = v84;
      }
      ++v85;
      v45 = *(float *)(v4 + 296);
      v44 = (float)(v83 * *(float *)(*a3 + 88)) + v84;
      v46 = v44;
      v47 = *(float *)(v4 + 304);
      if ( v27 <= v45 )
        v45 = v27;
      *(float *)(v4 + 296) = v45;
      v48 = *(float *)(v4 + 300);
      if ( v44 <= v47 )
        v47 = v44;
      *(float *)(v4 + 304) = v47;
      v49 = *(float *)(v4 + 308);
      if ( v27 > v48 )
        v48 = v27;
      *(float *)(v4 + 300) = v48;
      height = (void (__fastcall ***)(_DWORD))v109.height;
      if ( v46 <= v49 )
        v46 = v49;
      *(float *)(v4 + 308) = v46;
      if ( height )
      {
        gameswf::ref_counted::drop_ref(height);
        v26 = v33;
        goto LABEL_25;
      }
LABEL_24:
      v26 = v33;
LABEL_25:
      unicode_character = (const char *)gameswf::decode_next_unicode_character((gameswf *)&v115, (const char **)v31);
      if ( !unicode_character )
        goto LABEL_26;
    }
    v86 = 0.0;
LABEL_60:
    v51 = *(_DWORD *)(v4 + 168);
    v33 = 32;
    *(_DWORD *)(v4 + 364) = v106;
    *(_DWORD *)(v4 + 360) = v51;
    v38 = 32;
    unicode_character = (const char *)&dword_20;
    goto LABEL_36;
  }
LABEL_26:
  *(float *)(v4 + 340) = *(float *)(v4 + 340) + (float)(v83 * *(float *)(*a3 + 92));
  *(float *)(v4 + 344) = *(float *)(v4 + 344)
                       - (float)((float)a3[1] + (float)((float)(*(float *)(*a3 + 92) - *(float *)(*a3 + 88)) * v83));
  gameswf::array<gameswf::text_glyph_record>::push_back<gameswf::text_glyph_record>(
    v89,
    (gameswf::text_glyph_record *)&v95);
  *(float *)(v4 + 348) = *(float *)(v4 + 348) + (float)(v27 - v88);
  *(float *)(v4 + 352) = *(float *)(v4 + 352) + (float)(v84 - *(float *)&v91);
  gameswf::text_glyph_record::~text_glyph_record((gameswf::text_glyph_record *)&v95);
}


// ===== 78d6d0 gameswf::edit_text_character_def::edit_text_character_def(gameswf::player *,gameswf::movie_definition_sub *) =====
gameswf::edit_text_character_def *__fastcall gameswf::edit_text_character_def::edit_text_character_def(
        gameswf::edit_text_character_def *this,
        gameswf::player *a2,
        gameswf::movie_definition_sub *a3)
{
  unsigned int v5; // r0
  unsigned int v6; // r12

  gameswf::character_def::character_def(this, a2);
  v5 = *((_DWORD *)this + 35) & 0xFF000000 | 0xFFFFFF;
  v6 = *((_DWORD *)this + 17) & 0xFF000000 | 0xFFFFFF;
  *((_DWORD *)this + 8) = a3;
  *((_DWORD *)this + 35) = v5;
  *((_DWORD *)this + 17) = v6;
  *(_DWORD *)this = off_990A98;
  *((_DWORD *)this + 23) = 1131413504;
  *((_BYTE *)this + 124) = 1;
  *((_BYTE *)this + 71) = HIBYTE(v6) & 0xFE;
  *((_BYTE *)this + 143) = HIBYTE(v5) & 0xFE;
  *((_BYTE *)this + 52) = 1;
  *((_BYTE *)this + 53) = 0;
  *((_BYTE *)this + 72) = 0;
  *((_BYTE *)this + 73) = 0;
  *((_BYTE *)this + 74) = 0;
  *((_BYTE *)this + 75) = 0;
  *((_BYTE *)this + 76) = 0;
  *((_BYTE *)this + 77) = 0;
  *((_BYTE *)this + 78) = 0;
  *((_BYTE *)this + 79) = 0;
  *((_BYTE *)this + 80) = 0;
  *((_DWORD *)this + 21) = -1;
  *((_DWORD *)this + 22) = 0;
  *((_BYTE *)this + 99) = -1;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 27) = 0;
  *((_DWORD *)this + 28) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_DWORD *)this + 30) = 0;
  *((_BYTE *)this + 125) = 0;
  *((_BYTE *)this + 144) = 0;
  *((_DWORD *)this + 37) = 0;
  *((_DWORD *)this + 39) = 0;
  *((_BYTE *)this + 98) = 0;
  *((_DWORD *)this + 38) = 0;
  *((_BYTE *)this + 96) = 0;
  *((_BYTE *)this + 97) = 0;
  return this;
}


// ===== 78d7cc gameswf::define_edit_text_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::define_edit_text_loader(
        gameswf *this,
        gameswf::stream *a2,
        gameswf::movie_definition_sub *a3,
        gameswf::movie_definition_sub *a4)
{
  int u16; // r0
  gameswf::player *v8; // r10
  int v9; // r6
  _BYTE *v10; // r0
  gameswf::edit_text_character_def *v11; // r5

  u16 = gameswf::stream::read_u16(this);
  v8 = *((gameswf::player **)a3 + 7);
  v9 = u16;
  if ( v8 )
  {
    v10 = *((_BYTE **)a3 + 6);
    if ( !v10[4] )
    {
      if ( (*(_DWORD *)v10)-- == 1 )
        gameswf::free_internal(v10);
      v8 = nullptr;
      *((_DWORD *)a3 + 6) = 0;
      *((_DWORD *)a3 + 7) = 0;
    }
  }
  v11 = (gameswf::edit_text_character_def *)operator new(0xA0u, 0);
  gameswf::edit_text_character_def::edit_text_character_def(v11, v8, a3);
  gameswf::edit_text_character_def::read(v11, this, (int)a2, a3);
  return (*(int (__fastcall **)(gameswf::movie_definition_sub *, int, gameswf::edit_text_character_def *))(*(_DWORD *)a3 + 116))(
           a3,
           v9,
           v11);
}


// ===== 78d874 gameswf::edit_text_character_def::edit_text_character_def(gameswf::player *,gameswf::movie_definition_sub *) =====
gameswf::edit_text_character_def *__fastcall gameswf::edit_text_character_def::edit_text_character_def(
        gameswf::edit_text_character_def *this,
        gameswf::player *a2,
        gameswf::movie_definition_sub *a3)
{
  unsigned int v5; // r0
  unsigned int v6; // r12

  gameswf::character_def::character_def(this, a2);
  v5 = *((_DWORD *)this + 35) & 0xFF000000 | 0xFFFFFF;
  v6 = *((_DWORD *)this + 17) & 0xFF000000 | 0xFFFFFF;
  *((_DWORD *)this + 8) = a3;
  *((_DWORD *)this + 35) = v5;
  *((_DWORD *)this + 17) = v6;
  *(_DWORD *)this = off_990A98;
  *((_DWORD *)this + 23) = 1131413504;
  *((_BYTE *)this + 124) = 1;
  *((_BYTE *)this + 71) = HIBYTE(v6) & 0xFE;
  *((_BYTE *)this + 143) = HIBYTE(v5) & 0xFE;
  *((_BYTE *)this + 52) = 1;
  *((_BYTE *)this + 53) = 0;
  *((_BYTE *)this + 72) = 0;
  *((_BYTE *)this + 73) = 0;
  *((_BYTE *)this + 74) = 0;
  *((_BYTE *)this + 75) = 0;
  *((_BYTE *)this + 76) = 0;
  *((_BYTE *)this + 77) = 0;
  *((_BYTE *)this + 78) = 0;
  *((_BYTE *)this + 79) = 0;
  *((_BYTE *)this + 80) = 0;
  *((_DWORD *)this + 21) = -1;
  *((_DWORD *)this + 22) = 0;
  *((_BYTE *)this + 99) = -1;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 27) = 0;
  *((_DWORD *)this + 28) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_DWORD *)this + 30) = 0;
  *((_BYTE *)this + 125) = 0;
  *((_BYTE *)this + 144) = 0;
  *((_DWORD *)this + 37) = 0;
  *((_DWORD *)this + 39) = 0;
  *((_BYTE *)this + 98) = 0;
  *((_DWORD *)this + 38) = 0;
  *((_BYTE *)this + 96) = 0;
  *((_BYTE *)this + 97) = 0;
  return this;
}


// ===== 78d970 gameswf::edit_text_character_def::edit_text_character_def(gameswf::player *,int,int) =====
gameswf::edit_text_character_def *__fastcall gameswf::edit_text_character_def::edit_text_character_def(
        gameswf::edit_text_character_def *this,
        gameswf::player *a2,
        int a3,
        int a4)
{
  unsigned int v8; // r12
  unsigned int v9; // r2
  gameswf::font *v10; // r4

  gameswf::character_def::character_def(this, a2);
  v8 = *((_DWORD *)this + 17) & 0xFF000000 | 0xFFFFFF;
  v9 = *((_DWORD *)this + 35) & 0xFF000000 | 0xFFFFFF;
  *(_DWORD *)this = off_990A98;
  *((_DWORD *)this + 17) = v8;
  *((_DWORD *)this + 23) = 1131413504;
  *((_DWORD *)this + 27) = 0;
  *((_DWORD *)this + 28) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 21) = -1;
  *((_BYTE *)this + 96) = -1;
  *((_BYTE *)this + 97) = -1;
  *((_BYTE *)this + 98) = -1;
  *((_BYTE *)this + 99) = -1;
  *((_BYTE *)this + 124) = 1;
  *((_BYTE *)this + 71) = HIBYTE(v8) & 0xFE;
  *((_BYTE *)this + 52) = 1;
  *((_DWORD *)this + 8) = 0;
  *((_BYTE *)this + 53) = 0;
  *((_BYTE *)this + 72) = 0;
  *((_BYTE *)this + 73) = 0;
  *((_BYTE *)this + 74) = 0;
  *((_BYTE *)this + 75) = 0;
  *((_BYTE *)this + 76) = 0;
  *((_BYTE *)this + 77) = 0;
  *((_BYTE *)this + 78) = 0;
  *((_BYTE *)this + 79) = 0;
  *((_BYTE *)this + 80) = 0;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_BYTE *)this + 125) = 0;
  *((_DWORD *)this + 35) = v9;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 38) = 0;
  *((_DWORD *)this + 39) = 0;
  *((_DWORD *)this + 9) = 0;
  *(_WORD *)((char *)this + 143) = HIBYTE(v9) & 0xFE;
  *((_DWORD *)this + 37) = 0;
  *((float *)this + 10) = (float)a3 * 20.0;
  *((float *)this + 12) = (float)a4 * 20.0;
  *((_BYTE *)this + 96) = 0;
  *((_BYTE *)this + 97) = 0;
  *((_BYTE *)this + 98) = 0;
  v10 = (gameswf::font *)operator new(0x88u, 0);
  gameswf::font::font(v10, a2);
  *((_DWORD *)this + 22) = v10;
  return this;
}


// ===== 78dad8 gameswf::edit_text_character_def::edit_text_character_def(gameswf::player *,int,int) =====
gameswf::edit_text_character_def *__fastcall gameswf::edit_text_character_def::edit_text_character_def(
        gameswf::edit_text_character_def *this,
        gameswf::player *a2,
        int a3,
        int a4)
{
  unsigned int v8; // r12
  unsigned int v9; // r2
  gameswf::font *v10; // r4

  gameswf::character_def::character_def(this, a2);
  v8 = *((_DWORD *)this + 17) & 0xFF000000 | 0xFFFFFF;
  v9 = *((_DWORD *)this + 35) & 0xFF000000 | 0xFFFFFF;
  *(_DWORD *)this = off_990A98;
  *((_DWORD *)this + 17) = v8;
  *((_DWORD *)this + 23) = 1131413504;
  *((_DWORD *)this + 27) = 0;
  *((_DWORD *)this + 28) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 21) = -1;
  *((_BYTE *)this + 96) = -1;
  *((_BYTE *)this + 97) = -1;
  *((_BYTE *)this + 98) = -1;
  *((_BYTE *)this + 99) = -1;
  *((_BYTE *)this + 124) = 1;
  *((_BYTE *)this + 71) = HIBYTE(v8) & 0xFE;
  *((_BYTE *)this + 52) = 1;
  *((_DWORD *)this + 8) = 0;
  *((_BYTE *)this + 53) = 0;
  *((_BYTE *)this + 72) = 0;
  *((_BYTE *)this + 73) = 0;
  *((_BYTE *)this + 74) = 0;
  *((_BYTE *)this + 75) = 0;
  *((_BYTE *)this + 76) = 0;
  *((_BYTE *)this + 77) = 0;
  *((_BYTE *)this + 78) = 0;
  *((_BYTE *)this + 79) = 0;
  *((_BYTE *)this + 80) = 0;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_BYTE *)this + 125) = 0;
  *((_DWORD *)this + 35) = v9;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 38) = 0;
  *((_DWORD *)this + 39) = 0;
  *((_DWORD *)this + 9) = 0;
  *(_WORD *)((char *)this + 143) = HIBYTE(v9) & 0xFE;
  *((_DWORD *)this + 37) = 0;
  *((float *)this + 10) = (float)a3 * 20.0;
  *((float *)this + 12) = (float)a4 * 20.0;
  *((_BYTE *)this + 96) = 0;
  *((_BYTE *)this + 97) = 0;
  *((_BYTE *)this + 98) = 0;
  v10 = (gameswf::font *)operator new(0x88u, 0);
  gameswf::font::font(v10, a2);
  *((_DWORD *)this + 22) = v10;
  return this;
}


// ===== 78dc40 gameswf::text_character_def::text_character_def(gameswf::player *,gameswf::movie_definition_sub *) =====
gameswf::text_character_def *__fastcall gameswf::text_character_def::text_character_def(
        gameswf::text_character_def *this,
        gameswf::player *a2,
        gameswf::movie_definition_sub *a3)
{
  gameswf::character_def::character_def(this, a2);
  *((_DWORD *)this + 17) = 1065353216;
  *((_DWORD *)this + 13) = 1065353216;
  *(_DWORD *)this = off_990AD0;
  *((_DWORD *)this + 8) = a3;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_BYTE *)this + 88) = 0;
  *((_BYTE *)this + 92) = 0;
  *((_DWORD *)this + 25) = 0;
  return this;
}


// ===== 78dcc0 gameswf::define_text_loader(gameswf::stream *,int,gameswf::movie_definition_sub *) =====
int __fastcall gameswf::define_text_loader(
        gameswf *this,
        gameswf::stream *a2,
        gameswf::movie_definition_sub *a3,
        gameswf::movie_definition_sub *a4)
{
  int u16; // r0
  gameswf::player *v8; // r10
  int v9; // r6
  _BYTE *v10; // r0
  gameswf::text_character_def *v11; // r5

  u16 = gameswf::stream::read_u16(this);
  v8 = *((gameswf::player **)a3 + 7);
  v9 = u16;
  if ( v8 )
  {
    v10 = *((_BYTE **)a3 + 6);
    if ( !v10[4] )
    {
      if ( (*(_DWORD *)v10)-- == 1 )
        gameswf::free_internal(v10);
      v8 = nullptr;
      *((_DWORD *)a3 + 6) = 0;
      *((_DWORD *)a3 + 7) = 0;
    }
  }
  v11 = (gameswf::text_character_def *)operator new(0x6Cu, 0);
  gameswf::text_character_def::text_character_def(v11, v8, a3);
  gameswf::text_character_def::read(v11, this, (int)a2, a3);
  return (*(int (__fastcall **)(gameswf::movie_definition_sub *, int, gameswf::text_character_def *))(*(_DWORD *)a3 + 116))(
           a3,
           v9,
           v11);
}


// ===== 78dd68 gameswf::text_character_def::text_character_def(gameswf::player *,gameswf::movie_definition_sub *) =====
gameswf::text_character_def *__fastcall gameswf::text_character_def::text_character_def(
        gameswf::text_character_def *this,
        gameswf::player *a2,
        gameswf::movie_definition_sub *a3)
{
  gameswf::character_def::character_def(this, a2);
  *((_DWORD *)this + 17) = 1065353216;
  *((_DWORD *)this + 13) = 1065353216;
  *(_DWORD *)this = off_990AD0;
  *((_DWORD *)this + 8) = a3;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_BYTE *)this + 88) = 0;
  *((_BYTE *)this + 92) = 0;
  *((_DWORD *)this + 25) = 0;
  return this;
}


// ===== 78dde8 gameswf::edit_text_character::get_root(void) =====
int __fastcall gameswf::edit_text_character::get_root(gameswf::edit_text_character *this)
{
  int v1; // r3
  _BYTE *v3; // r0

  v1 = *((_DWORD *)this + 16);
  if ( !v1 )
    return (*(int (__fastcall **)(int))(*(_DWORD *)v1 + 84))(v1);
  v3 = *((_BYTE **)this + 15);
  if ( v3[4] )
    return (*(int (__fastcall **)(int))(*(_DWORD *)v1 + 84))(v1);
  if ( (*(_DWORD *)v3)-- == 1 )
    gameswf::free_internal(v3);
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 15) = 0;
  return MEMORY[0x464C45D3](0);
}


// ===== 78de58 gameswf::hash<gameswf::tu_stringi,gameswf::tu_string,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::find_index(gameswf::tu_stringi const&) =====
int __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::tu_string,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::find_index(
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
  v11 = 6 * (v9 & v10) + 1;
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
    v13 = *a1 + 8 * (6 * v6 + 1);
    v14 = *(_DWORD *)(v13 + 4);
  }
  return v6;
}


// ===== 78dfbc gameswf::hash<gameswf::tu_stringi,gameswf::tu_string,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::get(gameswf::tu_stringi const&,gameswf::tu_string*) =====
int __fastcall gameswf::hash<gameswf::tu_stringi,gameswf::tu_string,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::get(
        int *a1,
        _DWORD *a2,
        gameswf::tu_string *a3)
{
  int index; // r0

  index = gameswf::hash<gameswf::tu_stringi,gameswf::tu_string,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::find_index(
            a1,
            a2);
  if ( index < 0 )
    return 0;
  if ( a3 )
    gameswf::tu_string::operator=(a3, (char *)(*a1 + 48 * index + 36));
  return 1;
}


// ===== 78e010 gameswf::hash<gameswf::tu_stringi,gameswf::tu_string,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set(gameswf::tu_stringi const&,gameswf::tu_string const&) =====
gameswf::tu_string *__fastcall gameswf::hash<gameswf::tu_stringi,gameswf::tu_string,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set(
        int *a1,
        const gameswf::tu_string *a2,
        const gameswf::tu_string *a3)
{
  int index; // r0

  index = gameswf::hash<gameswf::tu_stringi,gameswf::tu_string,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::find_index(
            a1,
            a2);
  if ( index < 0 )
    return gameswf::hash<gameswf::tu_stringi,gameswf::tu_string,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::add(
             (_DWORD **)a1,
             a2,
             a3);
  else
    return gameswf::tu_string::operator=((gameswf::tu_string *)(*a1 + 48 * index + 36), (char *)a3);
}


// ===== 78e060 gameswf::html_reader::parse_tag(gameswf::stringi_hash<gameswf::tu_string> &,char const*) =====
int __fastcall gameswf::html_reader::parse_tag(int a1, int *a2, const char *a3)
{
  int v4; // r4
  char *v5; // r0
  char *v6; // r0
  char *v7; // r6
  char *v8; // r11
  int v9; // t1
  char *v10; // r4
  char *v11; // r7
  char *v12; // r0
  bool v13; // zf
  int v14; // r5
  bool v15; // zf
  char *v16; // r5
  const char *v17; // r6
  char *v18; // r7
  int v20; // t1
  _BYTE v22[8]; // [sp+14h] [bp-80h] BYREF
  void *v23; // [sp+20h] [bp-74h]
  _BYTE v24[8]; // [sp+28h] [bp-6Ch] BYREF
  void *v25; // [sp+34h] [bp-60h]
  _BYTE v26[8]; // [sp+3Ch] [bp-58h] BYREF
  void *v27; // [sp+48h] [bp-4Ch]
  _BYTE v28[8]; // [sp+50h] [bp-44h] BYREF
  void *v29; // [sp+5Ch] [bp-38h]
  _BYTE v30[8]; // [sp+64h] [bp-30h] BYREF
  void *v31; // [sp+70h] [bp-24h]
  _BYTE v32[8]; // [sp+78h] [bp-1Ch] BYREF
  void *p; // [sp+84h] [bp-10h]

  if ( *a3 == 47 )
    return 0;
  v5 = strchr(a3, 32);
  if ( !v5 )
  {
    v5 = strchr(a3, 47);
    if ( !v5 )
      v5 = (char *)&a3[LC_API_STRLEN_0(a3)];
  }
  gameswf::tu_string::tu_string((gameswf::tu_string *)v32, a3, v5 - a3);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v30, "name");
  gameswf::tu_string::tu_string((gameswf::tu_string *)v28, (const gameswf::tu_string *)v30);
  gameswf::hash<gameswf::tu_stringi,gameswf::tu_string,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set(
    a2,
    (const gameswf::tu_string *)v28,
    (const gameswf::tu_string *)v32);
  if ( v28[0] == -1 )
  {
    gameswf::free_internal(v29);
    if ( v30[0] != -1 )
      goto LABEL_6;
  }
  else if ( v30[0] != -1 )
  {
    goto LABEL_6;
  }
  gameswf::free_internal(v31);
LABEL_6:
  v6 = strchr(a3, 61);
  v7 = v6;
  if ( !v6 )
  {
LABEL_30:
    v4 = 1;
    if ( v32[0] != -1 )
      return v4;
LABEL_37:
    gameswf::free_internal(p);
    return v4;
  }
  v8 = v6;
  while ( 1 )
  {
    if ( *v7 == 32 )
    {
      do
        v9 = *--v8;
      while ( v9 == 32 );
      v10 = v7;
    }
    else
    {
      v10 = v7;
      do
        v20 = *--v10;
      while ( v20 != 32 );
    }
    v11 = strchr(v7, 34);
    v12 = strchr(v7, 39);
    v13 = v12 == nullptr;
    if ( !v12 )
      v13 = v11 == nullptr;
    if ( v13 )
      break;
    v14 = (int)v12;
    if ( v12 )
      v14 = 1;
    v15 = v11 == nullptr;
    if ( v11 )
      v15 = v12 == nullptr;
    if ( v15 )
    {
      if ( v14 )
        v16 = v12;
      else
        v16 = v11;
      v17 = v16 + 1;
      v18 = strchr(v16 + 1, *v16);
      if ( !v18 )
        break;
    }
    else
    {
      if ( v11 >= v12 )
        v16 = v12;
      else
        v16 = v11;
      v17 = v16 + 1;
      v18 = strchr(v16 + 1, *v16);
      if ( !v18 )
        break;
    }
    gameswf::tu_string::tu_string((gameswf::tu_string *)v26, v10 + 1, v8 - 1 - v10);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v24, v17, v18 - 1 - v16);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v22, (const gameswf::tu_string *)v26);
    gameswf::hash<gameswf::tu_stringi,gameswf::tu_string,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set(
      a2,
      (const gameswf::tu_string *)v22,
      (const gameswf::tu_string *)v24);
    if ( v22[0] == -1 )
      gameswf::free_internal(v23);
    v7 = strchr(v18, 61);
    if ( v24[0] == -1 )
      gameswf::free_internal(v25);
    if ( v26[0] == -1 )
      gameswf::free_internal(v27);
    v8 = v7;
    if ( !v7 )
      goto LABEL_30;
  }
  v4 = 0;
  if ( v32[0] == -1 )
    goto LABEL_37;
  return v4;
}


// ===== 78e354 gameswf::html_reader::parse(gameswf::edit_text_character *) =====
void __fastcall gameswf::html_reader::parse(gameswf::html_reader *this, gameswf::edit_text_character *a2)
{
  int v3; // r3
  int v5; // r2
  gameswf::ref_counted **v6; // r5
  gameswf::ref_counted *v7; // r1
  char v8; // r11
  int v9; // r9
  char *v10; // r7
  int v11; // r3
  const char *v12; // r10
  char *v13; // r0
  char *v14; // r7
  int v15; // r3
  int v16; // r3
  char *v17; // r7
  int v18; // r3
  char *v19; // r7
  int v20; // r1
  int v21; // r3
  int v22; // r9
  gameswf::ref_counted *v23; // r1
  int v24; // r9
  char v25; // r12
  int v26; // r9
  int v27; // r9
  int v28; // r9
  char *v29; // r0
  char v30; // r9
  int v31; // r11
  char *v32; // r11
  int v33; // r9
  char *v34; // r0
  void *v35; // r1
  int v36; // r2
  char *v37; // r3
  char *v38; // r0
  int v39; // r9
  int v40; // r3
  const char *v41; // r0
  gameswf::tu_string *v42; // r2
  const char *v43; // r3
  gameswf::tu_string *v44; // r1
  int v45; // r3
  signed int v46; // r0
  int v47; // r0
  gameswf::player *player; // r11
  char *v49; // r10
  gameswf::player *v50; // r11
  gameswf::font *v51; // r10
  gameswf::player *v52; // r9
  gameswf::font *v53; // r10
  int v54; // r3
  char v55; // r1
  const char *v56; // r2
  unsigned int v57; // r2
  const char *v58; // r0
  char *v59; // r0
  char *v60; // r3
  const char *v61; // r0
  char *v62; // r0
  char *v63; // r0
  char *v64; // r0
  const char *v65; // r0
  int v66; // r10
  const char *v67; // r0
  int v68; // r0
  char *v69; // r0
  int v70; // r9
  char *v71; // r0
  int v72; // r9
  char *v73; // [sp+0h] [bp-3B4h]
  gameswf::tu_string *v74; // [sp+8h] [bp-3ACh]
  gameswf::tu_string *v75; // [sp+Ch] [bp-3A8h]
  char *v76; // [sp+10h] [bp-3A4h]
  int v77; // [sp+14h] [bp-3A0h]
  char *v78; // [sp+18h] [bp-39Ch]
  const char *v79; // [sp+1Ch] [bp-398h]
  const char *v80; // [sp+20h] [bp-394h]
  char *v81; // [sp+24h] [bp-390h]
  gameswf::tu_string *v82; // [sp+28h] [bp-38Ch]
  int v83; // [sp+2Ch] [bp-388h]
  gameswf::ref_counted *v84; // [sp+34h] [bp-380h] BYREF
  int v85; // [sp+38h] [bp-37Ch]
  int v86; // [sp+3Ch] [bp-378h]
  char v87; // [sp+40h] [bp-374h]
  gameswf::ref_counted *v88; // [sp+44h] [bp-370h] BYREF
  int v89; // [sp+48h] [bp-36Ch]
  int v90; // [sp+4Ch] [bp-368h]
  char v91; // [sp+50h] [bp-364h]
  _DWORD *v92; // [sp+54h] [bp-360h] BYREF
  char v93[512]; // [sp+58h] [bp-35Ch] BYREF
  char v94[8]; // [sp+258h] [bp-15Ch] BYREF
  void *p; // [sp+264h] [bp-150h]
  void *v96[5]; // [sp+26Ch] [bp-148h] BYREF
  void *v97[5]; // [sp+280h] [bp-134h] BYREF
  void *v98[5]; // [sp+294h] [bp-120h] BYREF
  void *v99[4]; // [sp+2A8h] [bp-10Ch] BYREF
  unsigned int v100; // [sp+2B8h] [bp-FCh]
  void *v101[4]; // [sp+2BCh] [bp-F8h] BYREF
  unsigned int v102; // [sp+2CCh] [bp-E8h]
  _BYTE v103[16]; // [sp+2D0h] [bp-E4h] BYREF
  unsigned int v104; // [sp+2E0h] [bp-D4h]
  void *v105[5]; // [sp+2E4h] [bp-D0h] BYREF
  void *v106[3]; // [sp+2F8h] [bp-BCh] BYREF
  char *v107; // [sp+304h] [bp-B0h]
  unsigned int v108; // [sp+308h] [bp-ACh]
  void *v109[5]; // [sp+30Ch] [bp-A8h] BYREF
  _BYTE v110[4]; // [sp+320h] [bp-94h] BYREF
  int v111; // [sp+324h] [bp-90h]
  const char *v112; // [sp+32Ch] [bp-88h]
  unsigned int v113; // [sp+330h] [bp-84h]
  void *v114[5]; // [sp+334h] [bp-80h] BYREF
  _BYTE v115[16]; // [sp+348h] [bp-6Ch] BYREF
  unsigned int v116; // [sp+358h] [bp-5Ch]
  void *v117[5]; // [sp+35Ch] [bp-58h] BYREF
  void *v118[5]; // [sp+370h] [bp-44h] BYREF
  _BYTE v119[8]; // [sp+384h] [bp-30h] BYREF
  void *v120; // [sp+390h] [bp-24h]
  char v121; // [sp+398h] [bp-1Ch] BYREF
  char v122; // [sp+399h] [bp-1Bh] BYREF
  char *v123; // [sp+3A4h] [bp-10h]
  unsigned int v124; // [sp+3A8h] [bp-Ch]

  v3 = *((char *)a2 + 312);
  if ( v3 == -1 )
    v3 = *((_DWORD *)a2 + 79);
  if ( v3 != 1 )
  {
    v5 = *((_DWORD *)a2 + 92);
    v6 = &v88;
    v7 = *((gameswf::ref_counted **)a2 + 94);
    v89 = 12;
    v91 = 0;
    v88 = nullptr;
    v90 = v5;
    gameswf::smart_ptr<gameswf::font>::set_ref(&v88, v7);
    v89 = (int)*((float *)a2 + 93);
    gameswf::array<gameswf::edit_text_character::text_attributes>::push_back<gameswf::edit_text_character::text_attributes>(
      (int *)this,
      (int)&v88);
    v8 = *((_BYTE *)a2 + 312);
    v9 = v8;
    if ( v8 == -1 )
      v6 = *((gameswf::ref_counted ***)a2 + 81);
    v76 = "name";
    if ( v8 != -1 )
      v6 = (gameswf::ref_counted **)((char *)a2 + 312);
    v10 = nullptr;
    v78 = "p";
    if ( v8 != -1 )
      v6 = (gameswf::ref_counted **)((char *)v6 + 1);
    v77 = 0;
    v79 = "font";
    v81 = "_";
    v80 = "b";
    while ( 1 )
    {
      if ( v9 == -1 )
        v11 = *((_DWORD *)a2 + 79);
      else
        v11 = *((unsigned __int8 *)a2 + 312);
      if ( v9 != -1 )
        v11 = (char)v11;
      if ( (int)v10 >= v11 - 1 )
      {
LABEL_27:
        if ( v88 )
          gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v88);
        return;
      }
      v12 = &v10[(_DWORD)v6];
      if ( v10[(_DWORD)v6] == 60 )
        break;
      v13 = strchr(&v10[(_DWORD)v6], 60);
      v14 = v13;
      if ( !v13 )
      {
        if ( v9 == -1 )
          v15 = *((_DWORD *)a2 + 79);
        else
          v15 = *((unsigned __int8 *)a2 + 312);
        if ( v9 != -1 )
          v15 = (char)v15;
        gameswf::tu_string::tu_string((gameswf::tu_string *)v94, v12, (char *)v6 + v15 - 1 - v12);
        gameswf::edit_text_character::append_text(
          (int)a2,
          v94,
          (int *)(*(_DWORD *)this + 16 * (*((_DWORD *)this + 1) - 1)),
          1);
        if ( (unsigned __int8)v94[0] == 255 )
          gameswf::free_internal(p);
        goto LABEL_27;
      }
      gameswf::tu_string::tu_string((gameswf::tu_string *)v94, v12, v13 - v12);
      gameswf::edit_text_character::append_text(
        (int)a2,
        v94,
        (int *)(*(_DWORD *)this + 16 * (*((_DWORD *)this + 1) - 1)),
        1);
      v10 = (char *)(v14 - (char *)v6);
      if ( (unsigned __int8)v94[0] == 255 )
        gameswf::free_internal(p);
      v8 = *((_BYTE *)a2 + 312);
LABEL_32:
      v9 = v8;
    }
    v73 = strchr(&v10[(_DWORD)v6], 62);
    if ( !v73 )
      goto LABEL_27;
    if ( v9 == -1 )
      v16 = *((_DWORD *)a2 + 79);
    else
      v16 = *((unsigned __int8 *)a2 + 312);
    v17 = v10 + 1;
    if ( v9 != -1 )
      v16 = (char)v16;
    if ( (int)v17 >= v16 - 1 )
      goto LABEL_27;
    v18 = v17[(_DWORD)v6];
    v19 = &v17[(_DWORD)v6];
    if ( v18 == 47 )
    {
      v20 = *((_DWORD *)this + 1);
      if ( v20 > 1 )
      {
        gameswf::array<gameswf::edit_text_character::text_attributes>::resize(this, v20 - 1);
        v8 = *((_BYTE *)a2 + 312);
      }
LABEL_43:
      v10 = &v73[1 - (_DWORD)v6];
      goto LABEL_32;
    }
    LC_API_MEMSET_0(v93, 0, 0x200u);
    memcpy(v93, v19, (size_t)&v73[~(unsigned int)v12]);
    v92 = nullptr;
    gameswf::html_reader::parse_tag((int)this, (int *)&v92, v93);
    v21 = *(_DWORD *)this;
    v22 = *((_DWORD *)this + 1);
    v85 = 12;
    v84 = nullptr;
    v86 = 0x1000000;
    v87 = 0;
    v75 = (gameswf::tu_string *)&v84;
    --v22;
    v23 = *(gameswf::ref_counted **)(v21 + 16 * v22);
    v24 = v21 + 16 * v22;
    gameswf::smart_ptr<gameswf::font>::set_ref(&v84, v23);
    v85 = *(_DWORD *)(v24 + 4);
    v86 = *(_DWORD *)(v24 + 8);
    v25 = *(_BYTE *)(v24 + 12);
    v124 = v124 & 0xFF000000 | 0xFFFFFF;
    v74 = (gameswf::tu_string *)v118;
    v87 = v25;
    HIBYTE(v124) &= ~1u;
    v122 = 0;
    v121 = 1;
    gameswf::tu_string::tu_string((gameswf::tu_string *)v119, v76);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v118, (const gameswf::tu_string *)v119);
    v26 = gameswf::hash<gameswf::tu_stringi,gameswf::tu_string,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::get(
            (int *)&v92,
            v118,
            (gameswf::tu_string *)&v121);
    if ( SLOBYTE(v118[0]) == -1 )
      gameswf::free_internal(v118[3]);
    if ( v119[0] == -1 )
      gameswf::free_internal(v120);
    if ( v26 )
    {
      v28 = v121;
      if ( v121 == -1 )
        v29 = v123;
      else
        v29 = &v122;
      if ( !LC_API_STRCMP_0(v29, v78) )
      {
        if ( v77 )
        {
          gameswf::tu_string::tu_string((gameswf::tu_string *)v117, "\n");
          gameswf::edit_text_character::append_text(
            (int)a2,
            (char *)v117,
            (int *)(*(_DWORD *)this + 16 * (*((_DWORD *)this + 1) - 1)),
            1);
          gameswf::tu_string::~tu_string(v117);
          v28 = v121;
        }
        ++v77;
        if ( v28 != -1 )
          goto LABEL_51;
        goto LABEL_61;
      }
      if ( gameswf::tu_string::operator==(&v121, v79) )
      {
        v30 = 0;
        v82 = (gameswf::tu_string *)v115;
        v116 = v116 & 0xFF000000 | 0xFFFFFF;
        v115[0] = 1;
        HIBYTE(v116) &= ~1u;
        v115[1] = 0;
        gameswf::tu_string::tu_string((gameswf::tu_string *)v114, "face");
        v31 = gameswf::hash<gameswf::tu_stringi,gameswf::tu_string,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::get(
                (int *)&v92,
                v114,
                (gameswf::tu_string *)v115);
        gameswf::tu_string::~tu_string(v114);
        if ( v31 )
        {
          player = (gameswf::player *)gameswf::as_object::get_player(a2);
          v49 = (char *)operator new(0x88u, 0);
          gameswf::font::font((gameswf::font *)v49, player);
          gameswf::font::copy_from((gameswf::font *)v49, v84);
          gameswf::tu_string::operator=((gameswf::tu_string *)(v49 + 48), (char *)v82);
          gameswf::smart_ptr<gameswf::font>::set_ref((gameswf::ref_counted **)v75, (gameswf::ref_counted *)v49);
        }
        v74 = (gameswf::tu_string *)v110;
        v113 = v113 & 0xFF000000 | 0xFFFFFF;
        v110[0] = 1;
        HIBYTE(v113) &= ~1u;
        v110[1] = 0;
        gameswf::tu_string::tu_string((gameswf::tu_string *)v109, "color");
        if ( !gameswf::hash<gameswf::tu_stringi,gameswf::tu_string,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::get(
                (int *)&v92,
                v109,
                (gameswf::tu_string *)v110) )
          goto LABEL_66;
        v40 = v110[0];
        if ( v110[0] == -1 )
          v40 = v111;
        if ( v40 - 1 > 0 )
        {
          gameswf::tu_string::~tu_string(v109);
          v44 = (gameswf::tu_string *)v110[0];
          if ( v110[0] == -1 )
            v43 = v112;
          else
            v42 = v74;
          if ( v110[0] != -1 )
            v43 = (char *)v42 + 1;
          v45 = *v43;
          if ( v45 == 35 )
          {
            if ( v110[0] == -1 )
              v45 = v111;
            else
              v30 = v110[0];
            if ( v110[0] != -1 )
              v45 = v30;
            v54 = v45 - 2;
            if ( v54 <= 0 )
            {
              v46 = -16777216;
            }
            else
            {
              v55 = 0;
              v46 = -16777216;
              v83 = tolower_tab_;
              while ( 1 )
              {
                if ( v110[0] == -1 )
                  v56 = v112;
                else
                  v56 = (char *)v74 + 1;
                v57 = v56[v54];
                if ( v57 <= 0xFF )
                  LOWORD(v57) = *(_WORD *)(v83 + 2 * v57 + 2);
                if ( (unsigned __int8)(v57 - 48) > 9u )
                {
                  if ( (unsigned __int8)(v57 - 97) <= 5u )
                    v46 |= ((char)v57 - 87) << v55;
                }
                else
                {
                  v46 |= ((char)v57 - 48) << v55;
                }
                if ( !--v54 )
                  break;
                v55 += 4;
              }
            }
          }
          else
          {
            if ( v110[0] == -1 )
              v41 = v112;
            else
              v44 = v74;
            if ( v110[0] != -1 )
              v41 = (char *)v44 + 1;
            v46 = LC_API_ATOI_0(v41) | 0xFF000000;
          }
          v47 = (int)(double)v46;
          HIBYTE(v86) = -1;
          BYTE1(v86) = BYTE1(v47);
          BYTE2(v86) = v47;
          LOBYTE(v86) = BYTE2(v47);
        }
        else
        {
LABEL_66:
          gameswf::tu_string::~tu_string(v109);
        }
        v108 = v108 & 0xFF000000 | 0xFFFFFF;
        LOWORD(v106[0]) = 1;
        HIBYTE(v108) &= ~1u;
        gameswf::tu_string::tu_string((gameswf::tu_string *)v105, "size");
        v32 = (char *)gameswf::hash<gameswf::tu_stringi,gameswf::tu_string,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::get(
                        (int *)&v92,
                        v105,
                        (gameswf::tu_string *)v106);
        gameswf::tu_string::~tu_string(v105);
        if ( v32 )
        {
          v33 = SLOBYTE(v106[0]);
          if ( SLOBYTE(v106[0]) == -1 )
            v34 = v107;
          else
            v34 = (char *)v106 + 1;
          if ( strchr(v34, 37) )
          {
            if ( v33 == -1 )
              v35 = v106[1];
            else
              LOBYTE(v37) = v106[0];
            if ( v33 != -1 )
              v35 = (void *)(char)v37;
            gameswf::tu_string::erase((gameswf::tu_string *)v106, (int)v35 - 2, v36);
            if ( SLOBYTE(v106[0]) == -1 )
              v38 = v107;
            else
              v38 = (char *)v106 + 1;
            v39 = *(_DWORD *)(*(_DWORD *)this + 16 * *((_DWORD *)this + 1) - 12);
            v85 = v39 * LC_API_ATOI_0(v38) / 100;
          }
          else
          {
            if ( v33 == -1 )
              v32 = v107;
            else
              v37 = (char *)v106 + 1;
            if ( v33 == -1 )
            {
              v58 = v32;
            }
            else
            {
              v58 = v37;
              v32 = v37;
            }
            v59 = strchr(v58, 43);
            if ( v59 == v32 )
            {
              if ( v33 == -1 )
                v71 = v107;
              else
                v71 = (char *)v106 + 1;
              v72 = *(_DWORD *)(*(_DWORD *)this + 16 * *((_DWORD *)this + 1) - 12);
              v85 = (int)(float)((float)LC_API_ATOI_0(v71 + 1) * 20.0) + v72;
            }
            else
            {
              if ( v33 == -1 )
                v32 = v107;
              else
                v60 = (char *)v106 + 1;
              if ( v33 == -1 )
              {
                v61 = v32;
              }
              else
              {
                v61 = v60;
                v32 = v60;
              }
              v62 = strchr(v61, 45);
              if ( v62 == v32 )
              {
                if ( v33 == -1 )
                  v69 = v107;
                else
                  v69 = (char *)v106 + 1;
                v70 = *(_DWORD *)(*(_DWORD *)this + 16 * *((_DWORD *)this + 1) - 12);
                v85 = v70 - (int)(float)((float)LC_API_ATOI_0(v69 + 1) * 20.0);
              }
              else
              {
                if ( v33 == -1 )
                  v63 = v107;
                else
                  v63 = (char *)v106 + 1;
                if ( LC_API_ATOI_0(v63) > 0 )
                {
                  if ( SLOBYTE(v106[0]) == -1 )
                    v64 = v107;
                  else
                    v64 = (char *)v106 + 1;
                  v85 = (int)(float)((float)LC_API_ATOI_0(v64) * 20.0);
                }
              }
            }
          }
        }
        gameswf::array<gameswf::edit_text_character::text_attributes>::push_back<gameswf::edit_text_character::text_attributes>(
          (int *)this,
          (int)v75);
        gameswf::tu_string::~tu_string(v106);
        gameswf::tu_string::~tu_string((void **)v74);
        gameswf::tu_string::~tu_string((void **)v82);
        v27 = v121;
      }
      else if ( gameswf::tu_string::operator==(&v121, v80) )
      {
        v50 = (gameswf::player *)gameswf::as_object::get_player(a2);
        v51 = (gameswf::font *)operator new(0x88u, 0);
        gameswf::font::font(v51, v50);
        gameswf::font::copy_from(v51, v84);
        *((_BYTE *)v51 + 77) = 1;
        gameswf::smart_ptr<gameswf::font>::set_ref((gameswf::ref_counted **)v75, v51);
        gameswf::array<gameswf::edit_text_character::text_attributes>::push_back<gameswf::edit_text_character::text_attributes>(
          (int *)this,
          (int)v75);
        v27 = v121;
      }
      else if ( gameswf::tu_string::operator==(&v121, v81 + 7924572) )
      {
        v52 = (gameswf::player *)gameswf::as_object::get_player(a2);
        v53 = (gameswf::font *)operator new(0x88u, 0);
        gameswf::font::font(v53, v52);
        gameswf::font::copy_from(v53, v84);
        *((_BYTE *)v53 + 76) = 1;
        gameswf::smart_ptr<gameswf::font>::set_ref((gameswf::ref_counted **)v75, v53);
        gameswf::array<gameswf::edit_text_character::text_attributes>::push_back<gameswf::edit_text_character::text_attributes>(
          (int *)this,
          (int)v75);
        v27 = v121;
      }
      else if ( gameswf::tu_string::operator==(&v121, "u") )
      {
        v87 = 1;
        gameswf::array<gameswf::edit_text_character::text_attributes>::push_back<gameswf::edit_text_character::text_attributes>(
          (int *)this,
          (int)v75);
        v27 = v121;
      }
      else if ( gameswf::tu_string::operator==(&v121, "img") )
      {
        v74 = (gameswf::tu_string *)v98;
        LOBYTE(v82) = ((v100 & 0xFF000000 | 0xFFFFFF) >> 24) & 0xFE;
        v104 = v104 & 0xFF000000 | 0xFFFFFF;
        v75 = (gameswf::tu_string *)v103;
        HIBYTE(v104) &= ~1u;
        v100 = v100 & 0xFF000000 | 0xFFFFFF;
        v102 = v102 & 0xFF000000 | 0xFFFFFF;
        HIBYTE(v100) = (_BYTE)v82;
        LOWORD(v99[0]) = 1;
        HIBYTE(v102) &= ~1u;
        v103[0] = 1;
        v103[1] = 0;
        LOWORD(v101[0]) = 1;
        gameswf::tu_string::tu_string((gameswf::tu_string *)v98, "src");
        gameswf::hash<gameswf::tu_stringi,gameswf::tu_string,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::get(
          (int *)&v92,
          v98,
          (gameswf::tu_string *)v103);
        gameswf::tu_string::~tu_string(v98);
        gameswf::tu_string::tu_string((gameswf::tu_string *)v97, "width");
        gameswf::hash<gameswf::tu_stringi,gameswf::tu_string,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::get(
          (int *)&v92,
          v97,
          (gameswf::tu_string *)v101);
        gameswf::tu_string::~tu_string(v97);
        gameswf::tu_string::tu_string((gameswf::tu_string *)v96, "height");
        gameswf::hash<gameswf::tu_stringi,gameswf::tu_string,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::get(
          (int *)&v92,
          v96,
          (gameswf::tu_string *)v99);
        gameswf::tu_string::~tu_string(v96);
        if ( SLOBYTE(v101[0]) == -1 )
          v65 = (const char *)v101[3];
        else
          v65 = (char *)v101 + 1;
        v66 = LC_API_ATOI_0(v65);
        if ( LOBYTE(v99[0]) == 255 )
          v67 = (const char *)v99[3];
        else
          v67 = (char *)v99 + 1;
        v68 = LC_API_ATOI_0(v67);
        gameswf::edit_text_character::append_image(a2, v75, v66, v68);
        gameswf::tu_string::~tu_string(v99);
        gameswf::tu_string::~tu_string(v101);
        gameswf::tu_string::~tu_string((void **)v75);
        v27 = v121;
      }
      else
      {
        v27 = v121;
      }
    }
    else
    {
      v27 = v121;
    }
    if ( v27 != -1 )
    {
LABEL_51:
      if ( v84 )
        gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v84);
      gameswf::hash<gameswf::tu_stringi,gameswf::tu_string,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::clear(&v92);
      v8 = *((_BYTE *)a2 + 312);
      goto LABEL_43;
    }
LABEL_61:
    gameswf::free_internal(v123);
    goto LABEL_51;
  }
}


// ===== 78efb8 gameswf::edit_text_character::format_text(bool) =====
void __fastcall gameswf::edit_text_character::format_text(gameswf::edit_text_character *this, int a2)
{
  gameswf::ref_counted *v4; // r1
  int v5; // r3
  int v6; // r5
  int v7; // r8
  int v8; // r6
  float v9; // r9
  int v10; // r3
  int v11; // r2
  float v12; // r1
  int v13; // r7
  int v14; // r5
  float v15; // r10
  int v16; // r2
  float v17; // r0
  int v18; // r5
  int v19; // r7
  int v20; // r6
  int v21; // r3
  gameswf::ref_counted *v22; // [sp+0h] [bp-10h] BYREF
  int v23; // [sp+4h] [bp-Ch]
  int v24; // [sp+8h] [bp-8h]
  char v25; // [sp+Ch] [bp-4h]

  *((_QWORD *)this + 28) = -1;
  *((_QWORD *)this + 27) = -1;
  gameswf::array<gameswf::text_glyph_record>::resize((_DWORD *)this + 41, 0);
  *((_DWORD *)this + 91) = -1;
  *((_DWORD *)this + 87) = 0;
  *((_DWORD *)this + 88) = 0;
  *((_DWORD *)this + 89) = 0;
  *((_DWORD *)this + 90) = 0;
  gameswf::edit_text_character::reset_bounding_box((float *)this, 0.0, 0.0);
  v4 = *((gameswf::ref_counted **)this + 94);
  if ( v4 )
  {
    if ( a2 )
    {
      v22 = nullptr;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      gameswf::html_reader::parse((gameswf::html_reader *)&v22, this);
      gameswf::array<gameswf::edit_text_character::text_attributes>::resize(&v22, 0);
      gameswf::array<gameswf::edit_text_character::text_attributes>::reserve((int)&v22, 0);
    }
    else
    {
      v21 = *((_DWORD *)this + 92);
      v23 = 12;
      v24 = v21;
      v22 = nullptr;
      v25 = 0;
      gameswf::smart_ptr<gameswf::font>::set_ref(&v22, v4);
      v23 = (int)*((float *)this + 93);
      gameswf::edit_text_character::append_text((int)this, (char *)this + 312, (int *)&v22, 0);
      if ( v22 )
        gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v22);
    }
    gameswf::edit_text_character::align_line(
      (int)this,
      *((_DWORD *)this + 95),
      *((_DWORD *)this + 89),
      *((float *)this + 87));
    v5 = *((_DWORD *)this + 40);
    v6 = *(unsigned __int8 *)(v5 + 73);
    if ( !*(_BYTE *)(v5 + 73) )
    {
      v7 = *((_DWORD *)this + 42);
      if ( v7 > 1 )
      {
        v8 = *((_DWORD *)this + 41);
        v9 = 0.0;
        v10 = v8 + v6;
        v11 = *(unsigned __int8 *)(v8 + v6 + 29);
        v12 = 0.0;
        v13 = v6 + 1;
        v14 = v6 + 48;
        if ( !v11 )
          goto LABEL_10;
LABEL_7:
        v15 = *(float *)(v10 + 20);
        if ( v15 <= v12 )
        {
LABEL_10:
          while ( 1 )
          {
            v15 = v9;
            if ( v13 == v7 )
              break;
LABEL_9:
            v10 = v8 + v14;
            v16 = *(unsigned __int8 *)(v8 + v14 + 29);
            v9 = v15;
            v12 = v15;
            ++v13;
            v14 += 48;
            if ( v16 )
              goto LABEL_7;
          }
        }
        else if ( v13 != v7 )
        {
          goto LABEL_9;
        }
        v17 = (float)(v15 * -0.5) + (float)((float)(*(float *)(v8 + 24) * -0.5) + *(float *)(v8 + 20));
        v18 = 0;
        v19 = 0;
        while ( 1 )
        {
          v20 = v8 + v18;
          ++v19;
          v18 += 48;
          if ( *(_BYTE *)(v20 + 29) )
          {
            *(float *)(v20 + 20) = *(float *)(v20 + 20) + v17;
            v7 = *((_DWORD *)this + 42);
          }
          if ( v19 >= v7 )
            break;
          v8 = *((_DWORD *)this + 41);
        }
      }
    }
    if ( *(_BYTE *)(gameswf::edit_text_character::get_root(this) + 135) )
      gameswf::edit_text_character::preload_glyphs(this);
  }
}


// ===== 78f1ec gameswf::edit_text_character::set_text(gameswf::tu_string const&,bool) =====
void __fastcall gameswf::edit_text_character::set_text(
        gameswf::edit_text_character *this,
        const gameswf::tu_string *a2,
        int a3)
{
  gameswf::tu_string *v3; // r6
  const char *v7; // r0
  const char *v8; // r1
  int v9; // r1
  int v10; // r3

  v3 = (gameswf::edit_text_character *)((char *)this + 312);
  if ( (gameswf::edit_text_character *)((char *)this + 312) != a2 )
  {
    v7 = *((unsigned __int8 *)this + 312) == 255 ? *((const char **)this + 81) : (char *)this + 313;
    v8 = *(char *)a2 == -1 ? *((const char **)a2 + 3) : (char *)a2 + 1;
    if ( LC_API_STRCMP_0(v7, v8) )
    {
      gameswf::tu_string::operator=(v3, (char *)a2);
      v9 = *(_DWORD *)(*((_DWORD *)this + 40) + 100);
      if ( v9 > 0 )
      {
        v10 = *((char *)this + 312);
        if ( v10 == -1 )
          v10 = *((_DWORD *)this + 79);
        if ( v9 < v10 - 1 )
          gameswf::tu_string::resize(v3, v9);
      }
      gameswf::edit_text_character::format_text(this, a3);
    }
  }
}


// ===== 78f288 gameswf::edit_text_character::reset_format(gameswf::as_textformat *) =====
int __fastcall gameswf::edit_text_character::reset_format(
        gameswf::edit_text_character *this,
        gameswf::as_textformat *a2)
{
  int v2; // r3
  int (__fastcall *v5)(gameswf::as_textformat *, _BYTE *, _BYTE *); // r10
  int v6; // r10
  int (__fastcall *v7)(gameswf::as_textformat *, _BYTE *, _BYTE *); // r10
  int v8; // r10
  int (__fastcall *v9)(gameswf::as_textformat *, _BYTE *, _BYTE *); // r10
  int v10; // r10
  int (__fastcall *v11)(gameswf::as_textformat *, _BYTE *, _BYTE *); // r10
  int v12; // r10
  int (__fastcall *v13)(gameswf::as_textformat *, _BYTE *, _BYTE *); // r10
  int v14; // r10
  int (__fastcall *v15)(gameswf::as_textformat *, _BYTE *, _BYTE *); // r10
  int v16; // r10
  int (__fastcall *v17)(gameswf::as_textformat *, _BYTE *, _BYTE *); // r10
  int v18; // r10
  int (__fastcall *v19)(gameswf::as_textformat *, _BYTE *, _BYTE *); // r10
  int v20; // r10
  int (__fastcall *v21)(gameswf::as_textformat *, _BYTE *, _BYTE *); // r10
  int v22; // r10
  int (__fastcall *v23)(gameswf::as_textformat *, _BYTE *, _BYTE *); // r10
  int v24; // r10
  int v25; // r10
  int v26; // r4
  int v27; // r1
  int v28; // r0
  gameswf::ref_counted *v29; // r4
  gameswf::player *player; // r4
  gameswf::font *v31; // r11
  double v33; // r0
  double v34; // r0
  double v35; // r0
  int v36; // r0
  const char *v37; // r0
  const char *v38; // r1
  char *v39; // r0
  char *v40; // r0
  const char *v41; // r0
  char *v42; // r0
  char *v43; // r0
  char *v44; // r0
  double v45; // r0
  double v46; // r0
  double v47; // r0
  double v48; // r0
  gameswf::ref_counted *v49; // r1
  int (__fastcall *v50)(gameswf::as_textformat *, _BYTE *, _BYTE *); // [sp+0h] [bp-10Ch]
  int v51; // [sp+4h] [bp-108h]
  _BYTE v52[12]; // [sp+8h] [bp-104h] BYREF
  _BYTE v53[8]; // [sp+14h] [bp-F8h] BYREF
  void *v54; // [sp+20h] [bp-ECh]
  _BYTE v55[8]; // [sp+28h] [bp-E4h] BYREF
  void *v56; // [sp+34h] [bp-D8h]
  _BYTE v57[8]; // [sp+3Ch] [bp-D0h] BYREF
  void *v58; // [sp+48h] [bp-C4h]
  char v59; // [sp+50h] [bp-BCh] BYREF
  _BYTE v60[3]; // [sp+51h] [bp-BBh] BYREF
  char *v61; // [sp+5Ch] [bp-B0h]
  _BYTE v62[8]; // [sp+64h] [bp-A8h] BYREF
  void *v63; // [sp+70h] [bp-9Ch]
  _BYTE v64[8]; // [sp+78h] [bp-94h] BYREF
  void *v65; // [sp+84h] [bp-88h]
  _BYTE v66[8]; // [sp+8Ch] [bp-80h] BYREF
  void *v67; // [sp+98h] [bp-74h]
  _BYTE v68[8]; // [sp+A0h] [bp-6Ch] BYREF
  void *v69; // [sp+ACh] [bp-60h]
  _BYTE v70[8]; // [sp+B4h] [bp-58h] BYREF
  void *v71; // [sp+C0h] [bp-4Ch]
  _BYTE v72[8]; // [sp+C8h] [bp-44h] BYREF
  void *v73; // [sp+D4h] [bp-38h]
  _BYTE v74[8]; // [sp+DCh] [bp-30h] BYREF
  void *v75; // [sp+E8h] [bp-24h]
  _BYTE v76[8]; // [sp+F0h] [bp-1Ch] BYREF
  void *p; // [sp+FCh] [bp-10h]

  v2 = *(_DWORD *)a2;
  v52[1] = 0;
  v52[0] = 0;
  v5 = *(int (__fastcall **)(gameswf::as_textformat *, _BYTE *, _BYTE *))(v2 + 32);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v76, "leftMargin");
  v6 = v5(a2, v76, v52);
  if ( v76[0] == -1 )
    gameswf::free_internal(p);
  if ( v6 )
  {
    LODWORD(v33) = gameswf::as_value::to_number((gameswf::as_value *)v52);
    *(float *)&v33 = v33;
    *((float *)this + 96) = *(float *)&v33 * 20.0;
  }
  v7 = *(int (__fastcall **)(gameswf::as_textformat *, _BYTE *, _BYTE *))(*(_DWORD *)a2 + 32);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v74, "indent");
  v8 = v7(a2, v74, v52);
  if ( v74[0] == -1 )
    gameswf::free_internal(v75);
  if ( v8 )
  {
    LODWORD(v35) = gameswf::as_value::to_number((gameswf::as_value *)v52);
    *(float *)&v35 = v35;
    *((float *)this + 98) = *(float *)&v35 * 20.0;
  }
  v9 = *(int (__fastcall **)(gameswf::as_textformat *, _BYTE *, _BYTE *))(*(_DWORD *)a2 + 32);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v72, "rightMargin");
  v10 = v9(a2, v72, v52);
  if ( v72[0] == -1 )
    gameswf::free_internal(v73);
  if ( v10 )
  {
    LODWORD(v34) = gameswf::as_value::to_number((gameswf::as_value *)v52);
    *(float *)&v34 = v34;
    *((float *)this + 97) = *(float *)&v34 * 20.0;
  }
  v11 = *(int (__fastcall **)(gameswf::as_textformat *, _BYTE *, _BYTE *))(*(_DWORD *)a2 + 32);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v70, "leading");
  v12 = v11(a2, v70, v52);
  if ( v70[0] == -1 )
    gameswf::free_internal(v71);
  if ( v12 )
  {
    LODWORD(v48) = gameswf::as_value::to_number((gameswf::as_value *)v52);
    *(float *)&v48 = v48;
    *((float *)this + 99) = *(float *)&v48 * 20.0;
  }
  v13 = *(int (__fastcall **)(gameswf::as_textformat *, _BYTE *, _BYTE *))(*(_DWORD *)a2 + 32);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v68, "letterSpacing");
  v14 = v13(a2, v68, v52);
  if ( v68[0] == -1 )
    gameswf::free_internal(v69);
  if ( v14 )
  {
    LODWORD(v47) = gameswf::as_value::to_number((gameswf::as_value *)v52);
    *(float *)&v47 = v47;
    *((float *)this + 100) = *(float *)&v47 * 20.0;
  }
  v15 = *(int (__fastcall **)(gameswf::as_textformat *, _BYTE *, _BYTE *))(*(_DWORD *)a2 + 32);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v66, "color");
  v16 = v15(a2, v66, v52);
  if ( v66[0] == -1 )
    gameswf::free_internal(v67);
  if ( v16 )
  {
    LODWORD(v46) = gameswf::as_value::to_number((gameswf::as_value *)v52);
    LODWORD(v46) = (int)v46;
    *((_BYTE *)this + 369) = BYTE1(v46);
    *((_BYTE *)this + 368) = BYTE2(v46);
    *((_BYTE *)this + 370) = LOBYTE(v46);
    *((_BYTE *)this + 371) = -1;
  }
  v17 = *(int (__fastcall **)(gameswf::as_textformat *, _BYTE *, _BYTE *))(*(_DWORD *)a2 + 32);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v64, "size");
  v18 = v17(a2, v64, v52);
  if ( v64[0] == -1 )
    gameswf::free_internal(v65);
  if ( v18 )
  {
    LODWORD(v45) = gameswf::as_value::to_number((gameswf::as_value *)v52);
    *(float *)&v45 = v45;
    *((float *)this + 93) = *(float *)&v45 * 20.0;
  }
  v19 = *(int (__fastcall **)(gameswf::as_textformat *, _BYTE *, _BYTE *))(*(_DWORD *)a2 + 32);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v62, "align");
  v20 = v19(a2, v62, v52);
  if ( v62[0] == -1 )
    gameswf::free_internal(v63);
  if ( v20 )
  {
    v40 = gameswf::as_value::to_tu_string((gameswf::as_value *)v52);
    if ( *v40 == -1 )
      v41 = *((const char **)v40 + 3);
    else
      v41 = v40 + 1;
    if ( LC_API_STRCMP_0(v41, "left") )
    {
      v42 = gameswf::as_value::to_tu_string((gameswf::as_value *)v52);
      if ( gameswf::tu_string::operator==(v42, "center") )
      {
        *((_DWORD *)this + 95) = 2;
      }
      else
      {
        v43 = gameswf::as_value::to_tu_string((gameswf::as_value *)v52);
        if ( gameswf::tu_string::operator==(v43, "right") )
        {
          *((_DWORD *)this + 95) = 1;
        }
        else
        {
          v44 = gameswf::as_value::to_tu_string((gameswf::as_value *)v52);
          if ( gameswf::tu_string::operator==(v44, "justify") )
            *((_DWORD *)this + 95) = 3;
        }
      }
    }
    else
    {
      *((_DWORD *)this + 95) = 0;
    }
  }
  gameswf::tu_string::tu_string((gameswf::tu_string *)&v59, (const gameswf::tu_string *)(*((_DWORD *)this + 94) + 48));
  v21 = *(int (__fastcall **)(gameswf::as_textformat *, _BYTE *, _BYTE *))(*(_DWORD *)a2 + 32);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v57, "font");
  v22 = v21(a2, v57, v52);
  if ( v57[0] == -1 )
    gameswf::free_internal(v58);
  if ( v22 )
  {
    v39 = gameswf::as_value::to_tu_string((gameswf::as_value *)v52);
    gameswf::tu_string::operator=((gameswf::tu_string *)&v59, v39);
  }
  v23 = *(int (__fastcall **)(gameswf::as_textformat *, _BYTE *, _BYTE *))(*(_DWORD *)a2 + 32);
  v51 = *(unsigned __int8 *)(*((_DWORD *)this + 94) + 77);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v55, "bold");
  v24 = v23(a2, v55, v52);
  if ( v55[0] == -1 )
    gameswf::free_internal(v56);
  if ( v24 )
    v51 = gameswf::as_value::to_bool((gameswf::as_value *)v52);
  v25 = *(unsigned __int8 *)(*((_DWORD *)this + 94) + 76);
  v50 = *(int (__fastcall **)(gameswf::as_textformat *, _BYTE *, _BYTE *))(*(_DWORD *)a2 + 32);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v53, "italic");
  v26 = v50(a2, v53, v52);
  if ( v53[0] == -1 )
    gameswf::free_internal(v54);
  if ( !v26 )
  {
    v27 = *((_DWORD *)this + 94);
    if ( *(unsigned __int8 *)(v27 + 76) != v25 )
      goto LABEL_44;
LABEL_52:
    if ( *(unsigned __int8 *)(v27 + 77) == v51 )
    {
      v37 = v59 == -1 ? v61 : v60;
      v38 = *(char *)(v27 + 48) == -1 ? *(const char **)(v27 + 60) : (const char *)(v27 + 49);
      if ( !LC_API_STRCMP_0(v37, v38) )
        goto LABEL_48;
    }
    goto LABEL_44;
  }
  v36 = gameswf::as_value::to_bool((gameswf::as_value *)v52);
  v27 = *((_DWORD *)this + 94);
  LOBYTE(v25) = v36;
  if ( *(unsigned __int8 *)(v27 + 76) == v36 )
    goto LABEL_52;
LABEL_44:
  v28 = (*(int (__fastcall **)(gameswf::edit_text_character *, char *))(*(_DWORD *)this + 132))(this, &v59);
  v29 = (gameswf::ref_counted *)v28;
  if ( v28 && (*(int (__fastcall **)(int, int))(*(_DWORD *)v28 + 8))(v28, 19) )
  {
    if ( (*(int (__fastcall **)(gameswf::ref_counted *, int))(*(_DWORD *)v29 + 8))(v29, 19) )
      v49 = v29;
    else
      v49 = nullptr;
    gameswf::smart_ptr<gameswf::font>::set_ref((gameswf::ref_counted **)this + 94, v49);
  }
  else
  {
    player = (gameswf::player *)gameswf::as_object::get_player(this);
    v31 = (gameswf::font *)operator new(0x88u, 0);
    gameswf::font::font(v31, player);
    gameswf::smart_ptr<gameswf::font>::set_ref((gameswf::ref_counted **)this + 94, v31);
  }
  *(_BYTE *)(*((_DWORD *)this + 94) + 77) = v51;
  *(_BYTE *)(*((_DWORD *)this + 94) + 76) = v25;
  gameswf::tu_string::operator=((gameswf::tu_string *)(*((_DWORD *)this + 94) + 48), &v59);
LABEL_48:
  gameswf::edit_text_character::format_text(this, 0);
  if ( v59 == -1 )
    gameswf::free_internal(v61);
  return gameswf::as_value::drop_refs((gameswf::as_value *)v52);
}


// ===== 78f9f0 gameswf::set_textformat(gameswf::fn_call const&) =====
int __fastcall gameswf::set_textformat(int this, const gameswf::fn_call *a2)
{
  gameswf::edit_text_character *v2; // r5
  int v3; // r4
  int v4; // r3
  gameswf::as_textformat *v5; // r1
  gameswf::as_textformat *v6; // r4

  v2 = *(gameswf::edit_text_character **)(this + 4);
  v3 = this;
  if ( v2 && (this = (*(int (__fastcall **)(_DWORD, int))(*(_DWORD *)v2 + 8))(*(_DWORD *)(this + 4), 32)) != 0 )
  {
    if ( *(_DWORD *)(v3 + 16) != 1 )
      return this;
  }
  else
  {
    v2 = nullptr;
    if ( *(_DWORD *)(v3 + 16) != 1 )
      return this;
  }
  v4 = **(_DWORD **)(v3 + 12) + 12 * *(_DWORD *)(v3 + 20);
  if ( *(_BYTE *)(v4 + 1) == 5
    && (v6 = *(gameswf::as_textformat **)(v4 + 4)) != nullptr
    && (*(int (__fastcall **)(gameswf::as_textformat *, int))(*(_DWORD *)v6 + 8))(v6, 35) )
  {
    v5 = v6;
  }
  else
  {
    v5 = nullptr;
  }
  return gameswf::edit_text_character::reset_format(v2, v5);
}


// ===== 78faa0 gameswf::display_glyph_records(gameswf::matrix const*,gameswf::character *,gameswf::array<gameswf::text_glyph_record> &,gameswf::movie_definition_sub *,gameswf::rgba *,uchar,uchar,uchar) =====
void __fastcall gameswf::display_glyph_records(
        float *a1,
        gameswf::character *a2,
        _DWORD *a3,
        gameswf::movie_definition_sub *a4,
        char *a5,
        unsigned __int8 a6,
        unsigned __int8 a7,
        unsigned __int8 a8)
{
  int v10; // r10
  int v11; // r3
  _BYTE *v12; // r0
  int v13; // r5
  char *world_matrix; // r0
  float v15; // r1
  float v16; // r2
  float v17; // r3
  float v18; // r1
  float v19; // r7
  float v20; // r6
  float v21; // r8
  float v22; // r9
  float v23; // r4
  _BOOL4 v24; // r4
  _BOOL4 v25; // r2
  float v26; // r4
  float v27; // r8
  int v28; // r5
  float v29; // lr
  float v30; // r9
  _BYTE *v31; // r3
  char v32; // r0
  char v33; // r1
  char v34; // r12
  char v35; // r1
  char v36; // r0
  char v37; // r2
  int v38; // r6
  int v39; // r4
  int v40; // r7
  int v41; // r4
  float v42; // r11
  float v43; // r11
  float v44; // r11
  float v45; // r11
  int v46; // r3
  bool v47; // zf
  int *v48; // r11
  int v49; // r3
  int *v50; // r0
  float v51; // r11
  float v52; // r11
  float v53; // r11
  int v54; // r1
  _DWORD *glyph_by_index; // r0
  int v56; // r2
  float v57; // r0
  float v58; // r0
  float v59; // r1
  float v60; // r0
  int v61; // [sp+8h] [bp-1FCh]
  int v62; // [sp+8h] [bp-1FCh]
  float v63; // [sp+8h] [bp-1FCh]
  float v64; // [sp+8h] [bp-1FCh]
  float v65; // [sp+8h] [bp-1FCh]
  float v66; // [sp+8h] [bp-1FCh]
  float v67; // [sp+18h] [bp-1ECh]
  _BOOL4 v68; // [sp+1Ch] [bp-1E8h]
  float v69; // [sp+20h] [bp-1E4h]
  float v70; // [sp+20h] [bp-1E4h]
  float v71; // [sp+24h] [bp-1E0h]
  gameswf::font *v72; // [sp+28h] [bp-1DCh]
  float v73; // [sp+30h] [bp-1D4h]
  int v74; // [sp+34h] [bp-1D0h]
  int v75; // [sp+3Ch] [bp-1C8h]
  float v76; // [sp+40h] [bp-1C4h]
  gameswf::bitmap_glyph_texture_cache *v78; // [sp+48h] [bp-1BCh]
  char *world_cxform; // [sp+54h] [bp-1B0h]
  float v81; // [sp+68h] [bp-19Ch]
  float v82; // [sp+7Ch] [bp-188h]
  float v83; // [sp+88h] [bp-17Ch]
  float v84; // [sp+88h] [bp-17Ch]
  float v85; // [sp+8Ch] [bp-178h]
  float v86; // [sp+90h] [bp-174h]
  float v87; // [sp+94h] [bp-170h]
  _DWORD v88[3]; // [sp+A4h] [bp-160h] BYREF
  int v89; // [sp+B0h] [bp-154h] BYREF
  _BYTE v90[84]; // [sp+110h] [bp-F4h] BYREF
  float v91; // [sp+164h] [bp-A0h]
  float v92; // [sp+168h] [bp-9Ch]
  float v93; // [sp+16Ch] [bp-98h]
  float v94; // [sp+170h] [bp-94h]
  float v95; // [sp+174h] [bp-90h]
  float v96; // [sp+178h] [bp-8Ch]
  float v97; // [sp+17Ch] [bp-88h] BYREF
  float v98; // [sp+180h] [bp-84h]
  float v99; // [sp+184h] [bp-80h]
  float v100; // [sp+188h] [bp-7Ch]
  float v101; // [sp+18Ch] [bp-78h]
  float v102; // [sp+190h] [bp-74h]
  float v103[2]; // [sp+194h] [bp-70h] BYREF
  float v104; // [sp+19Ch] [bp-68h]
  float v105; // [sp+1A4h] [bp-60h] BYREF
  int v106; // [sp+1A8h] [bp-5Ch]
  float v107; // [sp+1ACh] [bp-58h]
  int v108; // [sp+1B0h] [bp-54h]
  float v109; // [sp+1B4h] [bp-50h] BYREF
  float v110; // [sp+1B8h] [bp-4Ch]
  float v111; // [sp+1BCh] [bp-48h]
  float v112; // [sp+1C0h] [bp-44h]
  float v113; // [sp+1C4h] [bp-40h] BYREF
  float v114; // [sp+1C8h] [bp-3Ch]
  float v115; // [sp+1CCh] [bp-38h]
  float v116; // [sp+1D0h] [bp-34h]
  _DWORD v117[3]; // [sp+1D4h] [bp-30h] BYREF
  char v118; // [sp+1E0h] [bp-24h]
  _DWORD v119[3]; // [sp+1E4h] [bp-20h] BYREF
  char v120; // [sp+1F0h] [bp-14h]
  int v121; // [sp+1F4h] [bp-10h]
  _BYTE v122[4]; // [sp+1F8h] [bp-Ch] BYREF
  _BYTE v123[8]; // [sp+1FCh] [bp-8h] BYREF

  v10 = gameswf::s_render_handler;
  if ( gameswf::s_render_handler )
  {
    v11 = *((_DWORD *)a2 + 12);
    if ( v11 )
    {
      v12 = *((_BYTE **)a2 + 11);
      if ( !v12[4] )
      {
        v47 = (*(_DWORD *)v12)-- == 1;
        if ( v47 )
          gameswf::free_internal(v12);
        v11 = 0;
        *((_DWORD *)a2 + 11) = 0;
        *((_DWORD *)a2 + 12) = 0;
      }
    }
    v13 = *(_DWORD *)(v11 + 172);
    v75 = *(_DWORD *)(*(_DWORD *)(v13 + 12) + 40);
    v78 = *(gameswf::bitmap_glyph_texture_cache **)(*(_DWORD *)(v13 + 16) + 12);
    v122[1] = a7;
    v122[2] = a8;
    v123[0] = 0;
    v123[1] = 0;
    v123[2] = 0;
    v122[0] = 0;
    gameswf::fill_style::fill_style((int)v90);
    gameswf::line_style::line_style((gameswf::line_style *)v88);
    v119[0] = v90;
    v119[2] = 1;
    v120 = 1;
    v117[0] = v88;
    v117[2] = 1;
    v118 = 1;
    v117[1] = 0;
    v119[1] = 0;
    gameswf::array<gameswf::fill_style>::resize(v119, 1);
    world_matrix = gameswf::character::get_world_matrix(a2);
    v15 = *((float *)world_matrix + 1);
    v16 = *((float *)world_matrix + 2);
    v17 = *((float *)world_matrix + 3);
    v97 = *(float *)world_matrix;
    v98 = v15;
    v99 = v16;
    v100 = v17;
    v18 = *((float *)world_matrix + 5);
    v101 = *((float *)world_matrix + 4);
    v102 = v18;
    if ( a1 )
      gameswf::matrix::concatenate(&v97, a1);
    world_cxform = gameswf::character::get_world_cxform(a2);
    v82 = COERCE_FLOAT((*(int (__fastcall **)(gameswf::character *))(*(_DWORD *)a2 + 120))(a2));
    v91 = v97;
    v92 = v98;
    v93 = v99;
    v94 = v100;
    v95 = v101;
    v96 = v102;
    v19 = v97;
    v20 = v98;
    v21 = v100;
    v22 = v101;
    v23 = (float)(v94 * v94) + (float)(v95 * v95);
    if ( (float)((float)(v91 * v91) + (float)(v92 * v92)) >= v23 )
      v23 = (float)(v91 * v91) + (float)(v92 * v92);
    if ( v23 < 0.0 )
      sqrtf(v23);
    v24 = v20 != 0.0 || v21 != 0.0;
    v25 = v19 != 1.0 || v22 != 1.0;
    if ( v24 )
      v25 = 1;
    v68 = v25;
    v26 = *(float *)(*(_DWORD *)(v13 + 12) + 4);
    v81 = v26 * 1024.0;
    v87 = (float)((float)a7 + (float)a7) * v26;
    v86 = (float)((float)a8 + (float)a8) * v26;
    v85 = (float)((float)a6 + (float)a6) * v26;
    if ( (int)a3[1] > 0 )
    {
      v67 = 0.0;
      v74 = 0;
      v27 = 0.0;
      do
      {
        v28 = *a3 + 48 * v74;
        gameswf::text_style::resolve_font((gameswf::ref_counted **)v28, a4);
        v72 = *(gameswf::font **)(v28 + 4);
        if ( v72 )
        {
          v30 = *(float *)(v28 + 24) / v81;
          if ( *((_DWORD *)v72 + 31) )
            v30 = (float)(*(float *)(v28 + 24) / v81) / 20.0;
        }
        else
        {
          if ( *(_BYTE *)(v28 + 30) )
            goto LABEL_65;
          v30 = *(float *)(v28 + 24) / v81;
        }
        if ( *(_BYTE *)(v28 + 28) )
          v27 = *(float *)(v28 + 16);
        if ( *(_BYTE *)(v28 + 29) )
          v29 = *(float *)(v28 + 20);
        v31 = (_BYTE *)v119[0];
        if ( *(_BYTE *)(v28 + 29) )
          v67 = v29;
        v32 = *(_BYTE *)(v28 + 10);
        v33 = *(_BYTE *)(v28 + 11);
        v34 = *(_BYTE *)(v28 + 8);
        *(_BYTE *)(v119[0] + 9) = *(_BYTE *)(v28 + 9);
        v31[10] = v32;
        v31[8] = v34;
        v31[11] = v33;
        v121 = gameswf::cxform::transform(world_cxform, *(_DWORD *)(v28 + 8));
        if ( a5 )
        {
          v35 = a5[1];
          v36 = *a5;
          v37 = a5[2];
          HIBYTE(v121) = (int)((unsigned __int64)(2155905153LL * HIBYTE(v121) * (unsigned __int8)a5[3]) >> 32) >> 7;
          LOBYTE(v121) = v36;
          BYTE1(v121) = v35;
          BYTE2(v121) = v37;
        }
        if ( *(int *)(v28 + 36) > 0 )
        {
          v38 = 0;
          v39 = *(_DWORD *)(v28 + 32);
          v40 = 0;
          do
          {
            v41 = v39 + v38;
            v97 = v91;
            v98 = v92;
            v99 = v93;
            v100 = v94;
            v101 = v95;
            v102 = v96;
            if ( v68 )
            {
              v52 = (float)((float)(v27 * v97) + (float)(v67 * v98)) + v99;
              if ( (float)((float)((float)(v27 * v97) + (float)(v67 * v98)) + v99) < -3.4028e38 || v52 > 3.4028e38 )
                v52 = 0.0;
              v99 = v52;
              v53 = (float)((float)(v27 * v100) + (float)(v67 * v101)) + v102;
              if ( v53 < -3.4028e38 || v53 > 3.4028e38 )
                v53 = 0.0;
              v102 = v53;
              gameswf::matrix::concatenate_scale((gameswf::matrix *)&v97, v30);
              if ( *(__int16 *)(v41 + 30) != -1 )
                goto LABEL_44;
            }
            else
            {
              v42 = v27 + v99;
              if ( (float)(v27 + v99) < -3.4028e38 || v42 > 3.4028e38 )
                v42 = 0.0;
              v99 = v42;
              v43 = v67 + v102;
              if ( (float)(v67 + v102) < -3.4028e38 || v43 > 3.4028e38 )
                v43 = 0.0;
              v102 = v43;
              v44 = v30 * v97;
              if ( (float)(v30 * v97) < -3.4028e38 || v44 > 3.4028e38 )
                v44 = 0.0;
              v97 = v44;
              v45 = v30 * v101;
              if ( (float)(v30 * v101) < -3.4028e38 || v45 > 3.4028e38 )
                v45 = 0.0;
              v101 = v45;
              if ( *(__int16 *)(v41 + 30) != -1 )
                goto LABEL_44;
            }
            if ( !*(_DWORD *)(v41 + 4) )
            {
              (*(void (__fastcall **)(int, float *))(*(_DWORD *)v10 + 80))(v10, &v97);
              (*(void (__fastcall **)(int, int))(*(_DWORD *)v10 + 120))(v10, v121);
              (*(void (__fastcall **)(int, void *, int))(*(_DWORD *)v10 + 96))(
                v10,
                &gameswf::display_glyph_records(gameswf::matrix const*,gameswf::character *,gameswf::array<gameswf::text_glyph_record> &,gameswf::movie_definition_sub *,gameswf::rgba *,unsigned char,unsigned char,unsigned char)::s_empty_char_box,
                5);
              goto LABEL_64;
            }
LABEL_44:
            if ( *(_BYTE *)(v28 + 12) )
            {
              (*(void (__fastcall **)(int, float *))(*(_DWORD *)v10 + 80))(v10, &v97);
              (*(void (__fastcall **)(int, int))(*(_DWORD *)v10 + 120))(v10, v121);
              v107 = 0.0;
              v105 = 0.0;
              v108 = 1114636288;
              v106 = 1114636288;
              v107 = *(float *)(*(_DWORD *)(v28 + 32) + v38) / v30;
              (*(void (__fastcall **)(int, float *, int))(*(_DWORD *)v10 + 96))(v10, &v105, 2);
              if ( !*(_DWORD *)(v41 + 4) )
              {
LABEL_81:
                v54 = *(__int16 *)(v41 + 30);
                if ( v54 >= 0 )
                {
                  glyph_by_index = (_DWORD *)gameswf::font::get_glyph_by_index(v72, v54);
                  if ( glyph_by_index )
                    gameswf::shape_character_def::display(glyph_by_index, &v97, (int)world_cxform, v82, v119, v117);
                }
                goto LABEL_64;
              }
            }
            else if ( !*(_DWORD *)(v41 + 4) )
            {
              goto LABEL_81;
            }
            if ( *(_BYTE *)(v41 + 34) == 2 )
            {
              v105 = 0.0;
              LODWORD(v107) = *(_DWORD *)(v41 + 20) + 0x80000000;
              v56 = *(_DWORD *)(v41 + 12);
              v116 = 1.0;
              v108 = 0;
              v113 = 0.0;
              v115 = 0.0;
              v114 = 1.0;
              v106 = v56;
              (*(void (__fastcall **)(int, float *, _DWORD, float *, float *, int))(*(_DWORD *)v10 + 128))(
                v10,
                &v97,
                *(_DWORD *)(v41 + 4),
                &v105,
                &v113,
                v121);
            }
            else if ( *(float *)(v41 + 12) > 0.0 && *(float *)(v41 + 20) > 0.0 )
            {
              v114 = *(float *)(v41 + 12) - *(float *)(v41 + 8);
              v116 = *(float *)(v41 + 20) - *(float *)(v41 + 16);
              LODWORD(v113) = *(_DWORD *)(v41 + 8) + 0x80000000;
              LODWORD(v115) = *(_DWORD *)(v41 + 16) + 0x80000000;
              v69 = 1024.0 / (float)*(unsigned __int16 *)(v41 + 28);
              v46 = *(unsigned __int16 *)(v41 + 28);
              v47 = v75 == 0;
              if ( !v75 )
                v47 = v78 == nullptr;
              if ( v47 )
              {
                v109 = 0.0;
                v111 = 0.0;
                v110 = *(float *)(v41 + 12);
                v112 = *(float *)(v41 + 20);
                v73 = (float)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v41 + 4) + 36))(*(_DWORD *)(v41 + 4)) * v69;
                v70 = (float)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v41 + 4) + 40))(*(_DWORD *)(v41 + 4)) * v69;
              }
              else
              {
                v48 = *(int **)(v41 + 4);
                if ( v48 == *(int **)(v75 + 52) )
                  gameswf::glyph_texture_cache::get_glyph_region(
                    v75,
                    *(unsigned __int16 *)(v41 + 32),
                    *(_DWORD *)(v41 + 24),
                    v46,
                    v123,
                    &v109);
                else
                  gameswf::bitmap_glyph_texture_cache::get_glyph_region(
                    v78,
                    *(_WORD *)(v41 + 32),
                    *(void **)(v41 + 24),
                    v46,
                    (gameswf::rect *)&v109);
                v73 = v69 * (float)(v110 - v109);
                v70 = v69 * (float)(v112 - v111);
                if ( a8 | a7 && v48 == *(int **)(v75 + 52) )
                {
                  gameswf::glyph_texture_cache::get_glyph_region(
                    v75,
                    *(unsigned __int16 *)(v41 + 32),
                    *(_DWORD *)(v41 + 24),
                    *(unsigned __int16 *)(v41 + 28),
                    v122,
                    &v105);
                  v63 = v110 - v109;
                  v71 = v105;
                  v109 = v105;
                  v57 = v112 - v111;
                  v110 = v63 + v105;
                  v64 = v63 + v105;
                  v111 = v107;
                  v76 = v57 + v107;
                  v83 = (float)(v57 + v107) - v107;
                  v112 = v57 + v107;
                  v114 = v114 + (float)(v87 / (float)(v64 - v105));
                  v116 = v116 + (float)(v86 / v83);
                  v110 = v64 - (float)((float)((float)(1.0 - *(float *)(v41 + 12)) * (float)(v64 - v105)) - v87);
                  v58 = (float)(1.0 - *(float *)(v41 + 20)) * v83;
                  v59 = v86;
                }
                else
                {
                  if ( !a6 || v48 != *(int **)(v75 + 52) )
                  {
                    v110 = v110 - (float)((float)(1.0 - *(float *)(v41 + 12)) * (float)(v110 - v109));
                    v112 = v112 - (float)((float)(1.0 - *(float *)(v41 + 20)) * (float)(v112 - v111));
                    v71 = v109;
                    goto LABEL_59;
                  }
                  LOBYTE(v105) = a6;
                  *(_WORD *)((char *)&v105 + 1) = 0;
                  gameswf::glyph_texture_cache::get_glyph_region(
                    v75,
                    *(unsigned __int16 *)(v41 + 32),
                    *(_DWORD *)(v41 + 24),
                    *(unsigned __int16 *)(v41 + 28),
                    &v105,
                    v103);
                  v65 = v110 - v109;
                  v71 = v103[0];
                  v109 = v103[0];
                  v60 = v112 - v111;
                  v110 = v65 + v103[0];
                  v66 = v65 + v103[0];
                  v111 = v104;
                  v76 = v60 + v104;
                  v84 = (float)(v60 + v104) - v104;
                  v112 = v60 + v104;
                  v114 = v114 + (float)(v85 / (float)(v66 - v103[0]));
                  v116 = v116 + (float)(v85 / v84);
                  v110 = v66 - (float)((float)((float)(1.0 - *(float *)(v41 + 12)) * (float)(v66 - v103[0])) - v85);
                  v58 = (float)(1.0 - *(float *)(v41 + 20)) * v84;
                  v59 = v85;
                }
                v112 = v76 - (float)(v58 - v59);
LABEL_59:
                v109 = v71 / (float)(*(int (__fastcall **)(int *))(*v48 + 36))(v48);
                *(float *)&v61 = v111;
                v111 = *(float *)&v61 / (float)(*(int (__fastcall **)(int *))(*v48 + 40))(v48);
                *(float *)&v62 = v110;
                v110 = *(float *)&v62 / (float)(*(int (__fastcall **)(int *))(*v48 + 36))(v48);
                v49 = *v48;
                v50 = v48;
                v51 = v112;
                v112 = v51 / (float)(*(int (__fastcall **)(int *))(v49 + 40))(v50);
              }
              if ( v72 )
              {
                if ( *((_DWORD *)v72 + 31) )
                {
                  v73 = v73 * 20.0;
                  v70 = v70 * 20.0;
                }
              }
              v113 = v113 * v73;
              v114 = v114 * v73;
              v115 = v115 * v70;
              v116 = v116 * v70;
              (*(void (__fastcall **)(int, float *, _DWORD, float *, float *, int))(*(_DWORD *)v10 + 128))(
                v10,
                &v97,
                *(_DWORD *)(v41 + 4),
                &v113,
                &v109,
                v121);
            }
LABEL_64:
            v39 = *(_DWORD *)(v28 + 32);
            ++v40;
            v27 = v27 + *(float *)(v39 + v38);
            v38 += 36;
          }
          while ( v40 < *(_DWORD *)(v28 + 36) );
        }
LABEL_65:
        ++v74;
      }
      while ( v74 < a3[1] );
    }
    gameswf::array<gameswf::line_style>::resize((gameswf::line_style *)v117);
    gameswf::array<gameswf::line_style>::reserve((int)v117, 0);
    gameswf::array<gameswf::fill_style>::resize(v119, 0);
    gameswf::array<gameswf::fill_style>::reserve((int)v119, 0);
    v88[0] = off_9908E8;
    gameswf::fill_style::~fill_style((gameswf::fill_style *)&v89);
    v88[0] = off_98FEB8;
    gameswf::fill_style::~fill_style((gameswf::fill_style *)v90);
  }
}


// ===== 790a7c gameswf::text_character_def::display(gameswf::character *) =====
void __fastcall gameswf::text_character_def::display(gameswf::text_character_def *this, gameswf::character *a2)
{
  gameswf::display_glyph_records(
    (float *)this + 13,
    a2,
    (_DWORD *)this + 19,
    *((gameswf::movie_definition_sub **)this + 8),
    nullptr,
    0,
    0,
    0);
}


// ===== 790ab0 gameswf::edit_text_character::set_text_value(gameswf::tu_string const&,bool) =====
void __fastcall gameswf::edit_text_character::set_text_value(
        gameswf::player ***this,
        const gameswf::tu_string *a2,
        bool a3)
{
  char *var_name; // r0
  int v6; // r3
  gameswf::player **target; // r7
  _BYTE *v8; // r0
  const gameswf::tu_string *v9; // r0
  gameswf::as_environment *v10; // r0
  gameswf::tu_string *v11; // r3
  char *v12; // r1
  void (__fastcall *v13)(gameswf::player **, _BYTE *, _BYTE *); // r8
  const char *v14; // r1
  _BYTE v16[12]; // [sp+4h] [bp-4Ch] BYREF
  _BYTE v17[8]; // [sp+10h] [bp-40h] BYREF
  void *p; // [sp+1Ch] [bp-34h]
  _BYTE v19[8]; // [sp+24h] [bp-2Ch] BYREF
  void *v20; // [sp+30h] [bp-20h]
  char v21; // [sp+38h] [bp-18h] BYREF
  char v22; // [sp+39h] [bp-17h] BYREF
  char *v23; // [sp+44h] [bp-Ch]
  unsigned int v24; // [sp+48h] [bp-8h]

  gameswf::edit_text_character::set_text((gameswf::edit_text_character *)this, a2, a3);
  var_name = (char *)gameswf::edit_text_character::get_var_name((gameswf::edit_text_character *)this);
  v6 = *var_name;
  if ( v6 == -1 )
    v6 = *((_DWORD *)var_name + 1);
  if ( v6 - 1 > 0 )
  {
    target = *(this + 16);
    if ( target )
    {
      v8 = *(this + 15);
      if ( !v8[4] )
      {
        if ( (*(_DWORD *)v8)-- == 1 )
          gameswf::free_internal(v8);
        target = nullptr;
        *(this + 15) = nullptr;
        *(this + 16) = nullptr;
      }
    }
    v24 = v24 & 0xFF000000 | 0xFFFFFF;
    v21 = 1;
    v22 = 0;
    HIBYTE(v24) &= ~1u;
    v9 = (const gameswf::tu_string *)gameswf::edit_text_character::get_var_name((gameswf::edit_text_character *)this);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v19, v9);
    v10 = (gameswf::as_environment *)gameswf::edit_text_character::get_var_name((gameswf::edit_text_character *)this);
    if ( gameswf::as_environment::parse_path(v10, (const gameswf::tu_string *)&v21, (gameswf::tu_string *)v19, v11) )
    {
      if ( v21 == -1 )
        v12 = v23;
      else
        v12 = &v22;
      target = (gameswf::player **)gameswf::as_object::find_target(target, v12);
    }
    if ( target )
    {
      v13 = *((void (__fastcall **)(gameswf::player **, _BYTE *, _BYTE *))*target + 7);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v17, (const gameswf::tu_string *)v19);
      if ( *(char *)a2 == -1 )
        v14 = *((const char **)a2 + 3);
      else
        v14 = (char *)a2 + 1;
      v16[1] = 0;
      v16[0] = 0;
      gameswf::as_value::set_string((gameswf::as_value *)v16, v14);
      v13(target, v17, v16);
      gameswf::as_value::drop_refs((gameswf::as_value *)v16);
      if ( v17[0] == -1 )
        gameswf::free_internal(p);
    }
    if ( v19[0] != -1 )
    {
      if ( v21 != -1 )
        return;
LABEL_25:
      gameswf::free_internal(v23);
      return;
    }
    gameswf::free_internal(v20);
    if ( v21 == -1 )
      goto LABEL_25;
  }
}


// ===== 790ca4 gameswf::edit_text_character::set_member(gameswf::tu_stringi const&,gameswf::as_value const&) =====
int __fastcall gameswf::edit_text_character::set_member(int a1, gameswf::tu_string *this, gameswf::as_value *a3)
{
  char *v6; // r0
  const char *v7; // r0
  double v9; // r0
  const gameswf::tu_string *v10; // r0
  const gameswf::tu_string *v11; // r0
  double v12; // r0
  int v13; // r10
  int v14; // r10
  int v15; // r10
  char *v16; // r0
  const char *v17; // r0
  _BYTE v18[8]; // [sp+4h] [bp-30h] BYREF
  void *v19; // [sp+10h] [bp-24h]
  unsigned int v20; // [sp+14h] [bp-20h]
  _BYTE v21[8]; // [sp+18h] [bp-1Ch] BYREF
  void *p; // [sp+24h] [bp-10h]
  unsigned int v23; // [sp+28h] [bp-Ch]

  switch ( gameswf::get_standard_member(this) )
  {
    case 22:
      v23 = v23 & 0xFF000000 | 0xFFFFFF;
      v21[0] = 1;
      HIBYTE(v23) &= ~1u;
      v21[1] = 0;
      v10 = (const gameswf::tu_string *)gameswf::as_value::to_string(a3, (gameswf::tu_string *)v21);
      gameswf::edit_text_character::set_text_value((gameswf::player ***)a1, v10, 0);
      if ( v21[0] == -1 )
        gameswf::free_internal(p);
      break;
    case 23:
      v20 = v20 & 0xFF000000 | 0xFFFFFF;
      v18[1] = 0;
      HIBYTE(v20) &= ~1u;
      v18[0] = 1;
      v11 = (const gameswf::tu_string *)gameswf::as_value::to_string(a3, (gameswf::tu_string *)v18);
      gameswf::edit_text_character::set_text_value((gameswf::player ***)a1, v11, 1);
      if ( v18[0] == -1 )
        gameswf::free_internal(v19);
      break;
    case 26:
      LODWORD(v12) = gameswf::as_value::to_number(a3);
      LODWORD(v12) = (int)v12;
      *(_BYTE *)(a1 + 369) = BYTE1(v12);
      *(_BYTE *)(a1 + 370) = LOBYTE(v12);
      *(_BYTE *)(a1 + 368) = BYTE2(v12);
      *(_BYTE *)(a1 + 371) = -1;
      gameswf::edit_text_character::format_text((gameswf::edit_text_character *)a1, 0);
      break;
    case 27:
      v13 = *(_DWORD *)(a1 + 160);
      *(_BYTE *)(v13 + 78) = gameswf::as_value::to_bool(a3);
      gameswf::edit_text_character::format_text((gameswf::edit_text_character *)a1, 0);
      break;
    case 28:
      v14 = *(_DWORD *)(a1 + 160);
      *(_BYTE *)(v14 + 73) = gameswf::as_value::to_bool(a3);
      gameswf::edit_text_character::format_text((gameswf::edit_text_character *)a1, 0);
      break;
    case 29:
      v15 = *(_DWORD *)(a1 + 160);
      *(_BYTE *)(v15 + 72) = gameswf::as_value::to_bool(a3);
      gameswf::edit_text_character::format_text((gameswf::edit_text_character *)a1, 0);
      break;
    case 30:
      v6 = gameswf::as_value::to_tu_string(a3);
      if ( *v6 == -1 )
        v7 = *((const char **)v6 + 3);
      else
        v7 = v6 + 1;
      if ( gameswf::tu_string::stricmp(v7, "input") )
      {
        v16 = gameswf::as_value::to_tu_string(a3);
        if ( *v16 == -1 )
          v17 = *((const char **)v16 + 3);
        else
          v17 = v16 + 1;
        if ( !gameswf::tu_string::stricmp(v17, "dynamic") )
          *(_BYTE *)(*(_DWORD *)(a1 + 160) + 75) = 1;
      }
      else
      {
        *(_BYTE *)(*(_DWORD *)(a1 + 160) + 75) = 0;
      }
      break;
    case 31:
      LODWORD(v9) = gameswf::as_value::to_number(a3);
      LODWORD(v9) = (int)v9;
      *(_BYTE *)(a1 + 407) = -1;
      *(_BYTE *)(a1 + 406) = LOBYTE(v9);
      *(_BYTE *)(a1 + 405) = BYTE1(v9);
      *(_BYTE *)(a1 + 404) = BYTE2(v9);
      gameswf::edit_text_character::format_text((gameswf::edit_text_character *)a1, 0);
      break;
    default:
      return gameswf::character::set_member((gameswf::tu_string *)a1, this, a3);
  }
  return gameswf::character::set_member((gameswf::tu_string *)a1, this, a3);
}


// ===== 790f58 gameswf::edit_text_character::on_event(gameswf::event_id const&) =====
int __fastcall gameswf::edit_text_character::on_event(gameswf::edit_text_character *this, const gameswf::event_id *a2)
{
  int v4; // r3
  gameswf::root *v6; // r0
  int v7; // r3
  int (__fastcall *v8)(gameswf::edit_text_character *, void **, _BYTE *); // r10
  int v9; // r10
  int v10; // r0
  int v11; // r3
  int v12; // r0
  int v13; // r1
  int v14; // r2
  int v15; // r3
  int (__fastcall *v16)(gameswf::edit_text_character *, void **, _BYTE *); // r10
  int v17; // r10
  gameswf::ref_counted *player; // r0
  int root; // r0
  int v20; // r3
  int v21; // r2
  int v22; // r2
  int v23; // r1
  int v24; // r2
  int v25; // r1
  int v26; // r1
  gameswf::ref_counted *v27; // r0
  _DWORD v28[27]; // [sp+10h] [bp-17Ch] BYREF
  _DWORD v29[27]; // [sp+7Ch] [bp-110h] BYREF
  _BYTE v30[12]; // [sp+E8h] [bp-A4h] BYREF
  _BYTE v31[4]; // [sp+F4h] [bp-98h] BYREF
  gameswf::edit_text_character *v32; // [sp+F8h] [bp-94h]
  _BYTE v33[12]; // [sp+100h] [bp-8Ch] BYREF
  _BYTE v34[12]; // [sp+10Ch] [bp-80h] BYREF
  _BYTE v35[12]; // [sp+118h] [bp-74h] BYREF
  _BYTE v36[4]; // [sp+124h] [bp-68h] BYREF
  gameswf::edit_text_character *v37; // [sp+128h] [bp-64h]
  _BYTE v38[12]; // [sp+130h] [bp-5Ch] BYREF
  _BYTE v39[12]; // [sp+13Ch] [bp-50h] BYREF
  _BYTE v40[4]; // [sp+148h] [bp-44h] BYREF
  int v41; // [sp+14Ch] [bp-40h]
  void *p; // [sp+154h] [bp-38h]
  void *v43[5]; // [sp+15Ch] [bp-30h] BYREF
  void *v44[5]; // [sp+170h] [bp-1Ch] BYREF

  if ( *(_BYTE *)(*((_DWORD *)this + 40) + 75) )
    return 0;
  v4 = *(unsigned __int8 *)a2;
  if ( v4 != 20 )
  {
    if ( v4 != 21 )
    {
      if ( v4 == 8 )
      {
        gameswf::tu_string::tu_string((gameswf::tu_string *)v40, (gameswf::edit_text_character *)((char *)this + 312));
        LOBYTE(v12) = *((_BYTE *)this + 312);
        if ( (char)v12 == -1 )
          v13 = *((_DWORD *)this + 79);
        else
          v13 = (char)v12 - 1;
        if ( (char)v12 == -1 )
          --v13;
        if ( v13 >= *((_DWORD *)this + 84) )
          v13 = *((_DWORD *)this + 84);
        *((_DWORD *)this + 84) = v13;
        v14 = *((unsigned __int8 *)a2 + 1);
        switch ( *((_BYTE *)a2 + 1) )
        {
          case 8:
            if ( v13 <= 0 )
              goto LABEL_54;
            gameswf::tu_string::erase((gameswf::tu_string *)v40, v13 - 1, v14);
            --*((_DWORD *)this + 84);
            gameswf::edit_text_character::set_text_value((gameswf::player ***)this, (const gameswf::tu_string *)v40, 0);
            v20 = v40[0];
            break;
          case 0x21:
          case 0x23:
          case 0x28:
            v12 = (char)v12;
            if ( (char)v12 == -1 )
              v12 = *((_DWORD *)this + 79);
            *((_DWORD *)this + 84) = v12 - 1;
            goto LABEL_35;
          case 0x22:
          case 0x24:
          case 0x26:
            *((_DWORD *)this + 84) = 0;
            gameswf::edit_text_character::format_text(this, 0);
            v20 = v40[0];
            break;
          case 0x25:
            if ( v13 > 0 )
              v23 = v13 - 1;
            else
              v23 = 0;
            *((_DWORD *)this + 84) = v23;
            gameswf::edit_text_character::format_text(this, 0);
            v20 = v40[0];
            break;
          case 0x27:
            if ( (char)v12 == -1 )
              v24 = *((_DWORD *)this + 79);
            else
              v24 = (char)v12;
            if ( v13 >= v24 - 1 )
            {
              if ( (char)v12 == -1 )
                v26 = *((_DWORD *)this + 79);
              else
                v26 = *((unsigned __int8 *)this + 312);
              if ( (char)v12 != -1 )
                v26 = (char)v26;
              v25 = v26 - 1;
            }
            else
            {
              v25 = v13 + 1;
            }
            *((_DWORD *)this + 84) = v25;
LABEL_35:
            gameswf::edit_text_character::format_text(this, 0);
            v20 = v40[0];
            break;
          case 0x2E:
            v20 = v40[0];
            if ( v40[0] == -1 )
              v21 = v41;
            else
              v21 = v40[0];
            v22 = v21 - 1;
            if ( v13 < v22 )
            {
              gameswf::tu_string::erase((gameswf::tu_string *)v40, v13, v22);
              gameswf::edit_text_character::set_text_value(
                (gameswf::player ***)this,
                (const gameswf::tu_string *)v40,
                0);
              v20 = v40[0];
            }
            break;
          default:
            gameswf::tu_string::insert((gameswf::tu_string *)v40, v13, v14);
            ++*((_DWORD *)this + 84);
            gameswf::edit_text_character::set_text_value((gameswf::player ***)this, (const gameswf::tu_string *)v40, 0);
LABEL_54:
            v20 = v40[0];
            break;
        }
        if ( v20 == -1 )
        {
          gameswf::free_internal(p);
          return 0;
        }
      }
      return 0;
    }
    if ( *((_BYTE *)this + 332) )
    {
      v15 = *(_DWORD *)this;
      v34[0] = 0;
      v34[1] = 0;
      v16 = *(int (__fastcall **)(gameswf::edit_text_character *, void **, _BYTE *))(v15 + 32);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v43, "onKillFocus");
      v17 = v16(this, v43, v34);
      gameswf::tu_string::~tu_string(v43);
      if ( v17 )
      {
        player = (gameswf::ref_counted *)gameswf::as_object::get_player(this);
        gameswf::as_environment::as_environment((int)v28, player);
        v33[0] = 0;
        v33[1] = 0;
        gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(v28);
        gameswf::as_value::drop_refs((gameswf::as_value *)v33);
        v31[0] = 0;
        v31[1] = 5;
        v32 = this;
        gameswf::ref_counted::add_ref((int)this);
        gameswf::call_method((int)v30, (gameswf::as_value *)v34, (int)v28, (int)v31, 1, v28[1] - 1, (int)"???");
        gameswf::as_value::drop_refs((gameswf::as_value *)v30);
        gameswf::as_value::drop_refs((gameswf::as_value *)v31);
        gameswf::as_environment::~as_environment((gameswf::as_environment *)v28);
      }
      *((_BYTE *)this + 332) = 0;
      root = gameswf::edit_text_character::get_root(this);
      gameswf::listener::remove((gameswf::listener *)(root + 168), this);
      gameswf::edit_text_character::format_text(this, 0);
      gameswf::as_value::drop_refs((gameswf::as_value *)v34);
      return 1;
    }
    return 1;
  }
  v6 = (gameswf::root *)gameswf::edit_text_character::get_root(this);
  gameswf::root::set_active_entity(v6, this);
  if ( *((_BYTE *)this + 332) )
    return 1;
  v7 = *(_DWORD *)this;
  v39[0] = 0;
  v39[1] = 0;
  v8 = *(int (__fastcall **)(gameswf::edit_text_character *, void **, _BYTE *))(v7 + 32);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v44, "onSetFocus");
  v9 = v8(this, v44, v39);
  gameswf::tu_string::~tu_string(v44);
  if ( v9 )
  {
    v27 = (gameswf::ref_counted *)gameswf::as_object::get_player(this);
    gameswf::as_environment::as_environment((int)v29, v27);
    v38[0] = 0;
    v38[1] = 0;
    gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(v29);
    gameswf::as_value::drop_refs((gameswf::as_value *)v38);
    v36[0] = 0;
    v36[1] = 5;
    v37 = this;
    gameswf::ref_counted::add_ref((int)this);
    gameswf::call_method((int)v35, (gameswf::as_value *)v39, (int)v29, (int)v36, 1, v29[1] - 1, (int)"???");
    gameswf::as_value::drop_refs((gameswf::as_value *)v35);
    gameswf::as_value::drop_refs((gameswf::as_value *)v36);
    gameswf::as_environment::~as_environment((gameswf::as_environment *)v29);
  }
  v10 = gameswf::edit_text_character::get_root(this);
  gameswf::listener::add((gameswf::listener *)(v10 + 168), this);
  LOBYTE(v11) = *((_BYTE *)this + 312);
  *((_BYTE *)this + 332) = 1;
  v11 = (char)v11;
  if ( (char)v11 == -1 )
    v11 = *((_DWORD *)this + 79);
  *((_DWORD *)this + 84) = v11 - 1;
  gameswf::edit_text_character::format_text(this, 0);
  gameswf::as_value::drop_refs((gameswf::as_value *)v39);
  return 1;
}


// ===== 7914dc gameswf::edit_text_character::init(void) =====
char *__fastcall gameswf::edit_text_character::init(gameswf::edit_text_character *this)
{
  int v1; // r3
  int v3; // r1
  int v4; // r3
  const char *v5; // r1
  const char *v6; // r0
  char *result; // r0
  int v8; // r3
  _BYTE v9[84]; // [sp+0h] [bp-80h] BYREF
  _BYTE v10[8]; // [sp+54h] [bp-2Ch] BYREF
  void *v11; // [sp+60h] [bp-20h]
  _BYTE v12[8]; // [sp+68h] [bp-18h] BYREF
  void *p; // [sp+74h] [bp-Ch]

  v1 = *((_DWORD *)this + 40);
  *((_DWORD *)this + 91) = -1;
  *((_DWORD *)this + 90) = 0;
  *((_BYTE *)this + 332) = 0;
  *((_DWORD *)this + 84) = 0;
  *((_DWORD *)this + 85) = 0;
  *((_DWORD *)this + 86) = 0;
  *((_DWORD *)this + 87) = 0;
  *((_DWORD *)this + 88) = 0;
  *((_DWORD *)this + 89) = 0;
  *((_DWORD *)this + 92) = *(_DWORD *)(v1 + 96);
  *((_DWORD *)this + 93) = *(_DWORD *)(v1 + 92);
  gameswf::smart_ptr<gameswf::font>::set_ref((gameswf::ref_counted **)this + 94, *(gameswf::ref_counted **)(v1 + 88));
  v3 = *((_DWORD *)this + 40);
  *((_DWORD *)this + 95) = *(_DWORD *)(v3 + 104);
  *((_DWORD *)this + 96) = *(_DWORD *)(v3 + 108);
  *((_DWORD *)this + 97) = *(_DWORD *)(v3 + 112);
  *((_DWORD *)this + 98) = *(_DWORD *)(v3 + 116);
  v4 = *(_DWORD *)(v3 + 120);
  *((_BYTE *)this + 407) = -1;
  *((_BYTE *)this + 404) = -1;
  *((_BYTE *)this + 405) = -1;
  *((_BYTE *)this + 406) = -1;
  *((_DWORD *)this + 100) = 0;
  *((_DWORD *)this + 99) = v4;
  if ( *(char *)(v3 + 124) == -1 )
    v5 = *(const char **)(v3 + 136);
  else
    v5 = (const char *)(v3 + 125);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v12, v5);
  gameswf::edit_text_character::set_text(this, (const gameswf::tu_string *)v12, 0);
  if ( v12[0] == -1 )
    gameswf::free_internal(p);
  v6 = (const char *)(*(int (__fastcall **)(gameswf::edit_text_character *))(*(_DWORD *)this + 12))(this);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v10, v6);
  gameswf::edit_text_character::set_text_value((gameswf::player ***)this, (const gameswf::tu_string *)v10, 0);
  if ( v10[0] == -1 )
    gameswf::free_internal(v11);
  gameswf::array<gameswf::fill_style>::resize((_DWORD *)this + 45, 0);
  gameswf::fill_style::fill_style((int)v9);
  gameswf::array<gameswf::fill_style>::push_back<gameswf::fill_style>((_DWORD *)this + 45, (gameswf::fill_style *)v9);
  gameswf::fill_style::~fill_style((gameswf::fill_style *)v9);
  result = (char *)gameswf::edit_text_character::get_var_name(this);
  v8 = *result;
  if ( v8 == -1 )
    v8 = *((_DWORD *)result + 1);
  *((_BYTE *)this + 157) = v8 - 1 > 0;
  return result;
}


// ===== 7916a4 gameswf::edit_text_character::recycle(gameswf::character *,int) =====
char *__fastcall gameswf::edit_text_character::recycle(
        gameswf::edit_text_character *this,
        gameswf::character *a2,
        int a3)
{
  gameswf::character::recycle(this, a2, a3);
  return gameswf::edit_text_character::init(this);
}


// ===== 7916bc gameswf::edit_text_character::edit_text_character(gameswf::player *,gameswf::character *,gameswf::edit_text_character_def *,int) =====
gameswf::edit_text_character *__fastcall gameswf::edit_text_character::edit_text_character(
        gameswf::edit_text_character *this,
        gameswf::player *a2,
        gameswf::character *a3,
        gameswf::edit_text_character_def *a4,
        int a5)
{
  unsigned int v7; // r0

  gameswf::character::character(this, a2, a3, a5, 32);
  *((_DWORD *)this + 40) = a4;
  *(_DWORD *)this = off_990918;
  if ( a4 )
    gameswf::ref_counted::add_ref((int)a4);
  v7 = *((_DWORD *)this + 82) & 0xFF000000 | 0xFFFFFF;
  *((_BYTE *)this + 312) = 1;
  *((_DWORD *)this + 41) = 0;
  *((_DWORD *)this + 42) = 0;
  *((_DWORD *)this + 43) = 0;
  *((_BYTE *)this + 176) = 0;
  *((_DWORD *)this + 45) = 0;
  *((_DWORD *)this + 46) = 0;
  *((_DWORD *)this + 47) = 0;
  *((_BYTE *)this + 192) = 0;
  *((_DWORD *)this + 49) = 0;
  *((_DWORD *)this + 50) = 0;
  *((_DWORD *)this + 51) = 0;
  *((_BYTE *)this + 208) = 0;
  *((_DWORD *)this + 58) = 0;
  *((_DWORD *)this + 59) = 0;
  *((_DWORD *)this + 60) = 0;
  *((_BYTE *)this + 244) = 0;
  *((_DWORD *)this + 62) = 0;
  *((_DWORD *)this + 63) = 0;
  *((_DWORD *)this + 64) = 0;
  *((_BYTE *)this + 260) = 0;
  *((_DWORD *)this + 66) = 0;
  *((_DWORD *)this + 67) = 0;
  *((_DWORD *)this + 68) = 0;
  *((_BYTE *)this + 276) = 0;
  *((_DWORD *)this + 70) = 0;
  *((_DWORD *)this + 71) = 0;
  *((_DWORD *)this + 72) = 0;
  *((_BYTE *)this + 292) = 0;
  *((_BYTE *)this + 313) = 0;
  *((_QWORD *)this + 28) = -1;
  *((_QWORD *)this + 27) = -1;
  *((_DWORD *)this + 82) = v7;
  *((_BYTE *)this + 331) = HIBYTE(v7) & 0xFE;
  *((_DWORD *)this + 88) = 0;
  *((_DWORD *)this + 94) = 0;
  *((_BYTE *)this + 407) = -1;
  *((_BYTE *)this + 332) = 0;
  *((_DWORD *)this + 84) = 0;
  *((_DWORD *)this + 85) = 0;
  *((_DWORD *)this + 86) = 0;
  *((_DWORD *)this + 87) = 0;
  *((_DWORD *)this + 89) = 0;
  *((_DWORD *)this + 90) = 0;
  *((_DWORD *)this + 91) = -1;
  *((_BYTE *)this + 368) = -1;
  *((_BYTE *)this + 369) = -1;
  *((_BYTE *)this + 370) = -1;
  *((_BYTE *)this + 371) = -1;
  *((_BYTE *)this + 404) = -1;
  *((_BYTE *)this + 405) = -1;
  *((_BYTE *)this + 406) = -1;
  gameswf::edit_text_character::init(this);
  return this;
}


// ===== 79181c gameswf::as_global_textfield_ctor(gameswf::fn_call const&) =====
int __fastcall gameswf::as_global_textfield_ctor(gameswf *this, const gameswf::fn_call *a2)
{
  int v2; // r5
  gameswf::player *v4; // r0
  _BYTE *v5; // r3
  int v6; // r5
  gameswf::player *v7; // r7
  _BYTE *v8; // r0
  gameswf::edit_text_character_def *v9; // r6
  int v10; // r5
  gameswf::player *v11; // r7
  _BYTE *v12; // r0
  gameswf::edit_text_character *v13; // r5
  bool v15; // zf

  v2 = *((_DWORD *)this + 3);
  v4 = *(gameswf::player **)(v2 + 104);
  if ( v4 )
  {
    v5 = *(_BYTE **)(v2 + 100);
    if ( !v5[4] )
    {
      v15 = (*(_DWORD *)v5)-- == 1;
      if ( v15 )
        gameswf::free_internal(v5);
      v4 = nullptr;
      *(_DWORD *)(v2 + 104) = 0;
      *(_DWORD *)(v2 + 100) = 0;
    }
  }
  gameswf::player::get_root(v4);
  v6 = *((_DWORD *)this + 3);
  v7 = *(gameswf::player **)(v6 + 104);
  if ( v7 )
  {
    v8 = *(_BYTE **)(v6 + 100);
    if ( !v8[4] )
    {
      v15 = (*(_DWORD *)v8)-- == 1;
      if ( v15 )
        gameswf::free_internal(v8);
      v7 = nullptr;
      *(_DWORD *)(v6 + 104) = 0;
      *(_DWORD *)(v6 + 100) = 0;
    }
  }
  v9 = (gameswf::edit_text_character_def *)operator new(0xA0u, 0);
  gameswf::edit_text_character_def::edit_text_character_def(v9, v7, 0, 0);
  v10 = *((_DWORD *)this + 3);
  v11 = *(gameswf::player **)(v10 + 104);
  if ( v11 )
  {
    v12 = *(_BYTE **)(v10 + 100);
    if ( !v12[4] )
    {
      v15 = (*(_DWORD *)v12)-- == 1;
      if ( v15 )
        gameswf::free_internal(v12);
      v11 = nullptr;
      *(_DWORD *)(v10 + 104) = 0;
      *(_DWORD *)(v10 + 100) = 0;
    }
  }
  v13 = (gameswf::edit_text_character *)operator new(0x198u, 0);
  gameswf::edit_text_character::edit_text_character(v13, v11, nullptr, v9, 0);
  return gameswf::as_value::set_as_object(*(gameswf::as_value **)this, v13);
}


// ===== 791964 gameswf::edit_text_character::edit_text_character(gameswf::player *,gameswf::character *,gameswf::edit_text_character_def *,int) =====
gameswf::edit_text_character *__fastcall gameswf::edit_text_character::edit_text_character(
        gameswf::edit_text_character *this,
        gameswf::player *a2,
        gameswf::character *a3,
        gameswf::edit_text_character_def *a4,
        int a5)
{
  unsigned int v7; // r0

  gameswf::character::character(this, a2, a3, a5, 32);
  *((_DWORD *)this + 40) = a4;
  *(_DWORD *)this = off_990918;
  if ( a4 )
    gameswf::ref_counted::add_ref((int)a4);
  v7 = *((_DWORD *)this + 82) & 0xFF000000 | 0xFFFFFF;
  *((_BYTE *)this + 312) = 1;
  *((_DWORD *)this + 41) = 0;
  *((_DWORD *)this + 42) = 0;
  *((_DWORD *)this + 43) = 0;
  *((_BYTE *)this + 176) = 0;
  *((_DWORD *)this + 45) = 0;
  *((_DWORD *)this + 46) = 0;
  *((_DWORD *)this + 47) = 0;
  *((_BYTE *)this + 192) = 0;
  *((_DWORD *)this + 49) = 0;
  *((_DWORD *)this + 50) = 0;
  *((_DWORD *)this + 51) = 0;
  *((_BYTE *)this + 208) = 0;
  *((_DWORD *)this + 58) = 0;
  *((_DWORD *)this + 59) = 0;
  *((_DWORD *)this + 60) = 0;
  *((_BYTE *)this + 244) = 0;
  *((_DWORD *)this + 62) = 0;
  *((_DWORD *)this + 63) = 0;
  *((_DWORD *)this + 64) = 0;
  *((_BYTE *)this + 260) = 0;
  *((_DWORD *)this + 66) = 0;
  *((_DWORD *)this + 67) = 0;
  *((_DWORD *)this + 68) = 0;
  *((_BYTE *)this + 276) = 0;
  *((_DWORD *)this + 70) = 0;
  *((_DWORD *)this + 71) = 0;
  *((_DWORD *)this + 72) = 0;
  *((_BYTE *)this + 292) = 0;
  *((_BYTE *)this + 313) = 0;
  *((_QWORD *)this + 28) = -1;
  *((_QWORD *)this + 27) = -1;
  *((_DWORD *)this + 82) = v7;
  *((_BYTE *)this + 331) = HIBYTE(v7) & 0xFE;
  *((_DWORD *)this + 88) = 0;
  *((_DWORD *)this + 94) = 0;
  *((_BYTE *)this + 407) = -1;
  *((_BYTE *)this + 332) = 0;
  *((_DWORD *)this + 84) = 0;
  *((_DWORD *)this + 85) = 0;
  *((_DWORD *)this + 86) = 0;
  *((_DWORD *)this + 87) = 0;
  *((_DWORD *)this + 89) = 0;
  *((_DWORD *)this + 90) = 0;
  *((_DWORD *)this + 91) = -1;
  *((_BYTE *)this + 368) = -1;
  *((_BYTE *)this + 369) = -1;
  *((_BYTE *)this + 370) = -1;
  *((_BYTE *)this + 371) = -1;
  *((_BYTE *)this + 404) = -1;
  *((_BYTE *)this + 405) = -1;
  *((_BYTE *)this + 406) = -1;
  gameswf::edit_text_character::init(this);
  return this;
}


// ===== 791ac4 gameswf::edit_text_character::to_string(void) =====
void __fastcall gameswf::edit_text_character::to_string(gameswf::player ***this)
{
  char *var_name; // r0
  int v3; // r3
  gameswf::player **target; // r7
  _BYTE *v5; // r0
  const gameswf::tu_string *v6; // r0
  gameswf::as_environment *v7; // r0
  gameswf::tu_string *v8; // r3
  char *v9; // r1
  gameswf::edit_text_character *v10; // r9
  int (__fastcall *v11)(gameswf::player **, _BYTE *, char *); // r10
  _BOOL4 v12; // r9
  char *v14; // r0
  const char *v15; // r0
  const char *v16; // r1
  char *v17; // r0
  const char *v18; // r1
  char v19; // [sp+0h] [bp-64h] BYREF
  char v20; // [sp+1h] [bp-63h]
  gameswf::edit_text_character *v21; // [sp+4h] [bp-60h]
  void *v22[5]; // [sp+Ch] [bp-58h] BYREF
  _BYTE v23[8]; // [sp+20h] [bp-44h] BYREF
  void *v24; // [sp+2Ch] [bp-38h]
  _BYTE v25[8]; // [sp+34h] [bp-30h] BYREF
  void *p; // [sp+40h] [bp-24h]
  char v27; // [sp+48h] [bp-1Ch] BYREF
  char v28; // [sp+49h] [bp-1Bh] BYREF
  char *v29; // [sp+54h] [bp-10h]
  unsigned int v30; // [sp+58h] [bp-Ch]

  var_name = (char *)gameswf::edit_text_character::get_var_name((gameswf::edit_text_character *)this);
  v3 = *var_name;
  if ( v3 == -1 )
    v3 = *((_DWORD *)var_name + 1);
  if ( v3 - 1 > 0 )
  {
    target = *(this + 16);
    if ( target )
    {
      v5 = *(this + 15);
      if ( !v5[4] )
      {
        if ( (*(_DWORD *)v5)-- == 1 )
          gameswf::free_internal(v5);
        target = nullptr;
        *(this + 15) = nullptr;
        *(this + 16) = nullptr;
      }
    }
    v30 = v30 & 0xFF000000 | 0xFFFFFF;
    v27 = 1;
    v28 = 0;
    HIBYTE(v30) &= ~1u;
    v6 = (const gameswf::tu_string *)gameswf::edit_text_character::get_var_name((gameswf::edit_text_character *)this);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v25, v6);
    v7 = (gameswf::as_environment *)gameswf::edit_text_character::get_var_name((gameswf::edit_text_character *)this);
    if ( gameswf::as_environment::parse_path(v7, (const gameswf::tu_string *)&v27, (gameswf::tu_string *)v25, v8) )
    {
      if ( v27 == -1 )
        v9 = v29;
      else
        v9 = &v28;
      target = (gameswf::player **)gameswf::as_object::find_target(target, v9);
    }
    if ( target )
    {
      v10 = nullptr;
      v19 = 0;
      v20 = 0;
      v11 = *((int (__fastcall **)(gameswf::player **, _BYTE *, char *))*target + 8);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v23, (const gameswf::tu_string *)v25);
      if ( v11(target, v23, &v19) )
      {
        if ( v20 == 5 )
          v10 = v21;
        v12 = this != (gameswf::player ***)v10;
      }
      else
      {
        v12 = 0;
      }
      if ( v23[0] == -1 )
        gameswf::free_internal(v24);
      if ( v12 )
      {
        v14 = gameswf::as_value::to_tu_string((gameswf::as_value *)&v19);
        v15 = *v14 == -1 ? *((const char **)v14 + 3) : v14 + 1;
        v16 = *((unsigned __int8 *)this + 312) == 255 ? (const char *)*(this + 81) : (char *)this + 313;
        if ( LC_API_STRCMP_0(v15, v16) )
        {
          v17 = gameswf::as_value::to_tu_string((gameswf::as_value *)&v19);
          if ( *v17 == -1 )
            v18 = *((const char **)v17 + 3);
          else
            v18 = v17 + 1;
          gameswf::tu_string::tu_string((gameswf::tu_string *)v22, v18);
          gameswf::edit_text_character::set_text(
            (gameswf::edit_text_character *)this,
            (const gameswf::tu_string *)v22,
            0);
          gameswf::tu_string::~tu_string(v22);
        }
      }
      gameswf::as_value::drop_refs((gameswf::as_value *)&v19);
    }
    if ( v25[0] != -1 )
    {
      if ( v27 != -1 )
        return;
LABEL_29:
      gameswf::free_internal(v29);
      return;
    }
    gameswf::free_internal(p);
    if ( v27 == -1 )
      goto LABEL_29;
  }
}


// ===== 791d48 gameswf::get_textformat(gameswf::fn_call const&) =====
void __fastcall gameswf::get_textformat(gameswf *this, const gameswf::fn_call *a2)
{
  int v2; // r5
  int v4; // r9
  void (__fastcall *v5)(int, _BYTE *, _BYTE *); // r10
  float v6; // r0
  double v7; // kr00_8
  int v8; // r9
  void (__fastcall *v9)(int, _BYTE *, _BYTE *); // r10
  float v10; // r0
  double v11; // kr08_8
  int v12; // r9
  void (__fastcall *v13)(int, _BYTE *, _BYTE *); // r10
  float v14; // r0
  double v15; // kr10_8
  int v16; // r9
  void (__fastcall *v17)(int, _BYTE *, _BYTE *); // r10
  float v18; // r0
  double v19; // kr18_8
  int v20; // r9
  void (__fastcall *v21)(int, _BYTE *, _BYTE *); // r10
  float v22; // r0
  double v23; // kr20_8
  int v24; // r9
  void (__fastcall *v25)(int, _BYTE *, _BYTE *); // r10
  int v26; // r0
  double v27; // kr28_8
  int v28; // r9
  void (__fastcall *v29)(int, _BYTE *, _BYTE *); // r10
  float v30; // r0
  double v31; // kr30_8
  int v32; // r9
  int v33; // r8
  int v34; // r11
  _BYTE *v35; // r0
  gameswf::tu_string *v36; // r0
  int v37; // r11
  void (__fastcall *v38)(int, _BYTE *, _BYTE *); // r10
  int v39; // r8
  int v40; // r3
  _BYTE *v41; // r0
  gameswf::tu_string *v42; // r0
  int v43; // r9
  void (__fastcall *v44)(int, _BYTE *, _BYTE *); // r10
  char v45; // r3
  int v46; // r10
  void (__fastcall *v47)(int, _BYTE *, _BYTE *); // r8
  char v48; // r3
  int v49; // r11
  int player; // r10
  gameswf::tu_string *v51; // r0
  bool v52; // zf
  int v53; // r9
  int v54; // r8
  int v55; // r10
  int v56; // r3
  int v57; // r11
  gameswf::tu_string *v58; // r0
  int v59; // r9
  int v60; // r8
  int v61; // r10
  int v62; // r3
  int v63; // r11
  gameswf::tu_string *v64; // r0
  void (__fastcall *v65)(int, void **, _BYTE *); // [sp+4h] [bp-230h]
  void (__fastcall *v66)(int, _BYTE *, _BYTE *); // [sp+8h] [bp-22Ch]
  void (__fastcall *v67)(int, _BYTE *, _BYTE *); // [sp+Ch] [bp-228h]
  void (__fastcall *v68)(int, _BYTE *, _BYTE *); // [sp+Ch] [bp-228h]
  _BYTE v69[12]; // [sp+10h] [bp-224h] BYREF
  _BYTE v70[12]; // [sp+1Ch] [bp-218h] BYREF
  _BYTE v71[4]; // [sp+28h] [bp-20Ch] BYREF
  int v72; // [sp+2Ch] [bp-208h]
  _BYTE v73[4]; // [sp+34h] [bp-200h] BYREF
  int v74; // [sp+38h] [bp-1FCh]
  _BYTE v75[4]; // [sp+40h] [bp-1F4h] BYREF
  int v76; // [sp+44h] [bp-1F0h]
  _BYTE v77[4]; // [sp+4Ch] [bp-1E8h] BYREF
  int v78; // [sp+50h] [bp-1E4h]
  _BYTE v79[4]; // [sp+58h] [bp-1DCh] BYREF
  int v80; // [sp+5Ch] [bp-1D8h]
  _BYTE v81[4]; // [sp+64h] [bp-1D0h] BYREF
  unsigned __int64 v82; // [sp+68h] [bp-1CCh]
  _BYTE v83[4]; // [sp+70h] [bp-1C4h] BYREF
  unsigned __int64 v84; // [sp+74h] [bp-1C0h]
  _BYTE v85[4]; // [sp+7Ch] [bp-1B8h] BYREF
  unsigned __int64 v86; // [sp+80h] [bp-1B4h]
  _BYTE v87[4]; // [sp+88h] [bp-1ACh] BYREF
  unsigned __int64 v88; // [sp+8Ch] [bp-1A8h]
  _BYTE v89[4]; // [sp+94h] [bp-1A0h] BYREF
  unsigned __int64 v90; // [sp+98h] [bp-19Ch]
  _BYTE v91[4]; // [sp+A0h] [bp-194h] BYREF
  unsigned __int64 v92; // [sp+A4h] [bp-190h]
  _BYTE v93[4]; // [sp+ACh] [bp-188h] BYREF
  unsigned __int64 v94; // [sp+B0h] [bp-184h]
  double v95; // [sp+B8h] [bp-17Ch]
  _BYTE v96[8]; // [sp+C4h] [bp-170h] BYREF
  void *v97; // [sp+D0h] [bp-164h]
  _BYTE v98[8]; // [sp+D8h] [bp-15Ch] BYREF
  void *v99; // [sp+E4h] [bp-150h]
  _BYTE v100[8]; // [sp+ECh] [bp-148h] BYREF
  void *v101; // [sp+F8h] [bp-13Ch]
  void *v102[5]; // [sp+100h] [bp-134h] BYREF
  void *v103[5]; // [sp+114h] [bp-120h] BYREF
  _BYTE v104[8]; // [sp+128h] [bp-10Ch] BYREF
  void *v105; // [sp+134h] [bp-100h]
  _BYTE v106[8]; // [sp+13Ch] [bp-F8h] BYREF
  void *v107; // [sp+148h] [bp-ECh]
  _BYTE v108[8]; // [sp+150h] [bp-E4h] BYREF
  void *p; // [sp+15Ch] [bp-D8h]
  _BYTE v110[8]; // [sp+164h] [bp-D0h] BYREF
  void *v111; // [sp+170h] [bp-C4h]
  _BYTE v112[8]; // [sp+178h] [bp-BCh] BYREF
  void *v113; // [sp+184h] [bp-B0h]
  _BYTE v114[8]; // [sp+18Ch] [bp-A8h] BYREF
  void *v115; // [sp+198h] [bp-9Ch]
  _BYTE v116[8]; // [sp+1A0h] [bp-94h] BYREF
  void *v117; // [sp+1ACh] [bp-88h]
  _BYTE v118[8]; // [sp+1B4h] [bp-80h] BYREF
  void *v119; // [sp+1C0h] [bp-74h]
  _BYTE v120[8]; // [sp+1C8h] [bp-6Ch] BYREF
  void *v121; // [sp+1D4h] [bp-60h]
  _BYTE v122[8]; // [sp+1DCh] [bp-58h] BYREF
  void *v123; // [sp+1E8h] [bp-4Ch]
  _BYTE v124[8]; // [sp+1F0h] [bp-44h] BYREF
  void *v125; // [sp+1FCh] [bp-38h]
  _BYTE v126[8]; // [sp+204h] [bp-30h] BYREF
  void *v127; // [sp+210h] [bp-24h]
  _BYTE v128[8]; // [sp+218h] [bp-1Ch] BYREF
  void *v129; // [sp+224h] [bp-10h]

  v2 = *((_DWORD *)this + 1);
  if ( !v2 || !(*(int (__fastcall **)(_DWORD, int))(*(_DWORD *)v2 + 8))(*((_DWORD *)this + 1), 32) )
    v2 = 0;
  gameswf::as_global_textformat_ctor(this, a2);
  if ( *(_BYTE *)(*(_DWORD *)this + 1) == 5 )
    v4 = *(_DWORD *)(*(_DWORD *)this + 4);
  else
    v4 = 0;
  v5 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v128, "leftMargin");
  v6 = *(float *)(v2 + 384) / 20.0;
  v93[0] = 0;
  v93[1] = 2;
  v95 = v6;
  v7 = v6;
  v94 = __PAIR64__(HIDWORD(v95), LODWORD(v7));
  v5(v4, v128, v93);
  gameswf::as_value::drop_refs((gameswf::as_value *)v93);
  if ( v128[0] == -1 )
    gameswf::free_internal(v129);
  if ( *(_BYTE *)(*(_DWORD *)this + 1) == 5 )
    v8 = *(_DWORD *)(*(_DWORD *)this + 4);
  else
    v8 = 0;
  v9 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v8 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v126, "indent");
  v10 = *(float *)(v2 + 392) / 20.0;
  v91[0] = 0;
  v91[1] = 2;
  v95 = v10;
  v11 = v10;
  v92 = __PAIR64__(HIDWORD(v95), LODWORD(v11));
  v9(v8, v126, v91);
  gameswf::as_value::drop_refs((gameswf::as_value *)v91);
  if ( v126[0] == -1 )
    gameswf::free_internal(v127);
  if ( *(_BYTE *)(*(_DWORD *)this + 1) == 5 )
    v12 = *(_DWORD *)(*(_DWORD *)this + 4);
  else
    v12 = 0;
  v13 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v12 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v124, "rightMargin");
  v14 = *(float *)(v2 + 388) / 20.0;
  v89[0] = 0;
  v89[1] = 2;
  v95 = v14;
  v15 = v14;
  v90 = __PAIR64__(HIDWORD(v95), LODWORD(v15));
  v13(v12, v124, v89);
  gameswf::as_value::drop_refs((gameswf::as_value *)v89);
  if ( v124[0] == -1 )
    gameswf::free_internal(v125);
  if ( *(_BYTE *)(*(_DWORD *)this + 1) == 5 )
    v16 = *(_DWORD *)(*(_DWORD *)this + 4);
  else
    v16 = 0;
  v17 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v16 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v122, "leading");
  v18 = *(float *)(v2 + 396) / 20.0;
  v87[0] = 0;
  v87[1] = 2;
  v95 = v18;
  v19 = v18;
  v88 = __PAIR64__(HIDWORD(v95), LODWORD(v19));
  v17(v16, v122, v87);
  gameswf::as_value::drop_refs((gameswf::as_value *)v87);
  if ( v122[0] == -1 )
    gameswf::free_internal(v123);
  if ( *(_BYTE *)(*(_DWORD *)this + 1) == 5 )
    v20 = *(_DWORD *)(*(_DWORD *)this + 4);
  else
    v20 = 0;
  v21 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v20 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v120, "letterSpacing");
  v22 = *(float *)(v2 + 400) / 20.0;
  v85[0] = 0;
  v85[1] = 2;
  v95 = v22;
  v23 = v22;
  v86 = __PAIR64__(HIDWORD(v95), LODWORD(v23));
  v21(v20, v120, v85);
  gameswf::as_value::drop_refs((gameswf::as_value *)v85);
  if ( v120[0] == -1 )
    gameswf::free_internal(v121);
  if ( *(_BYTE *)(*(_DWORD *)this + 1) == 5 )
    v24 = *(_DWORD *)(*(_DWORD *)this + 4);
  else
    v24 = 0;
  v25 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v24 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v118, "color");
  v26 = (*(unsigned __int8 *)(v2 + 368) << 16)
      | (*(unsigned __int8 *)(v2 + 371) << 24)
      | *(unsigned __int8 *)(v2 + 370)
      | (*(unsigned __int8 *)(v2 + 369) << 8);
  v83[0] = 0;
  v83[1] = 2;
  v95 = (double)v26;
  v27 = (double)v26;
  v84 = __PAIR64__(HIDWORD(v95), LODWORD(v27));
  v25(v24, v118, v83);
  gameswf::as_value::drop_refs((gameswf::as_value *)v83);
  if ( v118[0] == -1 )
    gameswf::free_internal(v119);
  if ( *(_BYTE *)(*(_DWORD *)this + 1) == 5 )
    v28 = *(_DWORD *)(*(_DWORD *)this + 4);
  else
    v28 = 0;
  v29 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v28 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v116, "size");
  v30 = *(float *)(v2 + 372) / 20.0;
  v81[0] = 0;
  v81[1] = 2;
  v95 = v30;
  v31 = v30;
  v82 = __PAIR64__(HIDWORD(v95), LODWORD(v31));
  v29(v28, v116, v81);
  gameswf::as_value::drop_refs((gameswf::as_value *)v81);
  if ( v116[0] == -1 )
    gameswf::free_internal(v117);
  v32 = *(_DWORD *)(v2 + 380);
  if ( v32 )
  {
    switch ( v32 )
    {
      case 2:
        if ( *(_BYTE *)(*(_DWORD *)this + 1) == 5 )
          v53 = *(_DWORD *)(*(_DWORD *)this + 4);
        else
          v53 = 0;
        v67 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v53 + 28);
        gameswf::tu_string::tu_string((gameswf::tu_string *)v108, "align");
        v54 = *((_DWORD *)this + 3);
        v55 = *(_DWORD *)(v54 + 104);
        if ( v55 )
        {
          v56 = *(_DWORD *)(v54 + 100);
          v57 = *(unsigned __int8 *)(v56 + 4);
          if ( !*(_BYTE *)(v56 + 4) )
          {
            gameswf::smart_ptr_proxy::operator=((_DWORD **)(v54 + 100), (_DWORD *)*(unsigned __int8 *)(v56 + 4));
            v55 = v57;
            *(_DWORD *)(v54 + 104) = v57;
          }
        }
        gameswf::tu_string::tu_string((gameswf::tu_string *)v110, "center");
        v58 = gameswf::permanent_string_cache::get((char **)(v55 + 44), (const gameswf::tu_string *)v110);
        v78 = 0;
        v77[0] = 0;
        v77[1] = 0;
        gameswf::as_value::set_tu_string((gameswf::as_value *)v77, v58);
        v67(v53, v108, v77);
        gameswf::as_value::drop_refs((gameswf::as_value *)v77);
        if ( v110[0] == -1 )
          gameswf::free_internal(v111);
        if ( v108[0] == -1 )
          gameswf::free_internal(p);
        break;
      case 1:
        if ( *(_BYTE *)(*(_DWORD *)this + 1) == 5 )
          v59 = *(_DWORD *)(*(_DWORD *)this + 4);
        else
          v59 = 0;
        v68 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v59 + 28);
        gameswf::tu_string::tu_string((gameswf::tu_string *)v104, "align");
        v60 = *((_DWORD *)this + 3);
        v61 = *(_DWORD *)(v60 + 104);
        if ( v61 )
        {
          v62 = *(_DWORD *)(v60 + 100);
          v63 = *(unsigned __int8 *)(v62 + 4);
          if ( !*(_BYTE *)(v62 + 4) )
          {
            gameswf::smart_ptr_proxy::operator=((_DWORD **)(v60 + 100), (_DWORD *)*(unsigned __int8 *)(v62 + 4));
            v61 = v63;
            *(_DWORD *)(v60 + 104) = v63;
          }
        }
        gameswf::tu_string::tu_string((gameswf::tu_string *)v106, "right");
        v64 = gameswf::permanent_string_cache::get((char **)(v61 + 44), (const gameswf::tu_string *)v106);
        v76 = 0;
        v75[0] = 0;
        v75[1] = 0;
        gameswf::as_value::set_tu_string((gameswf::as_value *)v75, v64);
        v68(v59, v104, v75);
        gameswf::as_value::drop_refs((gameswf::as_value *)v75);
        if ( v106[0] == -1 )
          gameswf::free_internal(v107);
        if ( v104[0] == 255 )
          gameswf::free_internal(v105);
        break;
      case 3:
        if ( *(_BYTE *)(*(_DWORD *)this + 1) == 5 )
          v49 = *(_DWORD *)(*(_DWORD *)this + 4);
        else
          v49 = 0;
        v65 = *(void (__fastcall **)(int, void **, _BYTE *))(*(_DWORD *)v49 + 28);
        gameswf::tu_string::tu_string((gameswf::tu_string *)v102, "align");
        player = gameswf::fn_call::get_player(this);
        gameswf::tu_string::tu_string((gameswf::tu_string *)v103, "justify");
        v51 = gameswf::permanent_string_cache::get((char **)(player + 44), (const gameswf::tu_string *)v103);
        v74 = 0;
        v73[0] = 0;
        v73[1] = 0;
        gameswf::as_value::set_tu_string((gameswf::as_value *)v73, v51);
        v65(v49, v102, v73);
        gameswf::as_value::drop_refs((gameswf::as_value *)v73);
        gameswf::tu_string::~tu_string(v103);
        gameswf::tu_string::~tu_string(v102);
        break;
    }
  }
  else
  {
    if ( *(_BYTE *)(*(_DWORD *)this + 1) == 5 )
      v32 = *(_DWORD *)(*(_DWORD *)this + 4);
    v66 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v32 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v112, "align");
    v33 = *((_DWORD *)this + 3);
    v34 = *(_DWORD *)(v33 + 104);
    if ( v34 )
    {
      v35 = *(_BYTE **)(v33 + 100);
      if ( !v35[4] )
      {
        v52 = (*(_DWORD *)v35)-- == 1;
        if ( v52 )
          gameswf::free_internal(v35);
        v34 = 0;
        *(_DWORD *)(v33 + 104) = 0;
        *(_DWORD *)(v33 + 100) = 0;
      }
    }
    gameswf::tu_string::tu_string((gameswf::tu_string *)v114, "left");
    v36 = gameswf::permanent_string_cache::get((char **)(v34 + 44), (const gameswf::tu_string *)v114);
    v80 = 0;
    v79[0] = 0;
    v79[1] = 0;
    gameswf::as_value::set_tu_string((gameswf::as_value *)v79, v36);
    v66(v32, v112, v79);
    gameswf::as_value::drop_refs((gameswf::as_value *)v79);
    if ( v114[0] == -1 )
      gameswf::free_internal(v115);
    if ( v112[0] == -1 )
      gameswf::free_internal(v113);
  }
  if ( *(_BYTE *)(*(_DWORD *)this + 1) == 5 )
    v37 = *(_DWORD *)(*(_DWORD *)this + 4);
  else
    v37 = 0;
  v38 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v37 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v100, "font");
  v39 = *((_DWORD *)this + 3);
  v40 = *(_DWORD *)(v39 + 104);
  if ( v40 )
  {
    v41 = *(_BYTE **)(v39 + 100);
    if ( !v41[4] )
    {
      v52 = (*(_DWORD *)v41)-- == 1;
      if ( v52 )
        gameswf::free_internal(v41);
      v40 = 0;
      *(_DWORD *)(v39 + 104) = 0;
      *(_DWORD *)(v39 + 100) = 0;
    }
  }
  v42 = gameswf::permanent_string_cache::get(
          (char **)(v40 + 44),
          (const gameswf::tu_string *)(*(_DWORD *)(v2 + 376) + 48));
  v72 = 0;
  v71[0] = 0;
  v71[1] = 0;
  gameswf::as_value::set_tu_string((gameswf::as_value *)v71, v42);
  v38(v37, v100, v71);
  gameswf::as_value::drop_refs((gameswf::as_value *)v71);
  if ( v100[0] == 255 )
    gameswf::free_internal(v101);
  if ( *(_BYTE *)(*(_DWORD *)this + 1) == 5 )
    v43 = *(_DWORD *)(*(_DWORD *)this + 4);
  else
    v43 = 0;
  v44 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v43 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v98, "bold");
  v45 = *(_BYTE *)(*(_DWORD *)(v2 + 376) + 77);
  v70[0] = 0;
  v70[4] = v45;
  v70[1] = 1;
  v44(v43, v98, v70);
  gameswf::as_value::drop_refs((gameswf::as_value *)v70);
  if ( v98[0] == 255 )
    gameswf::free_internal(v99);
  if ( *(_BYTE *)(*(_DWORD *)this + 1) == 5 )
    v46 = *(_DWORD *)(*(_DWORD *)this + 4);
  else
    v46 = 0;
  v47 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v46 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v96, "italic");
  v48 = *(_BYTE *)(*(_DWORD *)(v2 + 376) + 76);
  v69[0] = 0;
  v69[4] = v48;
  v69[1] = 1;
  v47(v46, v96, v69);
  gameswf::as_value::drop_refs((gameswf::as_value *)v69);
  if ( v96[0] == 255 )
    gameswf::free_internal(v97);
}


// ===== 7928cc gameswf::edit_text_character::display(void) =====
void __fastcall gameswf::edit_text_character::display(gameswf::edit_text_character *this)
{
  gameswf::player *v2; // r0
  _BYTE *v3; // r3
  int root; // r0
  int v5; // r7
  _BYTE *v6; // r0
  _BYTE *v7; // r0
  int v8; // r3
  int v9; // r8
  int v10; // r3
  _BYTE *v11; // r0
  int v12; // r3
  bool v13; // zf
  char *world_matrix; // r0
  float v15; // r1
  float v16; // r2
  float v17; // r3
  float v18; // r1
  float *v19; // r3
  float v20; // r10
  float v21; // r8
  float v22; // r11
  float v23; // r12
  int v24; // r3
  void (__fastcall *v25)(int, int); // r3
  int v26; // r3
  gameswf::edit_text_character *v27; // r7
  gameswf::edit_text_character *v28; // r8
  _BYTE *v29; // r0
  int v30; // r9
  int v31; // r11
  int v32; // r5
  int v33; // r3
  int v34; // r5
  int v35; // r6
  float v36; // r8
  float v37; // r7
  float v38; // r0
  float v39; // r0
  float v40; // r5
  float v41; // r5
  int v42; // r3
  int v43; // r6
  unsigned int v44; // r0
  unsigned __int8 v45; // r5
  float v46; // r7
  float v47; // r10
  float v48; // r8
  float v49; // r0
  float v50; // r7
  int v51; // r3
  float v52; // r3
  float v53; // r10
  int v54; // r7
  float v55; // r6
  float v56; // r8
  int v57; // r5
  int v58; // r0
  float v59; // r8
  float v60; // r0
  float v61; // r5
  float v62; // r5
  int v63; // r3
  float v64; // [sp+14h] [bp-C0h]
  int v65; // [sp+18h] [bp-BCh]
  int v66; // [sp+1Ch] [bp-B8h]
  float v67; // [sp+20h] [bp-B4h]
  float v68; // [sp+24h] [bp-B0h]
  int v69; // [sp+24h] [bp-B0h]
  int v70; // [sp+28h] [bp-ACh]
  gameswf::edit_text_character *i; // [sp+2Ch] [bp-A8h]
  float v72; // [sp+30h] [bp-A4h]
  _DWORD *v73; // [sp+34h] [bp-A0h]
  int v74; // [sp+3Ch] [bp-98h]
  _DWORD v75[8]; // [sp+48h] [bp-8Ch] BYREF
  _DWORD v76[10]; // [sp+68h] [bp-6Ch] BYREF
  float v77; // [sp+90h] [bp-44h] BYREF
  float v78; // [sp+94h] [bp-40h]
  float v79; // [sp+98h] [bp-3Ch]
  float v80; // [sp+9Ch] [bp-38h]
  float v81; // [sp+A0h] [bp-34h]
  float v82; // [sp+A4h] [bp-30h]
  int v83; // [sp+A8h] [bp-2Ch]
  int v84; // [sp+ACh] [bp-28h]
  float v85; // [sp+B0h] [bp-24h] BYREF
  float v86; // [sp+B4h] [bp-20h]
  float v87; // [sp+B8h] [bp-1Ch]
  float v88; // [sp+BCh] [bp-18h]
  int v89; // [sp+C0h] [bp-14h]
  float v90; // [sp+C4h] [bp-10h]
  int v91; // [sp+C8h] [bp-Ch] BYREF
  gameswf::edit_text_character *v92; // [sp+CCh] [bp-8h] BYREF

  v2 = *((gameswf::player **)this + 12);
  if ( v2 )
  {
    v3 = *((_BYTE **)this + 11);
    if ( !v3[4] )
    {
      v13 = (*(_DWORD *)v3)-- == 1;
      if ( v13 )
        gameswf::free_internal(v3);
      v2 = nullptr;
      *((_DWORD *)this + 11) = 0;
      *((_DWORD *)this + 12) = 0;
    }
  }
  root = gameswf::player::get_root(v2);
  if ( *(_BYTE *)(root + 133) && !*(_BYTE *)(root + 134) )
  {
    v92 = this;
    gameswf::array<gameswf::smart_ptr<gameswf::character>>::push_back<gameswf::edit_text_character *>(
      (_DWORD *)(root + 152),
      (int *)&v92);
    return;
  }
  if ( *(_BYTE *)(*((_DWORD *)this + 40) + 78) )
  {
    world_matrix = gameswf::character::get_world_matrix(this);
    v15 = *((float *)world_matrix + 1);
    v16 = *((float *)world_matrix + 2);
    v17 = *((float *)world_matrix + 3);
    v85 = *(float *)world_matrix;
    v86 = v15;
    v87 = v16;
    v88 = v17;
    v18 = *((float *)world_matrix + 5);
    v89 = *((int *)world_matrix + 4);
    v90 = v18;
    if ( gameswf::s_render_handler )
      (*(void (__fastcall **)(int, float *))(*(_DWORD *)gameswf::s_render_handler + 80))(
        gameswf::s_render_handler,
        &v85);
    v19 = *((float **)this + 40);
    v77 = 0.0;
    v78 = 0.0;
    v79 = 0.0;
    v80 = 0.0;
    v81 = 0.0;
    v82 = 0.0;
    v83 = 0;
    v84 = 0;
    v21 = v19[11];
    v77 = v19[9];
    v20 = v77;
    v78 = v21;
    v23 = v19[11];
    v79 = v19[10];
    v22 = v79;
    v80 = v23;
    v68 = v19[12];
    v81 = v19[9];
    v67 = v81;
    v82 = v68;
    v66 = *((_DWORD *)v19 + 12);
    v24 = *((_DWORD *)v19 + 10);
    v84 = v66;
    v64 = v23;
    v83 = v24;
    v65 = v24;
    LC_API_MEMSET_0(v75, 0, 0x48u);
    v76[4] = v65;
    v76[5] = v66;
    v75[6] = v65;
    *(float *)&v76[2] = v22;
    *(float *)&v76[3] = v64;
    *(float *)&v76[6] = v67;
    *(float *)&v76[7] = v68;
    *(float *)&v76[8] = v20;
    *(float *)&v76[9] = v21;
    *(float *)v75 = v20;
    *(float *)&v75[1] = v21;
    *(float *)&v75[2] = v22;
    *(float *)&v75[3] = v64;
    *(float *)&v75[4] = v67;
    *(float *)&v75[5] = v68;
    v75[7] = v66;
    *(float *)v76 = v20;
    *(float *)&v76[1] = v21;
    if ( gameswf::s_render_handler )
    {
      (*(void (__fastcall **)(int, _DWORD, char *))(*(_DWORD *)gameswf::s_render_handler + 108))(
        gameswf::s_render_handler,
        0,
        (char *)this + 404);
      if ( gameswf::s_render_handler )
      {
        (*(void (__fastcall **)(int, _DWORD *, int))(*(_DWORD *)gameswf::s_render_handler + 88))(
          gameswf::s_render_handler,
          v75,
          4);
        if ( gameswf::s_render_handler )
        {
          v25 = *(void (__fastcall **)(int, int))(*(_DWORD *)gameswf::s_render_handler + 120);
          v91 = -16777216;
          v25(gameswf::s_render_handler, -16777216);
          if ( gameswf::s_render_handler )
          {
            (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)gameswf::s_render_handler + 124))(
              gameswf::s_render_handler,
              0);
            if ( gameswf::s_render_handler )
              (*(void (__fastcall **)(int, _DWORD *, int))(*(_DWORD *)gameswf::s_render_handler + 96))(
                gameswf::s_render_handler,
                v76,
                5);
          }
        }
      }
    }
  }
  v5 = *((_DWORD *)this + 12);
  if ( v5 )
  {
    v6 = *((_BYTE **)this + 11);
    if ( !v6[4] )
    {
      v13 = (*(_DWORD *)v6)-- == 1;
      if ( v13 )
        gameswf::free_internal(v6);
      v5 = 0;
      *((_DWORD *)this + 11) = 0;
      *((_DWORD *)this + 12) = 0;
      goto LABEL_32;
    }
  }
  if ( *(float *)(*(_DWORD *)(*(_DWORD *)(v5 + 172) + 12) + 4) != 1.0 )
  {
LABEL_32:
    if ( gameswf::s_render_handler )
    {
      *(_BYTE *)(gameswf::s_render_handler + 4) = 0;
      v5 = *((_DWORD *)this + 12);
    }
    goto LABEL_11;
  }
  if ( gameswf::s_render_handler )
  {
    *(_BYTE *)(gameswf::s_render_handler + 4) = *(_DWORD *)(*((_DWORD *)this + 40) + 148) != 0;
    v5 = *((_DWORD *)this + 12);
  }
LABEL_11:
  if ( v5 )
  {
    v7 = *((_BYTE **)this + 11);
    if ( !v7[4] )
    {
      v13 = (*(_DWORD *)v7)-- == 1;
      if ( v13 )
        gameswf::free_internal(v7);
      v5 = 0;
      *((_DWORD *)this + 11) = 0;
      *((_DWORD *)this + 12) = 0;
    }
  }
  if ( *(_BYTE *)(v5 + 152) )
  {
    if ( gameswf::render_cache::is_valid((gameswf::edit_text_character *)((char *)this + 216), this) )
    {
      if ( gameswf::s_render_handler )
        (*(void (__fastcall **)(int, char *))(*(_DWORD *)gameswf::s_render_handler + 100))(
          gameswf::s_render_handler,
          (char *)this + 216);
      goto LABEL_26;
    }
    v5 = *((_DWORD *)this + 12);
  }
  if ( v5 )
  {
    v8 = *((_DWORD *)this + 11);
    v9 = *(unsigned __int8 *)(v8 + 4);
    if ( !*(_BYTE *)(v8 + 4) )
    {
      gameswf::smart_ptr_proxy::operator=((_DWORD **)this + 11, (_DWORD *)*(unsigned __int8 *)(v8 + 4));
      v5 = v9;
      *((_DWORD *)this + 12) = v9;
    }
  }
  if ( *(_BYTE *)(v5 + 152) && gameswf::s_render_handler )
    (*(void (__fastcall **)(int, char *))(*(_DWORD *)gameswf::s_render_handler + 76))(
      gameswf::s_render_handler,
      (char *)this + 216);
  v87 = 0.0;
  v88 = 0.0;
  v90 = 0.0;
  v86 = 0.0;
  *(float *)&v89 = 1.0;
  v85 = 1.0;
  if ( gameswf::filter_engine::s_instance )
    goto LABEL_21;
  v26 = *((_DWORD *)this + 20);
  if ( *(int *)(v26 + 8) <= 0 )
  {
    v27 = this;
    while ( 1 )
    {
      v28 = *((gameswf::edit_text_character **)v27 + 16);
      if ( !v28 )
        goto LABEL_21;
      v29 = *((_BYTE **)v27 + 15);
      if ( !v29[4] )
        break;
      v26 = *((_DWORD *)v28 + 20);
      v27 = *((gameswf::edit_text_character **)v27 + 16);
      if ( *(int *)(v26 + 8) > 0 )
      {
        v69 = *(_DWORD *)(v26 + 8);
        goto LABEL_71;
      }
    }
    v13 = (*(_DWORD *)v29)-- == 1;
    if ( v13 )
      gameswf::free_internal(v29);
    *((_DWORD *)v27 + 16) = 0;
    *((_DWORD *)v27 + 15) = 0;
    goto LABEL_21;
  }
  v69 = *(_DWORD *)(v26 + 8);
  v28 = this;
LABEL_71:
  if ( v69 - 1 < 0 )
  {
LABEL_21:
    if ( *((int *)this + 42) > 0 )
      gameswf::display_glyph_records(
        nullptr,
        this,
        (_DWORD *)this + 41,
        *(gameswf::movie_definition_sub **)(*((_DWORD *)this + 40) + 32),
        nullptr,
        0,
        0,
        0);
    goto LABEL_23;
  }
  v30 = 44 * (v69 - 1);
  v73 = (_DWORD *)((char *)this + 164);
  v31 = 0;
  v74 = 1;
  for ( i = v28; ; v26 = *((_DWORD *)i + 20) )
  {
    v32 = *(_DWORD *)(v26 + 4);
    v33 = *(_DWORD *)(v32 + v30);
    v34 = v32 + v30;
    if ( v33 == 2 )
    {
      v52 = *(float *)(v34 + 36);
      v53 = *(float *)(v34 + 32);
      v91 = -1;
      BYTE2(v91) = *(_BYTE *)(v34 + 4);
      BYTE1(v91) = *(_BYTE *)(v34 + 5);
      LOBYTE(v91) = *(_BYTE *)(v34 + 6);
      v54 = *(unsigned __int8 *)(v34 + 7);
      HIBYTE(v91) = *(_BYTE *)(v34 + 7);
      v55 = *(float *)(v34 + 36);
      v56 = *(float *)(v34 + 32);
      v57 = *(_DWORD *)(v34 + 16);
      if ( v56 >= v55 )
        v55 = v56;
      v58 = (int)(float)((float)v54 * (float)((float)v57 / 10.0));
      if ( v58 <= 254 )
      {
        HIBYTE(v91) = (int)(float)((float)v54 * (float)((float)v57 / 10.0));
        if ( !(_BYTE)v58 )
          goto LABEL_80;
      }
      else
      {
        HIBYTE(v91) = -1;
      }
      v77 = v85;
      v78 = v86;
      v79 = v87;
      v80 = v88;
      v81 = *(float *)&v89;
      v82 = v90;
      v59 = (float)-(int)v53 * 20.0;
      v60 = (float)-(int)v52 * 20.0;
      v61 = (float)((float)(v59 * v85) + (float)(v60 * v86)) + v87;
      if ( v61 < -3.4028e38 || v61 > 3.4028e38 )
        v61 = 0.0;
      v79 = v61;
      v62 = (float)((float)(v59 * v80) + (float)(v60 * v81)) + v82;
      if ( v62 < -3.4028e38 || v62 > 3.4028e38 )
        v62 = 0.0;
      v63 = *((_DWORD *)this + 40);
      v82 = v62;
      gameswf::display_glyph_records(
        &v77,
        this,
        v73,
        *(gameswf::movie_definition_sub **)(v63 + 32),
        (char *)&v91,
        (unsigned int)v55,
        0,
        0);
    }
    else if ( v33 )
    {
      if ( v33 == 1 )
      {
        v43 = (unsigned __int8)(unsigned int)*(float *)(v34 + 32);
        v44 = (unsigned int)*(float *)(v34 + 36);
        v45 = v44;
        if ( (unsigned __int8)v44 | v43 )
        {
          v77 = v85;
          v78 = v86;
          v79 = v87;
          v80 = v88;
          v81 = *(float *)&v89;
          v82 = v90;
          v46 = (float)-v43 * 20.0;
          v47 = (float)-(unsigned __int8)v44 * 20.0;
          v48 = (float)((float)(v46 * v85) + (float)(v47 * v86)) + v87;
          if ( v48 < -3.4028e38 || v48 > 3.4028e38 )
            v48 = 0.0;
          v79 = v48;
          v49 = v46 * v80;
          v50 = (float)((float)(v46 * v80) + (float)(v47 * v81)) + v82;
          if ( (float)((float)(v49 + (float)(v47 * v81)) + v82) < -3.4028e38 || v50 > 3.4028e38 )
            v50 = 0.0;
          v51 = *((_DWORD *)this + 40);
          v82 = v50;
          gameswf::display_glyph_records(
            &v77,
            this,
            v73,
            *(gameswf::movie_definition_sub **)(v51 + 32),
            nullptr,
            0,
            v43,
            v45);
          v74 = 0;
        }
      }
    }
    else
    {
      v35 = (int)*(float *)(v34 + 32);
      v70 = (int)*(float *)(v34 + 36);
      v36 = *(float *)(v34 + 8);
      v37 = *(float *)(v34 + 12);
      v72 = (float)-v35 + (float)(v37 * cosf(v36));
      v38 = sinf(v36);
      v91 = -1;
      BYTE2(v91) = *(_BYTE *)(v34 + 4);
      BYTE1(v91) = *(_BYTE *)(v34 + 5);
      LOBYTE(v91) = *(_BYTE *)(v34 + 6);
      HIBYTE(v91) = *(_BYTE *)(v34 + 7);
      v77 = v85;
      v78 = v86;
      v79 = v87;
      v80 = v88;
      v82 = v90;
      v81 = *(float *)&v89;
      v39 = (float)((float)-v70 + (float)(v37 * v38)) * 20.0;
      v40 = (float)((float)((float)(v72 * 20.0) * v85) + (float)(v39 * v86)) + v87;
      if ( v40 < -3.4028e38 || v40 > 3.4028e38 )
        v40 = 0.0;
      v79 = v40;
      v41 = (float)((float)((float)(v72 * 20.0) * v80) + (float)(v39 * v81)) + v82;
      if ( v41 < -3.4028e38 || v41 > 3.4028e38 )
        v41 = 0.0;
      v42 = *((_DWORD *)this + 40);
      v82 = v41;
      gameswf::display_glyph_records(
        &v77,
        this,
        v73,
        *(gameswf::movie_definition_sub **)(v42 + 32),
        (char *)&v91,
        0,
        v35,
        v70);
    }
LABEL_80:
    ++v31;
    v30 -= 44;
    if ( v31 == v69 )
      break;
  }
  if ( v74 )
    goto LABEL_21;
LABEL_23:
  v10 = *((_DWORD *)this + 12);
  if ( v10 )
  {
    v11 = *((_BYTE **)this + 11);
    if ( !v11[4] )
    {
      v13 = (*(_DWORD *)v11)-- == 1;
      if ( v13 )
        gameswf::free_internal(v11);
      v10 = 0;
      *((_DWORD *)this + 11) = 0;
      *((_DWORD *)this + 12) = 0;
    }
  }
  if ( *(_BYTE *)(v10 + 152) && gameswf::s_render_handler )
    (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)gameswf::s_render_handler + 76))(gameswf::s_render_handler, 0);
LABEL_26:
  if ( *((_BYTE *)this + 332) )
    gameswf::edit_text_character::show_cursor(this);
  v12 = *((_DWORD *)this + 21);
  if ( v12 )
  {
    if ( *(_DWORD *)(v12 + 96) )
      gameswf::character::do_display_callback(this);
  }
}


// ===== 79352c gameswf::texture_cache::verify_integrity(gameswf::texture_cache::region *) =====
int __fastcall gameswf::texture_cache::verify_integrity(int a1)
{
  (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 52) + 36))(*(_DWORD *)(a1 + 52));
  return (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 52) + 40))(*(_DWORD *)(a1 + 52));
}


// ===== 793560 gameswf::texture_cache::get_region_size_requirement(int &,int &) =====
int __fastcall gameswf::texture_cache::get_region_size_requirement(gameswf::texture_cache *this, int *a2, int *a3)
{
  int v3; // r3
  int v4; // r3
  int result; // r0
  int v6; // r3
  int v7; // r3

  v3 = *(_DWORD *)this / 16;
  if ( *(_DWORD *)this % 16 > 0 )
    ++v3;
  v4 = 16 * v3;
  if ( v4 < 16 )
    v4 = 16;
  *(_DWORD *)this = v4;
  result = *a2 + 15;
  v6 = *a2 / 16;
  if ( *a2 % 16 > 0 )
    ++v6;
  v7 = 16 * v6;
  if ( v7 < 16 )
    v7 = 16;
  *a2 = v7;
  return result;
}


// ===== 7935ec gameswf::texture_cache::unlock_all(gameswf::player_context *) =====
int __fastcall gameswf::texture_cache::unlock_all(int this, gameswf::player_context *a2)
{
  int v2; // r5
  int v3; // r4
  int v4; // r4

  v2 = this;
  v3 = *(_DWORD *)(*(_DWORD *)(this + 12) + 40);
  if ( v3 && *(_DWORD *)(v3 + 60) )
  {
    this = (*(int (__fastcall **)(_DWORD, gameswf::player_context *))(**(_DWORD **)(v3 + 52) + 28))(
             *(_DWORD *)(v3 + 52),
             a2);
    *(_DWORD *)(v3 + 60) = 0;
  }
  v4 = *(_DWORD *)(*(_DWORD *)(v2 + 16) + 12);
  if ( v4 )
  {
    if ( *(_DWORD *)(v4 + 60) )
    {
      this = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v4 + 52) + 28))(*(_DWORD *)(v4 + 52));
      *(_DWORD *)(v4 + 60) = 0;
    }
  }
  return this;
}


// ===== 793668 gameswf::hash<gameswf::texture_cache::key,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::key>>::erase(gameswf::hash<gameswf::texture_cache::key,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::key>>::iterator const&) =====
int *__fastcall gameswf::hash<gameswf::texture_cache::key,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::key>>::erase(
        int *result,
        int a2)
{
  int *v2; // r3
  int v3; // r12
  int v4; // r4
  int v5; // r2
  int v6; // r5
  int v7; // r6
  int v8; // r2
  int v9; // r2
  int v10; // r3
  _DWORD *i; // r2
  int v12; // r2
  _DWORD *v13; // r1
  int v14; // r3
  bool v15; // zf
  int v16; // r3

  v2 = *(int **)a2;
  if ( *(_DWORD *)a2 )
  {
    v3 = *v2;
    if ( *v2 )
    {
      v4 = *(_DWORD *)(a2 + 4);
      v5 = *(_DWORD *)(v3 + 4);
      if ( v4 <= v5 && result == v2 )
      {
        v6 = 4 * v4 + 1;
        v7 = v3 + 8 * v6;
        v8 = v5 & *(_DWORD *)(v7 + 4);
        if ( v8 == v4 )
        {
          v14 = *(_DWORD *)(v3 + 8 * v6);
          v15 = v14 == -1;
          if ( v14 == -1 )
          {
            v16 = -2;
            *(_DWORD *)(v3 + 8 * v6) = -2;
          }
          else
          {
            v16 = -1;
          }
          if ( v15 )
            v16 = 0;
          *(_DWORD *)(v7 + 4) = v16;
        }
        else
        {
          v9 = 4 * v8 + 1;
          v10 = *(_DWORD *)(v3 + 8 * v9);
          for ( i = (_DWORD *)(v3 + 8 * v9); v10 != v4; i = (_DWORD *)(v3 + 8 * v12) )
          {
            v12 = 4 * v10 + 1;
            v10 = *(_DWORD *)(v3 + 8 * v12);
          }
          *i = *(_DWORD *)(v3 + 8 * v6);
          v13 = (_DWORD *)(**(_DWORD **)a2 + 8 * (4 * *(_DWORD *)(a2 + 4) + 1));
          *v13 = -2;
          v13[1] = 0;
        }
        --*(_DWORD *)*result;
      }
    }
  }
  return result;
}


// ===== 793754 gameswf::hash<gameswf::texture_cache::region *,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::region *>>::find_index(gameswf::texture_cache::region * const&) =====
int __fastcall gameswf::hash<gameswf::texture_cache::region *,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::region *>>::find_index(
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


// ===== 793814 gameswf::hash<gameswf::texture_cache::key,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::key>>::erase(gameswf::texture_cache::key const&) =====
int *__fastcall gameswf::hash<gameswf::texture_cache::key,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::key>>::erase(
        int *a1,
        _DWORD *a2)
{
  int *result; // r0
  _DWORD v4[2]; // [sp+0h] [bp-8h] BYREF

  result = (int *)gameswf::hash<gameswf::texture_cache::key,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::key>>::find_index(
                    a1,
                    a2);
  if ( (int)result >= 0 )
  {
    v4[0] = a1;
    v4[1] = result;
    if ( a1 )
    {
      if ( *a1 )
      {
        if ( (int)result <= *(_DWORD *)(*a1 + 4) )
          return gameswf::hash<gameswf::texture_cache::key,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::key>>::erase(
                   a1,
                   (int)v4);
      }
    }
  }
  return result;
}


// ===== 79386c gameswf::hash<gameswf::texture_cache::region *,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::region *>>::clear(void) =====
void __fastcall gameswf::hash<gameswf::texture_cache::region *,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::region *>>::clear(
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


// ===== 7938ec gameswf::array<gameswf::texture_cache::region *>::reserve(int) =====
void __fastcall gameswf::array<gameswf::texture_cache::region *>::reserve(int a1, int a2)
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


// ===== 793968 gameswf::array<gameswf::texture_cache::region>::resize(int) =====
void __fastcall gameswf::array<gameswf::texture_cache::region>::resize(_DWORD *a1, int a2)
{
  int v4; // r6
  int v5; // r3
  int v6; // r6
  int v7; // r2

  v4 = a1[1];
  if ( a2 && a2 > a1[2] )
    gameswf::array<gameswf::texture_cache::region>::reserve((int)a1, a2 + (a2 >> 1));
  if ( v4 < a2 )
  {
    v5 = v4;
    v6 = 16 * v4;
    do
    {
      ++v5;
      v7 = *a1 + v6;
      *(_QWORD *)v7 = 0;
      *(_DWORD *)(v7 + 12) = 0;
      *(_DWORD *)(v7 + 8) = 0;
      v6 += 16;
    }
    while ( v5 != a2 );
  }
  a1[1] = a2;
}


// ===== 7939dc gameswf::hash<gameswf::texture_cache::region *,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::region *>>::set_raw_capacity(int) =====
void __fastcall gameswf::hash<gameswf::texture_cache::region *,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::region *>>::set_raw_capacity(
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
    gameswf::hash<gameswf::texture_cache::region *,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::region *>>::clear(a1);
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
            gameswf::hash<gameswf::texture_cache::region *,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::region *>>::add(
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


// ===== 793b34 gameswf::hash<gameswf::texture_cache::region *,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::region *>>::check_expand(void) =====
void __fastcall gameswf::hash<gameswf::texture_cache::region *,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::region *>>::check_expand(
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
  gameswf::hash<gameswf::texture_cache::region *,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::region *>>::set_raw_capacity(
    a1,
    v2);
}


// ===== 793b68 gameswf::hash<gameswf::texture_cache::region *,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::region *>>::add(gameswf::texture_cache::region * const&,gameswf::texture_cache::region * const&) =====
_DWORD *__fastcall gameswf::hash<gameswf::texture_cache::region *,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::region *>>::add(
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

  gameswf::hash<gameswf::texture_cache::region *,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::region *>>::check_expand(a1);
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


// ===== 793ccc gameswf::hash<gameswf::texture_cache::region *,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::region *>>::operator[](gameswf::texture_cache::region * const&) =====
int __fastcall gameswf::hash<gameswf::texture_cache::region *,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::region *>>::operator[](
        int *a1,
        _DWORD *a2)
{
  int index; // r0
  int v6; // [sp+4h] [bp-8h] BYREF

  index = gameswf::hash<gameswf::texture_cache::region *,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::region *>>::find_index(
            a1,
            a2);
  if ( index < 0 )
  {
    v6 = 0;
    gameswf::hash<gameswf::texture_cache::region *,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::region *>>::add(
      (_DWORD **)a1,
      a2,
      &v6);
    index = gameswf::hash<gameswf::texture_cache::region *,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::region *>>::find_index(
              a1,
              a2);
  }
  return *a1 + 16 * index + 20;
}


// ===== 793d24 gameswf::array<gameswf::texture_cache::region *>::remove(int) =====
_DWORD *__fastcall gameswf::array<gameswf::texture_cache::region *>::remove(_DWORD *result, int a2)
{
  int v2; // r2
  _DWORD *v3; // r4

  v2 = result[1];
  v3 = result;
  if ( v2 == 1 )
  {
    result[1] = 0;
  }
  else
  {
    result = memmove((void *)(*result + 4 * a2), (const void *)(*result + 4 * (a2 + 1)), 4 * (v2 - 1 - a2));
    --v3[1];
  }
  return result;
}


// ===== 793d78 gameswf::texture_cache::verify_integrity(void) =====
void __fastcall gameswf::texture_cache::verify_integrity(gameswf::texture_cache *this)
{
  int v2; // r4
  int v3; // r2
  int v4; // r4
  char *v5; // r7
  int v6; // r1
  int v7; // r3
  int v8; // r2
  int v9; // r1
  int v10; // r0
  int v11; // r12
  int v12; // r3
  int v13; // r0
  int v14; // r12
  _DWORD *v15; // [sp+4h] [bp-4h] BYREF

  if ( *((int *)this + 9) > 0 )
  {
    v2 = 0;
    do
    {
      gameswf::texture_cache::verify_integrity((int)this);
      ++v2;
    }
    while ( v2 < *((_DWORD *)this + 9) );
  }
  v3 = *((_DWORD *)this + 12);
  v4 = 0;
  v15 = nullptr;
  v5 = (char *)this + 48;
  if ( v3 )
  {
    v6 = *(_DWORD *)(v3 + 4);
    if ( v6 >= 0 )
    {
      v12 = 8;
      do
      {
        v13 = *(_DWORD *)(v3 + v12);
        v14 = v3 + v12;
        v12 += 32;
        if ( v13 != -2 && *(_DWORD *)(v14 + 4) != -1 )
          break;
        ++v4;
      }
      while ( v4 <= v6 );
    }
    if ( this != (gameswf::texture_cache *)-48 )
    {
      v7 = *(_DWORD *)v5;
      while ( v7 && v4 <= *(_DWORD *)(v7 + 4) )
      {
        gameswf::texture_cache::verify_integrity((int)this);
        *(_DWORD *)gameswf::hash<gameswf::texture_cache::region *,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::region *>>::operator[](
                     (int *)&v15,
                     (_DWORD *)(*(_DWORD *)v5 + 32 * v4 + 8 + 24)) = *(_DWORD *)(*(_DWORD *)v5 + 32 * v4 + 8 + 24);
        v7 = *(_DWORD *)v5;
        v8 = *(_DWORD *)(*(_DWORD *)v5 + 4);
        if ( v4 <= v8 && ++v4 <= v8 )
        {
          v9 = 32 * v4 + 8;
          do
          {
            v10 = *(_DWORD *)(v7 + v9);
            v11 = v7 + v9;
            v9 += 32;
            if ( v10 != -2 && *(_DWORD *)(v11 + 4) != -1 )
              break;
            ++v4;
          }
          while ( v4 <= v8 );
        }
      }
    }
  }
  gameswf::hash<gameswf::texture_cache::region *,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::region *>>::clear(&v15);
}


// ===== 793ed8 gameswf::texture_cache::reset(void) =====
void __fastcall gameswf::texture_cache::reset(gameswf::texture_cache *this)
{
  int v2; // r3
  __int64 v3; // r2
  int v4; // r0
  int v5; // r6
  int v6; // r0
  void *v7; // r8
  int v8; // r6
  int v9; // r5
  int v10; // r10
  int v11; // r0
  int v12; // r3
  int v13; // r3
  int v14; // r6
  int v15; // r5
  int v16; // r2

  gameswf::hash<gameswf::texture_cache::key,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::key>>::clear((_DWORD **)this + 12);
  v2 = *((_DWORD *)this + 9);
  if ( v2 < 0 )
  {
    v16 = 4 * v2;
    do
    {
      ++v2;
      *(_DWORD *)(*((_DWORD *)this + 8) + v16) = 0;
      v16 += 4;
    }
    while ( v2 );
  }
  v3 = *(_QWORD *)this + 1LL;
  *((_QWORD *)this + 1) = v3;
  *(_QWORD *)this = v3;
  HIDWORD(v3) = *((_DWORD *)this + 13);
  *((_DWORD *)this + 9) = 0;
  v4 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)HIDWORD(v3) + 36))(HIDWORD(v3));
  v5 = v4 + 15;
  if ( v4 >= 0 )
    v5 = v4;
  v6 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 13) + 40))(*((_DWORD *)this + 13));
  v7 = *((void **)this + 15);
  v8 = v5 >> 4;
  v9 = v6 / 16;
  if ( v7 )
  {
    v10 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 13) + 36))(*((_DWORD *)this + 13));
    v11 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 13) + 40))(*((_DWORD *)this + 13));
    LC_API_MEMSET_0(v7, 0, *((_DWORD *)this + 14) * v11 * v10);
  }
  gameswf::array<gameswf::texture_cache::region>::resize((_DWORD *)this + 4, v8 * v9);
  v12 = *((_DWORD *)this + 4);
  *(_QWORD *)v12 = 0;
  *(_DWORD *)(v12 + 12) = v9;
  *(_DWORD *)(v12 + 8) = v8;
  v13 = *((_DWORD *)this + 9);
  v14 = *((_DWORD *)this + 4);
  v15 = v13 + 1;
  if ( v13 + 1 > *((_DWORD *)this + 10) )
  {
    gameswf::array<gameswf::texture_cache::region *>::reserve((int)this + 32, v15 + (v15 >> 1));
    v13 = *((_DWORD *)this + 9);
  }
  *(_DWORD *)(*((_DWORD *)this + 8) + 4 * v13) = v14;
  *((_DWORD *)this + 9) = v15;
}


// ===== 794030 gameswf::texture_cache::texture_cache(int,int,int,bool) =====
gameswf::texture_cache *__fastcall gameswf::texture_cache::texture_cache(
        gameswf::texture_cache *this,
        int a2,
        int *a3,
        int a4,
        bool a5)
{
  gameswf::ref_counted *v6; // r0
  void **v7; // r5
  gameswf::ref_counted *v8; // r0
  int v10; // [sp+0h] [bp-Ch] BYREF
  int v11; // [sp+4h] [bp-8h] BYREF

  v11 = a2;
  *((_QWORD *)this + 1) = 0;
  *(_QWORD *)this = 0;
  *((_DWORD *)this + 14) = a4;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_BYTE *)this + 28) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_BYTE *)this + 44) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 15) = 0;
  v10 = (int)a3;
  gameswf::texture_cache::get_region_size_requirement((gameswf::texture_cache *)&v11, &v10, a3);
  if ( *((_DWORD *)this + 14) == 1 )
  {
    v6 = (gameswf::ref_counted *)(*(int (__fastcall **)(int, int, int, _DWORD))(*(_DWORD *)gameswf::s_render_handler + 12))(
                                   gameswf::s_render_handler,
                                   v11,
                                   v10,
                                   0);
  }
  else
  {
    if ( !a5 )
    {
      v7 = (void **)operator new(0x18u, 0);
      gameswf::image_rgba::image_rgba((gameswf::image_rgba *)v7, v11, v10);
      LC_API_MEMSET_0(v7[2], 0, (_DWORD)v7[5] * (_DWORD)v7[4]);
      v8 = (gameswf::ref_counted *)(*(int (__fastcall **)(int, void **))(*(_DWORD *)gameswf::s_render_handler + 20))(
                                     gameswf::s_render_handler,
                                     v7);
      gameswf::smart_ptr<gameswf::bitmap_info>::set_ref((gameswf::ref_counted **)this + 13, v8);
      (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 13) + 20))(*((_DWORD *)this + 13));
      gameswf::destruct<gameswf::image_rgba>((void (__fastcall ***)(_DWORD))v7);
      goto LABEL_6;
    }
    v6 = (gameswf::ref_counted *)(*(int (__fastcall **)(int, int, int))(*(_DWORD *)gameswf::s_render_handler + 32))(
                                   gameswf::s_render_handler,
                                   v11,
                                   v10);
  }
  gameswf::smart_ptr<gameswf::bitmap_info>::set_ref((gameswf::ref_counted **)this + 13, v6);
  (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 13) + 20))(*((_DWORD *)this + 13));
LABEL_6:
  gameswf::texture_cache::reset(this);
  return this;
}


// ===== 7941c0 gameswf::texture_cache::texture_cache(int,int,int,bool) =====
gameswf::texture_cache *__fastcall gameswf::texture_cache::texture_cache(
        gameswf::texture_cache *this,
        int a2,
        int *a3,
        int a4,
        bool a5)
{
  gameswf::ref_counted *v6; // r0
  void **v7; // r5
  gameswf::ref_counted *v8; // r0
  int v10; // [sp+0h] [bp-Ch] BYREF
  int v11; // [sp+4h] [bp-8h] BYREF

  v11 = a2;
  *((_QWORD *)this + 1) = 0;
  *(_QWORD *)this = 0;
  *((_DWORD *)this + 14) = a4;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_BYTE *)this + 28) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_BYTE *)this + 44) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 15) = 0;
  v10 = (int)a3;
  gameswf::texture_cache::get_region_size_requirement((gameswf::texture_cache *)&v11, &v10, a3);
  if ( *((_DWORD *)this + 14) == 1 )
  {
    v6 = (gameswf::ref_counted *)(*(int (__fastcall **)(int, int, int, _DWORD))(*(_DWORD *)gameswf::s_render_handler + 12))(
                                   gameswf::s_render_handler,
                                   v11,
                                   v10,
                                   0);
  }
  else
  {
    if ( !a5 )
    {
      v7 = (void **)operator new(0x18u, 0);
      gameswf::image_rgba::image_rgba((gameswf::image_rgba *)v7, v11, v10);
      LC_API_MEMSET_0(v7[2], 0, (_DWORD)v7[5] * (_DWORD)v7[4]);
      v8 = (gameswf::ref_counted *)(*(int (__fastcall **)(int, void **))(*(_DWORD *)gameswf::s_render_handler + 20))(
                                     gameswf::s_render_handler,
                                     v7);
      gameswf::smart_ptr<gameswf::bitmap_info>::set_ref((gameswf::ref_counted **)this + 13, v8);
      (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 13) + 20))(*((_DWORD *)this + 13));
      gameswf::destruct<gameswf::image_rgba>((void (__fastcall ***)(_DWORD))v7);
      goto LABEL_6;
    }
    v6 = (gameswf::ref_counted *)(*(int (__fastcall **)(int, int, int))(*(_DWORD *)gameswf::s_render_handler + 32))(
                                   gameswf::s_render_handler,
                                   v11,
                                   v10);
  }
  gameswf::smart_ptr<gameswf::bitmap_info>::set_ref((gameswf::ref_counted **)this + 13, v6);
  (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 13) + 20))(*((_DWORD *)this + 13));
LABEL_6:
  gameswf::texture_cache::reset(this);
  return this;
}


// ===== 794350 gameswf::texture_cache::subdivide_region(gameswf::texture_cache::region *,int,int) =====
void __fastcall gameswf::texture_cache::subdivide_region(int a1, int a2, int a3, int a4)
{
  int v6; // r6
  int v9; // r0
  int v10; // r3
  int v11; // r10
  int v12; // r9
  int v13; // r11
  int v14; // r2
  int v15; // r3
  int v16; // r11
  int v17; // r3
  int v18; // r6
  int v19; // [sp+0h] [bp-Ch]
  int v20; // [sp+4h] [bp-8h]

  v6 = *(_DWORD *)(a2 + 8);
  v20 = *(_DWORD *)(a2 + 12);
  v9 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 52) + 36))(*(_DWORD *)(a1 + 52));
  v10 = *(_DWORD *)(a1 + 16);
  v11 = v9;
  v12 = (a2 - v10) >> 4;
  if ( v6 - a3 > 0 )
  {
    v13 = v10 + 16 * (v12 + a3);
    *(_DWORD *)(v13 + 8) = v6 - a3;
    *(_DWORD *)(v13 + 12) = a4;
    *(_QWORD *)v13 = 0;
    v14 = *(_DWORD *)(a1 + 36);
    v15 = v14 + 1;
    if ( v14 + 1 > *(_DWORD *)(a1 + 40) )
    {
      v19 = v14 + 1;
      gameswf::array<gameswf::texture_cache::region *>::reserve(a1 + 32, v15 + (v15 >> 1));
      v14 = *(_DWORD *)(a1 + 36);
      v15 = v19;
    }
    *(_DWORD *)(*(_DWORD *)(a1 + 32) + 4 * v14) = v13;
    *(_DWORD *)(a1 + 36) = v15;
  }
  if ( v20 - a4 > 0 )
  {
    v16 = *(_DWORD *)(a1 + 16) + 16 * (v12 + a4 * (v11 / 16));
    *(_DWORD *)(v16 + 8) = v6;
    *(_DWORD *)(v16 + 12) = v20 - a4;
    *(_QWORD *)v16 = 0;
    v17 = *(_DWORD *)(a1 + 36);
    v18 = v17 + 1;
    if ( v17 + 1 > *(_DWORD *)(a1 + 40) )
    {
      gameswf::array<gameswf::texture_cache::region *>::reserve(a1 + 32, v18 + (v18 >> 1));
      v17 = *(_DWORD *)(a1 + 36);
    }
    *(_DWORD *)(*(_DWORD *)(a1 + 32) + 4 * v17) = v16;
    *(_DWORD *)(a1 + 36) = v18;
  }
  *(_DWORD *)(a2 + 12) = a4;
  *(_DWORD *)(a2 + 8) = a3;
}


// ===== 794488 gameswf::texture_cache::find_used_region(int,int) =====
int __fastcall gameswf::texture_cache::find_used_region(gameswf::texture_cache *this, int a2, int a3)
{
  int v3; // r3
  int v5; // r7
  int v6; // r8
  int *v7; // r5
  int v8; // r1
  int i; // r12
  int v10; // r6
  int result; // r0
  int v12; // r4
  _DWORD *v13; // r0
  int v14; // r1
  int v15; // r9
  int v16; // r1
  int v17; // r0
  int v18; // r4
  int v19; // r2
  int v20; // r2
  int v21; // r0
  int v22; // r4
  int v23; // r1
  int v24; // r2
  int v25; // r3
  _DWORD v26[5]; // [sp+8h] [bp-14h] BYREF

  v3 = *((_DWORD *)this + 12);
  v5 = a2 / 16;
  v6 = a3 / 16;
  v7 = (int *)((char *)this + 48);
  if ( !v3 )
    return 0;
  v8 = *(_DWORD *)(v3 + 4);
  if ( v8 >= 0 )
  {
    v20 = 8;
    for ( i = 0; i <= v8; ++i )
    {
      v21 = *(_DWORD *)(v3 + v20);
      v22 = v3 + v20;
      v20 += 32;
      if ( v21 != -2 && *(_DWORD *)(v22 + 4) != -1 )
        break;
    }
  }
  else
  {
    i = 0;
  }
  if ( !v7 )
    return 0;
  v10 = 0;
LABEL_20:
  while ( v3 )
  {
    v19 = *(_DWORD *)(v3 + 4);
    if ( i > v19 )
      break;
    v12 = 32 * i + 8;
    v13 = (_DWORD *)(v3 + v12);
    v14 = *(_DWORD *)(v3 + v12 + 24);
    if ( v5 > *(_DWORD *)(v14 + 8) || v6 > *(_DWORD *)(v14 + 12) || v10 && *(_QWORD *)v10 <= *(_QWORD *)v14 )
    {
      v15 = *v7;
      goto LABEL_14;
    }
    v23 = v13[3];
    v24 = v13[4];
    v25 = v13[5];
    v26[0] = v13[2];
    v26[1] = v23;
    v26[2] = v24;
    v26[3] = v25;
    v15 = *v7;
    v19 = *(_DWORD *)(*v7 + 4);
    v10 = *(_DWORD *)(*v7 + v12 + 24);
    v3 = *v7;
    if ( i <= v19 )
    {
LABEL_14:
      if ( ++i <= v19 )
      {
        v16 = 32 * i + 8;
        while ( 1 )
        {
          v17 = *(_DWORD *)(v3 + v16);
          v18 = v3 + v16;
          v16 += 32;
          if ( v17 != -2 && *(_DWORD *)(v18 + 4) != -1 )
            break;
          if ( ++i > v19 )
          {
            v3 = v15;
            goto LABEL_20;
          }
        }
      }
      v3 = v15;
    }
  }
  result = v10;
  if ( v10 )
  {
    gameswf::hash<gameswf::texture_cache::key,gameswf::texture_cache::region *,gameswf::fixed_size_hash<gameswf::texture_cache::key>>::erase(
      v7,
      v26);
    if ( v5 < *(_DWORD *)(v10 + 8) || v6 < *(_DWORD *)(v10 + 12) )
      gameswf::texture_cache::subdivide_region((int)this, v10, v5, v6);
    *((_QWORD *)this + 1) = *(_QWORD *)this;
    return v10;
  }
  return result;
}


// ===== 794668 gameswf::texture_cache::find_available_region(int,int) =====
int __fastcall gameswf::texture_cache::find_available_region(gameswf::texture_cache *this, int a2, int a3)
{
  int v3; // r3
  int v5; // r7
  int v6; // r5
  int v7; // r4
  int v8; // r2
  int v9; // r1
  int v10; // r0
  int v11; // r12
  int v12; // r0
  int v13; // r8
  int v14; // r4

  v3 = *((_DWORD *)this + 9);
  v5 = a2 / 16;
  v6 = a3 / 16;
  if ( v3 <= 0 )
    return 0;
  v7 = *((_DWORD *)this + 8);
  v8 = 0;
  v9 = -1;
  do
  {
    v10 = *(_DWORD *)(v7 + 4 * v8);
    v11 = *(_DWORD *)(v10 + 8);
    if ( v5 <= v11 )
    {
      v12 = *(_DWORD *)(v10 + 12);
      if ( v6 <= v12 )
      {
        if ( v9 == -1 || (v13 = *(_DWORD *)(v7 + 4 * v9), v11 < *(_DWORD *)(v13 + 8)) || v12 < *(_DWORD *)(v13 + 12) )
          v9 = v8;
      }
    }
    ++v8;
  }
  while ( v8 != v3 );
  if ( v9 == -1 )
    return 0;
  v14 = *(_DWORD *)(v7 + 4 * v9);
  gameswf::array<gameswf::texture_cache::region *>::remove((_DWORD *)this + 8, v9);
  if ( v5 < *(_DWORD *)(v14 + 8) || v6 < *(_DWORD *)(v14 + 12) )
    gameswf::texture_cache::subdivide_region((int)this, v14, v5, v6);
  return v14;
}


// ===== 794750 gameswf::point::twips_to_pixels(void) =====
float __fastcall gameswf::point::twips_to_pixels(gameswf::point *this)
{
  float result; // r0

  *(float *)this = *(float *)this / 20.0;
  result = *((float *)this + 1) / 20.0;
  *((float *)this + 1) = result;
  return result;
}


// ===== 794784 gameswf::point::pixels_to_twips(void) =====
float __fastcall gameswf::point::pixels_to_twips(gameswf::point *this)
{
  float result; // r0

  *(float *)this = *(float *)this * 20.0;
  result = *((float *)this + 1) * 20.0;
  *((float *)this + 1) = result;
  return result;
}


// ===== 7947b8 gameswf::matrix::set_lerp(gameswf::matrix const&,gameswf::matrix const&,float) =====
bool __fastcall gameswf::matrix::set_lerp(
        gameswf::matrix *this,
        const gameswf::matrix *a2,
        const gameswf::matrix *a3,
        float a4)
{
  float v5; // r5
  float v6; // r5
  float v7; // r5
  float v8; // r5
  float v9; // r5
  float v10; // r4
  _BOOL4 result; // r0

  v5 = *(float *)a2 + (float)(a4 * (float)(*(float *)a3 - *(float *)a2));
  if ( v5 < -3.4028e38 || v5 > 3.4028e38 )
    v5 = 0.0;
  *(float *)this = v5;
  v6 = *((float *)a2 + 3) + (float)(a4 * (float)(*((float *)a3 + 3) - *((float *)a2 + 3)));
  if ( v6 < -3.4028e38 || v6 > 3.4028e38 )
    v6 = 0.0;
  *((float *)this + 3) = v6;
  v7 = *((float *)a2 + 1) + (float)(a4 * (float)(*((float *)a3 + 1) - *((float *)a2 + 1)));
  if ( v7 < -3.4028e38 || v7 > 3.4028e38 )
    v7 = 0.0;
  *((float *)this + 1) = v7;
  v8 = *((float *)a2 + 4) + (float)(a4 * (float)(*((float *)a3 + 4) - *((float *)a2 + 4)));
  if ( v8 < -3.4028e38 || v8 > 3.4028e38 )
    v8 = 0.0;
  *((float *)this + 4) = v8;
  v9 = *((float *)a2 + 2) + (float)(a4 * (float)(*((float *)a3 + 2) - *((float *)a2 + 2)));
  if ( v9 < -3.4028e38 || v9 > 3.4028e38 )
    v9 = 0.0;
  *((float *)this + 2) = v9;
  v10 = *((float *)a2 + 5) + (float)(a4 * (float)(*((float *)a3 + 5) - *((float *)a2 + 5)));
  result = v10 >= -3.4028e38;
  if ( v10 < -3.4028e38 || (result = v10 <= 3.4028e38, v10 > 3.4028e38) )
    *((_DWORD *)this + 5) = 0;
  else
    *((float *)this + 5) = v10;
  return result;
}


// ===== 794a14 gameswf::matrix::transform(gameswf::rect *) =====
bool __fastcall gameswf::matrix::transform(float *a1, float *a2)
{
  float v3; // r6
  float v4; // r10
  float v5; // r7
  float v6; // r8
  float v7; // r6
  float v8; // r11
  float v9; // r9
  float v10; // r10
  float v11; // r0
  float v12; // r8
  bool v13; // r3
  float v14; // r5
  float v15; // r7
  float v16; // r6
  float v17; // r8
  float v18; // r5
  _BOOL4 result; // r0
  float v20; // [sp+0h] [bp-3Ch]
  float v21; // [sp+4h] [bp-38h]
  float v22; // [sp+4h] [bp-38h]
  float v23; // [sp+8h] [bp-34h]
  float v24; // [sp+Ch] [bp-30h]
  float v25; // [sp+10h] [bp-2Ch]
  bool v26; // [sp+17h] [bp-25h]
  float v27; // [sp+28h] [bp-14h]
  float v28; // [sp+2Ch] [bp-10h]
  float v29; // [sp+30h] [bp-Ch]
  float v30; // [sp+34h] [bp-8h]

  v3 = a2[2];
  v24 = *a2 * *a1;
  v4 = v3 * a1[1];
  v5 = (float)(v24 + v4) + a1[2];
  v25 = *a2 * a1[3];
  v6 = v3 * a1[4];
  v7 = (float)(v25 + (float)(v3 * a1[4])) + a1[5];
  v21 = a2[1];
  v8 = v21 * *a1;
  v9 = (float)(v8 + v4) + a1[2];
  v20 = v21 * a1[3];
  v10 = (float)(v20 + v6) + a1[5];
  v22 = a2[3];
  v23 = v22 * a1[1];
  v27 = (float)(v8 + v23) + a1[2];
  v11 = v22 * a1[4];
  v28 = (float)(v20 + v11) + a1[5];
  v29 = (float)(v24 + v23) + a1[2];
  v30 = (float)(v25 + v11) + a1[5];
  a2[1] = v5;
  *a2 = v5;
  a2[3] = v7;
  a2[2] = v7;
  v26 = v5 < v9;
  v12 = v9;
  if ( v5 < v9 )
    v9 = v5;
  *a2 = v9;
  v13 = v7 < v10;
  v14 = v10;
  if ( v7 < v10 )
    v10 = v7;
  if ( !v26 )
    v12 = v5;
  a2[2] = v10;
  a2[1] = v12;
  v15 = v27;
  if ( !v13 )
    v14 = v7;
  a2[3] = v14;
  v16 = v28;
  if ( v9 >= v27 )
    v9 = v27;
  *a2 = v9;
  if ( v10 >= v28 )
    v10 = v28;
  a2[2] = v10;
  if ( v12 >= v27 )
    v15 = v12;
  a2[1] = v15;
  v17 = v29;
  if ( v14 >= v28 )
    v16 = v14;
  a2[3] = v16;
  v18 = v30;
  if ( v9 >= v29 )
    v9 = v29;
  *a2 = v9;
  if ( v10 >= v30 )
    v10 = v30;
  a2[2] = v10;
  if ( v15 >= v29 )
    v17 = v15;
  a2[1] = v17;
  result = v16 < v30;
  if ( v16 >= v30 )
    v18 = v16;
  a2[3] = v18;
  return result;
}


// ===== 794cec gameswf::matrix::does_flip(void) =====
bool __fastcall gameswf::matrix::does_flip(gameswf::matrix *this)
{
  return (float)((float)(*(float *)this * *((float *)this + 4)) - (float)(*((float *)this + 1) * *((float *)this + 3))) < 0.0;
}


// ===== 794d38 gameswf::cxform::concatenate(gameswf::cxform const&) =====
bool __fastcall gameswf::cxform::concatenate(float *a1, float *a2)
{
  float v3; // r6
  float v4; // r6
  float v5; // r6
  float v6; // r6
  float v7; // r6
  float v8; // r6
  float v9; // r6
  float v10; // r5
  _BOOL4 result; // r0

  v3 = (float)(*a1 * a2[1]) + a1[1];
  if ( v3 < -3.4028e38 || v3 > 3.4028e38 )
    v3 = 0.0;
  a1[1] = v3;
  v4 = (float)(a1[2] * a2[3]) + a1[3];
  if ( v4 < -3.4028e38 || v4 > 3.4028e38 )
    v4 = 0.0;
  a1[3] = v4;
  v5 = (float)(a1[4] * a2[5]) + a1[5];
  if ( v5 < -3.4028e38 || v5 > 3.4028e38 )
    v5 = 0.0;
  a1[5] = v5;
  v6 = (float)(a1[6] * a2[7]) + a1[7];
  if ( v6 < -3.4028e38 || v6 > 3.4028e38 )
    v6 = 0.0;
  a1[7] = v6;
  v7 = *a2 * *a1;
  if ( v7 < -3.4028e38 || v7 > 3.4028e38 )
    v7 = 0.0;
  *a1 = v7;
  v8 = a2[2] * a1[2];
  if ( v8 < -3.4028e38 || v8 > 3.4028e38 )
    v8 = 0.0;
  a1[2] = v8;
  v9 = a2[4] * a1[4];
  if ( v9 < -3.4028e38 || v9 > 3.4028e38 )
    v9 = 0.0;
  a1[4] = v9;
  v10 = a2[6] * a1[6];
  result = v10 >= -3.4028e38;
  if ( v10 < -3.4028e38 || (result = v10 <= 3.4028e38, v10 > 3.4028e38) )
    a1[6] = 0.0;
  else
    a1[6] = v10;
  return result;
}


// ===== 794f8c gameswf::cxform::transform(gameswf::rgba) =====
int __fastcall gameswf::cxform::transform(float *a1, unsigned int a2)
{
  float v2; // r7
  unsigned __int8 v3; // r7
  float v4; // r6
  unsigned __int8 v5; // r6
  float v6; // r5
  unsigned __int8 v7; // r5
  float v8; // r4
  unsigned __int8 v9; // r3

  v2 = (float)((float)(unsigned __int8)a2 * *a1) + a1[1];
  if ( v2 < 255.0 )
  {
    if ( v2 > 0.0 )
      v3 = (unsigned int)v2;
    else
      v3 = 0;
  }
  else
  {
    v3 = -1;
  }
  v4 = (float)((float)BYTE1(a2) * a1[2]) + a1[3];
  if ( v4 < 255.0 )
  {
    if ( v4 > 0.0 )
      v5 = (unsigned int)v4;
    else
      v5 = 0;
  }
  else
  {
    v5 = -1;
  }
  v6 = (float)((float)BYTE2(a2) * a1[4]) + a1[5];
  if ( v6 < 255.0 )
  {
    if ( v6 > 0.0 )
      v7 = (unsigned int)v6;
    else
      v7 = 0;
  }
  else
  {
    v7 = -1;
  }
  v8 = (float)((float)HIBYTE(a2) * a1[6]) + a1[7];
  if ( v8 < 255.0 )
  {
    if ( v8 > 0.0 )
      v9 = (unsigned int)v8;
    else
      v9 = 0;
  }
  else
  {
    v9 = -1;
  }
  return v3 | (unsigned __int16)(v5 << 8) | (v7 << 16) & 0xFFFFFF | (v9 << 24);
}


// ===== 795130 gameswf::cxform::clamp(void) =====
bool __fastcall gameswf::cxform::clamp(gameswf::cxform *this)
{
  float v1; // r5
  float v3; // r6
  float v4; // r5
  float v5; // r6
  float v6; // r5
  float v7; // r6
  float v8; // r5
  float v9; // r6
  _BOOL4 result; // r0

  v1 = *(float *)this;
  if ( *(float *)this < 1.0 )
  {
    if ( v1 <= 0.0 || v1 < -3.4028e38 || v1 > 3.4028e38 )
      v1 = 0.0;
  }
  else
  {
    v1 = 1.0;
  }
  v3 = *((float *)this + 2);
  *(float *)this = v1;
  if ( v3 < 1.0 )
  {
    if ( v3 <= 0.0 || v3 < -3.4028e38 || v3 > 3.4028e38 )
      v3 = 0.0;
  }
  else
  {
    v3 = 1.0;
  }
  v4 = *((float *)this + 4);
  *((float *)this + 2) = v3;
  if ( v4 < 1.0 )
  {
    if ( v4 <= 0.0 || v4 < -3.4028e38 || v4 > 3.4028e38 )
      v4 = 0.0;
  }
  else
  {
    v4 = 1.0;
  }
  v5 = *((float *)this + 6);
  *((float *)this + 4) = v4;
  if ( v5 < 1.0 )
  {
    if ( v5 <= 0.0 || v5 < -3.4028e38 || v5 > 3.4028e38 )
      v5 = 0.0;
  }
  else
  {
    v5 = 1.0;
  }
  v6 = *((float *)this + 1);
  *((float *)this + 6) = v5;
  if ( v6 < 255.0 )
  {
    if ( v6 > -255.0 )
    {
      if ( v6 >= -3.4028e38 )
      {
        if ( v6 > 3.4028e38 )
          v6 = 0.0;
      }
      else
      {
        v6 = 0.0;
      }
    }
    else
    {
      v6 = -255.0;
    }
  }
  else
  {
    v6 = 255.0;
  }
  v7 = *((float *)this + 3);
  *((float *)this + 1) = v6;
  if ( v7 < 255.0 )
  {
    if ( v7 > -255.0 )
    {
      if ( v7 >= -3.4028e38 )
      {
        if ( v7 > 3.4028e38 )
          v7 = 0.0;
      }
      else
      {
        v7 = 0.0;
      }
    }
    else
    {
      v7 = -255.0;
    }
  }
  else
  {
    v7 = 255.0;
  }
  v8 = *((float *)this + 5);
  *((float *)this + 3) = v7;
  if ( v8 < 255.0 )
  {
    if ( v8 > -255.0 )
    {
      if ( v8 >= -3.4028e38 )
      {
        if ( v8 > 3.4028e38 )
          v8 = 0.0;
      }
      else
      {
        v8 = 0.0;
      }
    }
    else
    {
      v8 = -255.0;
    }
  }
  else
  {
    v8 = 255.0;
  }
  v9 = *((float *)this + 7);
  *((float *)this + 5) = v8;
  result = v9 < 255.0;
  if ( v9 >= 255.0 )
  {
    v9 = 255.0;
LABEL_37:
    *((float *)this + 7) = v9;
    return result;
  }
  result = v9 > -255.0;
  if ( v9 <= -255.0 )
  {
    v9 = -255.0;
    goto LABEL_37;
  }
  result = v9 >= -3.4028e38;
  if ( v9 >= -3.4028e38 )
  {
    result = v9 <= 3.4028e38;
    if ( v9 <= 3.4028e38 )
      goto LABEL_37;
  }
  *((_DWORD *)this + 7) = 0;
  return result;
}


// ===== 7954d8 gameswf::rgba::set_lerp(gameswf::rgba const&,gameswf::rgba const&,float) =====
int __fastcall gameswf::rgba::set_lerp(gameswf::rgba *this, const gameswf::rgba *a2, const gameswf::rgba *a3, float a4)
{
  int result; // r0

  *(_BYTE *)this = (int)(float)((float)((float)*(unsigned __int8 *)a2
                                      + (float)(a4
                                              * (float)((float)*(unsigned __int8 *)a3 - (float)*(unsigned __int8 *)a2)))
                              + 0.5);
  *((_BYTE *)this + 1) = (int)(float)((float)((float)*((unsigned __int8 *)a2 + 1)
                                            + (float)(a4
                                                    * (float)((float)*((unsigned __int8 *)a3 + 1)
                                                            - (float)*((unsigned __int8 *)a2 + 1))))
                                    + 0.5);
  *((_BYTE *)this + 2) = (int)(float)((float)((float)*((unsigned __int8 *)a2 + 2)
                                            + (float)(a4
                                                    * (float)((float)*((unsigned __int8 *)a3 + 2)
                                                            - (float)*((unsigned __int8 *)a2 + 2))))
                                    + 0.5);
  result = (int)(float)((float)((float)*((unsigned __int8 *)a2 + 3)
                              + (float)(a4
                                      * (float)((float)*((unsigned __int8 *)a3 + 3) - (float)*((unsigned __int8 *)a2 + 3))))
                      + 0.5);
  *((_BYTE *)this + 3) = result;
  return result;
}


// ===== 795600 gameswf::rect::enclose_transformed_rect(gameswf::matrix const&,gameswf::rect const&) =====
bool __fastcall gameswf::rect::enclose_transformed_rect(float *a1, float *a2, float *a3)
{
  float v4; // r8
  float v5; // r11
  float v6; // r4
  float v7; // r6
  float v8; // r9
  float v9; // r0
  float v10; // r11
  float v11; // r10
  float v12; // r5
  float v13; // r4
  float v14; // r8
  float v15; // r6
  float v16; // r9
  float v17; // r10
  _BOOL4 result; // r0
  float v19; // [sp+4h] [bp-28h]
  float v20; // [sp+8h] [bp-24h]
  float v21; // [sp+Ch] [bp-20h]
  float v22; // [sp+Ch] [bp-20h]
  float v23; // [sp+10h] [bp-1Ch]
  float v24; // [sp+14h] [bp-18h]
  float v25; // [sp+18h] [bp-14h]
  float v26; // [sp+1Ch] [bp-10h]
  float v27; // [sp+20h] [bp-Ch]

  v26 = *a3 * *a2;
  v19 = a2[1];
  v21 = a3[2];
  v4 = a2[2];
  v5 = v21 * v19;
  v24 = (float)(v26 + (float)(v21 * v19)) + v4;
  v6 = a2[3];
  v27 = *a3 * v6;
  v20 = a2[4];
  v7 = a2[5];
  v8 = v21 * v20;
  v25 = (float)(v27 + (float)(v21 * v20)) + v7;
  v22 = a3[1];
  v9 = *a2 * v22;
  v10 = v4 + (float)(v5 + v9);
  v23 = v7 + (float)(v8 + (float)(v6 * v22));
  v11 = a3[3];
  v12 = v4 + (float)(v9 + (float)(v19 * v11));
  v13 = v7 + (float)((float)(v6 * v22) + (float)(v20 * v11));
  v14 = v4 + (float)(v26 + (float)(v19 * v11));
  v15 = v7 + (float)(v27 + (float)(v20 * v11));
  if ( v24 >= v10 )
    v16 = v10;
  else
    v16 = v24;
  if ( v25 < v23 )
    v17 = v25;
  else
    v17 = v23;
  if ( v24 >= v10 )
    v10 = v24;
  if ( v25 >= v23 )
    v23 = v25;
  if ( v12 <= v16 )
    v16 = v12;
  if ( v13 <= v17 )
    v17 = v13;
  if ( v12 <= v10 )
    v12 = v10;
  if ( v13 <= v23 )
    v13 = v23;
  if ( v14 <= v16 )
    v16 = v14;
  *a1 = v16;
  if ( v15 <= v17 )
    v17 = v15;
  a1[2] = v17;
  if ( v14 <= v12 )
    v14 = v12;
  a1[1] = v14;
  result = v15 > v13;
  if ( v15 <= v13 )
    v15 = v13;
  a1[3] = v15;
  return result;
}


// ===== 7958e0 gameswf::rect::set_lerp(gameswf::rect const&,gameswf::rect const&,float) =====
float __fastcall gameswf::rect::set_lerp(float *a1, float *a2, float *a3, float a4)
{
  float result; // r0

  *a1 = *a2 + (float)(a4 * (float)(*a3 - *a2));
  a1[2] = a2[2] + (float)(a4 * (float)(a3[2] - a2[2]));
  a1[1] = a2[1] + (float)(a4 * (float)(a3[1] - a2[1]));
  result = a2[3] + (float)(a4 * (float)(a3[3] - a2[3]));
  a1[3] = result;
  return result;
}


// ===== 7959a8 gameswf::rect::twips_to_pixels(void) =====
float __fastcall gameswf::rect::twips_to_pixels(gameswf::rect *this)
{
  float result; // r0

  *(float *)this = *(float *)this / 20.0;
  *((float *)this + 2) = *((float *)this + 2) / 20.0;
  *((float *)this + 1) = *((float *)this + 1) / 20.0;
  result = *((float *)this + 3) / 20.0;
  *((float *)this + 3) = result;
  return result;
}


// ===== 795a04 gameswf::rect::pixels_to_twips(void) =====
float __fastcall gameswf::rect::pixels_to_twips(gameswf::rect *this)
{
  float result; // r0

  *(float *)this = *(float *)this * 20.0;
  *((float *)this + 2) = *((float *)this + 2) * 20.0;
  *((float *)this + 1) = *((float *)this + 1) * 20.0;
  result = *((float *)this + 3) * 20.0;
  *((float *)this + 3) = result;
  return result;
}


// ===== 795a60 `global constructor keyed to'.._.._src_gameswf_gameswf_types.cpp =====
Elf32_Dyn **`global constructor keyed to'.._.._src_gameswf_gameswf_types.cpp()
{
  dword_A2CA4C = 0;
  dword_A2CA50 = 0;
  dword_A2CA58 = 0;
  dword_A2CA78 = 0;
  dword_A2CA54 = 1065353216;
  dword_A2CA74 = 1065353216;
  dword_A2CA48 = 0;
  gameswf::matrix::identity = 1065353216;
  gameswf::cxform::identity = 1065353216;
  dword_A2CA64 = 1065353216;
  dword_A2CA6C = 1065353216;
  dword_A2CA60 = 0;
  dword_A2CA68 = 0;
  dword_A2CA70 = 0;
  return &__GLOBAL_OFFSET_TABLE_;
}


// ===== 795adc gameswf::matrix::set_inverse(gameswf::matrix const&) =====
bool __fastcall gameswf::matrix::set_inverse(gameswf::matrix *this, const gameswf::matrix *a2)
{
  float v2; // r6
  float v4; // r7
  float v5; // r7
  float v6; // r10
  float v7; // r6
  float v8; // r8
  float v9; // r7
  float v10; // r8
  float v11; // r4
  _BOOL4 result; // r0
  float v13; // r6

  v2 = *((float *)a2 + 4);
  v4 = (float)(v2 * *(float *)a2) - (float)(*((float *)a2 + 1) * *((float *)a2 + 3));
  if ( v4 == 0.0 )
  {
    *((_DWORD *)this + 1) = 0;
    *((_DWORD *)this + 2) = 0;
    *((_DWORD *)this + 3) = 0;
    *((_DWORD *)this + 4) = 0;
    *((_DWORD *)this + 5) = 0;
    *((_DWORD *)this + 4) = 1065353216;
    *(_DWORD *)this = 1065353216;
    LODWORD(v13) = *((_DWORD *)a2 + 2) + 0x80000000;
    if ( v13 < -3.4028e38 || v13 > 3.4028e38 )
      v13 = 0.0;
    *((float *)this + 2) = v13;
    LODWORD(v11) = *((_DWORD *)a2 + 5) + 0x80000000;
    result = v11 >= -3.4028e38;
    if ( v11 < -3.4028e38 )
      goto LABEL_13;
  }
  else
  {
    v5 = 1.0 / v4;
    v6 = v5 * v2;
    if ( (float)(v5 * v2) < -3.4028e38 || v6 > 3.4028e38 )
      v6 = 0.0;
    *(float *)this = v6;
    v7 = v5 * *(float *)a2;
    if ( v7 < -3.4028e38 || v7 > 3.4028e38 )
      v7 = 0.0;
    *((float *)this + 4) = v7;
    v8 = COERCE_FLOAT(*((_DWORD *)a2 + 1) + 0x80000000) * v5;
    if ( v8 < -3.4028e38 || v8 > 3.4028e38 )
      v8 = 0.0;
    *((float *)this + 1) = v8;
    v9 = COERCE_FLOAT(*((_DWORD *)a2 + 3) + 0x80000000) * v5;
    if ( v9 < -3.4028e38 || v9 > 3.4028e38 )
      v9 = 0.0;
    *((float *)this + 3) = v9;
    LODWORD(v10) = COERCE_INT((float)(v6 * *((float *)a2 + 2)) + (float)(v8 * *((float *)a2 + 5))) + 0x80000000;
    if ( v10 < -3.4028e38 || v10 > 3.4028e38 )
      v10 = 0.0;
    *((float *)this + 2) = v10;
    LODWORD(v11) = COERCE_INT((float)(v9 * *((float *)a2 + 2)) + (float)(v7 * *((float *)a2 + 5))) + 0x80000000;
    result = v11 >= -3.4028e38;
    if ( v11 < -3.4028e38 )
      goto LABEL_13;
  }
  result = v11 <= 3.4028e38;
  if ( v11 > 3.4028e38 )
  {
LABEL_13:
    *((_DWORD *)this + 5) = 0;
    return result;
  }
  *((float *)this + 5) = v11;
  return result;
}


// ===== 795d9c gameswf::rect::print(void) =====
const char *__fastcall gameswf::rect::print(gameswf::rect *this)
{
  return gameswf::log_msg(
           "xmin = %g, ymin = %g, xmax = %g, ymax = %g\n",
           (const char *)(const char *)HIDWORD(COERCE_UNSIGNED_INT64((float)(*((float *)this + 3) / 20.0))),
           (float)(*(float *)this / 20.0),
           (float)(*((float *)this + 2) / 20.0),
           (float)(*((float *)this + 1) / 20.0),
           (float)(*((float *)this + 3) / 20.0));
}


// ===== 795e30 gameswf::rgba::print(void) =====
const char *__fastcall gameswf::rgba::print(gameswf::rgba *this)
{
  return gameswf::log_msg(
           "rgba: %d %d %d %d\n",
           (const char *)*(unsigned __int8 *)this,
           *((unsigned __int8 *)this + 1),
           *((unsigned __int8 *)this + 2),
           *((unsigned __int8 *)this + 3));
}


// ===== 795e64 gameswf::cxform::print(void) =====
const char *__fastcall gameswf::cxform::print(gameswf::cxform *this, const char *a2)
{
  gameswf::log_msg("    *         +\n", a2);
  gameswf::log_msg(
    "| %4.4f %4.4f|\n",
    (const char *)(const char *)HIDWORD(COERCE_UNSIGNED_INT64(*((float *)this + 1))),
    *(float *)this,
    *((float *)this + 1));
  gameswf::log_msg(
    "| %4.4f %4.4f|\n",
    (const char *)(const char *)HIDWORD(COERCE_UNSIGNED_INT64(*((float *)this + 3))),
    *((float *)this + 2),
    *((float *)this + 3));
  gameswf::log_msg(
    "| %4.4f %4.4f|\n",
    (const char *)(const char *)HIDWORD(COERCE_UNSIGNED_INT64(*((float *)this + 5))),
    *((float *)this + 4),
    *((float *)this + 5));
  return gameswf::log_msg(
           "| %4.4f %4.4f|\n",
           (const char *)(const char *)HIDWORD(COERCE_UNSIGNED_INT64(*((float *)this + 7))),
           *((float *)this + 6),
           *((float *)this + 7));
}


// ===== 795f44 gameswf::matrix::print(void) =====
const char *__fastcall gameswf::matrix::print(gameswf::matrix *this)
{
  gameswf::log_msg(
    "| %4.4f %4.4f %4.4f |\n",
    (const char *)(const char *)HIDWORD(COERCE_UNSIGNED_INT64((float)(*((float *)this + 2) / 20.0))),
    *(float *)this,
    *((float *)this + 1),
    (float)(*((float *)this + 2) / 20.0));
  return gameswf::log_msg(
           "| %4.4f %4.4f %4.4f |\n",
           (const char *)(const char *)HIDWORD(COERCE_UNSIGNED_INT64((float)(*((float *)this + 5) / 20.0))),
           *((float *)this + 3),
           *((float *)this + 4),
           (float)(*((float *)this + 5) / 20.0));
}


// ===== 795fec gameswf::rect::read(gameswf::stream *) =====
float __fastcall gameswf::rect::read(gameswf::rect *this, gameswf::stream *a2)
{
  int uint; // r6
  float result; // r0

  gameswf::stream::align((int)a2);
  uint = gameswf::stream::read_uint(a2, 5);
  *(float *)this = (float)gameswf::stream::read_sint(a2, uint);
  *((float *)this + 1) = (float)gameswf::stream::read_sint(a2, uint);
  *((float *)this + 2) = (float)gameswf::stream::read_sint(a2, uint);
  result = (float)gameswf::stream::read_sint(a2, uint);
  *((float *)this + 3) = result;
  return result;
}


// ===== 796064 gameswf::cxform::read_rgba(gameswf::stream *) =====
int __fastcall gameswf::cxform::read_rgba(gameswf::cxform *this, gameswf::stream *a2)
{
  int uint; // r7
  int v5; // r8
  int result; // r0
  int v7; // r6
  float v8; // r8
  float v9; // r8
  float v10; // r8
  float v11; // r8
  float sint; // r7
  float v13; // r7
  float v14; // r7
  float v15; // r5

  gameswf::stream::align((int)a2);
  uint = gameswf::stream::read_uint(a2, 1);
  v5 = gameswf::stream::read_uint(a2, 1);
  result = gameswf::stream::read_uint(a2, 4);
  v7 = result;
  if ( v5 )
  {
    v8 = (float)gameswf::stream::read_sint(a2, result) * 0.0039062;
    if ( v8 < -3.4028e38 || v8 > 3.4028e38 )
      v8 = 0.0;
    *(float *)this = v8;
    v9 = (float)gameswf::stream::read_sint(a2, v7) * 0.0039062;
    if ( v9 < -3.4028e38 || v9 > 3.4028e38 )
      v9 = 0.0;
    *((float *)this + 2) = v9;
    v10 = (float)gameswf::stream::read_sint(a2, v7) * 0.0039062;
    if ( v10 < -3.4028e38 || v10 > 3.4028e38 )
      v10 = 0.0;
    *((float *)this + 4) = v10;
    v11 = (float)gameswf::stream::read_sint(a2, v7) * 0.0039062;
    result = v11 >= -3.4028e38;
    if ( v11 < -3.4028e38 || (result = v11 <= 3.4028e38, v11 > 3.4028e38) )
      *((_DWORD *)this + 6) = 0;
    else
      *((float *)this + 6) = v11;
    if ( !uint )
      goto LABEL_3;
  }
  else
  {
    *((_DWORD *)this + 6) = 1065353216;
    *(_DWORD *)this = 1065353216;
    *((_DWORD *)this + 2) = 1065353216;
    *((_DWORD *)this + 4) = 1065353216;
    if ( !uint )
    {
LABEL_3:
      *((_DWORD *)this + 7) = 0;
      *((_DWORD *)this + 1) = 0;
      *((_DWORD *)this + 3) = 0;
      *((_DWORD *)this + 5) = 0;
      return result;
    }
  }
  sint = (float)gameswf::stream::read_sint(a2, v7);
  if ( sint < -3.4028e38 || sint > 3.4028e38 )
    sint = 0.0;
  *((float *)this + 1) = sint;
  v13 = (float)gameswf::stream::read_sint(a2, v7);
  if ( v13 < -3.4028e38 || v13 > 3.4028e38 )
    v13 = 0.0;
  *((float *)this + 3) = v13;
  v14 = (float)gameswf::stream::read_sint(a2, v7);
  if ( v14 < -3.4028e38 || v14 > 3.4028e38 )
    v14 = 0.0;
  *((float *)this + 5) = v14;
  v15 = (float)gameswf::stream::read_sint(a2, v7);
  result = v15 >= -3.4028e38;
  if ( v15 < -3.4028e38 || (result = v15 <= 3.4028e38, v15 > 3.4028e38) )
    *((_DWORD *)this + 7) = 0;
  else
    *((float *)this + 7) = v15;
  return result;
}


// ===== 796358 gameswf::cxform::read_rgb(gameswf::stream *) =====
int __fastcall gameswf::cxform::read_rgb(gameswf::cxform *this, gameswf::stream *a2)
{
  int uint; // r7
  int v5; // r8
  int result; // r0
  int v7; // r6
  float v8; // r8
  float v9; // r8
  float v10; // r8
  float sint; // r7
  float v12; // r7
  float v13; // r5

  gameswf::stream::align((int)a2);
  uint = gameswf::stream::read_uint(a2, 1);
  v5 = gameswf::stream::read_uint(a2, 1);
  result = gameswf::stream::read_uint(a2, 4);
  v7 = result;
  if ( v5 )
  {
    v8 = (float)gameswf::stream::read_sint(a2, result) / 255.0;
    if ( v8 < -3.4028e38 || v8 > 3.4028e38 )
      v8 = 0.0;
    *(float *)this = v8;
    v9 = (float)gameswf::stream::read_sint(a2, v7) / 255.0;
    if ( v9 < -3.4028e38 || v9 > 3.4028e38 )
      v9 = 0.0;
    *((float *)this + 2) = v9;
    v10 = (float)gameswf::stream::read_sint(a2, v7) / 255.0;
    result = v10 >= -3.4028e38;
    if ( v10 < -3.4028e38 || (result = v10 <= 3.4028e38, v10 > 3.4028e38) )
      v10 = 0.0;
    *((float *)this + 4) = v10;
    *((_DWORD *)this + 6) = 1065353216;
    if ( !uint )
      goto LABEL_3;
  }
  else
  {
    *((_DWORD *)this + 6) = 1065353216;
    *(_DWORD *)this = 1065353216;
    *((_DWORD *)this + 2) = 1065353216;
    *((_DWORD *)this + 4) = 1065353216;
    if ( !uint )
    {
LABEL_3:
      *((_DWORD *)this + 7) = 0;
      *((_DWORD *)this + 1) = 0;
      *((_DWORD *)this + 3) = 0;
      *((_DWORD *)this + 5) = 0;
      return result;
    }
  }
  sint = (float)gameswf::stream::read_sint(a2, v7);
  if ( sint < -3.4028e38 || sint > 3.4028e38 )
    sint = 0.0;
  *((float *)this + 1) = sint;
  v12 = (float)gameswf::stream::read_sint(a2, v7);
  if ( v12 < -3.4028e38 || v12 > 3.4028e38 )
    v12 = 0.0;
  *((float *)this + 3) = v12;
  v13 = (float)gameswf::stream::read_sint(a2, v7);
  result = v13 >= -3.4028e38;
  if ( v13 < -3.4028e38 || (result = v13 <= 3.4028e38, v13 > 3.4028e38) )
  {
    *((_DWORD *)this + 5) = 0;
    *((_DWORD *)this + 7) = 1065353216;
  }
  else
  {
    *((float *)this + 5) = v13;
    *((_DWORD *)this + 7) = 1065353216;
  }
  return result;
}


// ===== 7965d4 gameswf::matrix::read(gameswf::stream *) =====
int __fastcall gameswf::matrix::read(gameswf::matrix *this, gameswf::stream *a2)
{
  int result; // r0
  int v5; // r6
  float sint; // r7
  float v7; // r4
  int v8; // r7
  float v9; // r6
  float v10; // r6
  int uint; // r7
  float v12; // r6
  float v13; // r6

  gameswf::stream::align((int)a2);
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 4) = 1065353216;
  *(_DWORD *)this = 1065353216;
  if ( gameswf::stream::read_uint(a2, 1) )
  {
    uint = gameswf::stream::read_uint(a2, 5);
    v12 = (float)gameswf::stream::read_sint(a2, uint) * 0.000015259;
    if ( v12 < -3.4028e38 || v12 > 3.4028e38 )
      v12 = 0.0;
    *(float *)this = v12;
    v13 = (float)gameswf::stream::read_sint(a2, uint) * 0.000015259;
    if ( v13 < -3.4028e38 || v13 > 3.4028e38 )
      *((_DWORD *)this + 4) = 0;
    else
      *((float *)this + 4) = v13;
  }
  if ( gameswf::stream::read_uint(a2, 1) )
  {
    v8 = gameswf::stream::read_uint(a2, 5);
    v9 = (float)gameswf::stream::read_sint(a2, v8) * 0.000015259;
    if ( v9 < -3.4028e38 || v9 > 3.4028e38 )
      v9 = 0.0;
    *((float *)this + 3) = v9;
    v10 = (float)gameswf::stream::read_sint(a2, v8) * 0.000015259;
    if ( v10 < -3.4028e38 || v10 > 3.4028e38 )
      *((_DWORD *)this + 1) = 0;
    else
      *((float *)this + 1) = v10;
  }
  result = gameswf::stream::read_uint(a2, 5);
  v5 = result;
  if ( result > 0 )
  {
    sint = (float)gameswf::stream::read_sint(a2, result);
    if ( sint < -3.4028e38 || sint > 3.4028e38 )
      sint = 0.0;
    *((float *)this + 2) = sint;
    v7 = (float)gameswf::stream::read_sint(a2, v5);
    result = v7 >= -3.4028e38;
    if ( v7 < -3.4028e38 || (result = v7 <= 3.4028e38, v7 > 3.4028e38) )
      *((_DWORD *)this + 5) = 0;
    else
      *((float *)this + 5) = v7;
  }
  return result;
}


// ===== 79684c gameswf::rgba::read_rgb(gameswf::stream *) =====
int __fastcall gameswf::rgba::read_rgb(gameswf::rgba *this, gameswf::stream *a2)
{
  int result; // r0

  *(_BYTE *)this = gameswf::stream::read_u8(a2);
  *((_BYTE *)this + 1) = gameswf::stream::read_u8(a2);
  result = gameswf::stream::read_u8(a2);
  *((_BYTE *)this + 3) = -1;
  *((_BYTE *)this + 2) = result;
  return result;
}


// ===== 796888 gameswf::rgba::read_rgba(gameswf::stream *) =====
int __fastcall gameswf::rgba::read_rgba(gameswf::rgba *this, gameswf::stream *a2)
{
  int result; // r0

  gameswf::rgba::read_rgb(this, a2);
  result = gameswf::stream::read_u8(a2);
  *((_BYTE *)this + 3) = result;
  return result;
}


// ===== 7968a8 gameswf::rgba::read(gameswf::stream *,int) =====
int __fastcall gameswf::rgba::read(gameswf::rgba *this, gameswf::stream *a2, int a3)
{
  if ( a3 <= 22 )
    return gameswf::rgba::read_rgb(this, a2);
  else
    return gameswf::rgba::read_rgba(this, a2);
}


// ===== 7968b8 gameswf::matrix::get_rotation(void) =====
float __fastcall gameswf::matrix::get_rotation(gameswf::matrix *this)
{
  float v1; // r5
  float v2; // r0
  float v3; // r1

  v1 = *(float *)this;
  if ( (float)((float)(*(float *)this * *((float *)this + 4)) - (float)(*((float *)this + 3) * *((float *)this + 1))) < 0.0 )
  {
    LODWORD(v3) = LODWORD(v1) + 0x80000000;
    v2 = *((float *)this + 3);
  }
  else
  {
    v2 = *((float *)this + 3);
    v3 = v1;
  }
  return atan2f(v2, v3);
}


// ===== 796920 gameswf::matrix::set_scale_rotation(float,float,float) =====
bool __fastcall gameswf::matrix::set_scale_rotation(gameswf::matrix *this, float a2, float a3, float x)
{
  float v8; // r7
  float v9; // r0
  float v10; // r5
  float v11; // r5
  float v12; // r5
  float v13; // r5
  _BOOL4 result; // r0

  v8 = cosf(x);
  v9 = sinf(x);
  v10 = a2 * v8;
  if ( (float)(a2 * v8) < -3.4028e38 || v10 > 3.4028e38 )
    v10 = 0.0;
  *(float *)this = v10;
  v11 = COERCE_FLOAT(LODWORD(v9) + 0x80000000) * a3;
  if ( v11 < -3.4028e38 || v11 > 3.4028e38 )
    v11 = 0.0;
  *((float *)this + 1) = v11;
  v12 = a2 * v9;
  if ( (float)(a2 * v9) < -3.4028e38 || v12 > 3.4028e38 )
    v12 = 0.0;
  *((float *)this + 3) = v12;
  v13 = a3 * v8;
  result = (float)(a3 * v8) >= -3.4028e38;
  if ( (float)(a3 * v8) < -3.4028e38 || (result = v13 <= 3.4028e38, v13 > 3.4028e38) )
    *((_DWORD *)this + 4) = 0;
  else
    *((float *)this + 4) = v13;
  return result;
}


// ===== 796a64 gameswf::point::get_length(void) =====
float __fastcall gameswf::point::get_length(gameswf::point *this)
{
  return sqrtf((float)(*(float *)this * *(float *)this) + (float)(*((float *)this + 1) * *((float *)this + 1)));
}


// ===== 796aa0 gameswf::point::bitwise_equal(gameswf::point const&) =====
bool __fastcall gameswf::point::bitwise_equal(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 8u) == 0;
}


// ===== 796ab8 gameswf::as_value::to_property(void) =====
int __fastcall gameswf::as_value::to_property(gameswf::as_value *this)
{
  if ( *((_BYTE *)this + 1) == 6 )
    return *((_DWORD *)this + 2);
  else
    return 0;
}


// ===== 796acc gameswf::as_value::get_property_target(void) =====
int __fastcall gameswf::as_value::get_property_target(gameswf::as_value *this)
{
  if ( *((_BYTE *)this + 1) == 6 )
    return *((_DWORD *)this + 1);
  else
    return 0;
}


// ===== 796ae0 gameswf::as_property::get(gameswf::as_value const&,gameswf::as_value*) =====
int __fastcall gameswf::as_property::get(
        gameswf::as_property *this,
        const gameswf::as_value *a2,
        gameswf::as_value *a3)
{
  int result; // r0
  bool v4; // zf
  int v5; // r12
  int (*v6)(void); // r3
  gameswf::as_value *v7; // [sp+4h] [bp-20h]
  int v8; // [sp+8h] [bp-1Ch]
  const gameswf::as_value *v9; // [sp+Ch] [bp-18h]
  int v10; // [sp+10h] [bp-14h]
  int v11; // [sp+14h] [bp-10h]
  int v12; // [sp+18h] [bp-Ch]
  char *v13; // [sp+1Ch] [bp-8h]

  result = *((_DWORD *)this + 3);
  if ( result )
  {
    v4 = *((_BYTE *)a2 + 1) == 5;
    v5 = 0;
    v6 = *(int (**)(void))(*(_DWORD *)result + 100);
    v9 = a2;
    v7 = a3;
    v13 = "get";
    v10 = 0;
    v11 = 0;
    v12 = 0;
    if ( v4 )
      v5 = *((_DWORD *)a2 + 1);
    v8 = v5;
    return v6();
  }
  return result;
}


// ===== 796b44 gameswf::as_value::get_property(gameswf::as_value const&,gameswf::as_value*) =====
int __fastcall gameswf::as_value::get_property(
        gameswf::as_property **this,
        const gameswf::as_value *a2,
        gameswf::as_value *a3)
{
  return gameswf::as_property::get(*(this + 2), a2, a3);
}


// ===== 796b4c gameswf::cast_to<gameswf::as_function>(gameswf::as_object_interface *) =====
int __fastcall gameswf::cast_to<gameswf::as_function>(int a1)
{
  if ( a1 && (*(int (__fastcall **)(int, int))(*(_DWORD *)a1 + 8))(a1, 4) )
    return a1;
  else
    return 0;
}


// ===== 796b80 gameswf::as_value::is_function(void) =====
bool __fastcall gameswf::as_value::is_function(gameswf::as_value *this)
{
  return *((_BYTE *)this + 1) == 5 && gameswf::cast_to<gameswf::as_function>(*((_DWORD *)this + 1)) != 0;
}


// ===== 796bac gameswf::as_value::to_function(void) =====
int __fastcall gameswf::as_value::to_function(gameswf::as_value *this)
{
  if ( *((_BYTE *)this + 1) == 5 )
    return gameswf::cast_to<gameswf::as_function>(*((_DWORD *)this + 1));
  else
    return 0;
}


// ===== 796bc8 gameswf::cast_to<gameswf::as_c_function>(gameswf::as_object_interface const*) =====
int __fastcall gameswf::cast_to<gameswf::as_c_function>(int a1)
{
  if ( a1 && (*(int (__fastcall **)(int, int))(*(_DWORD *)a1 + 8))(a1, 5) )
    return a1;
  else
    return 0;
}


// ===== 796bfc gameswf::as_value::set_property_target(gameswf::as_object *) =====
int __fastcall gameswf::as_value::set_property_target(gameswf::as_value *this, gameswf::as_object *a2)
{
  void (__fastcall ***v3)(_DWORD); // r0

  v3 = *((void (__fastcall ****)(_DWORD))this + 1);
  if ( v3 )
    gameswf::ref_counted::drop_ref(v3);
  *((_DWORD *)this + 1) = a2;
  return gameswf::ref_counted::add_ref((int)a2);
}


// ===== 796c28 gameswf::as_property::~as_property() =====
void __fastcall gameswf::as_property::~as_property(gameswf::as_property *this)
{
  void (__fastcall ***v2)(_DWORD); // r0
  void (__fastcall ***v3)(_DWORD); // r0

  v2 = *((void (__fastcall ****)(_DWORD))this + 4);
  *(_DWORD *)this = off_990B08;
  if ( v2 )
    gameswf::ref_counted::drop_ref(v2);
  v3 = *((void (__fastcall ****)(_DWORD))this + 3);
  if ( v3 )
    gameswf::ref_counted::drop_ref(v3);
  gameswf::ref_counted::~ref_counted(this);
}


// ===== 796c80 gameswf::as_property::~as_property() =====
void __fastcall gameswf::as_property::~as_property(gameswf::as_property *this)
{
  gameswf::as_property::~as_property(this);
  LC_API_FREE_0(this);
}


// ===== 796c9c gameswf::as_property::~as_property() =====
void __fastcall gameswf::as_property::~as_property(gameswf::as_property *this)
{
  void (__fastcall ***v2)(_DWORD); // r0
  void (__fastcall ***v3)(_DWORD); // r0

  v2 = *((void (__fastcall ****)(_DWORD))this + 4);
  *(_DWORD *)this = off_990B08;
  if ( v2 )
    gameswf::ref_counted::drop_ref(v2);
  v3 = *((void (__fastcall ****)(_DWORD))this + 3);
  if ( v3 )
    gameswf::ref_counted::drop_ref(v3);
  gameswf::ref_counted::~ref_counted(this);
}


// ===== 796cf4 gameswf::as_property::as_property(gameswf::as_value const&,gameswf::as_value const&) =====
gameswf::as_property *__fastcall gameswf::as_property::as_property(
        gameswf::as_property *this,
        const gameswf::as_value *a2,
        const gameswf::as_value *a3)
{
  int v6; // r0
  gameswf::ref_counted *v7; // r0
  int v8; // r0
  gameswf::ref_counted *v9; // r0

  gameswf::ref_counted::ref_counted(this);
  v6 = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *(_DWORD *)this = off_990B08;
  if ( *((_BYTE *)a2 + 1) == 5 )
    v6 = *((_DWORD *)a2 + 1);
  v7 = (gameswf::ref_counted *)gameswf::cast_to<gameswf::as_function>(v6);
  gameswf::smart_ptr<gameswf::as_function>::set_ref((gameswf::ref_counted **)this + 3, v7);
  if ( *((_BYTE *)a3 + 1) == 5 )
    v8 = *((_DWORD *)a3 + 1);
  else
    v8 = 0;
  v9 = (gameswf::ref_counted *)gameswf::cast_to<gameswf::as_function>(v8);
  gameswf::smart_ptr<gameswf::as_function>::set_ref((gameswf::ref_counted **)this + 4, v9);
  return this;
}


// ===== 796d80 gameswf::as_property::as_property(gameswf::as_value const&,gameswf::as_value const&) =====
gameswf::as_property *__fastcall gameswf::as_property::as_property(
        gameswf::as_property *this,
        const gameswf::as_value *a2,
        const gameswf::as_value *a3)
{
  int v6; // r0
  gameswf::ref_counted *v7; // r0
  int v8; // r0
  gameswf::ref_counted *v9; // r0

  gameswf::ref_counted::ref_counted(this);
  v6 = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *(_DWORD *)this = off_990B08;
  if ( *((_BYTE *)a2 + 1) == 5 )
    v6 = *((_DWORD *)a2 + 1);
  v7 = (gameswf::ref_counted *)gameswf::cast_to<gameswf::as_function>(v6);
  gameswf::smart_ptr<gameswf::as_function>::set_ref((gameswf::ref_counted **)this + 3, v7);
  if ( *((_BYTE *)a3 + 1) == 5 )
    v8 = *((_DWORD *)a3 + 1);
  else
    v8 = 0;
  v9 = (gameswf::ref_counted *)gameswf::cast_to<gameswf::as_function>(v8);
  gameswf::smart_ptr<gameswf::as_function>::set_ref((gameswf::ref_counted **)this + 4, v9);
  return this;
}


// ===== 796e0c gameswf::as_value::is_instance_of(gameswf::as_function const*) =====
int __fastcall gameswf::as_value::is_instance_of(gameswf::as_value *this, const gameswf::as_function *a2)
{
  gameswf::as_object *v2; // r0
  int result; // r0
  int v4; // r0
  int (__fastcall *v5)(gameswf *, const gameswf::fn_call *); // r3
  bool v6; // zf
  int v7; // r0
  int (__fastcall *v8)(gameswf *, const gameswf::fn_call *); // r3
  bool v9; // zf
  int v10; // r0
  int (__fastcall *v11)(gameswf *, const gameswf::fn_call *); // r3
  bool v12; // zf

  switch ( *((_BYTE *)this + 1) )
  {
    case 1:
      v10 = gameswf::cast_to<gameswf::as_c_function>((int)a2);
      if ( !v10 )
        goto LABEL_3;
      v11 = *(int (__fastcall **)(gameswf *, const gameswf::fn_call *))(v10 + 60);
      v12 = v11 == gameswf::as_global_boolean_ctor;
      if ( v11 != gameswf::as_global_boolean_ctor )
        v12 = v11 == gameswf::as_global_object_ctor;
      result = v12;
      break;
    case 2:
      v7 = gameswf::cast_to<gameswf::as_c_function>((int)a2);
      if ( !v7 )
        goto LABEL_3;
      v8 = *(int (__fastcall **)(gameswf *, const gameswf::fn_call *))(v7 + 60);
      v9 = v8 == gameswf::as_global_number_ctor;
      if ( v8 != gameswf::as_global_number_ctor )
        v9 = v8 == gameswf::as_global_object_ctor;
      result = v9;
      break;
    case 3:
    case 4:
      v4 = gameswf::cast_to<gameswf::as_c_function>((int)a2);
      if ( !v4 )
        goto LABEL_3;
      v5 = *(int (__fastcall **)(gameswf *, const gameswf::fn_call *))(v4 + 60);
      v6 = v5 == gameswf::as_global_string_ctor;
      if ( v5 != gameswf::as_global_string_ctor )
        v6 = v5 == gameswf::as_global_object_ctor;
      result = v6;
      break;
    case 5:
      v2 = *((gameswf::as_object **)this + 1);
      if ( !v2 )
        goto LABEL_3;
      result = gameswf::as_object::is_instance_of(v2, a2);
      break;
    default:
LABEL_3:
      result = 0;
      break;
  }
  return result;
}


// ===== 796f18 gameswf::tu_string::operator==(gameswf::tu_string const&) =====
bool __fastcall gameswf::tu_string::operator==(char *a1, char *a2)
{
  const char *v2; // r0
  const char *v3; // r1

  if ( a1 == a2 )
    return 1;
  if ( *a1 == -1 )
    v2 = *((const char **)a1 + 3);
  else
    v2 = a1 + 1;
  if ( *a2 == -1 )
    v3 = *((const char **)a2 + 3);
  else
    v3 = a2 + 1;
  return LC_API_STRCMP_0(v2, v3) == 0;
}


// ===== 796f5c gameswf::as_value::to_xstring(void) =====
char *__fastcall gameswf::as_value::to_xstring(const void **this)
{
  char *v1; // r0

  if ( *((_BYTE *)this + 1) == 5 )
  {
    snprintf(gameswf::as_value::to_xstring(void)const::buf, 0x10u, "0x%p", *(this + 1));
    return gameswf::as_value::to_xstring(void)const::buf;
  }
  else
  {
    v1 = gameswf::as_value::to_tu_string((gameswf::as_value *)this);
    if ( *v1 == -1 )
      return *((char **)v1 + 3);
    else
      return v1 + 1;
  }
}


// ===== 796fb4 gameswf::as_value::to_string(void) =====
char *__fastcall gameswf::as_value::to_string(gameswf::as_value *this)
{
  char *v1; // r0

  v1 = gameswf::as_value::to_tu_string(this);
  if ( *v1 == -1 )
    return *((char **)v1 + 3);
  else
    return v1 + 1;
}


// ===== 796fd0 gameswf::as_value::get_member(gameswf::tu_string const&,gameswf::as_value*) =====
int *__fastcall gameswf::as_value::get_member(
        gameswf::as_value *this,
        const gameswf::tu_string *a2,
        gameswf::as_value *a3)
{
  int v4; // r3
  int *builtin; // r6
  void *v7[5]; // [sp+0h] [bp-44h] BYREF
  void *v8[5]; // [sp+14h] [bp-30h] BYREF
  void *v9[5]; // [sp+28h] [bp-1Ch] BYREF

  switch ( *((_BYTE *)this + 1) )
  {
    case 1:
      gameswf::tu_string::tu_string((gameswf::tu_string *)v7, a2);
      builtin = gameswf::get_builtin(3, v7, a3);
      if ( SLOBYTE(v7[0]) == -1 )
        gameswf::free_internal(v7[3]);
      break;
    case 2:
      gameswf::tu_string::tu_string((gameswf::tu_string *)v8, a2);
      builtin = gameswf::get_builtin(2, v8, a3);
      if ( SLOBYTE(v8[0]) == -1 )
        gameswf::free_internal(v8[3]);
      break;
    case 3:
    case 4:
      gameswf::tu_string::tu_string((gameswf::tu_string *)v9, a2);
      builtin = gameswf::get_builtin(4, v9, a3);
      if ( SLOBYTE(v9[0]) == -1 )
        gameswf::free_internal(v9[3]);
      break;
    case 5:
      v4 = *((_DWORD *)this + 1);
      if ( !v4 )
        goto LABEL_3;
      builtin = (int *)(*(int (__fastcall **)(_DWORD, const gameswf::tu_string *))(*(_DWORD *)v4 + 32))(
                         *((_DWORD *)this + 1),
                         a2);
      break;
    default:
LABEL_3:
      builtin = nullptr;
      break;
  }
  return builtin;
}


// ===== 797124 gameswf::as_value::drop_refs(void) =====
void __fastcall gameswf::as_value::drop_refs(gameswf::as_value *this)
{
  void (__fastcall ***v2)(_DWORD); // r0
  void (__fastcall ***v3)(_DWORD); // r0
  void (__fastcall ***v4)(_DWORD); // r0
  void **v5; // r5
  void (__fastcall ***v6)(_DWORD); // r0

  switch ( *((_BYTE *)this + 1) )
  {
    case 3:
      v6 = *((void (__fastcall ****)(_DWORD))this + 2);
      if ( v6 )
      {
        gameswf::ref_counted::drop_ref(v6);
        *((_DWORD *)this + 2) = 0;
      }
      break;
    case 4:
      v5 = *((void ***)this + 1);
      if ( v5 )
      {
        if ( *(char *)v5 == -1 )
          gameswf::free_internal(v5[3]);
        gameswf::free_internal(v5);
        *((_DWORD *)this + 1) = 0;
      }
      break;
    case 5:
      v4 = *((void (__fastcall ****)(_DWORD))this + 1);
      if ( v4 )
      {
        gameswf::ref_counted::drop_ref(v4);
        *((_DWORD *)this + 1) = 0;
      }
      break;
    case 6:
      v2 = *((void (__fastcall ****)(_DWORD))this + 2);
      if ( v2 )
      {
        gameswf::ref_counted::drop_ref(v2);
        *((_DWORD *)this + 2) = 0;
      }
      v3 = *((void (__fastcall ****)(_DWORD))this + 1);
      if ( v3 )
      {
        gameswf::ref_counted::drop_ref(v3);
        *((_DWORD *)this + 1) = 0;
      }
      break;
    default:
      return;
  }
}


// ===== 7971fc gameswf::as_value::set_string(gameswf::as_string *) =====
void __fastcall gameswf::as_value::set_string(int a1, gameswf::ref_counted *this)
{
  gameswf::ref_counted::add_ref((int)this);
  gameswf::as_value::drop_refs((gameswf::as_value *)a1);
  *(_DWORD *)(a1 + 8) = this;
  *(_BYTE *)(a1 + 1) = 3;
  *(_DWORD *)(a1 + 4) = (char *)this + 12;
}


// ===== 797230 gameswf::as_value::set_bool(bool) =====
void __fastcall gameswf::as_value::set_bool(gameswf::as_value *this, bool a2)
{
  gameswf::as_value::drop_refs(this);
  *((_BYTE *)this + 4) = a2;
  *((_BYTE *)this + 1) = 1;
}


// ===== 797250 gameswf::as_value::set_as_object(gameswf::as_object *) =====
void __fastcall gameswf::as_value::set_as_object(gameswf::as_value *this, gameswf::as_object *a2)
{
  if ( *((_BYTE *)this + 1) != 5 || *((gameswf::as_object **)this + 1) != a2 )
  {
    gameswf::as_value::drop_refs(this);
    *((_BYTE *)this + 1) = 5;
    *((_DWORD *)this + 1) = a2;
    if ( a2 )
      gameswf::ref_counted::add_ref((int)a2);
  }
}


// ===== 7972a0 gameswf::as_value::set_as_c_function(void (*)(gameswf::fn_call const&)) =====
void __fastcall gameswf::as_value::set_as_c_function(gameswf::as_value *this, void (*a2)(const gameswf::fn_call *))
{
  gameswf::as_c_function *v4; // r4

  v4 = (gameswf::as_c_function *)operator new(0x40u, 0);
  gameswf::as_c_function::as_c_function(v4, nullptr, a2);
  gameswf::as_value::set_as_object(this, v4);
}


// ===== 7972d8 gameswf::as_value::set_tu_string(gameswf::tu_string const&) =====
void __fastcall gameswf::as_value::set_tu_string(gameswf::as_value *this, const gameswf::tu_string *a2)
{
  int v4; // r1
  gameswf::tu_string *v5; // r6

  if ( *((_BYTE *)this + 1) != 4 || *((const gameswf::tu_string **)this + 1) != a2 )
  {
    gameswf::as_value::drop_refs(this);
    v4 = *((_BYTE *)a2 + 19) & 1;
    if ( (*((_BYTE *)a2 + 19) & 1) != 0 )
    {
      *((_DWORD *)this + 2) = 0;
      *((_BYTE *)this + 1) = 3;
      *((_DWORD *)this + 1) = a2;
    }
    else
    {
      *((_BYTE *)this + 1) = 4;
      v5 = (gameswf::tu_string *)operator new(0x14u, v4);
      gameswf::tu_string::tu_string(v5, a2);
      *((_DWORD *)this + 1) = v5;
    }
  }
}


// ===== 797350 gameswf::as_value::set_string(char const*) =====
void __fastcall gameswf::as_value::set_string(gameswf::tu_string **this, const char *a2)
{
  gameswf::tu_string *v4; // r8
  char v5[8]; // [sp+0h] [bp-18h] BYREF
  void *p; // [sp+Ch] [bp-Ch]

  if ( *((_BYTE *)this + 1) == 4 )
  {
    gameswf::tu_string::tu_string((gameswf::tu_string *)v5, a2);
    gameswf::tu_string::operator=(*(this + 1), v5);
    if ( v5[0] == -1 )
      gameswf::free_internal(p);
  }
  else
  {
    gameswf::as_value::drop_refs((gameswf::as_value *)this);
    *((_BYTE *)this + 1) = 4;
    v4 = (gameswf::tu_string *)operator new(0x14u, 0);
    gameswf::tu_string::tu_string(v4, a2);
    *(this + 1) = v4;
  }
}


// ===== 797408 gameswf::as_value::as_value(wchar_t const*) =====
gameswf::as_value *__fastcall gameswf::as_value::as_value(gameswf::as_value *this, const wchar_t *a2)
{
  const unsigned __int16 *v4; // r2

  *(_BYTE *)this = 0;
  *((_BYTE *)this + 1) = 4;
  gameswf::as_value::set_string((gameswf::tu_string **)this, "");
  gameswf::tu_string::encode_utf8_from_wchar(*((gameswf::tu_string **)this + 1), (int)a2, v4);
  return this;
}


// ===== 797448 gameswf::as_value::as_value(wchar_t const*) =====
gameswf::as_value *__fastcall gameswf::as_value::as_value(gameswf::as_value *this, const wchar_t *a2)
{
  const unsigned __int16 *v4; // r2

  *(_BYTE *)this = 0;
  *((_BYTE *)this + 1) = 4;
  gameswf::as_value::set_string((gameswf::tu_string **)this, "");
  gameswf::tu_string::encode_utf8_from_wchar(*((gameswf::tu_string **)this + 1), (int)a2, v4);
  return this;
}


// ===== 797488 gameswf::as_value::set_double(double) =====
int __fastcall gameswf::as_value::set_double(gameswf::as_value *this, double a2)
{
  int result; // r0

  gameswf::as_value::drop_refs(this);
  *((_BYTE *)this + 1) = 2;
  *(double *)((char *)this + 4) = a2;
  return result;
}


// ===== 7974c4 gameswf::array<gameswf::as_value>::resize(int) [clone] =====
void __fastcall gameswf::array<gameswf::as_value>::resize(_DWORD *a1)
{
  int v1; // r4
  int v3; // r5
  int i; // r6
  int v5; // r3
  _BYTE *v6; // r0

  v1 = a1[1];
  if ( v1 <= 0 )
  {
    if ( v1 < 0 )
    {
      v5 = 12 * v1;
      do
      {
        ++v1;
        v6 = (_BYTE *)(*a1 + v5);
        *v6 = 0;
        v6[1] = 0;
        v5 += 12;
      }
      while ( v1 );
    }
  }
  else
  {
    v3 = 0;
    for ( i = 0; i != v1; ++i )
    {
      gameswf::as_value::drop_refs((gameswf::as_value *)(*a1 + v3));
      v3 += 12;
    }
  }
  a1[1] = 0;
}


// ===== 797540 gameswf::as_property::get(gameswf::as_object *,gameswf::as_value *) =====
void __fastcall gameswf::as_property::get(gameswf::as_property *this, gameswf::as_object *a2, gameswf::as_value *a3)
{
  gameswf::ref_counted *v4; // r1
  _BYTE *v7; // r0
  int v8; // r9
  gameswf::as_object *v9; // r10
  void (__fastcall *v10)(int, _DWORD *); // r8
  _BYTE v12[108]; // [sp+4h] [bp-94h] BYREF
  _DWORD v13[7]; // [sp+70h] [bp-28h] BYREF
  char v14; // [sp+8Ch] [bp-Ch] BYREF
  char v15; // [sp+8Dh] [bp-Bh]
  gameswf::as_object *v16; // [sp+90h] [bp-8h]

  v4 = *((gameswf::ref_counted **)a2 + 12);
  if ( v4 )
  {
    v7 = *((_BYTE **)a2 + 11);
    if ( !v7[4] )
    {
      if ( (*(_DWORD *)v7)-- == 1 )
        gameswf::free_internal(v7);
      v4 = nullptr;
      *((_DWORD *)a2 + 11) = 0;
      *((_DWORD *)a2 + 12) = 0;
    }
  }
  gameswf::as_environment::as_environment((int)v12, v4);
  if ( *((_DWORD *)this + 3) )
  {
    gameswf::ref_counted::add_ref((int)a2);
    v8 = *((_DWORD *)this + 3);
    v9 = nullptr;
    v10 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v8 + 100);
    v15 = 5;
    v14 = 0;
    v16 = a2;
    gameswf::ref_counted::add_ref((int)a2);
    v13[4] = 0;
    v13[5] = 0;
    if ( v15 == 5 )
      v9 = v16;
    v13[6] = "get";
    v13[0] = a3;
    v13[2] = &v14;
    v13[3] = v12;
    v13[1] = v9;
    v10(v8, v13);
    gameswf::as_value::drop_refs((gameswf::as_value *)&v14);
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))a2);
  }
  gameswf::as_environment::~as_environment((gameswf::as_environment *)v12);
}


// ===== 797644 gameswf::as_value::get_property(gameswf::as_value*) =====
void __fastcall gameswf::as_value::get_property(gameswf::as_property **this, gameswf::as_value *a2)
{
  gameswf::as_property::get(*(this + 2), *(this + 1), a2);
}


// ===== 797654 gameswf::as_value::_typeof(void) =====
char *__fastcall gameswf::as_value::_typeof(gameswf::as_value *this)
{
  char *v1; // r5
  int v3; // r3
  _BYTE v4[16]; // [sp+4h] [bp-10h] BYREF

  switch ( *((_BYTE *)this + 1) )
  {
    case 0:
      v1 = "undefined";
      break;
    case 1:
      v1 = "boolean";
      break;
    case 2:
      v1 = "number";
      break;
    case 3:
    case 4:
      v1 = "string";
      break;
    case 5:
      v3 = *((_DWORD *)this + 1);
      if ( v3 )
        v1 = (char *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 24))(*((_DWORD *)this + 1));
      else
        v1 = "null";
      break;
    case 6:
      v4[1] = 0;
      v4[0] = 0;
      gameswf::as_value::get_property((gameswf::as_property **)this, (gameswf::as_value *)v4);
      v1 = (char *)gameswf::as_value::_typeof((gameswf::as_value *)v4);
      gameswf::as_value::drop_refs((gameswf::as_value *)v4);
      break;
    default:
      v1 = nullptr;
      break;
  }
  return v1;
}


// ===== 79773c gameswf::as_value::operator=(gameswf::as_value const&) =====
void __fastcall gameswf::as_value::operator=(gameswf::as_value *this, int a2)
{
  int v3; // r0

  *(_BYTE *)this = *(_BYTE *)a2;
  switch ( *(_BYTE *)(a2 + 1) )
  {
    case 0:
      *(_BYTE *)this = 0;
      gameswf::as_value::drop_refs(this);
      *((_BYTE *)this + 1) = 0;
      break;
    case 1:
      gameswf::as_value::set_bool(this, *(_BYTE *)(a2 + 4));
      break;
    case 2:
      gameswf::as_value::set_double(this, *(double *)(a2 + 4));
      break;
    case 3:
      if ( !*(_DWORD *)(a2 + 8) )
        goto LABEL_5;
      gameswf::as_value::set_string((int)this, *(gameswf::ref_counted **)(a2 + 8));
      break;
    case 4:
LABEL_5:
      gameswf::as_value::set_tu_string(this, *(const gameswf::tu_string **)(a2 + 4));
      break;
    case 5:
      gameswf::as_value::set_as_object(this, *(gameswf::as_object **)(a2 + 4));
      break;
    case 6:
      gameswf::as_value::drop_refs(this);
      if ( *(_DWORD *)(a2 + 4) )
      {
        gameswf::as_value::get_property((gameswf::as_property **)a2, this);
      }
      else
      {
        *((_BYTE *)this + 1) = 6;
        v3 = *(_DWORD *)(a2 + 8);
        *((_DWORD *)this + 2) = v3;
        gameswf::ref_counted::add_ref(v3);
        *((_DWORD *)this + 1) = 0;
      }
      break;
    default:
      return;
  }
}


// ===== 797834 gameswf::as_property::set(gameswf::as_object *,gameswf::as_value const&) =====
void __fastcall gameswf::as_property::set(
        gameswf::as_property *this,
        gameswf::as_object *a2,
        const gameswf::as_value *a3)
{
  gameswf::ref_counted *v4; // r1
  _BYTE *v6; // r0
  int v7; // r10
  gameswf::as_object *v8; // r8
  void (__fastcall *v9)(int, _DWORD *); // r7
  _DWORD v11[27]; // [sp+4h] [bp-98h] BYREF
  _DWORD v12[7]; // [sp+70h] [bp-2Ch] BYREF
  char v13; // [sp+8Ch] [bp-10h] BYREF
  char v14; // [sp+8Dh] [bp-Fh]
  gameswf::as_object *v15; // [sp+90h] [bp-Ch]

  v4 = *((gameswf::ref_counted **)a2 + 12);
  if ( v4 )
  {
    v6 = *((_BYTE **)a2 + 11);
    if ( !v6[4] )
    {
      if ( (*(_DWORD *)v6)-- == 1 )
        gameswf::free_internal(v6);
      v4 = nullptr;
      *((_DWORD *)a2 + 11) = 0;
      *((_DWORD *)a2 + 12) = 0;
    }
  }
  gameswf::as_environment::as_environment((int)v11, v4);
  gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(v11);
  if ( *((_DWORD *)this + 4) )
  {
    gameswf::ref_counted::add_ref((int)a2);
    v7 = *((_DWORD *)this + 4);
    v8 = nullptr;
    v9 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v7 + 100);
    v14 = 5;
    v13 = 0;
    v15 = a2;
    gameswf::ref_counted::add_ref((int)a2);
    v12[0] = 0;
    if ( v14 == 5 )
      v8 = v15;
    v12[4] = 1;
    v12[5] = v11[1] - 1;
    v12[6] = "set";
    v12[2] = &v13;
    v12[3] = v11;
    v12[1] = v8;
    v9(v7, v12);
    gameswf::as_value::drop_refs((gameswf::as_value *)&v13);
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))a2);
  }
  gameswf::as_environment::~as_environment((gameswf::as_environment *)v11);
}


// ===== 797950 gameswf::as_value::set_property(gameswf::as_value const&) =====
void __fastcall gameswf::as_value::set_property(gameswf::as_property **this, const gameswf::as_value *a2)
{
  gameswf::as_property::set(*(this + 2), *(this + 1), a2);
}


// ===== 797960 gameswf::as_value::to_bool(void) =====
int __fastcall gameswf::as_value::to_bool(gameswf::as_value *this)
{
  char *v1; // r3
  int v2; // r5
  int v3; // r5
  unsigned int v5; // r1
  int v6; // r3
  _BYTE v7[12]; // [sp+4h] [bp-18h] BYREF
  unsigned int v8; // [sp+10h] [bp-Ch]
  unsigned int v9; // [sp+14h] [bp-8h]

  switch ( *((_BYTE *)this + 1) )
  {
    case 1:
      v3 = *((unsigned __int8 *)this + 4);
      break;
    case 2:
      v5 = *((_DWORD *)this + 1);
      v9 = *((_DWORD *)this + 2);
      v8 = v5;
      v3 = COERCE_DOUBLE(__PAIR64__(v9, v5)) != 0.0;
      break;
    case 3:
    case 4:
      v1 = *((char **)this + 1);
      v2 = *v1;
      if ( v2 == -1 )
        v2 = *((_DWORD *)v1 + 1);
      v3 = v2 - 1 > 0;
      break;
    case 5:
      v6 = *((_DWORD *)this + 1);
      if ( !v6 )
        goto LABEL_6;
      v3 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v6 + 20))(*((_DWORD *)this + 1));
      break;
    case 6:
      v7[1] = 0;
      v7[0] = 0;
      gameswf::as_value::get_property((gameswf::as_property **)this, (gameswf::as_value *)v7);
      v3 = gameswf::as_value::to_bool((gameswf::as_value *)v7);
      gameswf::as_value::drop_refs((gameswf::as_value *)v7);
      break;
    default:
LABEL_6:
      v3 = 0;
      break;
  }
  return v3;
}


// ===== 797a54 gameswf::as_value::to_number(void) =====
__int64 __fastcall gameswf::as_value::to_number(gameswf::as_value *this, int a2, const char *a3)
{
  char *v3; // r1
  double *v4; // r1
  __int64 v5; // r6
  int v7; // r3
  int v8; // r1
  int v9; // r3
  _BYTE v10[12]; // [sp+4h] [bp-14h] BYREF
  __int64 v11; // [sp+10h] [bp-8h] BYREF

  switch ( *((_BYTE *)this + 1) )
  {
    case 0:
      v5 = 0xFFF8000000000000LL;
      break;
    case 1:
      if ( !*((_BYTE *)this + 4) )
        goto LABEL_11;
      v5 = 0x3FF0000000000000LL;
      break;
    case 2:
      v7 = *((_DWORD *)this + 1);
      HIDWORD(v11) = *((_DWORD *)this + 2);
      LODWORD(v11) = v7;
      goto LABEL_13;
    case 3:
    case 4:
      v3 = *((char **)this + 1);
      if ( *v3 == -1 )
        v4 = *((double **)v3 + 3);
      else
        v4 = (double *)(v3 + 1);
      if ( gameswf::string_to_number((gameswf *)&v11, v4, a3) )
LABEL_13:
        v5 = v11;
      else
        v5 = 0xFFF8000000000000LL;
      break;
    case 5:
      v9 = *((_DWORD *)this + 1);
      if ( v9 )
        v5 = ((__int64 (__fastcall *)(_DWORD))*(_DWORD *)(*(_DWORD *)v9 + 16))(*((_DWORD *)this + 1));
      else
        v5 = 0xFFF8000000000000LL;
      break;
    case 6:
      v10[1] = 0;
      v10[0] = 0;
      gameswf::as_value::get_property((gameswf::as_property **)this, (gameswf::as_value *)v10);
      LODWORD(v5) = gameswf::as_value::to_number((gameswf::as_value *)v10);
      HIDWORD(v5) = v8;
      gameswf::as_value::drop_refs((gameswf::as_value *)v10);
      break;
    default:
LABEL_11:
      v5 = 0;
      break;
  }
  return v5;
}


// ===== 797b7c gameswf::as_value::to_string(gameswf::tu_string &) =====
char *__fastcall gameswf::as_value::to_string(gameswf::as_value *this, gameswf::tu_string *a2)
{
  char *v2; // r6
  char *v4; // r0
  int v5; // r3
  const char *v6; // r1
  unsigned int v7; // r9
  _BYTE v8[12]; // [sp+14h] [bp-198h] BYREF
  __int64 v9; // [sp+20h] [bp-18Ch]
  __int64 v10; // [sp+28h] [bp-184h]
  char s[352]; // [sp+30h] [bp-17Ch] BYREF
  _BYTE v12[8]; // [sp+190h] [bp-1Ch] BYREF
  void *p; // [sp+19Ch] [bp-10h]
  unsigned int v14; // [sp+1A0h] [bp-Ch]

  v2 = (char *)a2;
  switch ( *((_BYTE *)this + 1) )
  {
    case 0:
      gameswf::tu_string::operator=((char *)a2, "undefined");
      break;
    case 1:
      if ( *((_BYTE *)this + 4) )
        v6 = "true";
      else
        v6 = "false";
      goto LABEL_9;
    case 2:
      v7 = *((_DWORD *)this + 1);
      HIDWORD(v10) = *((_DWORD *)this + 2);
      LODWORD(v10) = v7;
      v9 = v10;
      snprintf(s, 0x32u, "%.14g", COERCE_DOUBLE(__PAIR64__(*((_DWORD *)this + 2), v7)));
      gameswf::tu_string::operator=(v2, s);
      break;
    case 3:
    case 4:
      v2 = *((char **)this + 1);
      break;
    case 5:
      v5 = *((_DWORD *)this + 1);
      if ( v5 )
      {
        v6 = (const char *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v5 + 12))(*((_DWORD *)this + 1));
LABEL_9:
        gameswf::tu_string::operator=(v2, v6);
      }
      else
      {
        gameswf::tu_string::operator=((char *)a2, "null");
      }
      break;
    case 6:
      v8[0] = 0;
      v8[1] = 0;
      gameswf::as_value::get_property((gameswf::as_property **)this, (gameswf::as_value *)v8);
      v14 = v14 & 0xFF000000 | 0xFFFFFF;
      v12[0] = 1;
      HIBYTE(v14) &= ~1u;
      v12[1] = 0;
      v4 = (char *)gameswf::as_value::to_string((gameswf::as_value *)v8, (gameswf::tu_string *)v12);
      gameswf::tu_string::operator=((gameswf::tu_string *)v2, v4);
      if ( v12[0] == -1 )
        gameswf::free_internal(p);
      gameswf::as_value::drop_refs((gameswf::as_value *)v8);
      break;
    default:
      gameswf::tu_string::operator=((char *)a2, "");
      break;
  }
  return v2;
}


// ===== 797dc0 gameswf::as_value::operator==(gameswf::as_value const&) =====
int __fastcall gameswf::as_value::operator==(int a1, int a2, const char *a3)
{
  int v5; // r4
  int v6; // r3
  double v7; // r4
  unsigned int v9; // r3
  const char *v10; // r2
  __int64 v11; // r0
  double v12; // r0
  unsigned int v13; // r3
  int v14; // r4
  _BYTE v15[12]; // [sp+4h] [bp-18h] BYREF
  unsigned int v16; // [sp+10h] [bp-Ch]
  const char *v17; // [sp+14h] [bp-8h]

  switch ( *(_BYTE *)(a1 + 1) )
  {
    case 0:
      if ( !*(_BYTE *)(a2 + 1) )
        goto LABEL_23;
      if ( *(_BYTE *)(a2 + 1) != 5 )
        goto LABEL_7;
      LODWORD(v7) = *(_DWORD *)(a2 + 4) == 0;
      return LODWORD(v7);
    case 1:
      switch ( *(_BYTE *)(a2 + 1) )
      {
        case 1:
          LODWORD(v7) = *(unsigned __int8 *)(a1 + 4) == *(unsigned __int8 *)(a2 + 4);
          break;
        case 2:
          v14 = *(unsigned __int8 *)(a1 + 4);
          LODWORD(v7) = v14 == gameswf::as_value::to_bool((gameswf::as_value *)a2);
          break;
        case 3:
        case 4:
          v11 = gameswf::as_value::to_number((gameswf::as_value *)a2, a2, a3);
          v7 = *(double *)&v11;
          LODWORD(v11) = a1;
          goto LABEL_19;
        default:
          goto LABEL_7;
      }
      return LODWORD(v7);
    case 2:
      switch ( *(_BYTE *)(a2 + 1) )
      {
        case 1:
        case 3:
        case 4:
          v9 = *(_DWORD *)(a1 + 4);
          v17 = *(const char **)(a1 + 8);
          v16 = v9;
          LOBYTE(v7) = COERCE_DOUBLE(gameswf::as_value::to_number((gameswf::as_value *)a2, a2, v17)) == COERCE_DOUBLE(__PAIR64__((unsigned int)v17, v9));
          goto LABEL_17;
        case 2:
          LOBYTE(v7) = *(double *)(a1 + 4) == *(double *)(a2 + 4);
          goto LABEL_17;
        default:
          goto LABEL_7;
      }
    case 3:
    case 4:
      switch ( *(_BYTE *)(a2 + 1) )
      {
        case 1:
          v11 = gameswf::as_value::to_number((gameswf::as_value *)a1, a2, a3);
          v7 = *(double *)&v11;
          LODWORD(v11) = a2;
LABEL_19:
          LOBYTE(v7) = v7 == COERCE_DOUBLE(gameswf::as_value::to_number((gameswf::as_value *)v11, SHIDWORD(v11), v10));
          goto LABEL_17;
        case 2:
          v12 = COERCE_DOUBLE(gameswf::as_value::to_number((gameswf::as_value *)a1, a2, a3));
          v13 = *(_DWORD *)(a2 + 4);
          v17 = *(const char **)(a2 + 8);
          v16 = v13;
          LOBYTE(v7) = v12 == COERCE_DOUBLE(__PAIR64__((unsigned int)v17, v13));
LABEL_17:
          LODWORD(v7) = LOBYTE(v7);
          break;
        case 3:
        case 4:
          LODWORD(v7) = gameswf::tu_string::operator==(*(char **)(a1 + 4), *(char **)(a2 + 4));
          break;
        default:
          goto LABEL_7;
      }
      return LODWORD(v7);
    case 5:
      v5 = *(char *)(a2 + 1);
      if ( v5 == 5 )
      {
        v6 = *(_DWORD *)(a1 + 4);
        if ( v6 == *(_DWORD *)(a2 + 4) )
        {
LABEL_23:
          LODWORD(v7) = 1;
          return LODWORD(v7);
        }
      }
      else
      {
        v6 = *(_DWORD *)(a1 + 4);
      }
      if ( v6 )
LABEL_7:
        LODWORD(v7) = 0;
      else
        LODWORD(v7) = v5 == 0;
      return LODWORD(v7);
    case 6:
      v15[1] = 0;
      v15[0] = 0;
      gameswf::as_value::get_property((gameswf::as_property **)a1, (gameswf::as_value *)v15);
      LODWORD(v7) = gameswf::as_value::operator==(v15, a2);
      gameswf::as_value::drop_refs((gameswf::as_value *)v15);
      return LODWORD(v7);
    default:
      goto LABEL_7;
  }
}


// ===== 798040 gameswf::as_value::operator!=(gameswf::as_value const&) =====
int __fastcall gameswf::as_value::operator!=(int a1, int a2, const char *a3)
{
  return (unsigned __int8)gameswf::as_value::operator==(a1, a2, a3) ^ 1;
}


// ===== 798054 gameswf::as_array::is(int) =====
bool __fastcall gameswf::as_array::is(gameswf::as_array *this, int a2)
{
  return a2 == 16 || a2 == 0;
}


// ===== 79806c gameswf::as_array::is_index(gameswf::tu_stringi const&) =====
int __fastcall gameswf::as_array::is_index(int a1, char *a2)
{
  _BYTE *v2; // r3
  int v3; // r2

  if ( *a2 == -1 )
    v2 = *((_BYTE **)a2 + 3);
  else
    v2 = a2 + 1;
  if ( !*v2 )
    return 1;
  if ( (unsigned __int8)(*v2 - 48) <= 9u )
  {
    while ( 1 )
    {
      v3 = (unsigned __int8)*++v2;
      if ( !v3 )
        break;
      if ( (unsigned __int8)(v3 - 48) > 9u )
        return 0;
    }
    return 1;
  }
  return 0;
}


// ===== 7980cc gameswf::as_array::pop(gameswf::as_value *) =====
void __fastcall gameswf::as_array::pop(gameswf::as_array *this, gameswf::as_value *a2)
{
  _DWORD *v2; // r4

  v2 = (_DWORD *)((char *)this + 76);
  gameswf::as_value::operator=(a2, *((_DWORD *)this + 19) + 12 * (*((_DWORD *)this + 20) - 1));
  gameswf::array<gameswf::as_value>::resize(v2, *((_DWORD *)this + 20) - 1);
}


// ===== 798108 gameswf::as_array::set_member(int,gameswf::as_value const&) =====
int __fastcall gameswf::as_array::set_member(gameswf::as_array *this, int a2, const gameswf::as_value *a3)
{
  if ( a2 < 0 )
    return 0;
  if ( a2 >= *((_DWORD *)this + 20) )
  {
    gameswf::array<gameswf::as_value>::resize((_DWORD *)this + 19, a2 + 1);
    gameswf::as_value::operator=((gameswf::as_value *)(*((_DWORD *)this + 19) + 12 * a2), (int)a3);
  }
  else
  {
    gameswf::as_value::operator=((gameswf::as_value *)(*((_DWORD *)this + 19) + 12 * a2), (int)a3);
  }
  return 1;
}


// ===== 798174 gameswf::as_array::get_member(int,gameswf::as_value *) =====
int __fastcall gameswf::as_array::get_member(gameswf::as_array *this, int a2, gameswf::as_value *a3)
{
  if ( a2 < 0 || a2 >= *((_DWORD *)this + 20) )
    return 0;
  gameswf::as_value::operator=(a3, *((_DWORD *)this + 19) + 12 * a2);
  return 1;
}


// ===== 7981b0 gameswf::array<gameswf::as_value>::operator=(gameswf::array<gameswf::as_value> const&) =====
void __fastcall gameswf::array<gameswf::as_value>::operator=(_DWORD *a1, _DWORD *a2)
{
  int v4; // r4
  int v5; // r5

  gameswf::array<gameswf::as_value>::resize(a1, a2[1]);
  if ( (int)a1[1] > 0 )
  {
    v4 = 0;
    v5 = 0;
    do
    {
      ++v5;
      gameswf::as_value::operator=((gameswf::as_value *)(*a1 + v4), *a2 + v4);
      v4 += 12;
    }
    while ( a1[1] > v5 );
  }
}


// ===== 798204 gameswf::as_array_reverse(gameswf::fn_call const&) =====
void __fastcall gameswf::as_array_reverse(gameswf *this, const gameswf::fn_call *a2)
{
  int v2; // r0
  int v3; // r4
  int v4; // r5
  int v5; // r6
  int v6; // r10
  int v7; // r5
  int v8; // r7
  _BYTE v9[16]; // [sp+4h] [bp-10h] BYREF

  v2 = gameswf::cast_to<gameswf::as_array>(*((_DWORD *)this + 1));
  v3 = 0;
  v9[0] = 0;
  v9[1] = 0;
  v4 = *(_DWORD *)(v2 + 80);
  v5 = v2;
  v6 = v4 / 2;
  if ( v4 / 2 > 0 )
  {
    v7 = 12 * (v4 - 1);
    v8 = 0;
    do
    {
      ++v8;
      gameswf::as_value::operator=((gameswf::as_value *)v9, *(_DWORD *)(v5 + 76) + v3);
      gameswf::as_value::operator=((gameswf::as_value *)(*(_DWORD *)(v5 + 76) + v3), *(_DWORD *)(v5 + 76) + v7);
      v3 += 12;
      gameswf::as_value::operator=((gameswf::as_value *)(*(_DWORD *)(v5 + 76) + v7), (int)v9);
      v7 -= 12;
    }
    while ( v8 != v6 );
  }
  gameswf::as_value::drop_refs((gameswf::as_value *)v9);
}


// ===== 7982a4 gameswf::as_array_pop(gameswf::fn_call const&) =====
void __fastcall gameswf::as_array_pop(gameswf *this, const gameswf::fn_call *a2)
{
  gameswf::as_array *v3; // r0
  _BYTE v4[16]; // [sp+4h] [bp-10h] BYREF

  v3 = (gameswf::as_array *)gameswf::cast_to<gameswf::as_array>(*((_DWORD *)this + 1));
  v4[1] = 0;
  v4[0] = 0;
  gameswf::as_array::pop(v3, (gameswf::as_value *)v4);
  gameswf::as_value::operator=(*(gameswf::as_value **)this, (int)v4);
  gameswf::as_value::drop_refs((gameswf::as_value *)v4);
}


// ===== 7982ec gameswf::as_array::clear_refs(gameswf::hash<gameswf::as_object *,bool,gameswf::fixed_size_hash<gameswf::as_object *>> *,gameswf::as_object *) =====
int __fastcall gameswf::as_array::clear_refs(int a1, int *a2, int a3)
{
  int result; // r0
  int v7; // r4
  int v8; // r5
  int v9; // r3
  int v10; // r3
  int v11; // [sp+4h] [bp-4h] BYREF

  v11 = a1;
  result = gameswf::hash<gameswf::as_object *,bool,gameswf::fixed_size_hash<gameswf::as_object *>>::find_index(a2, &v11);
  if ( result < 0 )
  {
    gameswf::as_object::clear_refs(a1, a2, a3);
    result = *(_DWORD *)(a1 + 80);
    if ( result > 0 )
    {
      v7 = 0;
      v8 = 0;
      do
      {
        ++v8;
        v9 = *(_DWORD *)(a1 + 76) + v7;
        v7 += 12;
        if ( *(_BYTE *)(v9 + 1) == 5 )
        {
          v10 = *(_DWORD *)(v9 + 4);
          if ( v10 )
          {
            (*(void (__fastcall **)(int, int *, int))(*(_DWORD *)v10 + 64))(v10, a2, a3);
            result = *(_DWORD *)(a1 + 80);
          }
        }
      }
      while ( v8 < result );
    }
  }
  return result;
}


// ===== 79839c gameswf::as_array::this_alive(void) =====
void __fastcall gameswf::as_array::this_alive(gameswf::as_array *this)
{
  char *v1; // r10
  int v3; // r8
  int v4; // r4
  int v5; // r5
  int v6; // r3
  _DWORD *v7; // r7

  v1 = (char *)this + 44;
  gameswf::weak_ptr<gameswf::player>::check_proxy((int)this + 44);
  if ( *((_DWORD *)this + 13) != *(_DWORD *)(*((_DWORD *)this + 12) + 48) )
  {
    gameswf::as_object::this_alive(this);
    v3 = *((_DWORD *)this + 20);
    if ( v3 > 0 )
    {
      v4 = 0;
      v5 = 0;
      do
      {
        while ( 1 )
        {
          ++v5;
          v6 = *((_DWORD *)this + 19) + v4;
          v4 += 12;
          if ( *(_BYTE *)(v6 + 1) == 5 )
          {
            v7 = *(_DWORD **)(v6 + 4);
            if ( v7 )
            {
              gameswf::weak_ptr<gameswf::player>::check_proxy((int)v1);
              if ( v7[13] != *(_DWORD *)(*((_DWORD *)this + 12) + 48) )
                break;
            }
          }
          if ( v5 == v3 )
            return;
        }
        (*(void (__fastcall **)(_DWORD *))(*v7 + 68))(v7);
      }
      while ( v5 != v3 );
    }
  }
}


// ===== 79844c gameswf::as_array::set_member(gameswf::tu_stringi const&,gameswf::as_value const&) =====
int __fastcall gameswf::as_array::set_member(int *a1, char *a2, const gameswf::as_value *a3)
{
  const char *v6; // r0
  int (__fastcall *v7)(int *, int, const gameswf::as_value *); // r7
  int v8; // r0

  if ( gameswf::as_array::is_index((int)a1, a2)
    && (*a2 == -1 ? (v6 = *((const char **)a2 + 3)) : (v6 = a2 + 1),
        v7 = *(int (__fastcall **)(int *, int, const gameswf::as_value *))(*a1 + 36),
        v8 = LC_API_ATOI_0(v6),
        v7(a1, v8, a3)) )
  {
    return 1;
  }
  else
  {
    return gameswf::as_object::set_member(a1, a2, a3);
  }
}


// ===== 7984b8 gameswf::as_array::get_member(gameswf::tu_stringi const&,gameswf::as_value *) =====
int __fastcall gameswf::as_array::get_member(gameswf::as_object *a1, _DWORD *a2, gameswf::as_value *a3)
{
  int result; // r0
  const char *v7; // r0
  int (__fastcall *v8)(gameswf::as_object *, int, gameswf::as_value *); // r7
  int v9; // r0

  if ( gameswf::get_builtin(7, a2, a3) )
  {
    if ( *((_BYTE *)a3 + 1) == 6 )
    {
      gameswf::as_value::set_property_target(a3, a1);
      return 1;
    }
    return 1;
  }
  if ( gameswf::as_object::get_member((int *)a1, a2, a3) )
    return 1;
  result = gameswf::as_array::is_index((int)a1, (char *)a2);
  if ( result )
  {
    if ( *(char *)a2 == -1 )
      v7 = (const char *)a2[3];
    else
      v7 = (char *)a2 + 1;
    v8 = *(int (__fastcall **)(gameswf::as_object *, int, gameswf::as_value *))(*(_DWORD *)a1 + 40);
    v9 = LC_API_ATOI_0(v7);
    return v8(a1, v9, a3);
  }
  return result;
}


// ===== 79855c gameswf::as_array::as_array(gameswf::player *) =====
gameswf::as_array *__fastcall gameswf::as_array::as_array(gameswf::as_array *this, gameswf::player *a2)
{
  unsigned int v3; // r2
  _BYTE v5[12]; // [sp+4h] [bp-Ch] BYREF

  gameswf::as_object::as_object(this, a2);
  v3 = *((_DWORD *)this + 18) & 0xFF000000 | 0xFFFFFF;
  *(_DWORD *)this = off_990B18;
  *((_BYTE *)this + 56) = 1;
  *((_DWORD *)this + 18) = v3;
  *((_BYTE *)this + 57) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_BYTE *)this + 88) = 0;
  *((_BYTE *)this + 75) = HIBYTE(v3) & 0xFE;
  v5[1] = 0;
  v5[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v5,
    (void (*)(const gameswf::fn_call *))gameswf::as_global_array_ctor);
  gameswf::as_object::set_ctor(this, (const gameswf::as_value *)v5);
  gameswf::as_value::drop_refs((gameswf::as_value *)v5);
  return this;
}


// ===== 798608 gameswf::as_array::as_array(gameswf::player *) =====
gameswf::as_array *__fastcall gameswf::as_array::as_array(gameswf::as_array *this, gameswf::player *a2)
{
  unsigned int v3; // r2
  _BYTE v5[12]; // [sp+4h] [bp-Ch] BYREF

  gameswf::as_object::as_object(this, a2);
  v3 = *((_DWORD *)this + 18) & 0xFF000000 | 0xFFFFFF;
  *(_DWORD *)this = off_990B18;
  *((_BYTE *)this + 56) = 1;
  *((_DWORD *)this + 18) = v3;
  *((_BYTE *)this + 57) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_BYTE *)this + 88) = 0;
  *((_BYTE *)this + 75) = HIBYTE(v3) & 0xFE;
  v5[1] = 0;
  v5[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v5,
    (void (*)(const gameswf::fn_call *))gameswf::as_global_array_ctor);
  gameswf::as_object::set_ctor(this, (const gameswf::as_value *)v5);
  gameswf::as_value::drop_refs((gameswf::as_value *)v5);
  return this;
}


// ===== 7986b4 gameswf::as_array_length(gameswf::fn_call const&) =====
int __fastcall gameswf::as_array_length(gameswf *this, const gameswf::fn_call *a2)
{
  double v3; // r2

  v3 = (double)*(int *)(gameswf::cast_to<gameswf::as_array>(*((_DWORD *)this + 1)) + 80);
  return gameswf::as_value::set_double(*(gameswf::as_value **)this, v3);
}


// ===== 7986e4 gameswf::standard_array_sorter::operator()(gameswf::as_value const&,gameswf::as_value const&) =====
int __fastcall gameswf::standard_array_sorter::operator()(int a1, gameswf::as_value *this, char *a3)
{
  int v3; // r3
  char *v7; // r6
  char *v8; // r0
  const char *v9; // r6
  const char *v10; // r1
  char *v11; // r5
  char *v12; // r0
  const char *v13; // r1
  const char *v14; // r0
  int result; // r0
  char *v16; // r6
  char *v17; // r0
  const char *v18; // r6
  const char *v19; // r1
  double v20; // r0
  const char *v21; // r2
  char *v22; // r5
  char *v23; // r0
  const char *v24; // r1
  const char *v25; // r0

  v3 = *(_DWORD *)(a1 + 12);
  if ( (v3 & 0x10) != 0 )
  {
    v20 = COERCE_DOUBLE(gameswf::as_value::to_number(this, (int)this, a3));
    result = v20 < COERCE_DOUBLE(gameswf::as_value::to_number((gameswf::as_value *)a3, SHIDWORD(v20), v21));
    if ( (*(_DWORD *)(a1 + 12) & 2) != 0 )
      return (unsigned __int8)result ^ 1;
  }
  else if ( (v3 & 1) != 0
         && (v7 = gameswf::as_value::to_tu_string(this),
             v8 = gameswf::as_value::to_tu_string((gameswf::as_value *)a3),
             v7 != v8)
         && (*v7 != -1 ? (v9 = v7 + 1) : (v9 = *((const char **)v7 + 3)),
             *v8 == -1 ? (v10 = *((const char **)v8 + 3)) : (v10 = v8 + 1),
             gameswf::tu_string::stricmp(v9, v10)) )
  {
    v11 = gameswf::as_value::to_tu_string(this);
    v12 = gameswf::as_value::to_tu_string((gameswf::as_value *)a3);
    if ( *v12 == -1 )
      v13 = *((const char **)v12 + 3);
    else
      v13 = v12 + 1;
    if ( *v11 == -1 )
      v14 = *((const char **)v11 + 3);
    else
      v14 = v11 + 1;
    result = (unsigned int)gameswf::tu_string::stricmp(v14, v13) >> 31;
    if ( (*(_DWORD *)(a1 + 12) & 2) != 0 )
      return result ^ 1;
  }
  else
  {
    v16 = gameswf::as_value::to_tu_string(this);
    v17 = gameswf::as_value::to_tu_string((gameswf::as_value *)a3);
    if ( v16 != v17
      && (*v16 != -1 ? (v18 = v16 + 1) : (v18 = *((const char **)v16 + 3)),
          *v17 == -1 ? (v19 = *((const char **)v17 + 3)) : (v19 = v17 + 1),
          LC_API_STRCMP_0(v18, v19)) )
    {
      v22 = gameswf::as_value::to_tu_string(this);
      v23 = gameswf::as_value::to_tu_string((gameswf::as_value *)a3);
      if ( *v23 == -1 )
        v24 = *((const char **)v23 + 3);
      else
        v24 = v23 + 1;
      if ( *v22 == -1 )
        v25 = *((const char **)v22 + 3);
      else
        v25 = v22 + 1;
      result = (unsigned int)LC_API_STRCMP_0(v25, v24) >> 31;
      if ( (*(_DWORD *)(a1 + 12) & 2) != 0 )
        return result ^ 1;
    }
    else
    {
      result = this < (gameswf::as_value *)a3;
      if ( (*(_DWORD *)(a1 + 12) & 2) != 0 )
        return this >= (gameswf::as_value *)a3;
    }
  }
  return result;
}


// ===== 7988a0 std::__push_heap<gameswf::as_value *,int,gameswf::as_value,gameswf::standard_array_sorter>(gameswf::as_value *,int,int,gameswf::as_value,gameswf::standard_array_sorter) =====
void __fastcall std::__push_heap<gameswf::as_value *,int,gameswf::as_value,gameswf::standard_array_sorter>(
        int a1,
        int a2,
        int a3,
        char *a4,
        int a5)
{
  int v5; // r5
  gameswf::as_value *v9; // r6
  int i; // r10

  v5 = a2;
  if ( a2 > a3 )
  {
    for ( i = (a2 - 1) / 2; ; i = (i - 1) / 2 )
    {
      v9 = (gameswf::as_value *)(a1 + 12 * i);
      if ( !gameswf::standard_array_sorter::operator()(a5, v9, a4) )
        break;
      gameswf::as_value::operator=((gameswf::as_value *)(a1 + 12 * v5), a1 + 12 * i);
      if ( a3 >= i )
        goto LABEL_3;
      v5 = i;
    }
  }
  v9 = (gameswf::as_value *)(a1 + 12 * v5);
LABEL_3:
  gameswf::as_value::operator=(v9, (int)a4);
}


// ===== 798934 std::priv::__median<gameswf::as_value,gameswf::standard_array_sorter>(gameswf::as_value const&,gameswf::as_value const&,gameswf::as_value const&,gameswf::standard_array_sorter) =====
gameswf::as_value *__fastcall std::priv::__median<gameswf::as_value,gameswf::standard_array_sorter>(
        gameswf::as_value *this,
        gameswf::as_value *a2,
        char *a3,
        int a4)
{
  if ( gameswf::standard_array_sorter::operator()(a4, this, (char *)a2) )
  {
    if ( gameswf::standard_array_sorter::operator()(a4, a2, a3) )
      return a2;
    if ( gameswf::standard_array_sorter::operator()(a4, this, a3) )
      return (gameswf::as_value *)a3;
    return this;
  }
  if ( gameswf::standard_array_sorter::operator()(a4, this, a3) )
    return this;
  if ( gameswf::standard_array_sorter::operator()(a4, a2, a3) )
    return (gameswf::as_value *)a3;
  return a2;
}


// ===== 7989e8 std::priv::__unguarded_linear_insert<gameswf::as_value *,gameswf::as_value,gameswf::standard_array_sorter>(gameswf::as_value *,gameswf::as_value,gameswf::standard_array_sorter) =====
void __fastcall std::priv::__unguarded_linear_insert<gameswf::as_value *,gameswf::as_value,gameswf::standard_array_sorter>(
        gameswf::as_value *a1,
        gameswf::as_value *this,
        int a3)
{
  gameswf::as_value *v3; // r5
  char *i; // r4

  v3 = a1;
  for ( i = (char *)a1 - 12; gameswf::standard_array_sorter::operator()(a3, this, i); i -= 12 )
  {
    gameswf::as_value::operator=(v3, (int)i);
    v3 = (gameswf::as_value *)i;
  }
  gameswf::as_value::operator=(v3, (int)this);
}


// ===== 798a38 gameswf::as_array_shift(gameswf::fn_call const&) =====
void __fastcall gameswf::as_array_shift(gameswf *this, const gameswf::fn_call *a2)
{
  int v3; // r0
  int v4; // r4
  _BYTE v5[16]; // [sp+4h] [bp-10h] BYREF

  v3 = gameswf::cast_to<gameswf::as_array>(*((_DWORD *)this + 1));
  v5[0] = 0;
  v5[1] = 0;
  v4 = v3;
  (*(void (__fastcall **)(int, _DWORD, _BYTE *))(*(_DWORD *)v3 + 40))(v3, 0, v5);
  if ( *(_DWORD *)(v4 + 80) == 1 )
  {
    gameswf::array<gameswf::as_value>::resize((_DWORD *)(v4 + 76), 0);
  }
  else
  {
    gameswf::as_value::drop_refs(*(gameswf::as_value **)(v4 + 76));
    memmove(*(void **)(v4 + 76), (const void *)(*(_DWORD *)(v4 + 76) + 12), 12 * (*(_DWORD *)(v4 + 80) - 1));
    --*(_DWORD *)(v4 + 80);
  }
  gameswf::as_value::operator=(*(gameswf::as_value **)this, (int)v5);
  gameswf::as_value::drop_refs((gameswf::as_value *)v5);
}


// ===== 798adc gameswf::as_array::to_string(void) =====
char *__fastcall gameswf::as_array::to_string(gameswf::as_array *this)
{
  gameswf::tu_string *v1; // r8
  int v3; // r5
  _BYTE *v4; // r3
  int v5; // r10
  int v6; // r4
  int v7; // r0
  char *v8; // r0
  _BYTE v11[16]; // [sp+Ch] [bp-10h] BYREF

  v1 = (gameswf::as_array *)((char *)this + 56);
  gameswf::tu_string::resize((gameswf::as_array *)((char *)this + 56), 0);
  v3 = 0;
  if ( *((char *)this + 56) == -1 )
    v4 = *((_BYTE **)this + 17);
  else
    v4 = (char *)this + 57;
  *v4 = 0;
  v5 = *((_DWORD *)this + 20);
  *((_DWORD *)this + 18) = *((_DWORD *)this + 18) & 0xFF000000 | 0xFFFFFF;
  if ( v5 > 0 )
  {
    v6 = 0;
    do
    {
      while ( 1 )
      {
        v7 = *((_DWORD *)this + 19);
        v11[0] = 0;
        v11[1] = 0;
        v8 = gameswf::as_value::to_string((gameswf::as_value *)(v7 + v3));
        gameswf::tu_string::operator+=(v1, v8);
        if ( v5 - 1 > v6++ )
          break;
        gameswf::as_value::drop_refs((gameswf::as_value *)v11);
        v3 += 12;
        if ( v6 == v5 )
          goto LABEL_9;
      }
      gameswf::tu_string::operator+=(v1, ",");
      gameswf::as_value::drop_refs((gameswf::as_value *)v11);
      v3 += 12;
    }
    while ( v6 != v5 );
  }
LABEL_9:
  if ( *((char *)this + 56) == -1 )
    return *((char **)this + 17);
  else
    return (char *)this + 57;
}


// ===== 798bc8 gameswf::as_array::enumerate(gameswf::as_environment *) =====
int __fastcall gameswf::as_array::enumerate(gameswf::as_array *this, gameswf::as_environment *a2)
{
  double v4; // r0
  int v5; // r5
  int i; // r4
  int v8; // [sp+4h] [bp-8h] BYREF

  LODWORD(v4) = gameswf::as_object::enumerate((int)this, a2);
  v5 = *((_DWORD *)this + 20);
  if ( v5 > 0 )
  {
    for ( i = 0; i != v5; ++i )
    {
      v8 = i;
      v4 = gameswf::array<gameswf::as_value>::push_back<int>(a2, &v8);
    }
  }
  return LODWORD(v4);
}


// ===== 798c14 gameswf::as_array_join(gameswf::fn_call const&) =====
int __fastcall gameswf::as_array_join(gameswf *this, const gameswf::fn_call *a2)
{
  int v3; // r8
  char *v4; // r0
  int v5; // r5
  int v6; // r7
  int i; // r4
  char *v8; // r0
  int result; // r0
  _BYTE v10[8]; // [sp+Ch] [bp-30h] BYREF
  void *p; // [sp+18h] [bp-24h]
  unsigned int v12; // [sp+1Ch] [bp-20h]
  char v13[8]; // [sp+20h] [bp-1Ch] BYREF
  void *v14; // [sp+2Ch] [bp-10h]

  v3 = gameswf::cast_to<gameswf::as_array>(*((_DWORD *)this + 1));
  gameswf::tu_string::tu_string((gameswf::tu_string *)v13, ",");
  if ( *((int *)this + 4) > 0 )
  {
    v4 = gameswf::as_value::to_tu_string((gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)));
    gameswf::tu_string::operator=((gameswf::tu_string *)v13, v4);
  }
  v5 = 0;
  v12 = v12 & 0xFF000000 | 0xFFFFFF;
  v10[0] = 1;
  HIBYTE(v12) &= ~1u;
  v10[1] = 0;
  v6 = *(_DWORD *)(v3 + 80);
  if ( v6 > 0 )
  {
    for ( i = 0; i != v6; ++i )
    {
      while ( 1 )
      {
        v8 = gameswf::as_value::to_tu_string((gameswf::as_value *)(*(_DWORD *)(v3 + 76) + v5));
        gameswf::tu_string::operator+=((gameswf::tu_string *)v10, v8);
        if ( v6 - 1 > i )
          break;
        ++i;
        v5 += 12;
        if ( i == v6 )
          goto LABEL_8;
      }
      gameswf::tu_string::operator+=((gameswf::tu_string *)v10, v13);
      v5 += 12;
    }
  }
LABEL_8:
  gameswf::as_value::set_tu_string(*(gameswf::as_value **)this, (const gameswf::tu_string *)v10);
  if ( v10[0] != -1 )
  {
    if ( v13[0] != -1 )
      return result;
LABEL_12:
    gameswf::free_internal(v14);
    return result;
  }
  gameswf::free_internal(p);
  if ( v13[0] == -1 )
    goto LABEL_12;
  return result;
}


// ===== 798da8 gameswf::as_array_tostring(gameswf::fn_call const&) =====
void __fastcall gameswf::as_array_tostring(gameswf *this, const gameswf::fn_call *a2)
{
  int v3; // r0
  gameswf::as_value *v4; // r7
  const char *v5; // r0
  _BYTE v6[8]; // [sp+0h] [bp-1Ch] BYREF
  void *p; // [sp+Ch] [bp-10h]

  v3 = gameswf::cast_to<gameswf::as_array>(*((_DWORD *)this + 1));
  v4 = *(gameswf::as_value **)this;
  v5 = (const char *)(*(int (__fastcall **)(int))(*(_DWORD *)v3 + 12))(v3);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v6, v5);
  gameswf::as_value::set_tu_string(v4, (const gameswf::tu_string *)v6);
  if ( v6[0] == -1 )
    gameswf::free_internal(p);
}


// ===== 798e44 gameswf::array_init(gameswf::player *) =====
gameswf::as_c_function *__fastcall gameswf::array_init(gameswf *this, gameswf::player *a2)
{
  gameswf::as_c_function *v3; // r4
  _BYTE v5[4]; // [sp+4h] [bp-B0h] BYREF
  int v6; // [sp+8h] [bp-ACh]
  int v7; // [sp+Ch] [bp-A8h]
  _BYTE v8[4]; // [sp+10h] [bp-A4h] BYREF
  int v9; // [sp+14h] [bp-A0h]
  int v10; // [sp+18h] [bp-9Ch]
  _BYTE v11[4]; // [sp+1Ch] [bp-98h] BYREF
  int v12; // [sp+20h] [bp-94h]
  int v13; // [sp+24h] [bp-90h]
  _BYTE v14[4]; // [sp+28h] [bp-8Ch] BYREF
  int v15; // [sp+2Ch] [bp-88h]
  int v16; // [sp+30h] [bp-84h]
  _BYTE v17[4]; // [sp+34h] [bp-80h] BYREF
  int v18; // [sp+38h] [bp-7Ch]
  int v19; // [sp+3Ch] [bp-78h]
  int v20; // [sp+40h] [bp-74h]
  int v21; // [sp+44h] [bp-70h]
  _BYTE v22[8]; // [sp+48h] [bp-6Ch] BYREF
  void *v23; // [sp+54h] [bp-60h]
  _BYTE v24[8]; // [sp+5Ch] [bp-58h] BYREF
  void *v25; // [sp+68h] [bp-4Ch]
  _BYTE v26[8]; // [sp+70h] [bp-44h] BYREF
  void *v27; // [sp+7Ch] [bp-38h]
  _BYTE v28[8]; // [sp+84h] [bp-30h] BYREF
  void *v29; // [sp+90h] [bp-24h]
  _BYTE v30[8]; // [sp+98h] [bp-1Ch] BYREF
  void *p; // [sp+A4h] [bp-10h]

  v3 = (gameswf::as_c_function *)operator new(0x40u, 0);
  gameswf::as_c_function::as_c_function(v3, this, (void (*)(const gameswf::fn_call *))gameswf::as_global_array_ctor);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v30, "CASEINSENSITIVE");
  v20 = 0;
  v21 = 1072693248;
  v17[0] = 0;
  v17[1] = 2;
  v18 = 0;
  v19 = 1072693248;
  gameswf::as_object::builtin_member((int)v3, (int)v30, v17);
  gameswf::as_value::drop_refs((gameswf::as_value *)v17);
  if ( v30[0] == -1 )
    gameswf::free_internal(p);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v28, "DESCENDING");
  v20 = 0;
  v21 = 0x40000000;
  v14[0] = 0;
  v14[1] = 2;
  v15 = 0;
  v16 = 0x40000000;
  gameswf::as_object::builtin_member((int)v3, (int)v28, v14);
  gameswf::as_value::drop_refs((gameswf::as_value *)v14);
  if ( v28[0] == -1 )
    gameswf::free_internal(v29);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v26, "UNIQUESORT");
  v20 = 0;
  v21 = 1074790400;
  v11[0] = 0;
  v11[1] = 2;
  v12 = 0;
  v13 = 1074790400;
  gameswf::as_object::builtin_member((int)v3, (int)v26, v11);
  gameswf::as_value::drop_refs((gameswf::as_value *)v11);
  if ( v26[0] == -1 )
    gameswf::free_internal(v27);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v24, "RETURNINDEXEDARRAY");
  v20 = 0;
  v21 = 1075838976;
  v8[0] = 0;
  v8[1] = 2;
  v9 = 0;
  v10 = 1075838976;
  gameswf::as_object::builtin_member((int)v3, (int)v24, v8);
  gameswf::as_value::drop_refs((gameswf::as_value *)v8);
  if ( v24[0] == -1 )
    gameswf::free_internal(v25);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v22, "NUMERIC");
  v20 = 0;
  v21 = 1076887552;
  v5[0] = 0;
  v5[1] = 2;
  v6 = 0;
  v7 = 1076887552;
  gameswf::as_object::builtin_member((int)v3, (int)v22, v5);
  gameswf::as_value::drop_refs((gameswf::as_value *)v5);
  if ( v22[0] == -1 )
    gameswf::free_internal(v23);
  return v3;
}


// ===== 799134 gameswf::as_array::push(gameswf::as_value const&) =====
int __fastcall gameswf::as_array::push(gameswf::as_array *this, const gameswf::as_value *a2)
{
  return gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>((_DWORD *)this + 19);
}


// ===== 79913c gameswf::as_array_slice(gameswf::fn_call const&) =====
void __fastcall gameswf::as_array_slice(gameswf *this, const gameswf::fn_call *a2)
{
  int v3; // r0
  int v4; // r1
  int v5; // r4
  int v6; // r8
  int v7; // r7
  int v8; // r5
  int v9; // r0
  int v10; // r1
  int v11; // r0
  int v12; // r6
  gameswf::player *v13; // r5
  gameswf::as_array *v14; // r6
  int v15; // r4
  int v16; // r7
  int v17; // r5

  v3 = gameswf::cast_to<gameswf::as_array>(*((_DWORD *)this + 1));
  v5 = *(_DWORD *)(v3 + 80);
  v6 = v3;
  if ( *((int *)this + 4) > 0 )
  {
    v9 = (int)COERCE_DOUBLE(
                gameswf::as_value::to_number(
                  (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
                  v4,
                  (const char *)*((_DWORD *)this + 5)));
    v8 = v9;
    if ( v9 < 0 )
      v8 = v9 + v5;
    if ( *((int *)this + 4) > 1 )
    {
      v11 = (int)COERCE_DOUBLE(
                   gameswf::as_value::to_number(
                     (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 1)),
                     v10,
                     (const char *)(*((_DWORD *)this + 5) - 1)));
      v7 = v11;
      if ( v11 < 0 )
        v7 = v11 + v5;
    }
    else
    {
      v7 = v5;
    }
  }
  else
  {
    v7 = *(_DWORD *)(v3 + 80);
    v8 = 0;
  }
  v12 = *((_DWORD *)this + 3);
  if ( v7 >= v5 )
    v7 = v5;
  if ( v8 < v5 )
    v5 = v8;
  gameswf::weak_ptr<gameswf::player>::check_proxy(v12 + 100);
  v13 = *(gameswf::player **)(v12 + 104);
  v14 = (gameswf::as_array *)operator new(0x5Cu, 0);
  gameswf::as_array::as_array(v14, v13);
  v15 = v5 & ~(v5 >> 31);
  v16 = v7 & ~(v7 >> 31);
  if ( v14 )
    gameswf::ref_counted::add_ref((int)v14);
  if ( v16 > v15 )
  {
    v17 = 12 * v15;
    do
    {
      ++v15;
      gameswf::as_array::push(v14, (const gameswf::as_value *)(*(_DWORD *)(v6 + 76) + v17));
      v17 += 12;
    }
    while ( v15 != v16 );
  }
  gameswf::as_value::set_as_object(*(gameswf::as_value **)this, v14);
  if ( v14 )
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v14);
}


// ===== 79926c gameswf::as_array_concat(gameswf::fn_call const&) =====
void __fastcall gameswf::as_array_concat(gameswf *this, const gameswf::fn_call *a2)
{
  int v3; // r0
  int v4; // r4
  int v5; // r7
  gameswf::player *v6; // r4
  gameswf::as_array *v7; // r8
  int v8; // r6
  int v9; // r4
  int i; // r5
  int v11; // r10
  int v12; // r3
  int v13; // r0
  int v14; // r0
  int v15; // r6
  int v16; // r7
  int v17; // r4
  int j; // r5

  v3 = gameswf::cast_to<gameswf::as_array>(*((_DWORD *)this + 1));
  v4 = *((_DWORD *)this + 3);
  v5 = v3;
  gameswf::weak_ptr<gameswf::player>::check_proxy(v4 + 100);
  v6 = *(gameswf::player **)(v4 + 104);
  v7 = (gameswf::as_array *)operator new(0x5Cu, 0);
  gameswf::as_array::as_array(v7, v6);
  if ( v7 )
    gameswf::ref_counted::add_ref((int)v7);
  v8 = *(_DWORD *)(v5 + 80);
  if ( v8 > 0 )
  {
    v9 = 0;
    for ( i = 0; i != v8; ++i )
    {
      gameswf::as_array::push(v7, (const gameswf::as_value *)(*(_DWORD *)(v5 + 76) + v9));
      v9 += 12;
    }
  }
  if ( *((int *)this + 4) > 0 )
  {
    v11 = 0;
    do
    {
      v12 = **((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - v11);
      if ( *(_BYTE *)(v12 + 1) == 5 )
        v13 = *(_DWORD *)(v12 + 4);
      else
        v13 = 0;
      v14 = gameswf::cast_to<gameswf::as_array>(v13);
      v15 = v14;
      if ( v14 )
      {
        v16 = *(_DWORD *)(v14 + 80);
        if ( v16 > 0 )
        {
          v17 = 0;
          for ( j = 0; j != v16; ++j )
          {
            gameswf::as_array::push(v7, (const gameswf::as_value *)(*(_DWORD *)(v15 + 76) + v17));
            v17 += 12;
          }
        }
      }
      ++v11;
    }
    while ( *((_DWORD *)this + 4) > v11 );
  }
  gameswf::as_value::set_as_object(*(gameswf::as_value **)this, v7);
  if ( v7 )
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v7);
}


// ===== 7993a4 gameswf::as_array_unshift(gameswf::fn_call const&) =====
void __fastcall gameswf::as_array_unshift(gameswf *this, const gameswf::fn_call *a2)
{
  int v3; // r0
  _DWORD *v4; // r7
  int v5; // r5
  int *v6; // r8
  int v7; // r1
  int v8; // r5
  int i; // r7
  int v10; // [sp+0h] [bp-10h] BYREF
  int v11; // [sp+4h] [bp-Ch]
  int v12; // [sp+8h] [bp-8h]
  char v13; // [sp+Ch] [bp-4h]

  v3 = gameswf::cast_to<gameswf::as_array>(*((_DWORD *)this + 1));
  v4 = (_DWORD *)(v3 + 76);
  v5 = 0;
  v6 = (int *)v3;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  gameswf::array<gameswf::as_value>::operator=(&v10, (_DWORD *)(v3 + 76));
  gameswf::array<gameswf::as_value>::resize(v4, 0);
  if ( *((int *)this + 4) > 0 )
  {
    do
    {
      v7 = *((_DWORD *)this + 5) - v5++;
      gameswf::as_array::push((gameswf::as_array *)v6, (const gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * v7));
    }
    while ( *((_DWORD *)this + 4) > v5 );
  }
  if ( v11 > 0 )
  {
    v8 = 0;
    for ( i = 0; i < v11; ++i )
    {
      gameswf::as_array::push((gameswf::as_array *)v6, (const gameswf::as_value *)(v10 + v8));
      v8 += 12;
    }
  }
  gameswf::as_value::set_double(*(gameswf::as_value **)this, (double)v6[20]);
  gameswf::array<gameswf::as_value>::resize(&v10, 0);
  gameswf::array<gameswf::as_value>::reserve((int)&v10, 0);
}


// ===== 7994a0 gameswf::as_array_push(gameswf::fn_call const&) =====
int __fastcall gameswf::as_array_push(gameswf *this, const gameswf::fn_call *a2)
{
  int *v3; // r6
  int v4; // r4
  int v5; // r1

  v3 = (int *)gameswf::cast_to<gameswf::as_array>(*((_DWORD *)this + 1));
  if ( *((int *)this + 4) > 0 )
  {
    v4 = 0;
    do
    {
      v5 = *((_DWORD *)this + 5) - v4++;
      gameswf::as_array::push((gameswf::as_array *)v3, (const gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * v5));
    }
    while ( *((_DWORD *)this + 4) > v4 );
  }
  return gameswf::as_value::set_double(*(gameswf::as_value **)this, (double)v3[20]);
}


// ===== 799514 gameswf::custom_array_sorter::operator()(gameswf::as_value const&,gameswf::as_value const&) =====
bool __fastcall gameswf::custom_array_sorter::operator()(int a1)
{
  int v2; // r1
  const char *v3; // r2
  _BOOL4 v4; // r4
  _BYTE v6[16]; // [sp+14h] [bp-10h] BYREF

  gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(*(_DWORD **)(a1 + 4));
  gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(*(_DWORD **)(a1 + 4));
  gameswf::call_method(
    (int)v6,
    *(gameswf::as_value **)a1,
    *(_DWORD *)(a1 + 4),
    *(_DWORD *)a1,
    2,
    *(_DWORD *)(*(_DWORD *)(a1 + 4) + 4) - 1,
    (int)"???");
  gameswf::array<gameswf::as_value>::resize(*(_DWORD **)(a1 + 4), *(_DWORD *)(*(_DWORD *)(a1 + 4) + 4) - 2);
  v4 = (int)COERCE_DOUBLE(gameswf::as_value::to_number((gameswf::as_value *)v6, v2, v3)) == 1;
  gameswf::as_value::drop_refs((gameswf::as_value *)v6);
  return v4;
}


// ===== 7995b0 std::__push_heap<gameswf::as_value *,int,gameswf::as_value,gameswf::custom_array_sorter>(gameswf::as_value *,int,int,gameswf::as_value,gameswf::custom_array_sorter) =====
void std::__push_heap<gameswf::as_value *,int,gameswf::as_value,gameswf::custom_array_sorter>(
        int a1,
        int a2,
        int a3,
        int a4,
        ...)
{
  int v4; // r5
  gameswf::as_value *v8; // r6
  int i; // r10
  va_list va; // [sp+28h] [bp+24h] BYREF

  va_start(va, a4);
  v4 = a2;
  if ( a2 > a3 )
  {
    for ( i = (a2 - 1) / 2; ; i = (i - 1) / 2 )
    {
      v8 = (gameswf::as_value *)(a1 + 12 * i);
      if ( !gameswf::custom_array_sorter::operator()((int)&va) )
        break;
      gameswf::as_value::operator=((gameswf::as_value *)(a1 + 12 * v4), a1 + 12 * i);
      if ( a3 >= i )
        goto LABEL_3;
      v4 = i;
    }
  }
  v8 = (gameswf::as_value *)(a1 + 12 * v4);
LABEL_3:
  gameswf::as_value::operator=(v8, a4);
}


// ===== 79963c std::priv::__median<gameswf::as_value,gameswf::custom_array_sorter>(gameswf::as_value const&,gameswf::as_value const&,gameswf::as_value const&,gameswf::custom_array_sorter) =====
int __fastcall std::priv::__median<gameswf::as_value,gameswf::custom_array_sorter>(int a1, int a2, int a3)
{
  _BYTE vars14[8]; // [sp+14h] [bp+14h] BYREF

  if ( !gameswf::custom_array_sorter::operator()((int)vars14) )
  {
    if ( !gameswf::custom_array_sorter::operator()((int)vars14) )
    {
      if ( !gameswf::custom_array_sorter::operator()((int)vars14) )
        return a2;
      return a3;
    }
    return a1;
  }
  if ( !gameswf::custom_array_sorter::operator()((int)vars14) )
  {
    if ( gameswf::custom_array_sorter::operator()((int)vars14) )
      return a3;
    return a1;
  }
  return a2;
}


// ===== 7996f4 std::priv::__unguarded_linear_insert<gameswf::as_value *,gameswf::as_value,gameswf::custom_array_sorter>(gameswf::as_value *,gameswf::as_value,gameswf::custom_array_sorter) =====
void __fastcall std::priv::__unguarded_linear_insert<gameswf::as_value *,gameswf::as_value,gameswf::custom_array_sorter>(
        gameswf::as_value *a1,
        int a2,
        int a3,
        int a4)
{
  gameswf::as_value *v4; // r4
  int v6; // r5
  _DWORD v7[3]; // [sp+0h] [bp+0h] BYREF

  v4 = a1;
  v7[0] = a3;
  v7[1] = a4;
  v6 = (int)a1 - 12;
  while ( gameswf::custom_array_sorter::operator()((int)v7) )
  {
    gameswf::as_value::operator=(v4, v6);
    v4 = (gameswf::as_value *)v6;
    v6 -= 12;
  }
  gameswf::as_value::operator=(v4, a2);
}


// ===== 799750 std::priv::__unguarded_insertion_sort_aux<gameswf::as_value *,gameswf::as_value,gameswf::custom_array_sorter>(gameswf::as_value *,gameswf::as_value *,gameswf::as_value *,gameswf::custom_array_sorter) =====
void __fastcall std::priv::__unguarded_insertion_sort_aux<gameswf::as_value *,gameswf::as_value,gameswf::custom_array_sorter>(
        gameswf::as_value *a1,
        gameswf::as_value *a2,
        int a3,
        int a4,
        int a5)
{
  gameswf::as_value *v6; // r4
  _BYTE varC[40]; // [sp+4h] [bp-Ch] BYREF
  int varg_r3; // [sp+2Ch] [bp+1Ch]

  if ( a1 != a2 )
  {
    v6 = a1;
    do
    {
      varC[0] = 0;
      varC[1] = 0;
      gameswf::as_value::operator=((gameswf::as_value *)varC, (int)v6);
      std::priv::__unguarded_linear_insert<gameswf::as_value *,gameswf::as_value,gameswf::custom_array_sorter>(
        v6,
        (int)varC,
        varg_r3,
        a5);
      v6 = (gameswf::as_value *)((char *)v6 + 12);
      gameswf::as_value::drop_refs((gameswf::as_value *)varC);
    }
    while ( a2 != v6 );
  }
}


// ===== 7997c4 gameswf::as_environment::pop(void) =====
gameswf::as_environment *__fastcall gameswf::as_environment::pop(gameswf::as_environment *this, _DWORD *a2)
{
  int v3; // r1

  v3 = *a2 + 12 * (a2[1] - 1);
  *((_BYTE *)this + 1) = 0;
  *(_BYTE *)this = 0;
  gameswf::as_value::operator=(this, v3);
  gameswf::array<gameswf::as_value>::resize(a2, a2[1] - 1);
  return this;
}


// ===== 79980c gameswf::as_global_array_ctor(gameswf::fn_call const&) =====
void __fastcall gameswf::as_global_array_ctor(gameswf *this, const gameswf::fn_call *a2)
{
  int v2; // r4
  gameswf::player *v4; // r4
  gameswf::as_array *v5; // r6
  int v6; // r1
  int v7; // r3
  int v8; // r4
  int v9; // r1
  int v10; // r1
  const char *v11; // r2
  int v12; // r8
  int i; // r7
  int v14; // r10
  int v15; // r4
  _BYTE v16[12]; // [sp+4h] [bp-28h] BYREF
  _BYTE v17[12]; // [sp+10h] [bp-1Ch] BYREF
  _BYTE v18[16]; // [sp+1Ch] [bp-10h] BYREF

  v2 = *((_DWORD *)this + 3);
  gameswf::weak_ptr<gameswf::player>::check_proxy(v2 + 100);
  v4 = *(gameswf::player **)(v2 + 104);
  v5 = (gameswf::as_array *)operator new(0x5Cu, 0);
  gameswf::as_array::as_array(v5, v4);
  if ( v5 )
    gameswf::ref_counted::add_ref((int)v5);
  v7 = *((_DWORD *)this + 4);
  if ( v7 == -1 )
  {
    if ( *((_DWORD *)this + 5) == -1 )
    {
      gameswf::as_environment::pop((gameswf::as_environment *)v18, *((_DWORD **)this + 3));
      v12 = (int)COERCE_DOUBLE(gameswf::as_value::to_number((gameswf::as_value *)v18, v10, v11));
      gameswf::as_value::drop_refs((gameswf::as_value *)v18);
      if ( v12 > 0 )
      {
        for ( i = 0; i != v12; ++i )
        {
          gameswf::as_environment::pop((gameswf::as_environment *)v17, *((_DWORD **)this + 3));
          gameswf::as_array::push(v5, (const gameswf::as_value *)v17);
          gameswf::as_value::drop_refs((gameswf::as_value *)v17);
        }
      }
    }
  }
  else if ( v7 == 1 )
  {
    v14 = (int)COERCE_DOUBLE(
                 gameswf::as_value::to_number(
                   (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
                   v6,
                   (const char *)*((_DWORD *)this + 5)));
    if ( v14 > 0 )
    {
      v15 = 0;
      do
      {
        v16[0] = 0;
        v16[1] = 0;
        ++v15;
        gameswf::as_array::push(v5, (const gameswf::as_value *)v16);
        gameswf::as_value::drop_refs((gameswf::as_value *)v16);
      }
      while ( v15 != v14 );
    }
  }
  else if ( v7 > 0 )
  {
    v8 = 0;
    do
    {
      v9 = *((_DWORD *)this + 5) - v8++;
      gameswf::as_array::push(v5, (const gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * v9));
    }
    while ( *((_DWORD *)this + 4) > v8 );
  }
  gameswf::as_value::set_as_object(*(gameswf::as_value **)this, v5);
  if ( v5 )
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v5);
}


// ===== 799994 std::__adjust_heap<gameswf::as_value *,int,gameswf::as_value,gameswf::custom_array_sorter>(gameswf::as_value *,int,int,gameswf::as_value,gameswf::custom_array_sorter) =====
void __fastcall std::__adjust_heap<gameswf::as_value *,int,gameswf::as_value,gameswf::custom_array_sorter>(
        int a1,
        int a2,
        int a3,
        int a4,
        int a5,
        int a6)
{
  int v6; // r4
  int v9; // r10
  int v10; // r9
  int v11; // r6
  int v12; // r4
  _BYTE v15[16]; // [sp+1Ch] [bp-10h] BYREF

  v6 = 2 * (a2 + 1);
  if ( v6 < a3 )
  {
    v10 = a2;
    do
    {
      v9 = v6 - 1;
      v11 = a1 + 12 * v6;
      if ( gameswf::custom_array_sorter::operator()((int)&a5) )
        v11 = a1 + 12 * (v6 - 1);
      else
        v9 = v6;
      v6 = 2 * (v9 + 1);
      gameswf::as_value::operator=((gameswf::as_value *)(a1 + 12 * v10), v11);
      v10 = v9;
    }
    while ( a3 > v6 );
  }
  else
  {
    v9 = a2;
  }
  if ( v6 == a3 )
  {
    v12 = v6 - 1;
    gameswf::as_value::operator=((gameswf::as_value *)(a1 + 12 * v9), a1 + 12 * v12);
    v9 = v12;
  }
  v15[1] = 0;
  v15[0] = 0;
  gameswf::as_value::operator=((gameswf::as_value *)v15, a4);
  std::__push_heap<gameswf::as_value *,int,gameswf::as_value,gameswf::custom_array_sorter>(a1, v9, a2, (int)v15, a5, a6);
  gameswf::as_value::drop_refs((gameswf::as_value *)v15);
}


// ===== 799a8c std::__make_heap<gameswf::as_value *,gameswf::custom_array_sorter,gameswf::as_value,int>(gameswf::as_value *,gameswf::as_value *,gameswf::custom_array_sorter,gameswf::as_value *,int *) =====
void __fastcall std::__make_heap<gameswf::as_value *,gameswf::custom_array_sorter,gameswf::as_value,int>(
        int a1,
        int a2,
        int a3,
        int a4)
{
  int v4; // r1
  int v6; // r10
  int v7; // r4
  int v8; // r5
  _BYTE v11[16]; // [sp+14h] [bp-10h] BYREF

  v4 = a2 - a1;
  if ( v4 > 23 )
  {
    v6 = -1431655765 * (v4 >> 2);
    v7 = (v6 - 2) >> 1;
    v8 = a1 + 12 * v7;
    while ( 1 )
    {
      v11[0] = 0;
      v11[1] = 0;
      gameswf::as_value::operator=((gameswf::as_value *)v11, v8);
      std::__adjust_heap<gameswf::as_value *,int,gameswf::as_value,gameswf::custom_array_sorter>(
        a1,
        v7,
        v6,
        (int)v11,
        a3,
        a4);
      gameswf::as_value::drop_refs((gameswf::as_value *)v11);
      v8 -= 12;
      if ( !v7 )
        break;
      --v7;
    }
  }
}


// ===== 799b38 std::swap<gameswf::as_value>(gameswf::as_value &,gameswf::as_value &) =====
void __fastcall std::swap<gameswf::as_value>(gameswf::as_value *a1, gameswf::as_value *a2)
{
  _BYTE v4[12]; // [sp+4h] [bp-Ch] BYREF

  v4[1] = 0;
  v4[0] = 0;
  gameswf::as_value::operator=((gameswf::as_value *)v4, (int)a1);
  gameswf::as_value::operator=(a1, (int)a2);
  gameswf::as_value::operator=(a2, (int)v4);
  gameswf::as_value::drop_refs((gameswf::as_value *)v4);
}


// ===== 799b8c std::priv::__unguarded_partition<gameswf::as_value *,gameswf::as_value,gameswf::standard_array_sorter>(gameswf::as_value *,gameswf::as_value *,gameswf::as_value,gameswf::standard_array_sorter) =====
gameswf::as_value *__fastcall std::priv::__unguarded_partition<gameswf::as_value *,gameswf::as_value,gameswf::standard_array_sorter>(
        gameswf::as_value *this,
        char *a2,
        char *a3,
        int a4)
{
  while ( 1 )
  {
    while ( gameswf::standard_array_sorter::operator()(a4, this, a3) )
      this = (gameswf::as_value *)((char *)this + 12);
    do
      a2 -= 12;
    while ( gameswf::standard_array_sorter::operator()(a4, (gameswf::as_value *)a3, a2) );
    if ( this >= (gameswf::as_value *)a2 )
      break;
    std::swap<gameswf::as_value>(this, (gameswf::as_value *)a2);
    this = (gameswf::as_value *)((char *)this + 12);
  }
  return this;
}


// ===== 799bfc std::priv::__unguarded_partition<gameswf::as_value *,gameswf::as_value,gameswf::custom_array_sorter>(gameswf::as_value *,gameswf::as_value *,gameswf::as_value,gameswf::custom_array_sorter) =====
gameswf::as_value *__fastcall std::priv::__unguarded_partition<gameswf::as_value *,gameswf::as_value,gameswf::custom_array_sorter>(
        gameswf::as_value *a1,
        gameswf::as_value *a2)
{
  _BYTE vars14[8]; // [sp+14h] [bp+14h] BYREF

  while ( 1 )
  {
    while ( gameswf::custom_array_sorter::operator()((int)vars14) )
      a1 = (gameswf::as_value *)((char *)a1 + 12);
    do
      a2 = (gameswf::as_value *)((char *)a2 - 12);
    while ( gameswf::custom_array_sorter::operator()((int)vars14) );
    if ( a1 >= a2 )
      break;
    std::swap<gameswf::as_value>(a1, a2);
    a1 = (gameswf::as_value *)((char *)a1 + 12);
  }
  return a1;
}


// ===== 799c7c std::__pop_heap<gameswf::as_value *,gameswf::as_value,gameswf::custom_array_sorter,int>(gameswf::as_value *,gameswf::as_value *,gameswf::as_value *,gameswf::as_value,gameswf::custom_array_sorter,int *) =====
void __fastcall std::__pop_heap<gameswf::as_value *,gameswf::as_value,gameswf::custom_array_sorter,int>(
        int a1,
        int a2,
        gameswf::as_value *this,
        int a4,
        int a5,
        int a6)
{
  _BYTE v9[16]; // [sp+Ch] [bp-10h] BYREF

  gameswf::as_value::operator=(this, a1);
  v9[0] = 0;
  v9[1] = 0;
  gameswf::as_value::operator=((gameswf::as_value *)v9, a4);
  std::__adjust_heap<gameswf::as_value *,int,gameswf::as_value,gameswf::custom_array_sorter>(
    a1,
    0,
    -1431655765 * ((a2 - a1) >> 2),
    (int)v9,
    a5,
    a6);
  gameswf::as_value::drop_refs((gameswf::as_value *)v9);
}


// ===== 799d08 std::__pop_heap_aux<gameswf::as_value *,gameswf::as_value,gameswf::custom_array_sorter>(gameswf::as_value *,gameswf::as_value *,gameswf::as_value *,gameswf::custom_array_sorter) =====
void __fastcall std::__pop_heap_aux<gameswf::as_value *,gameswf::as_value,gameswf::custom_array_sorter>(
        int a1,
        int a2,
        int a3,
        int a4,
        int a5)
{
  gameswf::as_value *v5; // r6
  _BYTE var10[40]; // [sp+14h] [bp-10h] BYREF
  int varg_r3; // [sp+3Ch] [bp+18h]

  v5 = (gameswf::as_value *)(a2 - 12);
  var10[0] = 0;
  var10[1] = 0;
  gameswf::as_value::operator=((gameswf::as_value *)var10, a2 - 12);
  std::__pop_heap<gameswf::as_value *,gameswf::as_value,gameswf::custom_array_sorter,int>(
    a1,
    (int)v5,
    v5,
    (int)var10,
    varg_r3,
    a5);
  gameswf::as_value::drop_refs((gameswf::as_value *)var10);
}


// ===== 799d7c std::priv::__partial_sort<gameswf::as_value *,gameswf::as_value,gameswf::custom_array_sorter>(gameswf::as_value *,gameswf::as_value *,gameswf::as_value *,gameswf::as_value *,gameswf::custom_array_sorter) =====
void __fastcall std::priv::__partial_sort<gameswf::as_value *,gameswf::as_value,gameswf::custom_array_sorter>(
        int a1,
        unsigned int a2,
        unsigned int a3,
        int a4,
        int a5,
        int a6)
{
  unsigned int v9; // r4
  gameswf::as_value *v10; // r2
  int v11; // r7
  int v12; // r6
  int v13; // r4
  int v14; // r1
  _BYTE v15[12]; // [sp+14h] [bp-14h] BYREF
  int v16; // [sp+20h] [bp-8h]
  int v17; // [sp+24h] [bp-4h]

  v16 = a5;
  v17 = a6;
  std::__make_heap<gameswf::as_value *,gameswf::custom_array_sorter,gameswf::as_value,int>(a1, a2, a5, a6);
  if ( a2 < a3 )
  {
    v9 = a2;
    do
    {
      while ( !gameswf::custom_array_sorter::operator()((int)&a5) )
      {
        v9 += 12;
        if ( a3 <= v9 )
          goto LABEL_6;
      }
      v15[0] = 0;
      v15[1] = 0;
      gameswf::as_value::operator=((gameswf::as_value *)v15, v9);
      v10 = (gameswf::as_value *)v9;
      v9 += 12;
      std::__pop_heap<gameswf::as_value *,gameswf::as_value,gameswf::custom_array_sorter,int>(
        a1,
        a2,
        v10,
        (int)v15,
        a5,
        a6);
      gameswf::as_value::drop_refs((gameswf::as_value *)v15);
    }
    while ( a3 > v9 );
  }
LABEL_6:
  v11 = a5;
  v12 = a6;
  if ( (int)(a2 - a1) > 23 )
  {
    v13 = 0;
    do
    {
      v14 = a2 + v13;
      v13 -= 12;
      v17 = v12;
      v16 = v11;
      std::__pop_heap_aux<gameswf::as_value *,gameswf::as_value,gameswf::custom_array_sorter>(a1, v14, 0, v11, v12);
    }
    while ( (int)(a2 - a1 + v13) > 23 );
  }
}


// ===== 799e94 std::priv::__introsort_loop<gameswf::as_value *,gameswf::as_value,int,gameswf::custom_array_sorter>(gameswf::as_value *,gameswf::as_value *,gameswf::as_value *,int,gameswf::custom_array_sorter) =====
void __fastcall std::priv::__introsort_loop<gameswf::as_value *,gameswf::as_value,int,gameswf::custom_array_sorter>(
        gameswf::as_value *a1,
        gameswf::as_value *a2,
        int a3,
        int a4,
        int a5,
        int a6)
{
  gameswf::as_value *v6; // r5
  int v7; // r1
  int v9; // r6
  int v10; // r0
  gameswf::as_value *v11; // r7
  _BYTE v12[12]; // [sp+Ch] [bp-14h] BYREF
  int v13; // [sp+18h] [bp-8h]
  int v14; // [sp+1Ch] [bp-4h]

  v6 = a2;
  v7 = a2 - a1;
  v9 = a4;
  if ( v7 > 203 )
  {
    if ( a4 )
    {
      while ( 1 )
      {
        --v9;
        v10 = std::priv::__median<gameswf::as_value,gameswf::custom_array_sorter>(
                (int)a1,
                (int)a1 + 12 * ((-1431655765 * (v7 >> 2)) >> 1),
                (int)v6 - 12);
        v12[0] = 0;
        v12[1] = 0;
        gameswf::as_value::operator=((gameswf::as_value *)v12, v10);
        v11 = std::priv::__unguarded_partition<gameswf::as_value *,gameswf::as_value,gameswf::custom_array_sorter>(
                a1,
                v6);
        gameswf::as_value::drop_refs((gameswf::as_value *)v12);
        std::priv::__introsort_loop<gameswf::as_value *,gameswf::as_value,int,gameswf::custom_array_sorter>(
          v11,
          v6,
          0,
          v9,
          a5,
          a6);
        v7 = v11 - a1;
        if ( v11 - a1 <= 203 )
          break;
        v6 = v11;
        if ( !v9 )
          goto LABEL_7;
      }
    }
    else
    {
LABEL_7:
      v13 = a5;
      v14 = a6;
      std::priv::__partial_sort<gameswf::as_value *,gameswf::as_value,gameswf::custom_array_sorter>(
        (int)a1,
        (unsigned int)v6,
        (unsigned int)v6,
        0,
        a5,
        a6);
    }
  }
}


// ===== 799fb8 std::priv::__linear_insert<gameswf::as_value *,gameswf::as_value,gameswf::standard_array_sorter>(gameswf::as_value *,gameswf::as_value *,gameswf::as_value,gameswf::standard_array_sorter) =====
void __fastcall std::priv::__linear_insert<gameswf::as_value *,gameswf::as_value,gameswf::standard_array_sorter>(
        gameswf::as_value *a1,
        gameswf::as_value *a2,
        gameswf::as_value *this,
        int a4)
{
  int v8; // r7
  _BYTE v9[12]; // [sp+4h] [bp-1Ch] BYREF
  int v10; // [sp+10h] [bp-10h]
  _BYTE v11[12]; // [sp+14h] [bp-Ch] BYREF

  if ( gameswf::standard_array_sorter::operator()(a4, this, (char *)a1) )
  {
    v8 = -1431655765 * ((a2 - a1) >> 2);
    if ( v8 > 0 )
    {
      while ( 1 )
      {
        gameswf::as_value::operator=(a2, (int)a2 - 12);
        if ( !--v8 )
          break;
        a2 = (gameswf::as_value *)((char *)a2 - 12);
      }
    }
    gameswf::as_value::operator=(a1, (int)this);
  }
  else
  {
    v11[0] = 0;
    v11[1] = 0;
    gameswf::as_value::operator=((gameswf::as_value *)v11, (int)this);
    v9[1] = 0;
    v9[0] = 0;
    gameswf::as_value::operator=((gameswf::as_value *)v9, a4);
    v10 = *(_DWORD *)(a4 + 12);
    std::priv::__unguarded_linear_insert<gameswf::as_value *,gameswf::as_value,gameswf::standard_array_sorter>(
      a2,
      (gameswf::as_value *)v11,
      (int)v9);
    gameswf::as_value::drop_refs((gameswf::as_value *)v9);
    gameswf::as_value::drop_refs((gameswf::as_value *)v11);
  }
}


// ===== 79a09c std::priv::__insertion_sort<gameswf::as_value *,gameswf::as_value,gameswf::standard_array_sorter>(gameswf::as_value *,gameswf::as_value *,gameswf::as_value *,gameswf::standard_array_sorter) =====
void __fastcall std::priv::__insertion_sort<gameswf::as_value *,gameswf::as_value,gameswf::standard_array_sorter>(
        gameswf::as_value *a1,
        gameswf::as_value *a2,
        int a3,
        int a4)
{
  gameswf::as_value *i; // r4
  _BYTE v8[12]; // [sp+4h] [bp-1Ch] BYREF
  int v9; // [sp+10h] [bp-10h]
  _BYTE v10[12]; // [sp+14h] [bp-Ch] BYREF

  if ( a1 != a2 )
  {
    for ( i = (gameswf::as_value *)((char *)a1 + 12); a2 != i; i = (gameswf::as_value *)((char *)i + 12) )
    {
      v10[0] = 0;
      v10[1] = 0;
      gameswf::as_value::operator=((gameswf::as_value *)v10, (int)i);
      v8[0] = 0;
      v8[1] = 0;
      gameswf::as_value::operator=((gameswf::as_value *)v8, a4);
      v9 = *(_DWORD *)(a4 + 12);
      std::priv::__linear_insert<gameswf::as_value *,gameswf::as_value,gameswf::standard_array_sorter>(
        a1,
        i,
        (gameswf::as_value *)v10,
        (int)v8);
      gameswf::as_value::drop_refs((gameswf::as_value *)v8);
      gameswf::as_value::drop_refs((gameswf::as_value *)v10);
    }
  }
}


// ===== 79a138 std::priv::__linear_insert<gameswf::as_value *,gameswf::as_value,gameswf::custom_array_sorter>(gameswf::as_value *,gameswf::as_value *,gameswf::as_value,gameswf::custom_array_sorter) =====
void __fastcall std::priv::__linear_insert<gameswf::as_value *,gameswf::as_value,gameswf::custom_array_sorter>(
        gameswf::as_value *a1,
        gameswf::as_value *a2,
        int a3,
        int a4,
        int a5)
{
  int v8; // r7
  _BYTE varC[32]; // [sp+4h] [bp-Ch] BYREF
  char vars14; // [sp+24h] [bp+14h] BYREF
  int varg_r3; // [sp+2Ch] [bp+1Ch]

  if ( gameswf::custom_array_sorter::operator()((int)&vars14) )
  {
    v8 = -1431655765 * ((a2 - a1) >> 2);
    if ( v8 > 0 )
    {
      while ( 1 )
      {
        gameswf::as_value::operator=(a2, (int)a2 - 12);
        if ( !--v8 )
          break;
        a2 = (gameswf::as_value *)((char *)a2 - 12);
      }
    }
    gameswf::as_value::operator=(a1, a3);
  }
  else
  {
    varC[1] = 0;
    varC[0] = 0;
    gameswf::as_value::operator=((gameswf::as_value *)varC, a3);
    std::priv::__unguarded_linear_insert<gameswf::as_value *,gameswf::as_value,gameswf::custom_array_sorter>(
      a2,
      (int)varC,
      varg_r3,
      a5);
    gameswf::as_value::drop_refs((gameswf::as_value *)varC);
  }
}


// ===== 79a208 std::priv::__insertion_sort<gameswf::as_value *,gameswf::as_value,gameswf::custom_array_sorter>(gameswf::as_value *,gameswf::as_value *,gameswf::as_value *,gameswf::custom_array_sorter) =====
void __fastcall std::priv::__insertion_sort<gameswf::as_value *,gameswf::as_value,gameswf::custom_array_sorter>(
        gameswf::as_value *a1,
        gameswf::as_value *a2,
        int a3,
        int a4,
        int a5)
{
  int i; // r4
  gameswf::as_value *v8; // r1
  _BYTE varC[40]; // [sp+Ch] [bp-Ch] BYREF
  int varg_r3; // [sp+34h] [bp+1Ch]

  if ( a1 != a2 )
  {
    for ( i = (int)a1 + 12; a2 != (gameswf::as_value *)i; i += 12 )
    {
      varC[0] = 0;
      varC[1] = 0;
      gameswf::as_value::operator=((gameswf::as_value *)varC, i);
      v8 = (gameswf::as_value *)i;
      std::priv::__linear_insert<gameswf::as_value *,gameswf::as_value,gameswf::custom_array_sorter>(
        a1,
        v8,
        (int)varC,
        varg_r3,
        a5);
      gameswf::as_value::drop_refs((gameswf::as_value *)varC);
    }
  }
}


// ===== 79a290 std::priv::__final_insertion_sort<gameswf::as_value *,gameswf::custom_array_sorter>(gameswf::as_value *,gameswf::as_value *,gameswf::custom_array_sorter) =====
void __fastcall std::priv::__final_insertion_sort<gameswf::as_value *,gameswf::custom_array_sorter>(
        int a1,
        gameswf::as_value *a2,
        int a3,
        int a4)
{
  gameswf::as_value *v5; // r5

  if ( (int)a2 - a1 > 203 )
  {
    v5 = (gameswf::as_value *)(a1 + 192);
    std::priv::__insertion_sort<gameswf::as_value *,gameswf::as_value,gameswf::custom_array_sorter>(
      (gameswf::as_value *)a1,
      (gameswf::as_value *)(a1 + 192),
      0,
      a3,
      a4);
    std::priv::__unguarded_insertion_sort_aux<gameswf::as_value *,gameswf::as_value,gameswf::custom_array_sorter>(
      v5,
      a2,
      0,
      a3,
      a4);
  }
  else
  {
    std::priv::__insertion_sort<gameswf::as_value *,gameswf::as_value,gameswf::custom_array_sorter>(
      (gameswf::as_value *)a1,
      a2,
      0,
      a3,
      a4);
  }
}


// ===== 79a310 std::sort<gameswf::as_value *,gameswf::custom_array_sorter>(gameswf::as_value *,gameswf::as_value *,gameswf::custom_array_sorter) =====
void __fastcall std::sort<gameswf::as_value *,gameswf::custom_array_sorter>(
        gameswf::as_value *a1,
        gameswf::as_value *a2,
        int a3,
        int a4)
{
  int v6; // r2
  int v7; // r3
  int v8; // r3

  if ( a1 != a2 )
  {
    v6 = -1431655765 * ((a2 - a1) >> 2);
    if ( v6 == 1 )
    {
      v7 = 0;
    }
    else
    {
      v8 = 0;
      do
      {
        v6 >>= 1;
        ++v8;
      }
      while ( v6 != 1 );
      v7 = 2 * v8;
    }
    std::priv::__introsort_loop<gameswf::as_value *,gameswf::as_value,int,gameswf::custom_array_sorter>(
      a1,
      a2,
      0,
      v7,
      a3,
      a4);
    std::priv::__final_insertion_sort<gameswf::as_value *,gameswf::custom_array_sorter>((int)a1, a2, a3, a4);
  }
}


// ===== 79a3b4 std::priv::__unguarded_insertion_sort_aux<gameswf::as_value *,gameswf::as_value,gameswf::standard_array_sorter>(gameswf::as_value *,gameswf::as_value *,gameswf::as_value *,gameswf::standard_array_sorter) =====
void __fastcall std::priv::__unguarded_insertion_sort_aux<gameswf::as_value *,gameswf::as_value,gameswf::standard_array_sorter>(
        gameswf::as_value *a1,
        gameswf::as_value *a2,
        int a3,
        int a4)
{
  gameswf::as_value *v6; // r5
  _BYTE v7[12]; // [sp+4h] [bp-20h] BYREF
  int v8; // [sp+10h] [bp-14h]
  _BYTE v9[16]; // [sp+14h] [bp-10h] BYREF

  if ( a1 != a2 )
  {
    v6 = a1;
    do
    {
      v9[0] = 0;
      v9[1] = 0;
      gameswf::as_value::operator=((gameswf::as_value *)v9, (int)v6);
      v7[0] = 0;
      v7[1] = 0;
      gameswf::as_value::operator=((gameswf::as_value *)v7, a4);
      v8 = *(_DWORD *)(a4 + 12);
      std::priv::__unguarded_linear_insert<gameswf::as_value *,gameswf::as_value,gameswf::standard_array_sorter>(
        v6,
        (gameswf::as_value *)v9,
        (int)v7);
      gameswf::as_value::drop_refs((gameswf::as_value *)v7);
      v6 = (gameswf::as_value *)((char *)v6 + 12);
      gameswf::as_value::drop_refs((gameswf::as_value *)v9);
    }
    while ( a2 != v6 );
  }
}


// ===== 79a440 gameswf::as_array::~as_array() =====
void __fastcall gameswf::as_array::~as_array(gameswf::as_array *this)
{
  char *v2; // r5

  *(_DWORD *)this = off_990B18;
  v2 = (char *)this + 76;
  gameswf::array<gameswf::as_value>::resize((_DWORD *)this + 19, 0);
  gameswf::array<gameswf::as_value>::reserve((int)v2, 0);
  if ( *((char *)this + 56) == -1 )
    gameswf::free_internal(*((void **)this + 17));
  gameswf::as_object::~as_object(this);
}


// ===== 79a4bc gameswf::as_array::~as_array() =====
void __fastcall gameswf::as_array::~as_array(gameswf::as_array *this)
{
  gameswf::as_array::~as_array(this);
  LC_API_FREE_0(this);
}


// ===== 79a4d8 gameswf::as_array_splice(gameswf::fn_call const&) =====
void __fastcall gameswf::as_array_splice(gameswf *this, const gameswf::fn_call *a2)
{
  int v2; // r11
  int v3; // r9
  int v4; // r3
  int v5; // r7
  int v6; // r0
  gameswf *v7; // r1
  gameswf *v8; // r2
  int v9; // r4
  int v10; // r3
  int v11; // r5
  gameswf::player *v12; // r4
  int v13; // r7
  int v14; // r6
  int i; // r4
  int v16; // r1
  _BOOL4 v17; // r3
  bool v18; // cc
  gameswf::as_value *v19; // r3
  int v20; // [sp+0h] [bp-3Ch]
  gameswf::ref_counted *v21; // [sp+4h] [bp-38h]
  gameswf::as_value *v23; // [sp+Ch] [bp-30h]
  _DWORD v24[3]; // [sp+10h] [bp-2Ch] BYREF
  char v25; // [sp+1Ch] [bp-20h]
  _BYTE v26[12]; // [sp+20h] [bp-1Ch] BYREF
  char v27; // [sp+2Ch] [bp-10h] BYREF
  char v28; // [sp+2Dh] [bp-Fh]

  v2 = gameswf::cast_to<gameswf::as_array>(*((_DWORD *)this + 1));
  v3 = *(_DWORD *)(v2 + 80);
  v4 = *((_DWORD *)this + 4);
  if ( v4 > 0 )
  {
    v6 = (int)COERCE_DOUBLE(
                gameswf::as_value::to_number(
                  (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
                  (int)this,
                  (const char *)*((_DWORD *)this + 5)));
    v5 = v6;
    if ( v6 < 0 )
    {
      v8 = this;
      v5 = v6 + v3;
    }
    else
    {
      v7 = this;
    }
    if ( v6 < 0 )
      v4 = *((_DWORD *)v8 + 4);
    else
      v4 = *((_DWORD *)v7 + 4);
    if ( v4 > 1 )
    {
      v9 = (int)COERCE_DOUBLE(
                  gameswf::as_value::to_number(
                    (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 1)),
                    (int)this,
                    (const char *)(*((_DWORD *)this + 5) - 1)))
         + v5;
      v10 = *((_DWORD *)this + 4);
      v28 = 0;
      v27 = 0;
      if ( v10 <= 2 )
      {
        v23 = (gameswf::as_value *)&v27;
        goto LABEL_13;
      }
      goto LABEL_36;
    }
  }
  else
  {
    v5 = 0;
  }
  v18 = v4 <= 2;
  v19 = nullptr;
  v28 = 0;
  v27 = 0;
  if ( v18 )
    v19 = (gameswf::as_value *)&v27;
  v9 = v3;
  if ( v18 )
  {
    v23 = v19;
    goto LABEL_13;
  }
LABEL_36:
  v23 = (gameswf::as_value *)&v27;
  gameswf::as_value::operator=((gameswf::as_value *)&v27, **((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 2));
LABEL_13:
  if ( v9 >= v3 )
    v9 = v3;
  v11 = *((_DWORD *)this + 3);
  v20 = v9 & ~(v9 >> 31);
  if ( v5 >= v3 )
    v5 = v3;
  gameswf::weak_ptr<gameswf::player>::check_proxy(v11 + 100);
  v12 = *(gameswf::player **)(v11 + 104);
  v21 = (gameswf::ref_counted *)operator new(0x5Cu, 0);
  gameswf::as_array::as_array(v21, v12);
  v13 = v5 & ~(v5 >> 31);
  if ( v21 )
    gameswf::ref_counted::add_ref((int)v21);
  v14 = 0;
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  if ( v3 > 0 )
  {
    for ( i = 0; i != v3; ++i )
    {
      while ( 1 )
      {
        v16 = *(_DWORD *)(v2 + 76);
        v26[0] = 0;
        v26[1] = 0;
        gameswf::as_value::operator=((gameswf::as_value *)v26, v16 + v14);
        if ( i == v13 && v28 )
          gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(v24);
        v17 = i < v20;
        if ( i < v13 )
          v17 = 0;
        if ( !v17 )
          break;
        gameswf::as_array::push(v21, (const gameswf::as_value *)v26);
        ++i;
        gameswf::as_value::drop_refs((gameswf::as_value *)v26);
        v14 += 12;
        if ( i == v3 )
          goto LABEL_27;
      }
      gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(v24);
      gameswf::as_value::drop_refs((gameswf::as_value *)v26);
      v14 += 12;
    }
  }
LABEL_27:
  gameswf::array<gameswf::as_value>::operator=((_DWORD *)(v2 + 76), v24);
  gameswf::as_value::set_as_object(*(gameswf::as_value **)this, v21);
  gameswf::array<gameswf::as_value>::resize(v24, 0);
  gameswf::array<gameswf::as_value>::reserve((int)v24, 0);
  if ( v21 )
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v21);
  gameswf::as_value::drop_refs(v23);
}


// ===== 79a76c std::__adjust_heap<gameswf::as_value *,int,gameswf::as_value,gameswf::standard_array_sorter>(gameswf::as_value *,int,int,gameswf::as_value,gameswf::standard_array_sorter) =====
void __fastcall std::__adjust_heap<gameswf::as_value *,int,gameswf::as_value,gameswf::standard_array_sorter>(
        int a1,
        int a2,
        int a3,
        int a4,
        int a5)
{
  int v5; // r4
  int v7; // r10
  int v8; // r9
  gameswf::as_value *v9; // r6
  int v10; // r4
  _BYTE v14[12]; // [sp+1Ch] [bp-20h] BYREF
  int v15; // [sp+28h] [bp-14h]
  char v16[16]; // [sp+2Ch] [bp-10h] BYREF

  v5 = 2 * (a2 + 1);
  if ( v5 < a3 )
  {
    v8 = a2;
    do
    {
      v7 = v5 - 1;
      v9 = (gameswf::as_value *)(a1 + 12 * v5);
      if ( gameswf::standard_array_sorter::operator()(a5, v9, (char *)(a1 + 12 * (v5 - 1))) )
        v9 = (gameswf::as_value *)(a1 + 12 * (v5 - 1));
      else
        v7 = v5;
      gameswf::as_value::operator=((gameswf::as_value *)(a1 + 12 * v8), (int)v9);
      v5 = 2 * (v7 + 1);
      v8 = v7;
    }
    while ( a3 > v5 );
  }
  else
  {
    v7 = a2;
  }
  if ( v5 == a3 )
  {
    v10 = v5 - 1;
    gameswf::as_value::operator=((gameswf::as_value *)(a1 + 12 * v7), a1 + 12 * v10);
    v7 = v10;
  }
  v16[0] = 0;
  v16[1] = 0;
  gameswf::as_value::operator=((gameswf::as_value *)v16, a4);
  v14[1] = 0;
  v14[0] = 0;
  gameswf::as_value::operator=((gameswf::as_value *)v14, a5);
  v15 = *(_DWORD *)(a5 + 12);
  std::__push_heap<gameswf::as_value *,int,gameswf::as_value,gameswf::standard_array_sorter>(a1, v7, a2, v16, (int)v14);
  gameswf::as_value::drop_refs((gameswf::as_value *)v14);
  gameswf::as_value::drop_refs((gameswf::as_value *)v16);
}


// ===== 79a884 std::__make_heap<gameswf::as_value *,gameswf::standard_array_sorter,gameswf::as_value,int>(gameswf::as_value *,gameswf::as_value *,gameswf::standard_array_sorter,gameswf::as_value *,int *) =====
void __fastcall std::__make_heap<gameswf::as_value *,gameswf::standard_array_sorter,gameswf::as_value,int>(
        int a1,
        int a2,
        int a3)
{
  int v3; // r1
  int v6; // r11
  int v7; // r5
  int v8; // r10
  _BYTE v9[12]; // [sp+Ch] [bp-20h] BYREF
  int v10; // [sp+18h] [bp-14h]
  _BYTE v11[16]; // [sp+1Ch] [bp-10h] BYREF

  v3 = a2 - a1;
  if ( v3 > 23 )
  {
    v6 = -1431655765 * (v3 >> 2);
    v7 = (v6 - 2) >> 1;
    v8 = a1 + 12 * v7;
    while ( 1 )
    {
      v11[0] = 0;
      v11[1] = 0;
      gameswf::as_value::operator=((gameswf::as_value *)v11, v8);
      v9[0] = 0;
      v9[1] = 0;
      gameswf::as_value::operator=((gameswf::as_value *)v9, a3);
      v10 = *(_DWORD *)(a3 + 12);
      std::__adjust_heap<gameswf::as_value *,int,gameswf::as_value,gameswf::standard_array_sorter>(
        a1,
        v7,
        v6,
        (int)v11,
        (int)v9);
      gameswf::as_value::drop_refs((gameswf::as_value *)v9);
      gameswf::as_value::drop_refs((gameswf::as_value *)v11);
      v8 -= 12;
      if ( !v7 )
        break;
      --v7;
    }
  }
}


// ===== 79a948 std::make_heap<gameswf::as_value *,gameswf::standard_array_sorter>(gameswf::as_value *,gameswf::as_value *,gameswf::standard_array_sorter) =====
void __fastcall std::make_heap<gameswf::as_value *,gameswf::standard_array_sorter>(int a1, int a2, int a3)
{
  _BYTE v6[12]; // [sp+8h] [bp-10h] BYREF
  int v7; // [sp+14h] [bp-4h]

  v6[0] = 0;
  v6[1] = 0;
  gameswf::as_value::operator=((gameswf::as_value *)v6, a3);
  v7 = *(_DWORD *)(a3 + 12);
  std::__make_heap<gameswf::as_value *,gameswf::standard_array_sorter,gameswf::as_value,int>(a1, a2, (int)v6);
  gameswf::as_value::drop_refs((gameswf::as_value *)v6);
}


// ===== 79a9a8 std::priv::__unguarded_insertion_sort<gameswf::as_value *,gameswf::standard_array_sorter>(gameswf::as_value *,gameswf::as_value *,gameswf::standard_array_sorter) =====
void __fastcall std::priv::__unguarded_insertion_sort<gameswf::as_value *,gameswf::standard_array_sorter>(
        gameswf::as_value *a1,
        gameswf::as_value *a2,
        int a3)
{
  _BYTE v6[12]; // [sp+0h] [bp-10h] BYREF
  int v7; // [sp+Ch] [bp-4h]

  v6[0] = 0;
  v6[1] = 0;
  gameswf::as_value::operator=((gameswf::as_value *)v6, a3);
  v7 = *(_DWORD *)(a3 + 12);
  std::priv::__unguarded_insertion_sort_aux<gameswf::as_value *,gameswf::as_value,gameswf::standard_array_sorter>(
    a1,
    a2,
    0,
    (int)v6);
  gameswf::as_value::drop_refs((gameswf::as_value *)v6);
}


// ===== 79aa04 std::__pop_heap<gameswf::as_value *,gameswf::as_value,gameswf::standard_array_sorter,int>(gameswf::as_value *,gameswf::as_value *,gameswf::as_value *,gameswf::as_value,gameswf::standard_array_sorter,int *) =====
void __fastcall std::__pop_heap<gameswf::as_value *,gameswf::as_value,gameswf::standard_array_sorter,int>(
        int a1,
        int a2,
        gameswf::as_value *this,
        int a4,
        int a5)
{
  _BYTE v8[12]; // [sp+Ch] [bp-20h] BYREF
  int v9; // [sp+18h] [bp-14h]
  _BYTE v10[16]; // [sp+1Ch] [bp-10h] BYREF

  gameswf::as_value::operator=(this, a1);
  v10[0] = 0;
  v10[1] = 0;
  gameswf::as_value::operator=((gameswf::as_value *)v10, a4);
  v8[0] = 0;
  v8[1] = 0;
  gameswf::as_value::operator=((gameswf::as_value *)v8, a5);
  v9 = *(_DWORD *)(a5 + 12);
  std::__adjust_heap<gameswf::as_value *,int,gameswf::as_value,gameswf::standard_array_sorter>(
    a1,
    0,
    -1431655765 * ((a2 - a1) >> 2),
    (int)v10,
    (int)v8);
  gameswf::as_value::drop_refs((gameswf::as_value *)v8);
  gameswf::as_value::drop_refs((gameswf::as_value *)v10);
}


// ===== 79aab0 std::__pop_heap_aux<gameswf::as_value *,gameswf::as_value,gameswf::standard_array_sorter>(gameswf::as_value *,gameswf::as_value *,gameswf::as_value *,gameswf::standard_array_sorter) =====
void __fastcall std::__pop_heap_aux<gameswf::as_value *,gameswf::as_value,gameswf::standard_array_sorter>(
        int a1,
        int a2,
        int a3,
        int a4)
{
  gameswf::as_value *v4; // r7
  _BYTE v7[12]; // [sp+Ch] [bp-20h] BYREF
  int v8; // [sp+18h] [bp-14h]
  _BYTE v9[16]; // [sp+1Ch] [bp-10h] BYREF

  v4 = (gameswf::as_value *)(a2 - 12);
  v9[0] = 0;
  v9[1] = 0;
  gameswf::as_value::operator=((gameswf::as_value *)v9, a2 - 12);
  v7[0] = 0;
  v7[1] = 0;
  gameswf::as_value::operator=((gameswf::as_value *)v7, a4);
  v8 = *(_DWORD *)(a4 + 12);
  std::__pop_heap<gameswf::as_value *,gameswf::as_value,gameswf::standard_array_sorter,int>(
    a1,
    (int)v4,
    v4,
    (int)v9,
    (int)v7);
  gameswf::as_value::drop_refs((gameswf::as_value *)v7);
  gameswf::as_value::drop_refs((gameswf::as_value *)v9);
}


// ===== 79ab34 std::pop_heap<gameswf::as_value *,gameswf::standard_array_sorter>(gameswf::as_value *,gameswf::as_value *,gameswf::standard_array_sorter) =====
void __fastcall std::pop_heap<gameswf::as_value *,gameswf::standard_array_sorter>(int a1, int a2, int a3)
{
  _BYTE v6[12]; // [sp+0h] [bp-10h] BYREF
  int v7; // [sp+Ch] [bp-4h]

  v6[0] = 0;
  v6[1] = 0;
  gameswf::as_value::operator=((gameswf::as_value *)v6, a3);
  v7 = *(_DWORD *)(a3 + 12);
  std::__pop_heap_aux<gameswf::as_value *,gameswf::as_value,gameswf::standard_array_sorter>(a1, a2, 0, (int)v6);
  gameswf::as_value::drop_refs((gameswf::as_value *)v6);
}


// ===== 79ab90 std::sort_heap<gameswf::as_value *,gameswf::standard_array_sorter>(gameswf::as_value *,gameswf::as_value *,gameswf::standard_array_sorter) =====
void __fastcall std::sort_heap<gameswf::as_value *,gameswf::standard_array_sorter>(int a1, int a2, int a3)
{
  int v3; // r10
  int v7; // r4
  int v8; // r1
  _BYTE v9[12]; // [sp+0h] [bp-10h] BYREF
  int v10; // [sp+Ch] [bp-4h]

  v3 = a2 - a1;
  if ( a2 - a1 > 23 )
  {
    v7 = 0;
    do
    {
      v9[0] = 0;
      v9[1] = 0;
      gameswf::as_value::operator=((gameswf::as_value *)v9, a3);
      v8 = v7 + a2;
      v10 = *(_DWORD *)(a3 + 12);
      v7 -= 12;
      std::pop_heap<gameswf::as_value *,gameswf::standard_array_sorter>(a1, v8, (int)v9);
      gameswf::as_value::drop_refs((gameswf::as_value *)v9);
    }
    while ( v3 + v7 > 23 );
  }
}


// ===== 79ac08 std::priv::__partial_sort<gameswf::as_value *,gameswf::as_value,gameswf::standard_array_sorter>(gameswf::as_value *,gameswf::as_value *,gameswf::as_value *,gameswf::as_value *,gameswf::standard_array_sorter) =====
void __fastcall std::priv::__partial_sort<gameswf::as_value *,gameswf::as_value,gameswf::standard_array_sorter>(
        char *a1,
        unsigned int a2,
        unsigned int a3,
        int a4,
        int a5)
{
  gameswf::as_value *v8; // r4
  _BYTE v9[12]; // [sp+Ch] [bp-40h] BYREF
  int v10; // [sp+18h] [bp-34h]
  _BYTE v11[12]; // [sp+1Ch] [bp-30h] BYREF
  int v12; // [sp+28h] [bp-24h]
  _BYTE v13[12]; // [sp+2Ch] [bp-20h] BYREF
  int v14; // [sp+38h] [bp-14h]
  _BYTE v15[16]; // [sp+3Ch] [bp-10h] BYREF

  v13[0] = 0;
  v13[1] = 0;
  gameswf::as_value::operator=((gameswf::as_value *)v13, a5);
  v14 = *(_DWORD *)(a5 + 12);
  std::make_heap<gameswf::as_value *,gameswf::standard_array_sorter>((int)a1, a2, (int)v13);
  gameswf::as_value::drop_refs((gameswf::as_value *)v13);
  if ( a2 < a3 )
  {
    v8 = (gameswf::as_value *)a2;
    do
    {
      while ( !gameswf::standard_array_sorter::operator()(a5, v8, a1) )
      {
        v8 = (gameswf::as_value *)((char *)v8 + 12);
        if ( a3 <= (unsigned int)v8 )
          goto LABEL_6;
      }
      v15[0] = 0;
      v15[1] = 0;
      gameswf::as_value::operator=((gameswf::as_value *)v15, (int)v8);
      v11[0] = 0;
      v11[1] = 0;
      gameswf::as_value::operator=((gameswf::as_value *)v11, a5);
      v12 = *(_DWORD *)(a5 + 12);
      std::__pop_heap<gameswf::as_value *,gameswf::as_value,gameswf::standard_array_sorter,int>(
        (int)a1,
        a2,
        v8,
        (int)v15,
        (int)v11);
      gameswf::as_value::drop_refs((gameswf::as_value *)v11);
      v8 = (gameswf::as_value *)((char *)v8 + 12);
      gameswf::as_value::drop_refs((gameswf::as_value *)v15);
    }
    while ( a3 > (unsigned int)v8 );
  }
LABEL_6:
  v9[1] = 0;
  v9[0] = 0;
  gameswf::as_value::operator=((gameswf::as_value *)v9, a5);
  v10 = *(_DWORD *)(a5 + 12);
  std::sort_heap<gameswf::as_value *,gameswf::standard_array_sorter>((int)a1, a2, (int)v9);
  gameswf::as_value::drop_refs((gameswf::as_value *)v9);
}


// ===== 79ad44 std::partial_sort<gameswf::as_value *,gameswf::standard_array_sorter>(gameswf::as_value *,gameswf::as_value *,gameswf::as_value *,gameswf::standard_array_sorter) =====
void __fastcall std::partial_sort<gameswf::as_value *,gameswf::standard_array_sorter>(
        char *a1,
        unsigned int a2,
        unsigned int a3,
        int a4)
{
  _BYTE v8[12]; // [sp+8h] [bp-14h] BYREF
  int v9; // [sp+14h] [bp-8h]

  v8[0] = 0;
  v8[1] = 0;
  gameswf::as_value::operator=((gameswf::as_value *)v8, a4);
  v9 = *(_DWORD *)(a4 + 12);
  std::priv::__partial_sort<gameswf::as_value *,gameswf::as_value,gameswf::standard_array_sorter>(
    a1,
    a2,
    a3,
    0,
    (int)v8);
  gameswf::as_value::drop_refs((gameswf::as_value *)v8);
}


// ===== 79ada8 std::priv::__final_insertion_sort<gameswf::as_value *,gameswf::standard_array_sorter>(gameswf::as_value *,gameswf::as_value *,gameswf::standard_array_sorter) =====
void __fastcall std::priv::__final_insertion_sort<gameswf::as_value *,gameswf::standard_array_sorter>(
        int a1,
        gameswf::as_value *a2,
        int a3)
{
  _BYTE v6[12]; // [sp+0h] [bp-34h] BYREF
  int v7; // [sp+Ch] [bp-28h]
  _BYTE v8[12]; // [sp+10h] [bp-24h] BYREF
  int v9; // [sp+1Ch] [bp-18h]
  _BYTE v10[12]; // [sp+20h] [bp-14h] BYREF
  int v11; // [sp+2Ch] [bp-8h]

  if ( (int)a2 - a1 <= 203 )
  {
    v6[0] = 0;
    v6[1] = 0;
    gameswf::as_value::operator=((gameswf::as_value *)v6, a3);
    v7 = *(_DWORD *)(a3 + 12);
    std::priv::__insertion_sort<gameswf::as_value *,gameswf::as_value,gameswf::standard_array_sorter>(
      (gameswf::as_value *)a1,
      a2,
      0,
      (int)v6);
    gameswf::as_value::drop_refs((gameswf::as_value *)v6);
  }
  else
  {
    v10[0] = 0;
    v10[1] = 0;
    gameswf::as_value::operator=((gameswf::as_value *)v10, a3);
    v11 = *(_DWORD *)(a3 + 12);
    std::priv::__insertion_sort<gameswf::as_value *,gameswf::as_value,gameswf::standard_array_sorter>(
      (gameswf::as_value *)a1,
      (gameswf::as_value *)(a1 + 192),
      0,
      (int)v10);
    gameswf::as_value::drop_refs((gameswf::as_value *)v10);
    v8[1] = 0;
    v8[0] = 0;
    gameswf::as_value::operator=((gameswf::as_value *)v8, a3);
    v9 = *(_DWORD *)(a3 + 12);
    std::priv::__unguarded_insertion_sort<gameswf::as_value *,gameswf::standard_array_sorter>(
      (gameswf::as_value *)(a1 + 192),
      a2,
      (int)v8);
    gameswf::as_value::drop_refs((gameswf::as_value *)v8);
  }
}


// ===== 79ae90 std::priv::__introsort_loop<gameswf::as_value *,gameswf::as_value,int,gameswf::standard_array_sorter>(gameswf::as_value *,gameswf::as_value *,gameswf::as_value *,int,gameswf::standard_array_sorter) =====
void __fastcall std::priv::__introsort_loop<gameswf::as_value *,gameswf::as_value,int,gameswf::standard_array_sorter>(
        gameswf::as_value *a1,
        char *a2,
        int a3,
        int a4,
        int a5)
{
  int v5; // r2
  char *v7; // r7
  int v8; // r8
  int v9; // r10
  gameswf::as_value *v10; // r0
  gameswf::as_value *v11; // r10
  _BYTE v12[12]; // [sp+1Ch] [bp-50h] BYREF
  int v13; // [sp+28h] [bp-44h]
  _BYTE v14[12]; // [sp+2Ch] [bp-40h] BYREF
  int v15; // [sp+38h] [bp-34h]
  _BYTE v16[12]; // [sp+3Ch] [bp-30h] BYREF
  int v17; // [sp+48h] [bp-24h]
  _BYTE v18[12]; // [sp+4Ch] [bp-20h] BYREF
  int v19; // [sp+58h] [bp-14h]
  char v20[16]; // [sp+5Ch] [bp-10h] BYREF

  v5 = a2 - (char *)a1;
  v7 = a2;
  v8 = a4;
  if ( a2 - (char *)a1 > 203 )
  {
    if ( a4 )
    {
      while ( 1 )
      {
        v16[0] = 0;
        v9 = -1431655765 * (v5 >> 2);
        v16[1] = 0;
        gameswf::as_value::operator=((gameswf::as_value *)v16, a5);
        v17 = *(_DWORD *)(a5 + 12);
        v10 = std::priv::__median<gameswf::as_value,gameswf::standard_array_sorter>(
                a1,
                (gameswf::as_value *)((char *)a1 + 12 * (v9 >> 1)),
                v7 - 12,
                (int)v16);
        v20[0] = 0;
        v20[1] = 0;
        gameswf::as_value::operator=((gameswf::as_value *)v20, (int)v10);
        v14[0] = 0;
        v14[1] = 0;
        gameswf::as_value::operator=((gameswf::as_value *)v14, a5);
        v15 = *(_DWORD *)(a5 + 12);
        v11 = std::priv::__unguarded_partition<gameswf::as_value *,gameswf::as_value,gameswf::standard_array_sorter>(
                a1,
                v7,
                v20,
                (int)v14);
        gameswf::as_value::drop_refs((gameswf::as_value *)v14);
        gameswf::as_value::drop_refs((gameswf::as_value *)v20);
        gameswf::as_value::drop_refs((gameswf::as_value *)v16);
        v12[0] = 0;
        v12[1] = 0;
        gameswf::as_value::operator=((gameswf::as_value *)v12, a5);
        --v8;
        v13 = *(_DWORD *)(a5 + 12);
        std::priv::__introsort_loop<gameswf::as_value *,gameswf::as_value,int,gameswf::standard_array_sorter>(
          v11,
          v7,
          0,
          v8,
          v12);
        gameswf::as_value::drop_refs((gameswf::as_value *)v12);
        v5 = v11 - a1;
        if ( v11 - a1 <= 203 )
          break;
        v7 = (char *)v11;
        if ( !v8 )
          goto LABEL_7;
      }
    }
    else
    {
LABEL_7:
      v18[1] = 0;
      v18[0] = 0;
      gameswf::as_value::operator=((gameswf::as_value *)v18, a5);
      v19 = *(_DWORD *)(a5 + 12);
      std::partial_sort<gameswf::as_value *,gameswf::standard_array_sorter>(
        (char *)a1,
        (unsigned int)v7,
        (unsigned int)v7,
        (int)v18);
      gameswf::as_value::drop_refs((gameswf::as_value *)v18);
    }
  }
}


// ===== 79b044 std::sort<gameswf::as_value *,gameswf::standard_array_sorter>(gameswf::as_value *,gameswf::as_value *,gameswf::standard_array_sorter) =====
void __fastcall std::sort<gameswf::as_value *,gameswf::standard_array_sorter>(gameswf::as_value *a1, char *a2, int a3)
{
  int v6; // r3
  int v7; // r10
  int v8; // r10
  _BYTE v9[12]; // [sp+8h] [bp-24h] BYREF
  int v10; // [sp+14h] [bp-18h]
  _BYTE v11[12]; // [sp+18h] [bp-14h] BYREF
  int v12; // [sp+24h] [bp-8h]

  if ( a1 != (gameswf::as_value *)a2 )
  {
    v6 = -1431655765 * ((a2 - (char *)a1) >> 2);
    if ( v6 == 1 )
    {
      v7 = 0;
    }
    else
    {
      v8 = 0;
      do
      {
        v6 >>= 1;
        ++v8;
      }
      while ( v6 != 1 );
      v7 = 2 * v8;
    }
    v11[0] = 0;
    v11[1] = 0;
    gameswf::as_value::operator=((gameswf::as_value *)v11, a3);
    v12 = *(_DWORD *)(a3 + 12);
    std::priv::__introsort_loop<gameswf::as_value *,gameswf::as_value,int,gameswf::standard_array_sorter>(
      a1,
      a2,
      0,
      v7,
      (int)v11);
    gameswf::as_value::drop_refs((gameswf::as_value *)v11);
    v9[1] = 0;
    v9[0] = 0;
    gameswf::as_value::operator=((gameswf::as_value *)v9, a3);
    v10 = *(_DWORD *)(a3 + 12);
    std::priv::__final_insertion_sort<gameswf::as_value *,gameswf::standard_array_sorter>(
      (int)a1,
      (gameswf::as_value *)a2,
      (int)v9);
    gameswf::as_value::drop_refs((gameswf::as_value *)v9);
  }
}


// ===== 79b124 gameswf::as_array_sort(gameswf::fn_call const&) =====
void __fastcall gameswf::as_array_sort(gameswf *this, const gameswf::fn_call *a2)
{
  int v3; // r0
  int v4; // r3
  int v5; // r5
  int v6; // r2
  int v7; // r0
  int v8; // r1
  gameswf::as_value *v9; // r10
  char *v10; // r9
  int v11; // r3
  _BYTE v12[12]; // [sp+4h] [bp-2Ch] BYREF
  int v13; // [sp+10h] [bp-20h]
  _DWORD v14[3]; // [sp+14h] [bp-1Ch] BYREF
  int v15; // [sp+20h] [bp-10h]
  char v16; // [sp+24h] [bp-Ch] BYREF
  char v17; // [sp+25h] [bp-Bh]

  v3 = gameswf::cast_to<gameswf::as_array>(*((_DWORD *)this + 1));
  v4 = *((_DWORD *)this + 4);
  v5 = v3;
  v17 = 0;
  v16 = 0;
  if ( v4 <= 0 )
  {
LABEL_5:
    v6 = 0;
    if ( v4 <= 0 )
    {
      v7 = 0;
      goto LABEL_8;
    }
    goto LABEL_15;
  }
  if ( !gameswf::as_value::is_function((gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5))) )
  {
    v4 = *((_DWORD *)this + 4);
    goto LABEL_5;
  }
  gameswf::as_value::operator=((gameswf::as_value *)&v16, **((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5));
  v6 = 1;
  if ( *((int *)this + 4) <= 1 )
  {
    v7 = 0;
    goto LABEL_8;
  }
LABEL_15:
  v7 = (int)COERCE_DOUBLE(
              gameswf::as_value::to_number(
                (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - v6)),
                *((_DWORD *)this + 5),
                (const char *)(*((_DWORD *)this + 5) - v6)));
LABEL_8:
  v8 = *(_DWORD *)(v5 + 80);
  if ( v8 > 0 )
  {
    if ( v17 )
    {
      v11 = *((_DWORD *)this + 3);
      v14[0] = &v16;
      v14[1] = v11;
      std::sort<gameswf::as_value *,gameswf::custom_array_sorter>(
        *(gameswf::as_value **)(v5 + 76),
        (gameswf::as_value *)(*(_DWORD *)(v5 + 76) + 12 * v8),
        (int)&v16,
        v11);
    }
    else
    {
      v15 = v7;
      LOWORD(v14[0]) = 0;
      v9 = *(gameswf::as_value **)(v5 + 76);
      v10 = (char *)v9 + 12 * *(_DWORD *)(v5 + 80);
      v12[1] = 0;
      v12[0] = 0;
      gameswf::as_value::operator=((gameswf::as_value *)v12, (int)v14);
      v13 = v15;
      std::sort<gameswf::as_value *,gameswf::standard_array_sorter>(v9, v10, (int)v12);
      gameswf::as_value::drop_refs((gameswf::as_value *)v12);
      gameswf::as_value::drop_refs((gameswf::as_value *)v14);
    }
  }
  gameswf::as_value::set_as_object(*(gameswf::as_value **)this, (gameswf::as_object *)v5);
  gameswf::as_value::drop_refs((gameswf::as_value *)&v16);
}


// ===== 79b298 gameswf::as_boolean_valueof(gameswf::fn_call const&) =====
void __fastcall gameswf::as_boolean_valueof(gameswf *this, const gameswf::fn_call *a2)
{
  ;
}


// ===== 79b29c gameswf::as_boolean_to_string(gameswf::fn_call const&) =====
void __fastcall gameswf::as_boolean_to_string(gameswf::as_value **this, const gameswf::fn_call *a2)
{
  const char *v3; // r1

  if ( gameswf::as_value::to_bool(*(this + 2)) )
    v3 = "true";
  else
    v3 = "false";
  gameswf::as_value::set_string((gameswf::tu_string **)*this, v3);
}


// ===== 79b2dc gameswf::as_global_boolean_ctor(gameswf::fn_call const&) =====
void __fastcall gameswf::as_global_boolean_ctor(gameswf::as_value **this, const gameswf::fn_call *a2)
{
  gameswf::as_value *v2; // r4
  char v3; // r1

  if ( *(this + 4) == (gameswf::as_value *)((char *)&dword_0 + 1) )
  {
    v2 = *this;
    v3 = gameswf::as_value::to_bool((gameswf::as_value *)(*(_DWORD *)*(this + 3) + 12 * (_DWORD)*(this + 5)));
    gameswf::as_value::set_bool(v2, v3);
  }
  else
  {
    gameswf::as_value::set_bool(*this, 0);
  }
}


// ===== 79b328 gameswf::as_listener::is(int) =====
bool __fastcall gameswf::as_listener::is(gameswf::as_listener *this, int a2)
{
  return a2 == 30 || a2 == 0;
}


// ===== 79b340 gameswf::cast_to<gameswf::as_listener>(gameswf::as_object_interface *) =====
int __fastcall gameswf::cast_to<gameswf::as_listener>(int a1)
{
  if ( a1 && (*(int (__fastcall **)(int, int))(*(_DWORD *)a1 + 8))(a1, 30) )
    return a1;
  else
    return 0;
}


// ===== 79b374 tu_queue<gameswf::array<gameswf::as_value>>::pop(void) =====
void __fastcall tu_queue<gameswf::array<gameswf::as_value>>::pop(_DWORD *a1)
{
  _DWORD *v1; // r5
  int v3; // r3

  v1 = (_DWORD *)a1[1];
  v3 = v1[4];
  --a1[2];
  a1[1] = v3;
  gameswf::array<gameswf::as_value>::resize(v1, 0);
  gameswf::array<gameswf::as_value>::reserve((int)v1, 0);
  gameswf::free_internal(v1);
  if ( (_DWORD *)*a1 == v1 )
    *a1 = 0;
}


// ===== 79b3cc tu_queue<gameswf::array<gameswf::as_value>>::push(gameswf::array<gameswf::as_value> const&) =====
void __fastcall tu_queue<gameswf::array<gameswf::as_value>>::push(_DWORD *a1, _DWORD *a2)
{
  _DWORD *v4; // r5
  _DWORD *v5; // r6
  int v6; // r3

  if ( *a1 )
  {
    v4 = operator new(0x14u, 0);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *((_BYTE *)v4 + 12) = 0;
    gameswf::array<gameswf::as_value>::operator=(v4, a2);
    v4[4] = 0;
    *(_DWORD *)(*a1 + 16) = v4;
    *a1 = *(_DWORD *)(*a1 + 16);
    ++a1[2];
  }
  else
  {
    v5 = operator new(0x14u, 0);
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    *((_BYTE *)v5 + 12) = 0;
    gameswf::array<gameswf::as_value>::operator=(v5, a2);
    v5[4] = 0;
    v6 = a1[2];
    a1[1] = v5;
    *a1 = v5;
    a1[2] = v6 + 1;
  }
}


// ===== 79b47c gameswf::as_listener::enumerate(gameswf::as_environment *) =====
void __fastcall gameswf::as_listener::enumerate(gameswf::as_listener *this, gameswf::as_environment *a2)
{
  gameswf::listener::enumerate((gameswf::as_listener *)((char *)this + 56), a2);
}


// ===== 79b484 gameswf::as_listener::size(void) =====
int __fastcall gameswf::as_listener::size(gameswf::as_listener *this)
{
  return gameswf::listener::size((gameswf::as_listener *)((char *)this + 56));
}


// ===== 79b48c gameswf::as_listener::remove(gameswf::as_object *) =====
void __fastcall gameswf::as_listener::remove(gameswf::as_listener *this, gameswf::as_object *a2)
{
  gameswf::listener::remove((gameswf::as_listener *)((char *)this + 56), a2);
}


// ===== 79b494 gameswf::as_listener::add(gameswf::as_object *) =====
void __fastcall gameswf::as_listener::add(gameswf::as_listener *this, gameswf::as_object *a2)
{
  gameswf::listener::add((gameswf::as_listener *)((char *)this + 56), a2);
}


// ===== 79b49c gameswf::as_listener::get_member(gameswf::tu_stringi const&,gameswf::as_value *) =====
int __fastcall gameswf::as_listener::get_member(int a1, char *a2, gameswf::as_value *a3)
{
  const char *v5; // r0
  gameswf::as_object *v7; // r0
  double v9; // r0

  if ( *a2 == -1 )
    v5 = *((const char **)a2 + 3);
  else
    v5 = a2 + 1;
  if ( gameswf::tu_string::stricmp(v5, "length") )
  {
    v7 = (gameswf::as_object *)gameswf::listener::operator[]((int *)(a1 + 56), a2);
    gameswf::as_value::set_as_object(a3, v7);
  }
  else
  {
    v9 = (double)gameswf::listener::size((gameswf::listener *)(a1 + 56));
    gameswf::as_value::set_double(a3, v9);
  }
  return 1;
}


// ===== 79b518 gameswf::as_listener::as_listener(gameswf::player *) =====
gameswf::as_listener *__fastcall gameswf::as_listener::as_listener(gameswf::as_listener *this, gameswf::player *a2)
{
  gameswf::as_object::as_object(this, a2);
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 14) = 0;
  *(_DWORD *)this = off_990B88;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_BYTE *)this + 68) = 0;
  *((_BYTE *)this + 72) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 19) = 0;
  return this;
}


// ===== 79b570 gameswf::as_listener::as_listener(gameswf::player *) =====
gameswf::as_listener *__fastcall gameswf::as_listener::as_listener(gameswf::as_listener *this, gameswf::player *a2)
{
  gameswf::as_object::as_object(this, a2);
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 14) = 0;
  *(_DWORD *)this = off_990B88;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_BYTE *)this + 68) = 0;
  *((_BYTE *)this + 72) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 19) = 0;
  return this;
}


// ===== 79b5c8 gameswf::as_listener::~as_listener() =====
void __fastcall gameswf::as_listener::~as_listener(gameswf::as_listener *this)
{
  _DWORD *v2; // r4
  int v3; // r4
  _DWORD *v4; // r6
  int i; // r5
  _DWORD *v6; // r3
  int v8; // r3
  _DWORD *v9; // r0

  *(_DWORD *)this = off_990B88;
  v2 = (_DWORD *)((char *)this + 76);
  while ( *((_DWORD *)this + 21) )
    tu_queue<gameswf::array<gameswf::as_value>>::pop(v2);
  v3 = *((_DWORD *)this + 15);
  v4 = (_DWORD *)((char *)this + 56);
  if ( v3 <= 0 )
  {
    if ( v3 < 0 )
    {
      v8 = 8 * v3;
      do
      {
        ++v3;
        v9 = (_DWORD *)(*v4 + v8);
        *v9 = 0;
        v9[1] = 0;
        v8 += 8;
      }
      while ( v3 );
    }
  }
  else
  {
    for ( i = 0; i != v3; ++i )
    {
      v6 = *(_DWORD **)(*v4 + 8 * i);
      if ( v6 )
      {
        if ( (*v6)-- == 1 )
          gameswf::free_internal(v6);
      }
    }
  }
  *((_DWORD *)this + 15) = 0;
  gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::reserve((int)this + 56, 0);
  gameswf::as_object::~as_object(this);
}


// ===== 79b6b4 gameswf::as_listener::~as_listener() =====
void __fastcall gameswf::as_listener::~as_listener(gameswf::as_listener *this)
{
  gameswf::as_listener::~as_listener(this);
  LC_API_FREE_0(this);
}


// ===== 79b6d0 gameswf::as_broadcast_removelistener(gameswf::fn_call const&) =====
void __fastcall gameswf::as_broadcast_removelistener(gameswf *this, const gameswf::fn_call *a2)
{
  int v2; // r9
  int (__fastcall *v4)(int, _BYTE *, char *); // r8
  int v5; // r8
  int v6; // r0
  gameswf::as_listener *v7; // r0
  int v8; // r3
  gameswf::as_object *v9; // r1
  char v10; // [sp+4h] [bp-24h] BYREF
  char v11; // [sp+5h] [bp-23h]
  int v12; // [sp+8h] [bp-20h]
  _BYTE v13[8]; // [sp+10h] [bp-18h] BYREF
  void *p; // [sp+1Ch] [bp-Ch]

  v2 = *((_DWORD *)this + 1);
  v11 = 0;
  v10 = 0;
  v4 = *(int (__fastcall **)(int, _BYTE *, char *))(*(_DWORD *)v2 + 32);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v13, "_listeners");
  v5 = v4(v2, v13, &v10);
  if ( v13[0] == -1 )
    gameswf::free_internal(p);
  if ( v5 )
  {
    v6 = v11 == 5 ? v12 : 0;
    v7 = (gameswf::as_listener *)gameswf::cast_to<gameswf::as_listener>(v6);
    if ( v7 )
    {
      v8 = **((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5);
      if ( *(_BYTE *)(v8 + 1) == 5 )
        v9 = *(gameswf::as_object **)(v8 + 4);
      else
        v9 = nullptr;
      gameswf::as_listener::remove(v7, v9);
    }
  }
  gameswf::as_value::drop_refs((gameswf::as_value *)&v10);
}


// ===== 79b7d4 gameswf::as_broadcast_addlistener(gameswf::fn_call const&) =====
void __fastcall gameswf::as_broadcast_addlistener(gameswf *this, const gameswf::fn_call *a2)
{
  int v2; // r9
  int (__fastcall *v4)(int, _BYTE *, char *); // r8
  int v5; // r8
  int v6; // r0
  gameswf::as_listener *v7; // r0
  int v8; // r3
  gameswf::as_object *v9; // r1
  char v10; // [sp+4h] [bp-24h] BYREF
  char v11; // [sp+5h] [bp-23h]
  int v12; // [sp+8h] [bp-20h]
  _BYTE v13[8]; // [sp+10h] [bp-18h] BYREF
  void *p; // [sp+1Ch] [bp-Ch]

  v2 = *((_DWORD *)this + 1);
  v11 = 0;
  v10 = 0;
  v4 = *(int (__fastcall **)(int, _BYTE *, char *))(*(_DWORD *)v2 + 32);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v13, "_listeners");
  v5 = v4(v2, v13, &v10);
  if ( v13[0] == -1 )
    gameswf::free_internal(p);
  if ( v5 )
  {
    if ( v11 == 5 )
      v6 = v12;
    else
      v6 = 0;
    v7 = (gameswf::as_listener *)gameswf::cast_to<gameswf::as_listener>(v6);
    if ( v7 )
    {
      v8 = **((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5);
      if ( *(_BYTE *)(v8 + 1) == 5 )
      {
        v9 = *(gameswf::as_object **)(v8 + 4);
        if ( v9 )
          gameswf::as_listener::add(v7, v9);
      }
    }
  }
  gameswf::as_value::drop_refs((gameswf::as_value *)&v10);
}


// ===== 79b8e4 gameswf::broadcaster_init(gameswf::player *) =====
gameswf::as_object *__fastcall gameswf::broadcaster_init(gameswf *this, gameswf::player *a2)
{
  gameswf::as_object *v3; // r6
  _BYTE v5[12]; // [sp+4h] [bp-28h] BYREF
  _BYTE v6[8]; // [sp+10h] [bp-1Ch] BYREF
  void *p; // [sp+1Ch] [bp-10h]

  v3 = (gameswf::as_object *)operator new(0x38u, 0);
  gameswf::as_object::as_object(v3, this);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v6, "initialize");
  v5[1] = 0;
  v5[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v5,
    (void (*)(const gameswf::fn_call *))gameswf::as_broadcaster_initialize);
  gameswf::as_object::builtin_member((int)v3, (int)v6, v5);
  gameswf::as_value::drop_refs((gameswf::as_value *)v5);
  if ( v6[0] == -1 )
    gameswf::free_internal(p);
  return v3;
}


// ===== 79b9bc gameswf::as_broadcaster_initialize(gameswf::fn_call const&) =====
void __fastcall gameswf::as_broadcaster_initialize(gameswf *this, const gameswf::fn_call *a2)
{
  int v3; // r3
  int v4; // r6
  void (__fastcall *v5)(int, _BYTE *, _BYTE *); // r8
  int v6; // r7
  gameswf::player *v7; // r11
  gameswf::as_listener *v8; // r7
  void (__fastcall *v9)(int, _BYTE *, _BYTE *); // r8
  void (__fastcall *v10)(int, _BYTE *, _BYTE *); // r8
  void (__fastcall *v11)(int, _BYTE *, _BYTE *); // r8
  _BYTE v12[12]; // [sp+4h] [bp-88h] BYREF
  _BYTE v13[12]; // [sp+10h] [bp-7Ch] BYREF
  _BYTE v14[12]; // [sp+1Ch] [bp-70h] BYREF
  _BYTE v15[4]; // [sp+28h] [bp-64h] BYREF
  gameswf::as_listener *v16; // [sp+2Ch] [bp-60h]
  _BYTE v17[8]; // [sp+34h] [bp-58h] BYREF
  void *p; // [sp+40h] [bp-4Ch]
  _BYTE v19[8]; // [sp+48h] [bp-44h] BYREF
  void *v20; // [sp+54h] [bp-38h]
  _BYTE v21[8]; // [sp+5Ch] [bp-30h] BYREF
  void *v22; // [sp+68h] [bp-24h]
  _BYTE v23[8]; // [sp+70h] [bp-1Ch] BYREF
  void *v24; // [sp+7Ch] [bp-10h]

  if ( *((_DWORD *)this + 4) == 1 )
  {
    v3 = **((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5);
    if ( *(_BYTE *)(v3 + 1) == 5 )
    {
      v4 = *(_DWORD *)(v3 + 4);
      if ( v4 )
      {
        v5 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
        gameswf::tu_string::tu_string((gameswf::tu_string *)v23, "_listeners");
        v6 = *((_DWORD *)this + 3);
        gameswf::weak_ptr<gameswf::player>::check_proxy(v6 + 100);
        v7 = *(gameswf::player **)(v6 + 104);
        v8 = (gameswf::as_listener *)operator new(0x58u, 0);
        gameswf::as_listener::as_listener(v8, v7);
        v15[0] = 0;
        v15[1] = 5;
        v16 = v8;
        if ( v8 )
          gameswf::ref_counted::add_ref((int)v8);
        v5(v4, v23, v15);
        gameswf::as_value::drop_refs((gameswf::as_value *)v15);
        if ( v23[0] == -1 )
          gameswf::free_internal(v24);
        v9 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
        gameswf::tu_string::tu_string((gameswf::tu_string *)v21, "addListener");
        v14[1] = 0;
        v14[0] = 0;
        gameswf::as_value::set_as_c_function(
          (gameswf::as_value *)v14,
          (void (*)(const gameswf::fn_call *))gameswf::as_broadcast_addlistener);
        v9(v4, v21, v14);
        gameswf::as_value::drop_refs((gameswf::as_value *)v14);
        if ( v21[0] == -1 )
          gameswf::free_internal(v22);
        v10 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
        gameswf::tu_string::tu_string((gameswf::tu_string *)v19, "removeListener");
        v13[1] = 0;
        v13[0] = 0;
        gameswf::as_value::set_as_c_function(
          (gameswf::as_value *)v13,
          (void (*)(const gameswf::fn_call *))gameswf::as_broadcast_removelistener);
        v10(v4, v19, v13);
        gameswf::as_value::drop_refs((gameswf::as_value *)v13);
        if ( v19[0] == -1 )
          gameswf::free_internal(v20);
        v11 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v4 + 28);
        gameswf::tu_string::tu_string((gameswf::tu_string *)v17, "broadcastMessage");
        v12[1] = 0;
        v12[0] = 0;
        gameswf::as_value::set_as_c_function(
          (gameswf::as_value *)v12,
          (void (*)(const gameswf::fn_call *))gameswf::as_broadcast_sendmessage);
        v11(v4, v17, v12);
        gameswf::as_value::drop_refs((gameswf::as_value *)v12);
        if ( v17[0] == -1 )
          gameswf::free_internal(p);
      }
    }
  }
}


// ===== 79bc48 gameswf::as_listener::broadcast(gameswf::fn_call const&) =====
int __fastcall gameswf::as_listener::broadcast(gameswf::as_listener *this, const gameswf::fn_call *a2)
{
  int v4; // r3
  int v5; // r5
  char *v7; // r0
  int v8; // r12
  _BYTE *v9; // r7
  int v10; // r3
  int v11; // lr
  int v12; // r3
  int v13; // r9
  char *v14; // r0
  int v15; // r8
  int v16; // r11
  int v17; // r3
  int v18; // r12
  void *v19; // r8
  gameswf::listener *v20; // [sp+8h] [bp-ACh]
  _DWORD v21[7]; // [sp+24h] [bp-90h] BYREF
  _DWORD v22[7]; // [sp+40h] [bp-74h] BYREF
  _DWORD v23[3]; // [sp+5Ch] [bp-58h] BYREF
  char v24; // [sp+68h] [bp-4Ch]
  _BYTE v25[4]; // [sp+6Ch] [bp-48h] BYREF
  int v26; // [sp+70h] [bp-44h]
  _BYTE v27[4]; // [sp+78h] [bp-3Ch] BYREF
  int v28; // [sp+7Ch] [bp-38h]
  char v29; // [sp+84h] [bp-30h] BYREF
  _BYTE v30[3]; // [sp+85h] [bp-2Fh] BYREF
  void *p; // [sp+90h] [bp-24h]
  char v32; // [sp+98h] [bp-1Ch] BYREF
  _BYTE v33[3]; // [sp+99h] [bp-1Bh] BYREF
  void *v34; // [sp+A4h] [bp-10h]

  if ( *((_BYTE *)this + 72) )
  {
    v4 = *((_DWORD *)a2 + 4);
    v5 = 0;
    memset(v23, 0, sizeof(v23));
    v24 = 0;
    if ( v4 > 0 )
    {
      do
      {
        ++v5;
        gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(v23);
      }
      while ( *((_DWORD *)a2 + 4) > v5 );
    }
    tu_queue<gameswf::array<gameswf::as_value>>::push((_DWORD *)this + 19, v23);
    gameswf::array<gameswf::as_value>::resize(v23, 0);
    gameswf::array<gameswf::as_value>::reserve((int)v23, 0);
  }
  else
  {
    *((_BYTE *)this + 72) = 1;
    v7 = gameswf::as_value::to_tu_string((gameswf::as_value *)(**((_DWORD **)a2 + 3) + 12 * *((_DWORD *)a2 + 5)));
    gameswf::tu_string::tu_string((gameswf::tu_string *)&v32, (const gameswf::tu_string *)v7);
    v8 = *((_DWORD *)a2 + 4);
    v9 = (_BYTE *)(v8 - 1);
    if ( v8 - 1 > 0 )
    {
      do
      {
        gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(*((_DWORD **)a2 + 3));
        --v9;
      }
      while ( v9 );
      v8 = *((_DWORD *)a2 + 4);
    }
    v10 = *((_DWORD *)a2 + 3);
    v28 = 0;
    v27[0] = 0;
    v27[1] = 5;
    v11 = *(_DWORD *)(v10 + 4);
    if ( v32 == -1 )
      v9 = v34;
    v20 = (gameswf::as_listener *)((char *)this + 56);
    if ( v32 != -1 )
      v9 = v33;
    v22[3] = v10;
    v22[4] = v8 - 1;
    v22[5] = v11 - 1;
    v22[6] = v9;
    v22[0] = 0;
    v22[2] = v27;
    v22[1] = 0;
    gameswf::listener::notify(v20, (const gameswf::tu_string *)&v32, (const gameswf::fn_call *)v22);
    gameswf::array<gameswf::as_value>::resize(
      *((_DWORD **)a2 + 3),
      *(_DWORD *)(*((_DWORD *)a2 + 3) + 4) + 1 - *((_DWORD *)a2 + 4));
    while ( 1 )
    {
      v12 = *((_DWORD *)this + 21);
      if ( !v12 )
        break;
      while ( 1 )
      {
        v13 = *((_DWORD *)this + 20);
        v14 = gameswf::as_value::to_tu_string(*(gameswf::as_value **)v13);
        gameswf::tu_string::tu_string((gameswf::tu_string *)&v29, (const gameswf::tu_string *)v14);
        v15 = *(_DWORD *)(v13 + 4);
        if ( v15 - 1 > 0 )
        {
          v16 = 12 * (v15 - 1);
          do
          {
            --v15;
            gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(*((_DWORD **)a2 + 3));
            v16 -= 12;
          }
          while ( v15 != 1 );
        }
        v17 = *((_DWORD *)a2 + 3);
        v25[1] = 5;
        v25[0] = 0;
        v26 = 0;
        v18 = *(_DWORD *)(v17 + 4);
        v19 = v29 == -1 ? p : v30;
        v21[4] = *(_DWORD *)(v13 + 4) - 1;
        v21[5] = v18 - 1;
        v21[3] = v17;
        v21[6] = v19;
        v21[0] = 0;
        v21[2] = v25;
        v21[1] = 0;
        gameswf::listener::notify(v20, (const gameswf::tu_string *)&v29, (const gameswf::fn_call *)v21);
        gameswf::array<gameswf::as_value>::resize(
          *((_DWORD **)a2 + 3),
          *(_DWORD *)(*((_DWORD *)a2 + 3) + 4) + 1 - *((_DWORD *)a2 + 4));
        tu_queue<gameswf::array<gameswf::as_value>>::pop((_DWORD *)this + 19);
        gameswf::as_value::drop_refs((gameswf::as_value *)v25);
        if ( v29 != -1 )
          break;
        gameswf::free_internal(p);
        v12 = *((_DWORD *)this + 21);
        if ( !v12 )
          goto LABEL_23;
      }
    }
LABEL_23:
    *((_BYTE *)this + 72) = v12;
    gameswf::as_value::drop_refs((gameswf::as_value *)v27);
    if ( v32 == -1 )
      gameswf::free_internal(v34);
  }
  return 16556;
}


// ===== 79bf70 gameswf::as_broadcast_sendmessage(gameswf::fn_call const&) =====
void __fastcall gameswf::as_broadcast_sendmessage(gameswf *this, const gameswf::fn_call *a2)
{
  int v2; // r9
  int (__fastcall *v4)(int, _BYTE *, char *); // r8
  int v5; // r8
  int v6; // r0
  gameswf::as_listener *v7; // r0
  char v8; // [sp+4h] [bp-24h] BYREF
  char v9; // [sp+5h] [bp-23h]
  int v10; // [sp+8h] [bp-20h]
  _BYTE v11[8]; // [sp+10h] [bp-18h] BYREF
  void *p; // [sp+1Ch] [bp-Ch]

  v2 = *((_DWORD *)this + 1);
  v9 = 0;
  v8 = 0;
  v4 = *(int (__fastcall **)(int, _BYTE *, char *))(*(_DWORD *)v2 + 32);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v11, "_listeners");
  v5 = v4(v2, v11, &v8);
  if ( v11[0] == -1 )
    gameswf::free_internal(p);
  if ( v5 )
  {
    if ( v9 == 5 )
      v6 = v10;
    else
      v6 = 0;
    v7 = (gameswf::as_listener *)gameswf::cast_to<gameswf::as_listener>(v6);
    if ( v7 )
      gameswf::as_listener::broadcast(v7, this);
  }
  gameswf::as_value::drop_refs((gameswf::as_value *)&v8);
}


// ===== 79c054 gameswf::as_color::is(int) =====
bool __fastcall gameswf::as_color::is(gameswf::as_color *this, int a2)
{
  return a2 == 17 || a2 == 0;
}


// ===== 79c06c gameswf::cast_to<gameswf::as_color>(gameswf::as_object_interface *) =====
int __fastcall gameswf::cast_to<gameswf::as_color>(int a1)
{
  if ( a1 && (*(int (__fastcall **)(int, int))(*(_DWORD *)a1 + 8))(a1, 17) )
    return a1;
  else
    return 0;
}


// ===== 79c0a0 gameswf::as_color::~as_color() =====
void __fastcall gameswf::as_color::~as_color(gameswf::as_color *this)
{
  _DWORD *v2; // r0

  v2 = *((_DWORD **)this + 14);
  *(_DWORD *)this = off_990BF8;
  if ( v2 )
  {
    if ( (*v2)-- == 1 )
      gameswf::free_internal(v2);
  }
  gameswf::as_object::~as_object(this);
}


// ===== 79c0fc gameswf::as_color::~as_color() =====
void __fastcall gameswf::as_color::~as_color(gameswf::as_color *this)
{
  gameswf::as_color::~as_color(this);
  LC_API_FREE_0(this);
}


// ===== 79c118 gameswf::as_color_setRGB(gameswf::fn_call const&) =====
void __fastcall gameswf::as_color_setRGB(gameswf *this, const gameswf::fn_call *a2)
{
  int v3; // r0
  int v4; // r5
  int v5; // r3
  int v6; // r2
  int v7; // r6
  int *v8; // lr
  _DWORD *v9; // r7
  int v10; // r0
  int v11; // r1
  float v12; // r2
  int v13; // r3
  int v14; // r1
  int v15; // r2
  int v16; // r3
  int v17; // r0
  float v18; // r4
  float v19; // r4
  float v20; // r4
  int v21; // r0
  _BYTE *v22; // r3
  float v24[2]; // [sp+0h] [bp-20h] BYREF
  float v25; // [sp+8h] [bp-18h]
  int v26; // [sp+Ch] [bp-14h]
  float v27; // [sp+10h] [bp-10h]
  int v28; // [sp+14h] [bp-Ch]
  int v29; // [sp+18h] [bp-8h]
  int v30; // [sp+1Ch] [bp-4h]

  if ( *((int *)this + 4) > 0 )
  {
    v3 = gameswf::cast_to<gameswf::as_color>(*((_DWORD *)this + 1));
    v4 = v3;
    if ( v3 )
    {
      v5 = *(_DWORD *)(v3 + 60);
      if ( v5 )
      {
        v6 = *(_DWORD *)(v3 + 56);
        v7 = *(unsigned __int8 *)(v6 + 4);
        if ( *(_BYTE *)(v6 + 4) )
        {
          v8 = *(int **)(v5 + 72);
          v9 = *((_DWORD **)this + 3);
          v10 = *v8;
          v11 = v8[1];
          v12 = *((float *)v8 + 2);
          v13 = v8[3];
          v8 += 4;
          LODWORD(v24[0]) = v10;
          LODWORD(v24[1]) = v11;
          v25 = v12;
          v26 = v13;
          v14 = v8[1];
          v15 = v8[2];
          v16 = v8[3];
          v27 = *(float *)v8;
          v28 = v14;
          v29 = v15;
          v30 = v16;
          v17 = (int)COERCE_DOUBLE(
                       gameswf::as_value::to_number(
                         (gameswf::as_value *)(*v9 + 12 * *((_DWORD *)this + 5)),
                         v14,
                         (const char *)*((_DWORD *)this + 5)));
          v18 = (float)BYTE2(v17) / 255.0;
          if ( v18 < -3.4028e38 || v18 > 3.4028e38 )
            v18 = 0.0;
          v24[0] = v18;
          v19 = (float)BYTE1(v17) / 255.0;
          if ( v19 < -3.4028e38 || v19 > 3.4028e38 )
            v19 = 0.0;
          v25 = v19;
          v20 = (float)(unsigned __int8)v17 / 255.0;
          if ( v20 < -3.4028e38 || v20 > 3.4028e38 )
            v20 = 0.0;
          v27 = v20;
          v21 = *(_DWORD *)(v4 + 60);
          if ( v21 )
          {
            v22 = *(_BYTE **)(v4 + 56);
            if ( !v22[4] )
            {
              if ( (*(_DWORD *)v22)-- == 1 )
                gameswf::free_internal(v22);
              v21 = 0;
              *(_DWORD *)(v4 + 60) = 0;
              *(_DWORD *)(v4 + 56) = 0;
            }
          }
          gameswf::character::set_cxform(v21, (int *)v24);
        }
        else
        {
          gameswf::smart_ptr_proxy::operator=((_DWORD **)(v3 + 56), (_DWORD *)*(unsigned __int8 *)(v6 + 4));
          *(_DWORD *)(v4 + 60) = v7;
        }
      }
    }
  }
}


// ===== 79c2f0 gameswf::as_color::as_color(gameswf::player *,gameswf::character *) =====
gameswf::as_color *__fastcall gameswf::as_color::as_color(gameswf::as_color *this, gameswf::player *a2, int **a3)
{
  int *v5; // lr
  int v6; // r0
  int v7; // r1
  int v8; // r2
  int v9; // r3
  int v10; // r1
  int v11; // r2
  int v12; // r3
  _BYTE v14[12]; // [sp+0h] [bp-90h] BYREF
  _BYTE v15[12]; // [sp+Ch] [bp-84h] BYREF
  _BYTE v16[12]; // [sp+18h] [bp-78h] BYREF
  _BYTE v17[12]; // [sp+24h] [bp-6Ch] BYREF
  _BYTE v18[12]; // [sp+30h] [bp-60h] BYREF
  _BYTE v19[8]; // [sp+3Ch] [bp-54h] BYREF
  void *v20; // [sp+48h] [bp-48h]
  _BYTE v21[8]; // [sp+50h] [bp-40h] BYREF
  void *v22; // [sp+5Ch] [bp-34h]
  _BYTE v23[8]; // [sp+64h] [bp-2Ch] BYREF
  void *v24; // [sp+70h] [bp-20h]
  _BYTE v25[8]; // [sp+78h] [bp-18h] BYREF
  void *p; // [sp+84h] [bp-Ch]

  gameswf::as_object::as_object(this, a2);
  *(_DWORD *)this = off_990BF8;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  gameswf::weak_ptr<gameswf::character>::operator=((int)this + 56, (gameswf::ref_counted *)a3);
  *((_DWORD *)this + 22) = 1065353216;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 16) = 1065353216;
  *((_DWORD *)this + 18) = 1065353216;
  *((_DWORD *)this + 20) = 1065353216;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 21) = 0;
  v5 = a3[18];
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  v5 += 4;
  *((_DWORD *)this + 16) = v6;
  *((_DWORD *)this + 17) = v7;
  *((_DWORD *)this + 18) = v8;
  *((_DWORD *)this + 19) = v9;
  v10 = v5[1];
  v11 = v5[2];
  v12 = v5[3];
  *((_DWORD *)this + 20) = *v5;
  *((_DWORD *)this + 21) = v10;
  *((_DWORD *)this + 22) = v11;
  *((_DWORD *)this + 23) = v12;
  gameswf::tu_string::tu_string((gameswf::tu_string *)v25, "getRGB");
  v18[1] = 0;
  v18[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v18,
    (void (*)(const gameswf::fn_call *))gameswf::as_color_getRGB);
  gameswf::as_object::builtin_member((int)this, (int)v25, v18);
  gameswf::as_value::drop_refs((gameswf::as_value *)v18);
  if ( v25[0] == -1 )
    gameswf::free_internal(p);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v23, "setRGB");
  v17[1] = 0;
  v17[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v17,
    (void (*)(const gameswf::fn_call *))gameswf::as_color_setRGB);
  gameswf::as_object::builtin_member((int)this, (int)v23, v17);
  gameswf::as_value::drop_refs((gameswf::as_value *)v17);
  if ( v23[0] == -1 )
    gameswf::free_internal(v24);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v21, "getTransform");
  v16[1] = 0;
  v16[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v16,
    (void (*)(const gameswf::fn_call *))gameswf::as_color_gettransform);
  gameswf::as_object::builtin_member((int)this, (int)v21, v16);
  gameswf::as_value::drop_refs((gameswf::as_value *)v16);
  if ( v21[0] == -1 )
    gameswf::free_internal(v22);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v19, "setTransform");
  v15[1] = 0;
  v15[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v15,
    (void (*)(const gameswf::fn_call *))gameswf::as_color_settransform);
  gameswf::as_object::builtin_member((int)this, (int)v19, v15);
  gameswf::as_value::drop_refs((gameswf::as_value *)v15);
  if ( v19[0] == -1 )
    gameswf::free_internal(v20);
  v14[1] = 0;
  v14[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v14,
    (void (*)(const gameswf::fn_call *))gameswf::as_global_color_ctor);
  gameswf::as_object::set_ctor(this, (const gameswf::as_value *)v14);
  gameswf::as_value::drop_refs((gameswf::as_value *)v14);
  return this;
}


// ===== 79c5a8 gameswf::as_global_color_ctor(gameswf::fn_call const&) =====
void __fastcall gameswf::as_global_color_ctor(gameswf *this, const gameswf::fn_call *a2)
{
  int v3; // r3
  int **v4; // r6
  int v5; // r7
  gameswf::as_value *v6; // r5
  gameswf::player *v7; // r8
  int v8; // r3
  gameswf::player *v9; // r4
  gameswf::as_color *v10; // r4

  if ( *((_DWORD *)this + 4) == 1 )
  {
    v3 = **((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5);
    if ( *(_BYTE *)(v3 + 1) == 5 )
    {
      v4 = *(int ***)(v3 + 4);
      if ( v4 )
      {
        if ( ((int (__fastcall *)(int **))(*v4)[2])(v4) )
        {
          v5 = *((_DWORD *)this + 3);
          v6 = *(gameswf::as_value **)this;
          v7 = *(gameswf::player **)(v5 + 104);
          if ( v7 )
          {
            v8 = *(_DWORD *)(v5 + 100);
            v9 = (gameswf::player *)*(unsigned __int8 *)(v8 + 4);
            if ( !*(_BYTE *)(v8 + 4) )
            {
              gameswf::smart_ptr_proxy::operator=((_DWORD **)(v5 + 100), (_DWORD *)*(unsigned __int8 *)(v8 + 4));
              v7 = v9;
              *(_DWORD *)(v5 + 104) = v9;
            }
          }
          v10 = (gameswf::as_color *)operator new(0x60u, 0);
          gameswf::as_color::as_color(v10, v7, v4);
          gameswf::as_value::set_as_object(v6, v10);
        }
      }
    }
  }
}


// ===== 79c66c gameswf::as_color::as_color(gameswf::player *,gameswf::character *) =====
gameswf::as_color *__fastcall gameswf::as_color::as_color(gameswf::as_color *this, gameswf::player *a2, int **a3)
{
  int *v5; // lr
  int v6; // r0
  int v7; // r1
  int v8; // r2
  int v9; // r3
  int v10; // r1
  int v11; // r2
  int v12; // r3
  _BYTE v14[12]; // [sp+0h] [bp-90h] BYREF
  _BYTE v15[12]; // [sp+Ch] [bp-84h] BYREF
  _BYTE v16[12]; // [sp+18h] [bp-78h] BYREF
  _BYTE v17[12]; // [sp+24h] [bp-6Ch] BYREF
  _BYTE v18[12]; // [sp+30h] [bp-60h] BYREF
  _BYTE v19[8]; // [sp+3Ch] [bp-54h] BYREF
  void *v20; // [sp+48h] [bp-48h]
  _BYTE v21[8]; // [sp+50h] [bp-40h] BYREF
  void *v22; // [sp+5Ch] [bp-34h]
  _BYTE v23[8]; // [sp+64h] [bp-2Ch] BYREF
  void *v24; // [sp+70h] [bp-20h]
  _BYTE v25[8]; // [sp+78h] [bp-18h] BYREF
  void *p; // [sp+84h] [bp-Ch]

  gameswf::as_object::as_object(this, a2);
  *(_DWORD *)this = off_990BF8;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  gameswf::weak_ptr<gameswf::character>::operator=((int)this + 56, (gameswf::ref_counted *)a3);
  *((_DWORD *)this + 22) = 1065353216;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 16) = 1065353216;
  *((_DWORD *)this + 18) = 1065353216;
  *((_DWORD *)this + 20) = 1065353216;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 21) = 0;
  v5 = a3[18];
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  v5 += 4;
  *((_DWORD *)this + 16) = v6;
  *((_DWORD *)this + 17) = v7;
  *((_DWORD *)this + 18) = v8;
  *((_DWORD *)this + 19) = v9;
  v10 = v5[1];
  v11 = v5[2];
  v12 = v5[3];
  *((_DWORD *)this + 20) = *v5;
  *((_DWORD *)this + 21) = v10;
  *((_DWORD *)this + 22) = v11;
  *((_DWORD *)this + 23) = v12;
  gameswf::tu_string::tu_string((gameswf::tu_string *)v25, "getRGB");
  v18[1] = 0;
  v18[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v18,
    (void (*)(const gameswf::fn_call *))gameswf::as_color_getRGB);
  gameswf::as_object::builtin_member((int)this, (int)v25, v18);
  gameswf::as_value::drop_refs((gameswf::as_value *)v18);
  if ( v25[0] == -1 )
    gameswf::free_internal(p);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v23, "setRGB");
  v17[1] = 0;
  v17[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v17,
    (void (*)(const gameswf::fn_call *))gameswf::as_color_setRGB);
  gameswf::as_object::builtin_member((int)this, (int)v23, v17);
  gameswf::as_value::drop_refs((gameswf::as_value *)v17);
  if ( v23[0] == -1 )
    gameswf::free_internal(v24);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v21, "getTransform");
  v16[1] = 0;
  v16[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v16,
    (void (*)(const gameswf::fn_call *))gameswf::as_color_gettransform);
  gameswf::as_object::builtin_member((int)this, (int)v21, v16);
  gameswf::as_value::drop_refs((gameswf::as_value *)v16);
  if ( v21[0] == -1 )
    gameswf::free_internal(v22);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v19, "setTransform");
  v15[1] = 0;
  v15[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v15,
    (void (*)(const gameswf::fn_call *))gameswf::as_color_settransform);
  gameswf::as_object::builtin_member((int)this, (int)v19, v15);
  gameswf::as_value::drop_refs((gameswf::as_value *)v15);
  if ( v19[0] == -1 )
    gameswf::free_internal(v20);
  v14[1] = 0;
  v14[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v14,
    (void (*)(const gameswf::fn_call *))gameswf::as_global_color_ctor);
  gameswf::as_object::set_ctor(this, (const gameswf::as_value *)v14);
  gameswf::as_value::drop_refs((gameswf::as_value *)v14);
  return this;
}


// ===== 79c924 gameswf::as_color_settransform(gameswf::fn_call const&) =====
void __fastcall gameswf::as_color_settransform(gameswf *this, const gameswf::fn_call *a2)
{
  int v3; // r0
  int v4; // r7
  _BYTE *v5; // r0
  int v6; // r3
  int v7; // r5
  int v8; // r1
  float v9; // r2
  int v10; // r3
  int v11; // r1
  float v12; // r2
  int v13; // r3
  int (__fastcall *v14)(int, _BYTE *, _BYTE *); // r10
  int v15; // r1
  const char *v16; // r2
  int v17; // r10
  float v18; // r0
  float v19; // r0
  int v20; // r10
  int (__fastcall *v21)(int, _BYTE *, _BYTE *); // r10
  int v22; // r1
  const char *v23; // r2
  int v24; // r10
  float v25; // r0
  float v26; // r0
  float v27; // r10
  int (__fastcall *v28)(int, _BYTE *, _BYTE *); // r10
  int v29; // r1
  const char *v30; // r2
  int v31; // r10
  float v32; // r0
  float v33; // r0
  float v34; // r10
  int (__fastcall *v35)(int, _BYTE *, _BYTE *); // r10
  int v36; // r1
  const char *v37; // r2
  int v38; // r10
  float v39; // r0
  float v40; // r0
  float v41; // r5
  int v42; // r0
  _BYTE *v43; // r3
  int (__fastcall *v44)(int, _BYTE *, _BYTE *); // r10
  int v45; // r1
  const char *v46; // r2
  int v47; // r10
  float v48; // r0
  int (__fastcall *v49)(int, _BYTE *, _BYTE *); // r10
  int v50; // r1
  const char *v51; // r2
  int v52; // r5
  float v53; // r0
  int (__fastcall *v54)(int, _BYTE *, _BYTE *); // r10
  int v55; // r1
  const char *v56; // r2
  int v57; // r10
  float v58; // r0
  int (__fastcall *v59)(int, _BYTE *, _BYTE *); // r10
  int v60; // r1
  const char *v61; // r2
  int v62; // r10
  float v63; // r0
  bool v64; // zf
  float v65[2]; // [sp+0h] [bp-D4h] BYREF
  float v66; // [sp+8h] [bp-CCh]
  int v67; // [sp+Ch] [bp-C8h]
  float v68; // [sp+10h] [bp-C4h]
  int v69; // [sp+14h] [bp-C0h]
  float v70; // [sp+18h] [bp-BCh]
  int v71; // [sp+1Ch] [bp-B8h]
  _BYTE v72[12]; // [sp+20h] [bp-B4h] BYREF
  _BYTE v73[8]; // [sp+2Ch] [bp-A8h] BYREF
  void *v74; // [sp+38h] [bp-9Ch]
  _BYTE v75[8]; // [sp+40h] [bp-94h] BYREF
  void *v76; // [sp+4Ch] [bp-88h]
  _BYTE v77[8]; // [sp+54h] [bp-80h] BYREF
  void *v78; // [sp+60h] [bp-74h]
  _BYTE v79[8]; // [sp+68h] [bp-6Ch] BYREF
  void *p; // [sp+74h] [bp-60h]
  _BYTE v81[8]; // [sp+7Ch] [bp-58h] BYREF
  void *v82; // [sp+88h] [bp-4Ch]
  _BYTE v83[8]; // [sp+90h] [bp-44h] BYREF
  void *v84; // [sp+9Ch] [bp-38h]
  _BYTE v85[8]; // [sp+A4h] [bp-30h] BYREF
  void *v86; // [sp+B0h] [bp-24h]
  _BYTE v87[8]; // [sp+B8h] [bp-1Ch] BYREF
  void *v88; // [sp+C4h] [bp-10h]

  if ( *((int *)this + 4) <= 0 )
    return;
  v3 = gameswf::cast_to<gameswf::as_color>(*((_DWORD *)this + 1));
  v4 = v3;
  if ( !v3 || !*(_DWORD *)(v3 + 60) )
    return;
  v5 = *(_BYTE **)(v3 + 56);
  if ( v5[4] )
  {
    v6 = **((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5);
    if ( *(_BYTE *)(v6 + 1) != 5 )
      return;
    v7 = *(_DWORD *)(v6 + 4);
    if ( !v7 )
      return;
    v8 = *(_DWORD *)(v4 + 68);
    v9 = *(float *)(v4 + 72);
    v10 = *(_DWORD *)(v4 + 76);
    v65[0] = *(float *)(v4 + 64);
    LODWORD(v65[1]) = v8;
    v66 = v9;
    v67 = v10;
    v11 = *(_DWORD *)(v4 + 84);
    v12 = *(float *)(v4 + 88);
    v13 = *(_DWORD *)(v4 + 92);
    v68 = *(float *)(v4 + 80);
    v69 = v11;
    v70 = v12;
    v71 = v13;
    v72[1] = 0;
    v72[0] = 0;
    v14 = *(int (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v7 + 32);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v87, "ra");
    v17 = v14(v7, v87, v72);
    if ( v87[0] == -1 )
      gameswf::free_internal(v88);
    if ( v17 )
    {
      v18 = COERCE_DOUBLE(gameswf::as_value::to_number((gameswf::as_value *)v72, v15, v16));
      v19 = (float)(v18 / 100.0) * v65[0];
    }
    else
    {
      v59 = *(int (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v7 + 32);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v85, "rb");
      v62 = v59(v7, v85, v72);
      if ( v85[0] == -1 )
        gameswf::free_internal(v86);
      if ( !v62 )
      {
LABEL_15:
        v21 = *(int (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v7 + 32);
        gameswf::tu_string::tu_string((gameswf::tu_string *)v83, (const char *)&dword_8C8268);
        v24 = v21(v7, v83, v72);
        if ( v83[0] == -1 )
          gameswf::free_internal(v84);
        if ( v24 )
        {
          v25 = COERCE_DOUBLE(gameswf::as_value::to_number((gameswf::as_value *)v72, v22, v23));
          v26 = (float)(v25 / 100.0) * v66;
        }
        else
        {
          v44 = *(int (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v7 + 32);
          gameswf::tu_string::tu_string((gameswf::tu_string *)v81, "gb");
          v47 = v44(v7, v81, v72);
          if ( v81[0] == -1 )
            gameswf::free_internal(v82);
          if ( !v47 )
          {
LABEL_22:
            v28 = *(int (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v7 + 32);
            gameswf::tu_string::tu_string((gameswf::tu_string *)v79, "ba");
            v31 = v28(v7, v79, v72);
            if ( v79[0] == -1 )
              gameswf::free_internal(p);
            if ( v31 )
            {
              v32 = COERCE_DOUBLE(gameswf::as_value::to_number((gameswf::as_value *)v72, v29, v30));
              v33 = (float)(v32 / 100.0) * v68;
            }
            else
            {
              v54 = *(int (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v7 + 32);
              gameswf::tu_string::tu_string((gameswf::tu_string *)v77, "bb");
              v57 = v54(v7, v77, v72);
              if ( v77[0] == -1 )
                gameswf::free_internal(v78);
              if ( !v57 )
              {
LABEL_29:
                v35 = *(int (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v7 + 32);
                gameswf::tu_string::tu_string((gameswf::tu_string *)v75, "aa");
                v38 = v35(v7, v75, v72);
                if ( v75[0] == -1 )
                  gameswf::free_internal(v76);
                if ( v38 )
                {
                  v39 = COERCE_DOUBLE(gameswf::as_value::to_number((gameswf::as_value *)v72, v36, v37));
                  v40 = (float)(v39 / 100.0) * v70;
                }
                else
                {
                  v49 = *(int (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)v7 + 32);
                  gameswf::tu_string::tu_string((gameswf::tu_string *)v73, "ab");
                  v52 = v49(v7, v73, v72);
                  if ( v73[0] == -1 )
                    gameswf::free_internal(v74);
                  if ( !v52 )
                    goto LABEL_36;
                  v53 = COERCE_DOUBLE(gameswf::as_value::to_number((gameswf::as_value *)v72, v50, v51));
                  v40 = v53 / 255.0;
                }
                v41 = v40;
                if ( v40 < -3.4028e38 || v40 > 3.4028e38 )
                  v41 = 0.0;
                v70 = v41;
LABEL_36:
                v42 = *(_DWORD *)(v4 + 60);
                if ( v42 )
                {
                  v43 = *(_BYTE **)(v4 + 56);
                  if ( !v43[4] )
                  {
                    v64 = (*(_DWORD *)v43)-- == 1;
                    if ( v64 )
                      gameswf::free_internal(v43);
                    v42 = 0;
                    *(_DWORD *)(v4 + 60) = 0;
                    *(_DWORD *)(v4 + 56) = 0;
                  }
                }
                gameswf::character::set_cxform(v42, (int *)v65);
                gameswf::as_value::drop_refs((gameswf::as_value *)v72);
                return;
              }
              v58 = COERCE_DOUBLE(gameswf::as_value::to_number((gameswf::as_value *)v72, v55, v56));
              v33 = v58 / 255.0;
            }
            v34 = v33;
            if ( v33 < -3.4028e38 || v33 > 3.4028e38 )
              v34 = 0.0;
            v68 = v34;
            goto LABEL_29;
          }
          v48 = COERCE_DOUBLE(gameswf::as_value::to_number((gameswf::as_value *)v72, v45, v46));
          v26 = v48 / 255.0;
        }
        v27 = v26;
        if ( v26 < -3.4028e38 || v26 > 3.4028e38 )
          v27 = 0.0;
        v66 = v27;
        goto LABEL_22;
      }
      v63 = COERCE_DOUBLE(gameswf::as_value::to_number((gameswf::as_value *)v72, v60, v61));
      v19 = v63 / 255.0;
    }
    v20 = LODWORD(v19);
    if ( v19 < -3.4028e38 || v19 > 3.4028e38 )
      v20 = 0;
    LODWORD(v65[0]) = v20;
    goto LABEL_15;
  }
  v64 = (*(_DWORD *)v5)-- == 1;
  if ( v64 )
    gameswf::free_internal(v5);
  *(_DWORD *)(v4 + 60) = 0;
  *(_DWORD *)(v4 + 56) = 0;
}


// ===== 79cf14 gameswf::as_color_gettransform(gameswf::fn_call const&) =====
void __fastcall gameswf::as_color_gettransform(gameswf *this, const gameswf::fn_call *a2)
{
  int v3; // r0
  int v4; // r7
  int v5; // r3
  int v6; // r2
  int v7; // r8
  float *v8; // lr
  float v9; // r0
  float v10; // r2
  int v11; // r10
  int v12; // r9
  unsigned int v13; // r0
  int v14; // r7
  gameswf::player *v15; // r8
  int v16; // r3
  gameswf::player *v17; // r11
  gameswf::as_object *v18; // r7
  void (__fastcall *v19)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  void (__fastcall *v20)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v21)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  void (__fastcall *v22)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v23)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  void (__fastcall *v24)(gameswf::as_object *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v25)(gameswf::as_object *, _BYTE *, _BYTE *); // [sp+4h] [bp-140h]
  void (__fastcall *v26)(gameswf::as_object *, _BYTE *, _BYTE *); // [sp+4h] [bp-140h]
  int v27; // [sp+8h] [bp-13Ch]
  int v28; // [sp+Ch] [bp-138h]
  float v29; // [sp+18h] [bp-12Ch]
  float v30; // [sp+20h] [bp-124h]
  float v31; // [sp+28h] [bp-11Ch]
  _BYTE v32[4]; // [sp+30h] [bp-114h] BYREF
  double v33; // [sp+34h] [bp-110h]
  _BYTE v34[4]; // [sp+3Ch] [bp-108h] BYREF
  double v35; // [sp+40h] [bp-104h]
  _BYTE v36[4]; // [sp+48h] [bp-FCh] BYREF
  double v37; // [sp+4Ch] [bp-F8h]
  _BYTE v38[4]; // [sp+54h] [bp-F0h] BYREF
  double v39; // [sp+58h] [bp-ECh]
  _BYTE v40[4]; // [sp+60h] [bp-E4h] BYREF
  double v41; // [sp+64h] [bp-E0h]
  _BYTE v42[4]; // [sp+6Ch] [bp-D8h] BYREF
  double v43; // [sp+70h] [bp-D4h]
  _BYTE v44[4]; // [sp+78h] [bp-CCh] BYREF
  double v45; // [sp+7Ch] [bp-C8h]
  _BYTE v46[4]; // [sp+84h] [bp-C0h] BYREF
  double v47; // [sp+88h] [bp-BCh]
  double v48; // [sp+90h] [bp-B4h]
  _BYTE v49[8]; // [sp+9Ch] [bp-A8h] BYREF
  void *p; // [sp+A8h] [bp-9Ch]
  _BYTE v51[8]; // [sp+B0h] [bp-94h] BYREF
  void *v52; // [sp+BCh] [bp-88h]
  _BYTE v53[8]; // [sp+C4h] [bp-80h] BYREF
  void *v54; // [sp+D0h] [bp-74h]
  _BYTE v55[8]; // [sp+D8h] [bp-6Ch] BYREF
  void *v56; // [sp+E4h] [bp-60h]
  _BYTE v57[8]; // [sp+ECh] [bp-58h] BYREF
  void *v58; // [sp+F8h] [bp-4Ch]
  _BYTE v59[8]; // [sp+100h] [bp-44h] BYREF
  void *v60; // [sp+10Ch] [bp-38h]
  _BYTE v61[8]; // [sp+114h] [bp-30h] BYREF
  void *v62; // [sp+120h] [bp-24h]
  _BYTE v63[8]; // [sp+128h] [bp-1Ch] BYREF
  void *v64; // [sp+134h] [bp-10h]

  v3 = gameswf::cast_to<gameswf::as_color>(*((_DWORD *)this + 1));
  v4 = v3;
  if ( v3 )
  {
    v5 = *(_DWORD *)(v3 + 60);
    if ( v5 )
    {
      v6 = *(_DWORD *)(v3 + 56);
      v7 = *(unsigned __int8 *)(v6 + 4);
      if ( *(_BYTE *)(v6 + 4) )
      {
        v8 = *(float **)(v5 + 72);
        v9 = *v8;
        v10 = v8[2];
        v8 += 4;
        v29 = v10;
        v30 = *v8;
        v31 = v8[2];
        v11 = (unsigned __int8)(unsigned int)ceilf(v9 * 255.0);
        v12 = (unsigned __int8)(unsigned int)ceilf(v29 * 255.0);
        v28 = (unsigned __int8)(unsigned int)ceilf(v30 * 255.0);
        v13 = (unsigned int)ceilf(v31 * 255.0);
        v14 = *((_DWORD *)this + 3);
        v27 = (unsigned __int8)v13;
        v15 = *(gameswf::player **)(v14 + 104);
        if ( v15 )
        {
          v16 = *(_DWORD *)(v14 + 100);
          v17 = (gameswf::player *)*(unsigned __int8 *)(v16 + 4);
          if ( !*(_BYTE *)(v16 + 4) )
          {
            gameswf::smart_ptr_proxy::operator=((_DWORD **)(v14 + 100), (_DWORD *)*(unsigned __int8 *)(v16 + 4));
            v15 = v17;
            *(_DWORD *)(v14 + 104) = v17;
          }
        }
        v18 = (gameswf::as_object *)operator new(0x38u, 0);
        gameswf::as_object::as_object(v18, v15);
        v25 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v18 + 28);
        gameswf::tu_string::tu_string((gameswf::tu_string *)v63, "ra");
        v46[0] = 0;
        v46[1] = 2;
        v48 = (float)((float)((float)v11 / 255.0) * 100.0);
        v47 = v48;
        v25(v18, v63, v46);
        gameswf::as_value::drop_refs((gameswf::as_value *)v46);
        if ( v63[0] == -1 )
          gameswf::free_internal(v64);
        v26 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v18 + 28);
        gameswf::tu_string::tu_string((gameswf::tu_string *)v61, "rb");
        v44[0] = 0;
        v44[1] = 2;
        v48 = (double)v11;
        v45 = (double)v11;
        v26(v18, v61, v44);
        gameswf::as_value::drop_refs((gameswf::as_value *)v44);
        if ( v61[0] == -1 )
          gameswf::free_internal(v62);
        v19 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v18 + 28);
        gameswf::tu_string::tu_string((gameswf::tu_string *)v59, (const char *)&dword_8C8268);
        v42[0] = 0;
        v42[1] = 2;
        v48 = (float)((float)((float)v12 / 255.0) * 100.0);
        v43 = v48;
        v19(v18, v59, v42);
        gameswf::as_value::drop_refs((gameswf::as_value *)v42);
        if ( v59[0] == -1 )
          gameswf::free_internal(v60);
        v20 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v18 + 28);
        gameswf::tu_string::tu_string((gameswf::tu_string *)v57, "gb");
        v40[0] = 0;
        v40[1] = 2;
        v48 = (double)v12;
        v41 = (double)v12;
        v20(v18, v57, v40);
        gameswf::as_value::drop_refs((gameswf::as_value *)v40);
        if ( v57[0] == -1 )
          gameswf::free_internal(v58);
        v21 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v18 + 28);
        gameswf::tu_string::tu_string((gameswf::tu_string *)v55, "ba");
        v38[0] = 0;
        v38[1] = 2;
        v48 = (float)((float)((float)v28 / 255.0) * 100.0);
        v39 = v48;
        v21(v18, v55, v38);
        gameswf::as_value::drop_refs((gameswf::as_value *)v38);
        if ( v55[0] == -1 )
          gameswf::free_internal(v56);
        v22 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v18 + 28);
        gameswf::tu_string::tu_string((gameswf::tu_string *)v53, "bb");
        v36[0] = 0;
        v36[1] = 2;
        v48 = (double)v28;
        v37 = (double)v28;
        v22(v18, v53, v36);
        gameswf::as_value::drop_refs((gameswf::as_value *)v36);
        if ( v53[0] == -1 )
          gameswf::free_internal(v54);
        v23 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v18 + 28);
        gameswf::tu_string::tu_string((gameswf::tu_string *)v51, "aa");
        v34[0] = 0;
        v34[1] = 2;
        v48 = (float)((float)((float)v27 / 255.0) * 100.0);
        v35 = v48;
        v23(v18, v51, v34);
        gameswf::as_value::drop_refs((gameswf::as_value *)v34);
        if ( v51[0] == -1 )
          gameswf::free_internal(v52);
        v24 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v18 + 28);
        gameswf::tu_string::tu_string((gameswf::tu_string *)v49, "ab");
        v32[0] = 0;
        v32[1] = 2;
        v48 = (double)v27;
        v33 = (double)v27;
        v24(v18, v49, v32);
        gameswf::as_value::drop_refs((gameswf::as_value *)v32);
        if ( v49[0] == -1 )
          gameswf::free_internal(p);
        gameswf::as_value::set_as_object(*(gameswf::as_value **)this, v18);
      }
      else
      {
        gameswf::smart_ptr_proxy::operator=((_DWORD **)(v3 + 56), (_DWORD *)*(unsigned __int8 *)(v6 + 4));
        *(_DWORD *)(v4 + 60) = v7;
      }
    }
  }
}


// ===== 79d538 gameswf::as_color_getRGB(gameswf::fn_call const&) =====
void __fastcall gameswf::as_color_getRGB(gameswf *this, const gameswf::fn_call *a2)
{
  int v3; // r0
  int v4; // r5
  int v5; // r3
  int v6; // r2
  int v7; // r6
  float *v8; // lr
  float v9; // r6
  float v10; // r5
  double v11; // r2
  float v12; // [sp+8h] [bp-1Ch]
  float v13; // [sp+10h] [bp-14h]

  v3 = gameswf::cast_to<gameswf::as_color>(*((_DWORD *)this + 1));
  v4 = v3;
  if ( v3 )
  {
    v5 = *(_DWORD *)(v3 + 60);
    if ( v5 )
    {
      v6 = *(_DWORD *)(v3 + 56);
      v7 = *(unsigned __int8 *)(v6 + 4);
      if ( *(_BYTE *)(v6 + 4) )
      {
        v8 = *(float **)(v5 + 72);
        v12 = v8[2];
        v13 = v8[4];
        v9 = ceilf(*v8 * 255.0);
        v10 = ceilf(v12 * 255.0);
        v11 = (double)(((unsigned __int8)(unsigned int)v9 << 16)
                     | ((unsigned __int8)(unsigned int)v10 << 8)
                     | (unsigned int)(unsigned __int8)(unsigned int)ceilf(v13 * 255.0));
        gameswf::as_value::set_double(*(gameswf::as_value **)this, v11);
      }
      else
      {
        gameswf::smart_ptr_proxy::operator=((_DWORD **)(v3 + 56), (_DWORD *)*(unsigned __int8 *)(v6 + 4));
        *(_DWORD *)(v4 + 60) = v7;
      }
    }
  }
}


// ===== 79d638 gameswf::as_date::is(int) =====
bool __fastcall gameswf::as_date::is(gameswf::as_date *this, int a2)
{
  return a2 == 31 || a2 == 0;
}


// ===== 79d650 gameswf::as_date::get_time(void) =====
__int64 __fastcall gameswf::as_date::get_time(gameswf::as_date *this)
{
  return *((_QWORD *)this + 7);
}


// ===== 79d65c gameswf::cast_to<gameswf::as_date>(gameswf::as_object_interface *) =====
int __fastcall gameswf::cast_to<gameswf::as_date>(int a1)
{
  if ( a1 && (*(int (__fastcall **)(int, int))(*(_DWORD *)a1 + 8))(a1, 31) )
    return a1;
  else
    return 0;
}


// ===== 79d690 gameswf::as_date::~as_date() =====
void __fastcall gameswf::as_date::~as_date(gameswf::as_date *this)
{
  *(_DWORD *)this = off_990C68;
  gameswf::as_object::~as_object(this);
}


// ===== 79d6c4 gameswf::as_date_gettime(gameswf::fn_call const&) =====
int __fastcall gameswf::as_date_gettime(gameswf *this, const gameswf::fn_call *a2)
{
  gameswf::as_date *v3; // r0
  gameswf::tu_timer *time; // r0
  gameswf::as_value *v5; // r4
  unsigned __int64 v6; // r2
  unsigned __int64 v7; // r0

  v3 = (gameswf::as_date *)gameswf::cast_to<gameswf::as_date>(*((_DWORD *)this + 1));
  time = (gameswf::tu_timer *)gameswf::as_date::get_time(v3);
  v5 = *(gameswf::as_value **)this;
  LODWORD(v7) = gameswf::tu_timer::get_time(time, v6);
  return gameswf::as_value::set_double(v5, (double)v7);
}


// ===== 79d6f8 gameswf::as_date_getdate(gameswf::fn_call const&) =====
int __fastcall gameswf::as_date_getdate(gameswf *this, const gameswf::fn_call *a2)
{
  gameswf::as_date *v3; // r0
  gameswf::tu_timer *time; // r0
  gameswf::as_value *v5; // r4
  unsigned __int64 v6; // r2
  double date; // r2

  v3 = (gameswf::as_date *)gameswf::cast_to<gameswf::as_date>(*((_DWORD *)this + 1));
  time = (gameswf::tu_timer *)gameswf::as_date::get_time(v3);
  v5 = *(gameswf::as_value **)this;
  date = (double)(int)gameswf::tu_timer::get_date(time, v6);
  return gameswf::as_value::set_double(v5, date);
}


// ===== 79d72c gameswf::as_date::~as_date() =====
void __fastcall gameswf::as_date::~as_date(gameswf::as_date *this)
{
  *(_DWORD *)this = off_990C68;
  gameswf::as_object::~as_object(this);
  LC_API_FREE_0(this);
}


// ===== 79d768 gameswf::as_date_getyear(gameswf::fn_call const&) =====
int __fastcall gameswf::as_date_getyear(gameswf *this, const gameswf::fn_call *a2)
{
  gameswf::as_date *v3; // r0
  gameswf::tu_timer *time; // r0
  gameswf::as_value *v5; // r4
  unsigned __int64 v6; // r2
  double year; // r2

  v3 = (gameswf::as_date *)gameswf::cast_to<gameswf::as_date>(*((_DWORD *)this + 1));
  time = (gameswf::tu_timer *)gameswf::as_date::get_time(v3);
  v5 = *(gameswf::as_value **)this;
  year = (double)(int)gameswf::tu_timer::get_year(time, v6);
  return gameswf::as_value::set_double(v5, year);
}


// ===== 79d79c gameswf::as_date_getseconds(gameswf::fn_call const&) =====
int __fastcall gameswf::as_date_getseconds(gameswf *this, const gameswf::fn_call *a2)
{
  gameswf::as_date *v3; // r0
  gameswf::tu_timer *time; // r0
  gameswf::as_value *v5; // r4
  unsigned __int64 v6; // r2
  double seconds; // r2

  v3 = (gameswf::as_date *)gameswf::cast_to<gameswf::as_date>(*((_DWORD *)this + 1));
  time = (gameswf::tu_timer *)gameswf::as_date::get_time(v3);
  v5 = *(gameswf::as_value **)this;
  seconds = (double)(int)gameswf::tu_timer::get_seconds(time, v6);
  return gameswf::as_value::set_double(v5, seconds);
}


// ===== 79d7d0 gameswf::as_date_getmonth(gameswf::fn_call const&) =====
int __fastcall gameswf::as_date_getmonth(gameswf *this, const gameswf::fn_call *a2)
{
  gameswf::as_date *v3; // r0
  gameswf::tu_timer *time; // r0
  gameswf::as_value *v5; // r4
  unsigned __int64 v6; // r2
  double month; // r2

  v3 = (gameswf::as_date *)gameswf::cast_to<gameswf::as_date>(*((_DWORD *)this + 1));
  time = (gameswf::tu_timer *)gameswf::as_date::get_time(v3);
  v5 = *(gameswf::as_value **)this;
  month = (double)(int)gameswf::tu_timer::get_month(time, v6);
  return gameswf::as_value::set_double(v5, month);
}


// ===== 79d804 gameswf::as_date_getminutes(gameswf::fn_call const&) =====
int __fastcall gameswf::as_date_getminutes(gameswf *this, const gameswf::fn_call *a2)
{
  gameswf::as_date *v3; // r0
  gameswf::tu_timer *time; // r0
  gameswf::as_value *v5; // r4
  unsigned __int64 v6; // r2
  double minutes; // r2

  v3 = (gameswf::as_date *)gameswf::cast_to<gameswf::as_date>(*((_DWORD *)this + 1));
  time = (gameswf::tu_timer *)gameswf::as_date::get_time(v3);
  v5 = *(gameswf::as_value **)this;
  minutes = (double)(int)gameswf::tu_timer::get_minutes(time, v6);
  return gameswf::as_value::set_double(v5, minutes);
}


// ===== 79d838 gameswf::as_date_getmilli(gameswf::fn_call const&) =====
int __fastcall gameswf::as_date_getmilli(gameswf *this, const gameswf::fn_call *a2)
{
  gameswf::as_date *v3; // r0
  gameswf::tu_timer *time; // r0
  gameswf::as_value *v5; // r4
  unsigned __int64 v6; // r2
  double milli; // r2

  v3 = (gameswf::as_date *)gameswf::cast_to<gameswf::as_date>(*((_DWORD *)this + 1));
  time = (gameswf::tu_timer *)gameswf::as_date::get_time(v3);
  v5 = *(gameswf::as_value **)this;
  milli = (double)(int)gameswf::tu_timer::get_milli(time, v6);
  return gameswf::as_value::set_double(v5, milli);
}


// ===== 79d86c gameswf::as_date_gethours(gameswf::fn_call const&) =====
int __fastcall gameswf::as_date_gethours(gameswf *this, const gameswf::fn_call *a2)
{
  gameswf::as_date *v3; // r0
  gameswf::tu_timer *time; // r0
  gameswf::as_value *v5; // r4
  unsigned __int64 v6; // r2
  double hours; // r2

  v3 = (gameswf::as_date *)gameswf::cast_to<gameswf::as_date>(*((_DWORD *)this + 1));
  time = (gameswf::tu_timer *)gameswf::as_date::get_time(v3);
  v5 = *(gameswf::as_value **)this;
  hours = (double)(int)gameswf::tu_timer::get_hours(time, v6);
  return gameswf::as_value::set_double(v5, hours);
}


// ===== 79d8a0 gameswf::as_date_getfullyear(gameswf::fn_call const&) =====
int __fastcall gameswf::as_date_getfullyear(gameswf *this, const gameswf::fn_call *a2)
{
  gameswf::as_date *v3; // r0
  gameswf::tu_timer *time; // r0
  gameswf::as_value *v5; // r4
  unsigned __int64 v6; // r2
  double fullyear; // r2

  v3 = (gameswf::as_date *)gameswf::cast_to<gameswf::as_date>(*((_DWORD *)this + 1));
  time = (gameswf::tu_timer *)gameswf::as_date::get_time(v3);
  v5 = *(gameswf::as_value **)this;
  fullyear = (double)(int)gameswf::tu_timer::get_fullyear(time, v6);
  return gameswf::as_value::set_double(v5, fullyear);
}


// ===== 79d8d4 gameswf::as_date_getday(gameswf::fn_call const&) =====
int __fastcall gameswf::as_date_getday(gameswf *this, const gameswf::fn_call *a2)
{
  gameswf::as_date *v3; // r0
  gameswf::tu_timer *time; // r0
  gameswf::as_value *v5; // r4
  unsigned __int64 v6; // r2
  double day; // r2

  v3 = (gameswf::as_date *)gameswf::cast_to<gameswf::as_date>(*((_DWORD *)this + 1));
  time = (gameswf::tu_timer *)gameswf::as_date::get_time(v3);
  v5 = *(gameswf::as_value **)this;
  day = (double)(int)gameswf::tu_timer::get_day(time, v6);
  return gameswf::as_value::set_double(v5, day);
}


// ===== 79d908 gameswf::as_date::as_date(gameswf::fn_call const&) =====
gameswf::as_date *__fastcall gameswf::as_date::as_date(gameswf::as_date *this, const gameswf::fn_call *a2)
{
  int v2; // r8
  gameswf::as_object *v5; // r0
  __int64 v6; // r0
  _BYTE v8[12]; // [sp+4h] [bp-144h] BYREF
  _BYTE v9[12]; // [sp+10h] [bp-138h] BYREF
  _BYTE v10[12]; // [sp+1Ch] [bp-12Ch] BYREF
  _BYTE v11[12]; // [sp+28h] [bp-120h] BYREF
  _BYTE v12[12]; // [sp+34h] [bp-114h] BYREF
  _BYTE v13[12]; // [sp+40h] [bp-108h] BYREF
  _BYTE v14[12]; // [sp+4Ch] [bp-FCh] BYREF
  _BYTE v15[12]; // [sp+58h] [bp-F0h] BYREF
  _BYTE v16[12]; // [sp+64h] [bp-E4h] BYREF
  _BYTE v17[12]; // [sp+70h] [bp-D8h] BYREF
  _BYTE v18[8]; // [sp+7Ch] [bp-CCh] BYREF
  void *v19; // [sp+88h] [bp-C0h]
  _BYTE v20[8]; // [sp+90h] [bp-B8h] BYREF
  void *v21; // [sp+9Ch] [bp-ACh]
  _BYTE v22[8]; // [sp+A4h] [bp-A4h] BYREF
  void *v23; // [sp+B0h] [bp-98h]
  _BYTE v24[8]; // [sp+B8h] [bp-90h] BYREF
  void *v25; // [sp+C4h] [bp-84h]
  _BYTE v26[8]; // [sp+CCh] [bp-7Ch] BYREF
  void *v27; // [sp+D8h] [bp-70h]
  _BYTE v28[8]; // [sp+E0h] [bp-68h] BYREF
  void *v29; // [sp+ECh] [bp-5Ch]
  _BYTE v30[8]; // [sp+F4h] [bp-54h] BYREF
  void *v31; // [sp+100h] [bp-48h]
  _BYTE v32[8]; // [sp+108h] [bp-40h] BYREF
  void *v33; // [sp+114h] [bp-34h]
  _BYTE v34[8]; // [sp+11Ch] [bp-2Ch] BYREF
  void *v35; // [sp+128h] [bp-20h]
  _BYTE v36[8]; // [sp+130h] [bp-18h] BYREF
  void *p; // [sp+13Ch] [bp-Ch]

  v2 = *((_DWORD *)a2 + 3);
  gameswf::weak_ptr<gameswf::player>::check_proxy(v2 + 100);
  v5 = gameswf::as_object::as_object(this, *(gameswf::player **)(v2 + 104));
  *(_DWORD *)this = off_990C68;
  LODWORD(v6) = gameswf::tu_timer::get_systime(v5);
  *((_QWORD *)this + 7) = v6;
  if ( *((int *)a2 + 4) > 0 )
    gameswf::log_error("Additional parameters are not supported yet\n", (const char *)HIDWORD(v6));
  gameswf::tu_string::tu_string((gameswf::tu_string *)v36, "getDate");
  v17[1] = 0;
  v17[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v17,
    (void (*)(const gameswf::fn_call *))gameswf::as_date_getdate);
  gameswf::as_object::builtin_member((int)this, (int)v36, v17);
  gameswf::as_value::drop_refs((gameswf::as_value *)v17);
  if ( v36[0] == -1 )
    gameswf::free_internal(p);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v34, "getDay");
  v16[1] = 0;
  v16[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v16,
    (void (*)(const gameswf::fn_call *))gameswf::as_date_getday);
  gameswf::as_object::builtin_member((int)this, (int)v34, v16);
  gameswf::as_value::drop_refs((gameswf::as_value *)v16);
  if ( v34[0] == -1 )
    gameswf::free_internal(v35);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v32, "getFullYear");
  v15[1] = 0;
  v15[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v15,
    (void (*)(const gameswf::fn_call *))gameswf::as_date_getfullyear);
  gameswf::as_object::builtin_member((int)this, (int)v32, v15);
  gameswf::as_value::drop_refs((gameswf::as_value *)v15);
  if ( v32[0] == -1 )
    gameswf::free_internal(v33);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v30, "getHours");
  v14[1] = 0;
  v14[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v14,
    (void (*)(const gameswf::fn_call *))gameswf::as_date_gethours);
  gameswf::as_object::builtin_member((int)this, (int)v30, v14);
  gameswf::as_value::drop_refs((gameswf::as_value *)v14);
  if ( v30[0] == -1 )
    gameswf::free_internal(v31);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v28, "getMilliseconds");
  v13[1] = 0;
  v13[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v13,
    (void (*)(const gameswf::fn_call *))gameswf::as_date_getmilli);
  gameswf::as_object::builtin_member((int)this, (int)v28, v13);
  gameswf::as_value::drop_refs((gameswf::as_value *)v13);
  if ( v28[0] == -1 )
    gameswf::free_internal(v29);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v26, "getMinutes");
  v12[1] = 0;
  v12[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v12,
    (void (*)(const gameswf::fn_call *))gameswf::as_date_getminutes);
  gameswf::as_object::builtin_member((int)this, (int)v26, v12);
  gameswf::as_value::drop_refs((gameswf::as_value *)v12);
  if ( v26[0] == -1 )
    gameswf::free_internal(v27);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v24, "getMonth");
  v11[1] = 0;
  v11[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v11,
    (void (*)(const gameswf::fn_call *))gameswf::as_date_getmonth);
  gameswf::as_object::builtin_member((int)this, (int)v24, v11);
  gameswf::as_value::drop_refs((gameswf::as_value *)v11);
  if ( v24[0] == -1 )
    gameswf::free_internal(v25);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v22, "getSeconds");
  v10[1] = 0;
  v10[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v10,
    (void (*)(const gameswf::fn_call *))gameswf::as_date_getseconds);
  gameswf::as_object::builtin_member((int)this, (int)v22, v10);
  gameswf::as_value::drop_refs((gameswf::as_value *)v10);
  if ( v22[0] == -1 )
    gameswf::free_internal(v23);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v20, "getTime");
  v9[1] = 0;
  v9[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v9,
    (void (*)(const gameswf::fn_call *))gameswf::as_date_gettime);
  gameswf::as_object::builtin_member((int)this, (int)v20, v9);
  gameswf::as_value::drop_refs((gameswf::as_value *)v9);
  if ( v20[0] == -1 )
    gameswf::free_internal(v21);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v18, "getYear");
  v8[1] = 0;
  v8[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v8,
    (void (*)(const gameswf::fn_call *))gameswf::as_date_getyear);
  gameswf::as_object::builtin_member((int)this, (int)v18, v8);
  gameswf::as_value::drop_refs((gameswf::as_value *)v8);
  if ( v18[0] == -1 )
    gameswf::free_internal(v19);
  return this;
}


// ===== 79de18 gameswf::as_global_date_ctor(gameswf::fn_call const&) =====
void __fastcall gameswf::as_global_date_ctor(gameswf *this, const gameswf::fn_call *a2)
{
  gameswf::as_date *v3; // r4

  v3 = (gameswf::as_date *)operator new(0x40u, 0);
  gameswf::as_date::as_date(v3, this);
  if ( v3 )
  {
    gameswf::ref_counted::add_ref((int)v3);
    gameswf::as_value::set_as_object(*(gameswf::as_value **)this, v3);
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v3);
  }
  else
  {
    gameswf::as_value::set_as_object(*(gameswf::as_value **)this, nullptr);
  }
}


// ===== 79de70 gameswf::as_date::as_date(gameswf::fn_call const&) =====
gameswf::as_date *__fastcall gameswf::as_date::as_date(gameswf::as_date *this, const gameswf::fn_call *a2)
{
  int v2; // r8
  gameswf::as_object *v5; // r0
  __int64 v6; // r0
  _BYTE v8[12]; // [sp+4h] [bp-144h] BYREF
  _BYTE v9[12]; // [sp+10h] [bp-138h] BYREF
  _BYTE v10[12]; // [sp+1Ch] [bp-12Ch] BYREF
  _BYTE v11[12]; // [sp+28h] [bp-120h] BYREF
  _BYTE v12[12]; // [sp+34h] [bp-114h] BYREF
  _BYTE v13[12]; // [sp+40h] [bp-108h] BYREF
  _BYTE v14[12]; // [sp+4Ch] [bp-FCh] BYREF
  _BYTE v15[12]; // [sp+58h] [bp-F0h] BYREF
  _BYTE v16[12]; // [sp+64h] [bp-E4h] BYREF
  _BYTE v17[12]; // [sp+70h] [bp-D8h] BYREF
  _BYTE v18[8]; // [sp+7Ch] [bp-CCh] BYREF
  void *v19; // [sp+88h] [bp-C0h]
  _BYTE v20[8]; // [sp+90h] [bp-B8h] BYREF
  void *v21; // [sp+9Ch] [bp-ACh]
  _BYTE v22[8]; // [sp+A4h] [bp-A4h] BYREF
  void *v23; // [sp+B0h] [bp-98h]
  _BYTE v24[8]; // [sp+B8h] [bp-90h] BYREF
  void *v25; // [sp+C4h] [bp-84h]
  _BYTE v26[8]; // [sp+CCh] [bp-7Ch] BYREF
  void *v27; // [sp+D8h] [bp-70h]
  _BYTE v28[8]; // [sp+E0h] [bp-68h] BYREF
  void *v29; // [sp+ECh] [bp-5Ch]
  _BYTE v30[8]; // [sp+F4h] [bp-54h] BYREF
  void *v31; // [sp+100h] [bp-48h]
  _BYTE v32[8]; // [sp+108h] [bp-40h] BYREF
  void *v33; // [sp+114h] [bp-34h]
  _BYTE v34[8]; // [sp+11Ch] [bp-2Ch] BYREF
  void *v35; // [sp+128h] [bp-20h]
  _BYTE v36[8]; // [sp+130h] [bp-18h] BYREF
  void *p; // [sp+13Ch] [bp-Ch]

  v2 = *((_DWORD *)a2 + 3);
  gameswf::weak_ptr<gameswf::player>::check_proxy(v2 + 100);
  v5 = gameswf::as_object::as_object(this, *(gameswf::player **)(v2 + 104));
  *(_DWORD *)this = off_990C68;
  LODWORD(v6) = gameswf::tu_timer::get_systime(v5);
  *((_QWORD *)this + 7) = v6;
  if ( *((int *)a2 + 4) > 0 )
    gameswf::log_error("Additional parameters are not supported yet\n", (const char *)HIDWORD(v6));
  gameswf::tu_string::tu_string((gameswf::tu_string *)v36, "getDate");
  v17[1] = 0;
  v17[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v17,
    (void (*)(const gameswf::fn_call *))gameswf::as_date_getdate);
  gameswf::as_object::builtin_member((int)this, (int)v36, v17);
  gameswf::as_value::drop_refs((gameswf::as_value *)v17);
  if ( v36[0] == -1 )
    gameswf::free_internal(p);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v34, "getDay");
  v16[1] = 0;
  v16[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v16,
    (void (*)(const gameswf::fn_call *))gameswf::as_date_getday);
  gameswf::as_object::builtin_member((int)this, (int)v34, v16);
  gameswf::as_value::drop_refs((gameswf::as_value *)v16);
  if ( v34[0] == -1 )
    gameswf::free_internal(v35);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v32, "getFullYear");
  v15[1] = 0;
  v15[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v15,
    (void (*)(const gameswf::fn_call *))gameswf::as_date_getfullyear);
  gameswf::as_object::builtin_member((int)this, (int)v32, v15);
  gameswf::as_value::drop_refs((gameswf::as_value *)v15);
  if ( v32[0] == -1 )
    gameswf::free_internal(v33);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v30, "getHours");
  v14[1] = 0;
  v14[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v14,
    (void (*)(const gameswf::fn_call *))gameswf::as_date_gethours);
  gameswf::as_object::builtin_member((int)this, (int)v30, v14);
  gameswf::as_value::drop_refs((gameswf::as_value *)v14);
  if ( v30[0] == -1 )
    gameswf::free_internal(v31);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v28, "getMilliseconds");
  v13[1] = 0;
  v13[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v13,
    (void (*)(const gameswf::fn_call *))gameswf::as_date_getmilli);
  gameswf::as_object::builtin_member((int)this, (int)v28, v13);
  gameswf::as_value::drop_refs((gameswf::as_value *)v13);
  if ( v28[0] == -1 )
    gameswf::free_internal(v29);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v26, "getMinutes");
  v12[1] = 0;
  v12[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v12,
    (void (*)(const gameswf::fn_call *))gameswf::as_date_getminutes);
  gameswf::as_object::builtin_member((int)this, (int)v26, v12);
  gameswf::as_value::drop_refs((gameswf::as_value *)v12);
  if ( v26[0] == -1 )
    gameswf::free_internal(v27);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v24, "getMonth");
  v11[1] = 0;
  v11[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v11,
    (void (*)(const gameswf::fn_call *))gameswf::as_date_getmonth);
  gameswf::as_object::builtin_member((int)this, (int)v24, v11);
  gameswf::as_value::drop_refs((gameswf::as_value *)v11);
  if ( v24[0] == -1 )
    gameswf::free_internal(v25);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v22, "getSeconds");
  v10[1] = 0;
  v10[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v10,
    (void (*)(const gameswf::fn_call *))gameswf::as_date_getseconds);
  gameswf::as_object::builtin_member((int)this, (int)v22, v10);
  gameswf::as_value::drop_refs((gameswf::as_value *)v10);
  if ( v22[0] == -1 )
    gameswf::free_internal(v23);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v20, "getTime");
  v9[1] = 0;
  v9[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v9,
    (void (*)(const gameswf::fn_call *))gameswf::as_date_gettime);
  gameswf::as_object::builtin_member((int)this, (int)v20, v9);
  gameswf::as_value::drop_refs((gameswf::as_value *)v9);
  if ( v20[0] == -1 )
    gameswf::free_internal(v21);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v18, "getYear");
  v8[1] = 0;
  v8[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v8,
    (void (*)(const gameswf::fn_call *))gameswf::as_date_getyear);
  gameswf::as_object::builtin_member((int)this, (int)v18, v8);
  gameswf::as_value::drop_refs((gameswf::as_value *)v8);
  if ( v18[0] == -1 )
    gameswf::free_internal(v19);
  return this;
}


// ===== 79e380 gameswf::flash_init(gameswf::player *) =====
gameswf::as_object *__fastcall gameswf::flash_init(gameswf *this, gameswf::player *a2)
{
  gameswf::as_object *v3; // r5
  gameswf::player *v4; // r1
  int v5; // r0
  gameswf::player *v6; // r1
  int v7; // r0
  _BYTE v9[4]; // [sp+4h] [bp-48h] BYREF
  int v10; // [sp+8h] [bp-44h]
  _BYTE v11[4]; // [sp+10h] [bp-3Ch] BYREF
  int v12; // [sp+14h] [bp-38h]
  _BYTE v13[8]; // [sp+1Ch] [bp-30h] BYREF
  void *p; // [sp+28h] [bp-24h]
  _BYTE v15[8]; // [sp+30h] [bp-1Ch] BYREF
  void *v16; // [sp+3Ch] [bp-10h]

  v3 = (gameswf::as_object *)operator new(0x38u, 0);
  gameswf::as_object::as_object(v3, this);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v15, "geom");
  v5 = gameswf::geom_init(this, v4);
  v11[0] = 0;
  v11[1] = 5;
  v12 = v5;
  if ( v5 )
    gameswf::ref_counted::add_ref(v5);
  gameswf::as_object::builtin_member((int)v3, (int)v15, v11);
  gameswf::as_value::drop_refs((gameswf::as_value *)v11);
  if ( v15[0] == -1 )
    gameswf::free_internal(v16);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v13, "Events");
  v7 = gameswf::event_init(this, v6);
  v9[0] = 0;
  v9[1] = 5;
  v10 = v7;
  if ( v7 )
    gameswf::ref_counted::add_ref(v7);
  gameswf::as_object::builtin_member((int)v3, (int)v13, v9);
  gameswf::as_value::drop_refs((gameswf::as_value *)v9);
  if ( v13[0] == -1 )
    gameswf::free_internal(p);
  return v3;
}


// ===== 79e4d8 gameswf::geom_init(gameswf::player *) =====
gameswf::as_object *__fastcall gameswf::geom_init(gameswf *this, gameswf::player *a2)
{
  gameswf::as_object *v3; // r5
  _BYTE v5[12]; // [sp+4h] [bp-88h] BYREF
  _BYTE v6[12]; // [sp+10h] [bp-7Ch] BYREF
  _BYTE v7[12]; // [sp+1Ch] [bp-70h] BYREF
  _BYTE v8[12]; // [sp+28h] [bp-64h] BYREF
  _BYTE v9[8]; // [sp+34h] [bp-58h] BYREF
  void *p; // [sp+40h] [bp-4Ch]
  _BYTE v11[8]; // [sp+48h] [bp-44h] BYREF
  void *v12; // [sp+54h] [bp-38h]
  _BYTE v13[8]; // [sp+5Ch] [bp-30h] BYREF
  void *v14; // [sp+68h] [bp-24h]
  _BYTE v15[8]; // [sp+70h] [bp-1Ch] BYREF
  void *v16; // [sp+7Ch] [bp-10h]

  v3 = (gameswf::as_object *)operator new(0x38u, 0);
  gameswf::as_object::as_object(v3, this);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v15, "Point");
  v8[1] = 0;
  v8[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v8,
    (void (*)(const gameswf::fn_call *))gameswf::as_global_point_ctor);
  gameswf::as_object::builtin_member((int)v3, (int)v15, v8);
  gameswf::as_value::drop_refs((gameswf::as_value *)v8);
  if ( v15[0] == -1 )
    gameswf::free_internal(v16);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v13, "Matrix");
  v7[1] = 0;
  v7[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v7,
    (void (*)(const gameswf::fn_call *))gameswf::as_global_matrix_ctor);
  gameswf::as_object::builtin_member((int)v3, (int)v13, v7);
  gameswf::as_value::drop_refs((gameswf::as_value *)v7);
  if ( v13[0] == -1 )
    gameswf::free_internal(v14);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v11, "Transform");
  v6[1] = 0;
  v6[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v6,
    (void (*)(const gameswf::fn_call *))gameswf::as_global_transform_ctor);
  gameswf::as_object::builtin_member((int)v3, (int)v11, v6);
  gameswf::as_value::drop_refs((gameswf::as_value *)v6);
  if ( v11[0] == -1 )
    gameswf::free_internal(v12);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v9, "ColorTransform");
  v5[1] = 0;
  v5[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v5,
    (void (*)(const gameswf::fn_call *))gameswf::as_global_color_transform_ctor);
  gameswf::as_object::builtin_member((int)v3, (int)v9, v5);
  gameswf::as_value::drop_refs((gameswf::as_value *)v5);
  if ( v9[0] == -1 )
    gameswf::free_internal(p);
  return v3;
}


// ===== 79e700 gameswf::as_global_get_active_controller(gameswf::fn_call const&) =====
int __fastcall gameswf::as_global_get_active_controller(gameswf *this, const gameswf::fn_call *a2)
{
  int v2; // r5
  gameswf::as_value *v3; // r4
  double v4; // r2

  v2 = *((_DWORD *)this + 3);
  v3 = *(gameswf::as_value **)this;
  gameswf::weak_ptr<gameswf::player>::check_proxy(v2 + 100);
  v4 = (double)*(int *)(gameswf::player::get_root(*(gameswf::player **)(v2 + 104)) + 80);
  return gameswf::as_value::set_double(v3, v4);
}


// ===== 79e738 gameswf::as_global_clearinterval(gameswf::fn_call const&) =====
int __fastcall gameswf::as_global_clearinterval(int this, const gameswf::fn_call *a2)
{
  int v2; // r3
  gameswf::as_timer *v3; // r4

  if ( *(_DWORD *)(this + 16) == 1 )
  {
    v2 = **(_DWORD **)(this + 12) + 12 * *(_DWORD *)(this + 20);
    if ( *(_BYTE *)(v2 + 1) == 5 )
    {
      v3 = *(gameswf::as_timer **)(v2 + 4);
      if ( v3 )
      {
        this = (*(int (__fastcall **)(gameswf::as_timer *, int))(*(_DWORD *)v3 + 8))(v3, 37);
        if ( this )
          return gameswf::as_timer::clear(v3);
      }
    }
  }
  return this;
}


// ===== 79e7a0 gameswf::as_global_assetpropflags(gameswf::fn_call const&) =====
void __fastcall gameswf::as_global_assetpropflags(gameswf *this, const gameswf::fn_call *a2)
{
  int v2; // r5
  int root; // r0
  int v5; // r0
  int v6; // r2
  int v7; // r3
  int v8; // r7
  int v9; // r0
  int v10; // r11
  int v11; // r1
  const char *v12; // r2
  int v13; // r6
  int v14; // r0
  int v15; // r1
  const char *v16; // r2
  int v17; // r9
  int v18; // r0
  int v19; // r3
  int *v20; // r11
  int v21; // r1
  int i; // r2
  char v23; // r0
  int v24; // r3
  int v25; // r1
  int v26; // r12
  int v27; // r12
  int v28; // r3
  int *v29; // r6
  int j; // r4
  int v31; // r2
  int *v32; // r11
  int v33; // r3
  int v34; // r5
  int v35; // r2
  char *v36; // r0
  int index; // r0
  int v38; // r7
  int *v39; // r8
  int v40; // r3
  int v41; // r1
  int v42; // r1
  char v43; // [sp+Ch] [bp-20h]
  void *v44[5]; // [sp+10h] [bp-1Ch] BYREF

  v2 = *((_DWORD *)this + 3);
  gameswf::weak_ptr<gameswf::player>::check_proxy(v2 + 100);
  root = gameswf::player::get_root(*(gameswf::player **)(v2 + 104));
  v5 = (*(int (__fastcall **)(int))(*(_DWORD *)root + 76))(root);
  v6 = *((_DWORD *)this + 5);
  v7 = **((_DWORD **)this + 3);
  v8 = v5;
  v9 = v7 + (_DWORD)&byte_9[3] * v6;
  if ( *(_BYTE *)(v9 + 1) != 5 || (v10 = *(_DWORD *)(v9 + 4)) == 0 )
  {
    gameswf::log_error("error: assetpropflags for NULL object\n", &byte_9[3]);
    return;
  }
  v11 = v7 + (_DWORD)&byte_9[3] * (v6 - 1);
  v12 = (const char *)(v6 - 2);
  if ( *(_BYTE *)(v11 + 1) == 5 )
    v13 = *(_DWORD *)(v11 + 4);
  else
    v13 = 0;
  v14 = (int)COERCE_DOUBLE(gameswf::as_value::to_number((gameswf::as_value *)(v7 + 12 * (_DWORD)v12), v11, v12));
  v17 = v14 & 7;
  if ( *((_DWORD *)this + 4) == 3 )
  {
    if ( v8 == 5 )
      v18 = 7;
    else
      v18 = 0;
    if ( !(v18 | v17) )
    {
      LOBYTE(v18) = 0;
      LOBYTE(v17) = 1;
LABEL_15:
      v19 = *(_DWORD *)(v10 + 12);
      v20 = (int *)(v10 + 12);
      if ( v19 )
      {
        v21 = *(_DWORD *)(v19 + 4);
        if ( v21 >= 0 )
        {
          v27 = 8;
          for ( i = 0; i <= v21; ++i )
          {
            if ( *(_DWORD *)(v19 + v27) != -2 && *(_DWORD *)(v19 + v27 + 4) != -1 )
              break;
            v27 += 40;
          }
        }
        else
        {
          i = 0;
        }
        if ( v20 )
        {
          v23 = ~(_BYTE)v18;
          v24 = *v20;
          while ( v24 && i <= *(_DWORD *)(v24 + 4) )
          {
            *(_BYTE *)(v24 + 8 * (5 * i + 1) + 28) = v23 & *(_BYTE *)(v24 + 8 * (5 * i + 1) + 28) | v17;
            v24 = *v20;
            v25 = *(_DWORD *)(*v20 + 4);
            if ( v25 >= i && ++i <= v25 )
            {
              v26 = 8 * (5 * i + 1);
              do
              {
                if ( *(_DWORD *)(v24 + v26) != -2 && *(_DWORD *)(v24 + v26 + 4) != -1 )
                  break;
                ++i;
                v26 += 40;
              }
              while ( i <= v25 );
            }
          }
        }
      }
      return;
    }
  }
  else
  {
    v18 = (int)COERCE_DOUBLE(
                 gameswf::as_value::to_number(
                   (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 3)),
                   v15,
                   v16))
        & 7;
    if ( !(v18 | v17) )
    {
      LOBYTE(v18) = 0;
      LOBYTE(v17) = 1;
      goto LABEL_15;
    }
  }
  if ( !v13 )
    goto LABEL_15;
  v28 = *(_DWORD *)(v13 + 12);
  v29 = (int *)(v13 + 12);
  if ( v28 )
  {
    v31 = *(_DWORD *)(v28 + 4);
    if ( v31 >= 0 )
    {
      v41 = 8;
      for ( j = 0; j <= v31; ++j )
      {
        if ( *(_DWORD *)(v28 + v41) != -2 && *(_DWORD *)(v28 + v41 + 4) != -1 )
          break;
        v41 += 40;
      }
    }
    else
    {
      j = 0;
    }
  }
  else
  {
    v29 = nullptr;
    j = 0;
  }
  v32 = (int *)(v10 + 12);
  if ( v29 )
  {
    v43 = ~(_BYTE)v18;
    v33 = *v29;
LABEL_46:
    v34 = 8 * (5 * j + 1);
    while ( v33 )
    {
      v35 = *(_DWORD *)(v33 + 4);
      if ( j > v35 )
        break;
      if ( (unsigned __int8)(*(_BYTE *)(v33 + v34 + 29) - 3) <= 1u )
      {
        v36 = gameswf::as_value::to_tu_string((gameswf::as_value *)(v33 + v34 + 28));
        gameswf::tu_string::tu_string((gameswf::tu_string *)v44, (const gameswf::tu_string *)v36);
        index = gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::find_index(
                  v32,
                  v44);
        v38 = index;
        if ( index >= 0 )
          v39 = v32;
        else
          v39 = nullptr;
        if ( index < 0 )
          v38 = (int)v39;
        if ( SLOBYTE(v44[0]) == -1 )
          gameswf::free_internal(v44[3]);
        if ( v39 )
        {
          v40 = *v39;
          if ( *v39 )
          {
            if ( v38 <= *(_DWORD *)(v40 + 4) )
              *(_BYTE *)(v40 + 8 * (5 * v38 + 1) + 28) = v43 & *(_BYTE *)(v40 + 8 * (5 * v38 + 1) + 28) | v17;
          }
        }
        v33 = *v29;
        v35 = *(_DWORD *)(*v29 + 4);
        if ( v35 < j )
          continue;
      }
      if ( ++j <= v35 )
      {
        v42 = 8 * (5 * j + 1);
        do
        {
          if ( *(_DWORD *)(v33 + v42) != -2 && *(_DWORD *)(v33 + v42 + 4) != -1 )
            break;
          ++j;
          v42 += 40;
        }
        while ( v35 >= j );
      }
      goto LABEL_46;
    }
  }
}


// ===== 79eb7c gameswf::as_global_get_version(gameswf::fn_call const&) =====
void __fastcall gameswf::as_global_get_version(gameswf::as_value **this, const gameswf::fn_call *a2)
{
  gameswf::as_value *v2; // r7
  const char *gameswf_version; // r0
  _BYTE v4[8]; // [sp+0h] [bp-1Ch] BYREF
  void *p; // [sp+Ch] [bp-10h]

  v2 = *this;
  gameswf_version = (const char *)gameswf::get_gameswf_version((gameswf *)this);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v4, gameswf_version);
  gameswf::as_value::set_tu_string(v2, (const gameswf::tu_string *)v4);
  if ( v4[0] == -1 )
    gameswf::free_internal(p);
}


// ===== 79ec04 gameswf::as_global_trace(gameswf::fn_call const&) =====
void __fastcall gameswf::as_global_trace(gameswf *this, const gameswf::fn_call *a2)
{
  _DWORD *v2; // r12
  char v3; // r1
  char *v4; // r0
  _BYTE v5[8]; // [sp+0h] [bp-1Ch] BYREF
  void *p; // [sp+Ch] [bp-10h]
  unsigned int v7; // [sp+10h] [bp-Ch]

  v2 = *((_DWORD **)this + 3);
  v3 = ((v7 & 0xFF000000 | 0xFFFFFF) >> 24) & 0xFE;
  v5[0] = 1;
  v7 = v7 & 0xFF000000 | 0xFFFFFF;
  v5[1] = 0;
  HIBYTE(v7) = v3;
  v4 = gameswf::as_value::to_string((gameswf::as_value *)(*v2 + 12 * *((_DWORD *)this + 5)), (gameswf::tu_string *)v5);
  if ( *v4 == -1 )
    gameswf::log_msg("%s\n", *((const char **)v4 + 3));
  else
    gameswf::log_msg("%s\n", v4 + 1);
  if ( v5[0] == -1 )
    gameswf::free_internal(p);
}


// ===== 79ecd0 gameswf::as_global_setinterval(gameswf::fn_call const&) =====
void __fastcall gameswf::as_global_setinterval(gameswf *this, const gameswf::fn_call *a2)
{
  _DWORD *v2; // r2
  int is_function; // r11
  int v5; // r10
  gameswf::as_object *v6; // r1
  int v7; // r3
  int v8; // r1
  char *v9; // r0
  int v10; // r1
  int v11; // r1
  const char *v12; // r2
  void (__fastcall *v13)(int, _BYTE *, _BYTE *); // [sp+14h] [bp-58h]
  gameswf::as_timer *v14; // [sp+14h] [bp-58h]
  __int64 v15; // [sp+18h] [bp-54h]
  _BYTE v16[12]; // [sp+20h] [bp-4Ch] BYREF
  _BYTE v17[12]; // [sp+2Ch] [bp-40h] BYREF
  _BYTE v18[12]; // [sp+38h] [bp-34h] BYREF
  char v19; // [sp+44h] [bp-28h] BYREF
  char v20; // [sp+45h] [bp-27h]
  int v21; // [sp+48h] [bp-24h]
  _BYTE v22[8]; // [sp+50h] [bp-1Ch] BYREF
  void *p; // [sp+5Ch] [bp-10h]

  v2 = *((_DWORD **)this + 3);
  v18[1] = 0;
  v19 = 0;
  v20 = 0;
  v18[0] = 0;
  is_function = gameswf::as_value::is_function((gameswf::as_value *)(*v2 + 12 * *((_DWORD *)this + 5)));
  if ( is_function )
  {
    v5 = 1;
    gameswf::as_value::operator=((gameswf::as_value *)v18, **((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5));
  }
  else
  {
    gameswf::as_value::operator=((gameswf::as_value *)&v19, **((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5));
    v7 = **((_DWORD **)this + 3);
    v8 = *((_DWORD *)this + 5) - 1;
    v17[0] = 0;
    v17[1] = 0;
    gameswf::as_value::operator=((gameswf::as_value *)v17, v7 + 12 * v8);
    if ( v20 == 5 )
      is_function = v21;
    v13 = *(void (__fastcall **)(int, _BYTE *, _BYTE *))(*(_DWORD *)is_function + 32);
    v9 = gameswf::as_value::to_tu_string((gameswf::as_value *)v17);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v22, (const gameswf::tu_string *)v9);
    v13(is_function, v22, v18);
    if ( v22[0] == -1 )
      gameswf::free_internal(p);
    gameswf::as_value::drop_refs((gameswf::as_value *)v17);
    v5 = 2;
  }
  if ( gameswf::as_value::is_function((gameswf::as_value *)v18) && *((_DWORD *)this + 4) > v5 )
  {
    v10 = **((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - v5);
    v16[0] = 0;
    v16[1] = 0;
    gameswf::as_value::operator=((gameswf::as_value *)v16, v10);
    v15 = gameswf::as_value::to_number((gameswf::as_value *)v16, v11, v12);
    v14 = (gameswf::as_timer *)operator new(0x68u, 0);
    gameswf::as_timer::as_timer(v14, (gameswf::as_value *)&v19, (gameswf::as_value *)v18, *(double *)&v15, this, v5 + 1);
    gameswf::as_value::drop_refs((gameswf::as_value *)v16);
    v6 = v14;
  }
  else
  {
    v6 = nullptr;
  }
  gameswf::as_value::set_as_object(*(gameswf::as_value **)this, v6);
  gameswf::as_value::drop_refs((gameswf::as_value *)v18);
  gameswf::as_value::drop_refs((gameswf::as_value *)&v19);
}


// ===== 79eee4 gameswf::as_key::is(int) =====
bool __fastcall gameswf::as_key::is(gameswf::as_key *this, int a2)
{
  return a2 == 15 || a2 == 0;
}


// ===== 79eefc gameswf::as_key::is_key_down(int) =====
bool __fastcall gameswf::as_key::is_key_down(gameswf::as_key *this, int a2)
{
  return (unsigned int)a2 <= 0xDE && (*((unsigned __int8 *)this + (a2 >> 3) + 56) & (1 << (a2 - 8 * (a2 >> 3)))) != 0;
}


// ===== 79ef2c gameswf::as_key::get_last_key_pressed(void) =====
int __fastcall gameswf::as_key::get_last_key_pressed(gameswf::as_key *this)
{
  return *((_DWORD *)this + 21);
}


// ===== 79ef34 gameswf::cast_to<gameswf::as_key>(gameswf::as_object_interface *) =====
int __fastcall gameswf::cast_to<gameswf::as_key>(int a1)
{
  if ( a1 && (*(int (__fastcall **)(int, int))(*(_DWORD *)a1 + 8))(a1, 15) )
    return a1;
  else
    return 0;
}


// ===== 79ef68 gameswf::as_key::set_key_up(int) =====
void __fastcall gameswf::as_key::set_key_up(gameswf::as_key *this, int a2)
{
  _BYTE v2[2]; // [sp+0h] [bp-Ch] BYREF
  __int16 v3; // [sp+2h] [bp-Ah]
  int v4; // [sp+4h] [bp-8h]

  if ( (unsigned int)a2 <= 0xDE )
  {
    *((_DWORD *)this + 21) = a2;
    *((_BYTE *)this + (a2 >> 3) + 56) &= ~(1 << (a2 - 8 * (a2 >> 3)));
    v2[0] = 17;
    v4 = 0;
    v2[1] = 0;
    v3 = 0;
    gameswf::listener::notify((_DWORD *)this + 22, (int)v2);
  }
}


// ===== 79efc4 gameswf::as_key::set_key_down(int) =====
void __fastcall gameswf::as_key::set_key_down(gameswf::as_key *this, int a2)
{
  _BYTE v2[2]; // [sp+0h] [bp-Ch] BYREF
  __int16 v3; // [sp+2h] [bp-Ah]
  int v4; // [sp+4h] [bp-8h]

  if ( (unsigned int)a2 <= 0xDE )
  {
    *((_DWORD *)this + 21) = a2;
    *((_BYTE *)this + (a2 >> 3) + 56) |= 1 << (a2 - 8 * (a2 >> 3));
    v2[0] = 16;
    v4 = 0;
    v2[1] = 0;
    v3 = 0;
    gameswf::listener::notify((_DWORD *)this + 22, (int)v2);
  }
}


// ===== 79f020 gameswf::as_key::as_key(gameswf::player *) =====
gameswf::as_key *__fastcall gameswf::as_key::as_key(gameswf::as_key *this, gameswf::player *a2)
{
  gameswf::as_object::as_object(this, a2);
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *(_DWORD *)this = off_990CD8;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_BYTE *)this + 100) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  return this;
}


// ===== 79f088 gameswf::as_key::as_key(gameswf::player *) =====
gameswf::as_key *__fastcall gameswf::as_key::as_key(gameswf::as_key *this, gameswf::player *a2)
{
  gameswf::as_object::as_object(this, a2);
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 21) = 0;
  *(_DWORD *)this = off_990CD8;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_BYTE *)this + 100) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  return this;
}


// ===== 79f0f0 gameswf::key_is_toggled(gameswf::fn_call const&) =====
void __fastcall gameswf::key_is_toggled(gameswf::as_value **this, const gameswf::fn_call *a2)
{
  gameswf::as_value::set_bool(*this, 0);
}


// ===== 79f0fc gameswf::key_is_down(gameswf::fn_call const&) =====
void __fastcall gameswf::key_is_down(gameswf *this, const gameswf::fn_call *a2)
{
  double v3; // r6
  gameswf::as_key *v4; // r0
  gameswf::as_value *v5; // r4
  bool is_key_down; // r1

  if ( *((int *)this + 4) <= 0 )
  {
    gameswf::log_error("key_is_down needs one argument (the key code)\n", (const char *)a2);
  }
  else
  {
    v3 = COERCE_DOUBLE(
           gameswf::as_value::to_number(
             (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
             (int)a2,
             (const char *)*((_DWORD *)this + 5)));
    v4 = (gameswf::as_key *)gameswf::cast_to<gameswf::as_key>(*((_DWORD *)this + 1));
    v5 = *(gameswf::as_value **)this;
    is_key_down = gameswf::as_key::is_key_down(v4, (int)v3);
    gameswf::as_value::set_bool(v5, is_key_down);
  }
}


// ===== 79f17c gameswf::key_get_code(gameswf::fn_call const&) =====
int __fastcall gameswf::key_get_code(gameswf *this, const gameswf::fn_call *a2)
{
  gameswf::as_key *v3; // r0
  gameswf::as_value *v4; // r4
  double last_key_pressed; // r2

  v3 = (gameswf::as_key *)gameswf::cast_to<gameswf::as_key>(*((_DWORD *)this + 1));
  v4 = *(gameswf::as_value **)this;
  last_key_pressed = (double)gameswf::as_key::get_last_key_pressed(v3);
  return gameswf::as_value::set_double(v4, last_key_pressed);
}


// ===== 79f1ac gameswf::key_get_ascii(gameswf::fn_call const&) =====
void __fastcall gameswf::key_get_ascii(gameswf *this, const gameswf::fn_call *a2)
{
  int v3; // r0
  int v4; // r6
  gameswf::as_key *v5; // r7
  int last_key_pressed; // r0
  char v7; // r3
  gameswf::tu_string **v8; // r0
  char v9[8]; // [sp+4h] [bp-8h] BYREF

  v3 = gameswf::cast_to<gameswf::as_key>(*((_DWORD *)this + 1));
  v4 = *(_DWORD *)this;
  v5 = (gameswf::as_key *)v3;
  gameswf::as_value::drop_refs(*(gameswf::as_value **)this);
  *(_BYTE *)(v4 + 1) = 0;
  last_key_pressed = gameswf::as_key::get_last_key_pressed(v5);
  v7 = last_key_pressed;
  if ( last_key_pressed > 0 )
  {
    v8 = *(gameswf::tu_string ***)this;
    v9[0] = v7;
    v9[1] = 0;
    gameswf::as_value::set_string(v8, v9);
  }
}


// ===== 79f204 gameswf::key_remove_listener(gameswf::fn_call const&) =====
void __fastcall gameswf::key_remove_listener(gameswf *this, const gameswf::fn_call *a2)
{
  int v3; // r0
  const char *v4; // r1
  gameswf::listener *v5; // r0
  int v6; // r3
  gameswf::as_object *v7; // r1

  v3 = gameswf::cast_to<gameswf::as_key>(*((_DWORD *)this + 1));
  if ( *((int *)this + 4) <= 0 )
  {
    gameswf::log_error("key_remove_listener needs one argument (the listener object)\n", v4);
  }
  else
  {
    v5 = (gameswf::listener *)(v3 + 88);
    v6 = **((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5);
    if ( *(_BYTE *)(v6 + 1) == 5 )
      v7 = *(gameswf::as_object **)(v6 + 4);
    else
      v7 = nullptr;
    gameswf::listener::remove(v5, v7);
  }
}


// ===== 79f264 gameswf::key_add_listener(gameswf::fn_call const&) =====
void __fastcall gameswf::key_add_listener(gameswf *this, const gameswf::fn_call *a2)
{
  int v3; // r0
  char *v4; // r1
  int v5; // r3
  const char *v6; // r0

  v3 = gameswf::cast_to<gameswf::as_key>(*((_DWORD *)this + 1));
  if ( *((int *)this + 4) <= 0 )
  {
    v6 = "key_add_listener needs one argument (the listener object)\n";
    goto LABEL_4;
  }
  v4 = &byte_9[3];
  v5 = **((_DWORD **)this + 3) + (_DWORD)&byte_9[3] * *((_DWORD *)this + 5);
  if ( *(_BYTE *)(v5 + 1) != 5 || (v4 = *(char **)(v5 + 4)) == nullptr )
  {
    v6 = "key_add_listener passed a NULL object; ignored\n";
LABEL_4:
    gameswf::log_error(v6, v4);
    return;
  }
  gameswf::listener::add((gameswf::listener *)(v3 + 88), (gameswf::as_object *)v4);
}


// ===== 79f2e0 gameswf::as_key::~as_key() =====
void __fastcall gameswf::as_key::~as_key(gameswf::as_key *this)
{
  _DWORD *v2; // r6
  int v3; // r4
  int i; // r5
  _DWORD *v5; // r3
  int v7; // r3
  _DWORD *v8; // r0

  *(_DWORD *)this = off_990CD8;
  v2 = (_DWORD *)((char *)this + 88);
  v3 = *((_DWORD *)this + 23);
  if ( v3 <= 0 )
  {
    if ( v3 < 0 )
    {
      v7 = 8 * v3;
      do
      {
        ++v3;
        v8 = (_DWORD *)(*v2 + v7);
        *v8 = 0;
        v8[1] = 0;
        v7 += 8;
      }
      while ( v3 );
    }
  }
  else
  {
    for ( i = 0; i != v3; ++i )
    {
      v5 = *(_DWORD **)(*v2 + 8 * i);
      if ( v5 )
      {
        if ( (*v5)-- == 1 )
          gameswf::free_internal(v5);
      }
    }
  }
  *((_DWORD *)this + 23) = 0;
  gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::reserve((int)v2, 0);
  gameswf::as_object::~as_object(this);
}


// ===== 79f3a8 gameswf::as_key::~as_key() =====
void __fastcall gameswf::as_key::~as_key(gameswf::as_key *this)
{
  gameswf::as_key::~as_key(this);
  LC_API_FREE_0(this);
}


// ===== 79f3c4 gameswf::key_init(gameswf::player *) =====
gameswf::as_key *__fastcall gameswf::key_init(gameswf *this, gameswf::player *a2)
{
  gameswf::as_key *v3; // r4
  int *v4; // r3
  int v5; // r1
  int v6; // r1
  void (__fastcall *v7)(gameswf::as_key *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v8)(gameswf::as_key *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v9)(gameswf::as_key *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v10)(gameswf::as_key *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v11)(gameswf::as_key *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v12)(gameswf::as_key *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v13)(gameswf::as_key *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v14)(gameswf::as_key *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v15)(gameswf::as_key *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v16)(gameswf::as_key *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v17)(gameswf::as_key *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v18)(gameswf::as_key *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v19)(gameswf::as_key *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v20)(gameswf::as_key *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v21)(gameswf::as_key *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v22)(gameswf::as_key *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v23)(gameswf::as_key *, _BYTE *, _BYTE *); // r8
  void (__fastcall *v24)(gameswf::as_key *, _BYTE *, _BYTE *); // r8
  _BYTE v26[12]; // [sp+0h] [bp-314h] BYREF
  _BYTE v27[12]; // [sp+Ch] [bp-308h] BYREF
  _BYTE v28[12]; // [sp+18h] [bp-2FCh] BYREF
  _BYTE v29[12]; // [sp+24h] [bp-2F0h] BYREF
  _BYTE v30[12]; // [sp+30h] [bp-2E4h] BYREF
  _BYTE v31[12]; // [sp+3Ch] [bp-2D8h] BYREF
  _BYTE v32[4]; // [sp+48h] [bp-2CCh] BYREF
  __int64 v33; // [sp+4Ch] [bp-2C8h]
  _BYTE v34[4]; // [sp+54h] [bp-2C0h] BYREF
  __int64 v35; // [sp+58h] [bp-2BCh]
  _BYTE v36[4]; // [sp+60h] [bp-2B4h] BYREF
  __int64 v37; // [sp+64h] [bp-2B0h]
  _BYTE v38[4]; // [sp+6Ch] [bp-2A8h] BYREF
  __int64 v39; // [sp+70h] [bp-2A4h]
  _BYTE v40[4]; // [sp+78h] [bp-29Ch] BYREF
  __int64 v41; // [sp+7Ch] [bp-298h]
  _BYTE v42[4]; // [sp+84h] [bp-290h] BYREF
  __int64 v43; // [sp+88h] [bp-28Ch]
  _BYTE v44[4]; // [sp+90h] [bp-284h] BYREF
  __int64 v45; // [sp+94h] [bp-280h]
  _BYTE v46[4]; // [sp+9Ch] [bp-278h] BYREF
  __int64 v47; // [sp+A0h] [bp-274h]
  _BYTE v48[4]; // [sp+A8h] [bp-26Ch] BYREF
  __int64 v49; // [sp+ACh] [bp-268h]
  _BYTE v50[4]; // [sp+B4h] [bp-260h] BYREF
  __int64 v51; // [sp+B8h] [bp-25Ch]
  _BYTE v52[4]; // [sp+C0h] [bp-254h] BYREF
  __int64 v53; // [sp+C4h] [bp-250h]
  _BYTE v54[4]; // [sp+CCh] [bp-248h] BYREF
  __int64 v55; // [sp+D0h] [bp-244h]
  _BYTE v56[4]; // [sp+D8h] [bp-23Ch] BYREF
  __int64 v57; // [sp+DCh] [bp-238h]
  _BYTE v58[4]; // [sp+E4h] [bp-230h] BYREF
  __int64 v59; // [sp+E8h] [bp-22Ch]
  _BYTE v60[4]; // [sp+F0h] [bp-224h] BYREF
  __int64 v61; // [sp+F4h] [bp-220h]
  _BYTE v62[4]; // [sp+FCh] [bp-218h] BYREF
  __int64 v63; // [sp+100h] [bp-214h]
  _BYTE v64[4]; // [sp+108h] [bp-20Ch] BYREF
  __int64 v65; // [sp+10Ch] [bp-208h]
  _BYTE v66[4]; // [sp+114h] [bp-200h] BYREF
  __int64 v67; // [sp+118h] [bp-1FCh]
  __int64 v68; // [sp+120h] [bp-1F4h]
  _BYTE v69[8]; // [sp+12Ch] [bp-1E8h] BYREF
  void *v70; // [sp+138h] [bp-1DCh]
  _BYTE v71[8]; // [sp+140h] [bp-1D4h] BYREF
  void *v72; // [sp+14Ch] [bp-1C8h]
  _BYTE v73[8]; // [sp+154h] [bp-1C0h] BYREF
  void *v74; // [sp+160h] [bp-1B4h]
  _BYTE v75[8]; // [sp+168h] [bp-1ACh] BYREF
  void *v76; // [sp+174h] [bp-1A0h]
  _BYTE v77[8]; // [sp+17Ch] [bp-198h] BYREF
  void *v78; // [sp+188h] [bp-18Ch]
  _BYTE v79[8]; // [sp+190h] [bp-184h] BYREF
  void *v80; // [sp+19Ch] [bp-178h]
  _BYTE v81[8]; // [sp+1A4h] [bp-170h] BYREF
  void *v82; // [sp+1B0h] [bp-164h]
  _BYTE v83[8]; // [sp+1B8h] [bp-15Ch] BYREF
  void *v84; // [sp+1C4h] [bp-150h]
  _BYTE v85[8]; // [sp+1CCh] [bp-148h] BYREF
  void *v86; // [sp+1D8h] [bp-13Ch]
  _BYTE v87[8]; // [sp+1E0h] [bp-134h] BYREF
  void *v88; // [sp+1ECh] [bp-128h]
  _BYTE v89[8]; // [sp+1F4h] [bp-120h] BYREF
  void *v90; // [sp+200h] [bp-114h]
  _BYTE v91[8]; // [sp+208h] [bp-10Ch] BYREF
  void *v92; // [sp+214h] [bp-100h]
  _BYTE v93[8]; // [sp+21Ch] [bp-F8h] BYREF
  void *v94; // [sp+228h] [bp-ECh]
  _BYTE v95[8]; // [sp+230h] [bp-E4h] BYREF
  void *v96; // [sp+23Ch] [bp-D8h]
  _BYTE v97[8]; // [sp+244h] [bp-D0h] BYREF
  void *v98; // [sp+250h] [bp-C4h]
  _BYTE v99[8]; // [sp+258h] [bp-BCh] BYREF
  void *v100; // [sp+264h] [bp-B0h]
  _BYTE v101[8]; // [sp+26Ch] [bp-A8h] BYREF
  void *v102; // [sp+278h] [bp-9Ch]
  _BYTE v103[8]; // [sp+280h] [bp-94h] BYREF
  void *v104; // [sp+28Ch] [bp-88h]
  _BYTE v105[8]; // [sp+294h] [bp-80h] BYREF
  void *v106; // [sp+2A0h] [bp-74h]
  _BYTE v107[8]; // [sp+2A8h] [bp-6Ch] BYREF
  void *v108; // [sp+2B4h] [bp-60h]
  _BYTE v109[8]; // [sp+2BCh] [bp-58h] BYREF
  void *v110; // [sp+2C8h] [bp-4Ch]
  _BYTE v111[8]; // [sp+2D0h] [bp-44h] BYREF
  void *v112; // [sp+2DCh] [bp-38h]
  _BYTE v113[8]; // [sp+2E4h] [bp-30h] BYREF
  void *v114; // [sp+2F0h] [bp-24h]
  _BYTE v115[8]; // [sp+2F8h] [bp-1Ch] BYREF
  void *p; // [sp+304h] [bp-10h]

  v3 = (gameswf::as_key *)operator new(0x68u, 0);
  gameswf::as_key::as_key(v3, this);
  v4 = *((int **)v3 + 3);
  if ( v4 )
  {
    v6 = *v4;
    if ( *v4 < 32 )
      v6 = 32;
    v5 = (3 * v6) >> 1;
  }
  else
  {
    v5 = 48;
  }
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set_raw_capacity(
    (_DWORD **)v3 + 3,
    v5);
  v7 = *(void (__fastcall **)(gameswf::as_key *, _BYTE *, _BYTE *))(*(_DWORD *)v3 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v115, "BACKSPACE");
  v66[0] = 0;
  v66[1] = 2;
  v68 = 0x4020000000000000LL;
  v67 = 0x4020000000000000LL;
  v7(v3, v115, v66);
  gameswf::as_value::drop_refs((gameswf::as_value *)v66);
  if ( v115[0] == -1 )
    gameswf::free_internal(p);
  v8 = *(void (__fastcall **)(gameswf::as_key *, _BYTE *, _BYTE *))(*(_DWORD *)v3 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v113, "CAPSLOCK");
  v64[0] = 0;
  v64[1] = 2;
  v68 = 0x4034000000000000LL;
  v65 = 0x4034000000000000LL;
  v8(v3, v113, v64);
  gameswf::as_value::drop_refs((gameswf::as_value *)v64);
  if ( v113[0] == -1 )
    gameswf::free_internal(v114);
  v9 = *(void (__fastcall **)(gameswf::as_key *, _BYTE *, _BYTE *))(*(_DWORD *)v3 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v111, "CONTROL");
  v62[0] = 0;
  v62[1] = 2;
  v68 = 0x4031000000000000LL;
  v63 = 0x4031000000000000LL;
  v9(v3, v111, v62);
  gameswf::as_value::drop_refs((gameswf::as_value *)v62);
  if ( v111[0] == -1 )
    gameswf::free_internal(v112);
  v10 = *(void (__fastcall **)(gameswf::as_key *, _BYTE *, _BYTE *))(*(_DWORD *)v3 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v109, "DELETEKEY");
  v60[0] = 0;
  v60[1] = 2;
  v68 = 0x4047000000000000LL;
  v61 = 0x4047000000000000LL;
  v10(v3, v109, v60);
  gameswf::as_value::drop_refs((gameswf::as_value *)v60);
  if ( v109[0] == -1 )
    gameswf::free_internal(v110);
  v11 = *(void (__fastcall **)(gameswf::as_key *, _BYTE *, _BYTE *))(*(_DWORD *)v3 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v107, "DOWN");
  v58[0] = 0;
  v58[1] = 2;
  v68 = 0x4044000000000000LL;
  v59 = 0x4044000000000000LL;
  v11(v3, v107, v58);
  gameswf::as_value::drop_refs((gameswf::as_value *)v58);
  if ( v107[0] == -1 )
    gameswf::free_internal(v108);
  v12 = *(void (__fastcall **)(gameswf::as_key *, _BYTE *, _BYTE *))(*(_DWORD *)v3 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v105, "END");
  v56[0] = 0;
  v56[1] = 2;
  v68 = 0x4041800000000000LL;
  v57 = 0x4041800000000000LL;
  v12(v3, v105, v56);
  gameswf::as_value::drop_refs((gameswf::as_value *)v56);
  if ( v105[0] == -1 )
    gameswf::free_internal(v106);
  v13 = *(void (__fastcall **)(gameswf::as_key *, _BYTE *, _BYTE *))(*(_DWORD *)v3 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v103, "ENTER");
  v54[0] = 0;
  v54[1] = 2;
  v68 = 0x402A000000000000LL;
  v55 = 0x402A000000000000LL;
  v13(v3, v103, v54);
  gameswf::as_value::drop_refs((gameswf::as_value *)v54);
  if ( v103[0] == -1 )
    gameswf::free_internal(v104);
  v14 = *(void (__fastcall **)(gameswf::as_key *, _BYTE *, _BYTE *))(*(_DWORD *)v3 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v101, "ESCAPE");
  v52[0] = 0;
  v52[1] = 2;
  v68 = 0x403B000000000000LL;
  v53 = 0x403B000000000000LL;
  v14(v3, v101, v52);
  gameswf::as_value::drop_refs((gameswf::as_value *)v52);
  if ( v101[0] == -1 )
    gameswf::free_internal(v102);
  v15 = *(void (__fastcall **)(gameswf::as_key *, _BYTE *, _BYTE *))(*(_DWORD *)v3 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v99, "HOME");
  v50[0] = 0;
  v50[1] = 2;
  v68 = 0x4042000000000000LL;
  v51 = 0x4042000000000000LL;
  v15(v3, v99, v50);
  gameswf::as_value::drop_refs((gameswf::as_value *)v50);
  if ( v99[0] == -1 )
    gameswf::free_internal(v100);
  v16 = *(void (__fastcall **)(gameswf::as_key *, _BYTE *, _BYTE *))(*(_DWORD *)v3 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v97, "INSERT");
  v48[0] = 0;
  v48[1] = 2;
  v68 = 0x4046800000000000LL;
  v49 = 0x4046800000000000LL;
  v16(v3, v97, v48);
  gameswf::as_value::drop_refs((gameswf::as_value *)v48);
  if ( v97[0] == -1 )
    gameswf::free_internal(v98);
  v17 = *(void (__fastcall **)(gameswf::as_key *, _BYTE *, _BYTE *))(*(_DWORD *)v3 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v95, "LEFT");
  v46[0] = 0;
  v46[1] = 2;
  v68 = 0x4042800000000000LL;
  v47 = 0x4042800000000000LL;
  v17(v3, v95, v46);
  gameswf::as_value::drop_refs((gameswf::as_value *)v46);
  if ( v95[0] == -1 )
    gameswf::free_internal(v96);
  v18 = *(void (__fastcall **)(gameswf::as_key *, _BYTE *, _BYTE *))(*(_DWORD *)v3 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v93, "PGDN");
  v44[0] = 0;
  v44[1] = 2;
  v68 = 0x4040800000000000LL;
  v45 = 0x4040800000000000LL;
  v18(v3, v93, v44);
  gameswf::as_value::drop_refs((gameswf::as_value *)v44);
  if ( v93[0] == -1 )
    gameswf::free_internal(v94);
  v19 = *(void (__fastcall **)(gameswf::as_key *, _BYTE *, _BYTE *))(*(_DWORD *)v3 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v91, "PGUP");
  v42[0] = 0;
  v42[1] = 2;
  v68 = 0x4041000000000000LL;
  v43 = 0x4041000000000000LL;
  v19(v3, v91, v42);
  gameswf::as_value::drop_refs((gameswf::as_value *)v42);
  if ( v91[0] == 255 )
    gameswf::free_internal(v92);
  v20 = *(void (__fastcall **)(gameswf::as_key *, _BYTE *, _BYTE *))(*(_DWORD *)v3 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v89, "RIGHT");
  v40[0] = 0;
  v40[1] = 2;
  v68 = 0x4043800000000000LL;
  v41 = 0x4043800000000000LL;
  v20(v3, v89, v40);
  gameswf::as_value::drop_refs((gameswf::as_value *)v40);
  if ( v89[0] == 255 )
    gameswf::free_internal(v90);
  v21 = *(void (__fastcall **)(gameswf::as_key *, _BYTE *, _BYTE *))(*(_DWORD *)v3 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v87, "SHIFT");
  v38[0] = 0;
  v38[1] = 2;
  v68 = 0x4030000000000000LL;
  v39 = 0x4030000000000000LL;
  v21(v3, v87, v38);
  gameswf::as_value::drop_refs((gameswf::as_value *)v38);
  if ( v87[0] == 255 )
    gameswf::free_internal(v88);
  v22 = *(void (__fastcall **)(gameswf::as_key *, _BYTE *, _BYTE *))(*(_DWORD *)v3 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v85, "SPACE");
  v36[0] = 0;
  v36[1] = 2;
  v68 = 0x4040000000000000LL;
  v37 = 0x4040000000000000LL;
  v22(v3, v85, v36);
  gameswf::as_value::drop_refs((gameswf::as_value *)v36);
  if ( v85[0] == 255 )
    gameswf::free_internal(v86);
  v23 = *(void (__fastcall **)(gameswf::as_key *, _BYTE *, _BYTE *))(*(_DWORD *)v3 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v83, "TAB");
  v34[0] = 0;
  v34[1] = 2;
  v68 = 0x4022000000000000LL;
  v35 = 0x4022000000000000LL;
  v23(v3, v83, v34);
  gameswf::as_value::drop_refs((gameswf::as_value *)v34);
  if ( v83[0] == 255 )
    gameswf::free_internal(v84);
  v24 = *(void (__fastcall **)(gameswf::as_key *, _BYTE *, _BYTE *))(*(_DWORD *)v3 + 28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v81, "UP");
  v32[0] = 0;
  v32[1] = 2;
  v68 = 0x4043000000000000LL;
  v33 = 0x4043000000000000LL;
  v24(v3, v81, v32);
  gameswf::as_value::drop_refs((gameswf::as_value *)v32);
  if ( v81[0] == 255 )
    gameswf::free_internal(v82);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v79, "addListener");
  v31[1] = 0;
  v31[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v31,
    (void (*)(const gameswf::fn_call *))gameswf::key_add_listener);
  gameswf::as_object::builtin_member((int)v3, (int)v79, v31);
  gameswf::as_value::drop_refs((gameswf::as_value *)v31);
  if ( v79[0] == 255 )
    gameswf::free_internal(v80);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v77, "getAscii");
  v30[1] = 0;
  v30[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v30,
    (void (*)(const gameswf::fn_call *))gameswf::key_get_ascii);
  gameswf::as_object::builtin_member((int)v3, (int)v77, v30);
  gameswf::as_value::drop_refs((gameswf::as_value *)v30);
  if ( v77[0] == 255 )
    gameswf::free_internal(v78);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v75, "getCode");
  v29[1] = 0;
  v29[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v29,
    (void (*)(const gameswf::fn_call *))gameswf::key_get_code);
  gameswf::as_object::builtin_member((int)v3, (int)v75, v29);
  gameswf::as_value::drop_refs((gameswf::as_value *)v29);
  if ( v75[0] == 255 )
    gameswf::free_internal(v76);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v73, "isDown");
  v28[1] = 0;
  v28[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v28,
    (void (*)(const gameswf::fn_call *))gameswf::key_is_down);
  gameswf::as_object::builtin_member((int)v3, (int)v73, v28);
  gameswf::as_value::drop_refs((gameswf::as_value *)v28);
  if ( v73[0] == 255 )
    gameswf::free_internal(v74);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v71, "isToggled");
  v27[1] = 0;
  v27[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v27,
    (void (*)(const gameswf::fn_call *))gameswf::key_is_toggled);
  gameswf::as_object::builtin_member((int)v3, (int)v71, v27);
  gameswf::as_value::drop_refs((gameswf::as_value *)v27);
  if ( v71[0] == 255 )
    gameswf::free_internal(v72);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v69, "removeListener");
  v26[1] = 0;
  v26[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v26,
    (void (*)(const gameswf::fn_call *))gameswf::key_remove_listener);
  gameswf::as_object::builtin_member((int)v3, (int)v69, v26);
  gameswf::as_value::drop_refs((gameswf::as_value *)v26);
  if ( v69[0] == 255 )
    gameswf::free_internal(v70);
  return v3;
}


// ===== 7a0190 gameswf::math_round(gameswf::fn_call const&) =====
int __fastcall gameswf::math_round(gameswf *this, const gameswf::fn_call *a2)
{
  double v3; // r0
  double v4; // r2

  v3 = COERCE_DOUBLE(
         gameswf::as_value::to_number(
           (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
           (int)a2,
           (const char *)*((_DWORD *)this + 5)))
     + 0.5;
  v4 = floor(v3);
  return gameswf::as_value::set_double(*(gameswf::as_value **)this, v4);
}


// ===== 7a01d8 gameswf::math_min(gameswf::fn_call const&) =====
int __fastcall gameswf::math_min(gameswf *this, const gameswf::fn_call *a2, const char *a3)
{
  double v4; // r6
  const char *v5; // r2
  double v6; // r8

  v4 = COERCE_DOUBLE(
         gameswf::as_value::to_number(
           (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
           (int)a2,
           a3));
  v6 = COERCE_DOUBLE(
         gameswf::as_value::to_number(
           (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 1)),
           SHIDWORD(v4),
           v5));
  if ( v4 >= v6 )
    v4 = v6;
  return gameswf::as_value::set_double(*(gameswf::as_value **)this, v4);
}


// ===== 7a0254 gameswf::math_max(gameswf::fn_call const&) =====
int __fastcall gameswf::math_max(gameswf *this, const gameswf::fn_call *a2, const char *a3)
{
  double v4; // r6
  const char *v5; // r2
  double v6; // r8

  v4 = COERCE_DOUBLE(
         gameswf::as_value::to_number(
           (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
           (int)a2,
           a3));
  v6 = COERCE_DOUBLE(
         gameswf::as_value::to_number(
           (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 1)),
           SHIDWORD(v4),
           v5));
  if ( v4 <= v6 )
    v4 = v6;
  return gameswf::as_value::set_double(*(gameswf::as_value **)this, v4);
}


// ===== 7a02d0 gameswf::math_floor(gameswf::fn_call const&) =====
int __fastcall gameswf::math_floor(gameswf *this, const gameswf::fn_call *a2)
{
  __int64 v3; // r0
  double v4; // r2

  v3 = gameswf::as_value::to_number(
         (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
         (int)a2,
         (const char *)*((_DWORD *)this + 5));
  v4 = floor(*(double *)&v3);
  return gameswf::as_value::set_double(*(gameswf::as_value **)this, v4);
}


// ===== 7a0308 gameswf::math_fabs(gameswf::fn_call const&) =====
int __fastcall gameswf::math_fabs(gameswf *this, const gameswf::fn_call *a2)
{
  __int64 v3; // r2

  v3 = gameswf::as_value::to_number(
         (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
         (int)a2,
         (const char *)*((_DWORD *)this + 5))
     & 0x7FFFFFFFFFFFFFFFLL;
  return gameswf::as_value::set_double(*(gameswf::as_value **)this, *(double *)&v3);
}


// ===== 7a033c gameswf::math_random(gameswf::fn_call const&) =====
int __fastcall gameswf::math_random(gameswf::as_value **this, const gameswf::fn_call *a2)
{
  gameswf::as_value *v2; // r4
  double v3; // r2

  v2 = *this;
  v3 = (double)(unsigned int)gameswf::tu_random::next_random((gameswf::tu_random *)this) / 4294967300.0;
  return gameswf::as_value::set_double(v2, v3);
}


// ===== 7a0374 gameswf::math_pow(gameswf::fn_call const&) =====
int __fastcall gameswf::math_pow(gameswf *this, const gameswf::fn_call *a2, const char *a3)
{
  __int64 v4; // r6
  const char *v5; // r2
  __int64 v6; // r0
  gameswf::as_value *v7; // r4
  double v8; // r2

  v4 = gameswf::as_value::to_number(
         (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
         (int)a2,
         a3);
  v6 = gameswf::as_value::to_number(
         (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 1)),
         SHIDWORD(v4),
         v5);
  v7 = *(gameswf::as_value **)this;
  v8 = pow(*(double *)&v4, *(double *)&v6);
  return gameswf::as_value::set_double(v7, v8);
}


// ===== 7a03e0 gameswf::math_atan2(gameswf::fn_call const&) =====
int __fastcall gameswf::math_atan2(gameswf *this, const gameswf::fn_call *a2, const char *a3)
{
  __int64 v4; // r6
  const char *v5; // r2
  __int64 v6; // r0
  gameswf::as_value *v7; // r4
  double v8; // r2

  v4 = gameswf::as_value::to_number(
         (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
         (int)a2,
         a3);
  v6 = gameswf::as_value::to_number(
         (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 1)),
         SHIDWORD(v4),
         v5);
  v7 = *(gameswf::as_value **)this;
  v8 = atan2(*(double *)&v4, *(double *)&v6);
  return gameswf::as_value::set_double(v7, v8);
}


// ===== 7a044c gameswf::math_tan(gameswf::fn_call const&) =====
int __fastcall gameswf::math_tan(gameswf *this, const gameswf::fn_call *a2)
{
  __int64 v3; // r0
  double v4; // r2

  v3 = gameswf::as_value::to_number(
         (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
         (int)a2,
         (const char *)*((_DWORD *)this + 5));
  v4 = tan(*(double *)&v3);
  return gameswf::as_value::set_double(*(gameswf::as_value **)this, v4);
}


// ===== 7a0484 gameswf::math_sqrt(gameswf::fn_call const&) =====
int __fastcall gameswf::math_sqrt(gameswf *this, const gameswf::fn_call *a2)
{
  __int64 v3; // r0
  gameswf::as_value *v4; // r4
  double v5; // r2

  v3 = gameswf::as_value::to_number(
         (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
         (int)a2,
         (const char *)*((_DWORD *)this + 5));
  v4 = *(gameswf::as_value **)this;
  v5 = sqrt(*(double *)&v3);
  return gameswf::as_value::set_double(v4, v5);
}


// ===== 7a04c0 gameswf::math_sin(gameswf::fn_call const&) =====
int __fastcall gameswf::math_sin(gameswf *this, const gameswf::fn_call *a2)
{
  __int64 v3; // r0
  double v4; // r2

  v3 = gameswf::as_value::to_number(
         (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
         (int)a2,
         (const char *)*((_DWORD *)this + 5));
  v4 = sin(*(double *)&v3);
  return gameswf::as_value::set_double(*(gameswf::as_value **)this, v4);
}


// ===== 7a04f8 gameswf::math_log(gameswf::fn_call const&) =====
int __fastcall gameswf::math_log(gameswf *this, const gameswf::fn_call *a2)
{
  __int64 v3; // r0
  gameswf::as_value *v4; // r4
  double v5; // r2

  v3 = gameswf::as_value::to_number(
         (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
         (int)a2,
         (const char *)*((_DWORD *)this + 5));
  v4 = *(gameswf::as_value **)this;
  v5 = log(*(double *)&v3);
  return gameswf::as_value::set_double(v4, v5);
}


// ===== 7a0534 gameswf::math_exp(gameswf::fn_call const&) =====
int __fastcall gameswf::math_exp(gameswf *this, const gameswf::fn_call *a2)
{
  __int64 v3; // r0
  gameswf::as_value *v4; // r4
  double v5; // r2

  v3 = gameswf::as_value::to_number(
         (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
         (int)a2,
         (const char *)*((_DWORD *)this + 5));
  v4 = *(gameswf::as_value **)this;
  v5 = exp(*(double *)&v3);
  return gameswf::as_value::set_double(v4, v5);
}


// ===== 7a0570 gameswf::math_cos(gameswf::fn_call const&) =====
int __fastcall gameswf::math_cos(gameswf *this, const gameswf::fn_call *a2)
{
  __int64 v3; // r0
  double v4; // r2

  v3 = gameswf::as_value::to_number(
         (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
         (int)a2,
         (const char *)*((_DWORD *)this + 5));
  v4 = cos(*(double *)&v3);
  return gameswf::as_value::set_double(*(gameswf::as_value **)this, v4);
}


// ===== 7a05a8 gameswf::math_ceil(gameswf::fn_call const&) =====
int __fastcall gameswf::math_ceil(gameswf *this, const gameswf::fn_call *a2)
{
  __int64 v3; // r0
  double v4; // r2

  v3 = gameswf::as_value::to_number(
         (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
         (int)a2,
         (const char *)*((_DWORD *)this + 5));
  v4 = ceil(*(double *)&v3);
  return gameswf::as_value::set_double(*(gameswf::as_value **)this, v4);
}


// ===== 7a05e0 gameswf::math_atan(gameswf::fn_call const&) =====
int __fastcall gameswf::math_atan(gameswf *this, const gameswf::fn_call *a2)
{
  __int64 v3; // r0
  double v4; // r2

  v3 = gameswf::as_value::to_number(
         (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
         (int)a2,
         (const char *)*((_DWORD *)this + 5));
  v4 = atan(*(double *)&v3);
  return gameswf::as_value::set_double(*(gameswf::as_value **)this, v4);
}


// ===== 7a0618 gameswf::math_asin(gameswf::fn_call const&) =====
int __fastcall gameswf::math_asin(gameswf *this, const gameswf::fn_call *a2)
{
  __int64 v3; // r0
  gameswf::as_value *v4; // r4
  double v5; // r2

  v3 = gameswf::as_value::to_number(
         (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
         (int)a2,
         (const char *)*((_DWORD *)this + 5));
  v4 = *(gameswf::as_value **)this;
  v5 = asin(*(double *)&v3);
  return gameswf::as_value::set_double(v4, v5);
}


// ===== 7a0654 gameswf::math_acos(gameswf::fn_call const&) =====
int __fastcall gameswf::math_acos(gameswf *this, const gameswf::fn_call *a2)
{
  __int64 v3; // r0
  gameswf::as_value *v4; // r4
  double v5; // r2

  v3 = gameswf::as_value::to_number(
         (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
         (int)a2,
         (const char *)*((_DWORD *)this + 5));
  v4 = *(gameswf::as_value **)this;
  v5 = acos(*(double *)&v3);
  return gameswf::as_value::set_double(v4, v5);
}


// ===== 7a0690 gameswf::math_init(gameswf::player *) =====
gameswf::as_object *__fastcall gameswf::math_init(gameswf *this, gameswf::player *a2)
{
  gameswf::as_object *v3; // r4
  int *v4; // r3
  int v5; // r1
  int v6; // r1
  _BYTE v8[12]; // [sp+0h] [bp-350h] BYREF
  _BYTE v9[12]; // [sp+Ch] [bp-344h] BYREF
  _BYTE v10[12]; // [sp+18h] [bp-338h] BYREF
  _BYTE v11[12]; // [sp+24h] [bp-32Ch] BYREF
  _BYTE v12[12]; // [sp+30h] [bp-320h] BYREF
  _BYTE v13[12]; // [sp+3Ch] [bp-314h] BYREF
  _BYTE v14[12]; // [sp+48h] [bp-308h] BYREF
  _BYTE v15[12]; // [sp+54h] [bp-2FCh] BYREF
  _BYTE v16[12]; // [sp+60h] [bp-2F0h] BYREF
  _BYTE v17[12]; // [sp+6Ch] [bp-2E4h] BYREF
  _BYTE v18[12]; // [sp+78h] [bp-2D8h] BYREF
  _BYTE v19[12]; // [sp+84h] [bp-2CCh] BYREF
  _BYTE v20[12]; // [sp+90h] [bp-2C0h] BYREF
  _BYTE v21[12]; // [sp+9Ch] [bp-2B4h] BYREF
  _BYTE v22[12]; // [sp+A8h] [bp-2A8h] BYREF
  _BYTE v23[12]; // [sp+B4h] [bp-29Ch] BYREF
  _BYTE v24[12]; // [sp+C0h] [bp-290h] BYREF
  _BYTE v25[12]; // [sp+CCh] [bp-284h] BYREF
  _BYTE v26[4]; // [sp+D8h] [bp-278h] BYREF
  __int64 v27; // [sp+DCh] [bp-274h]
  _BYTE v28[4]; // [sp+E4h] [bp-26Ch] BYREF
  __int64 v29; // [sp+E8h] [bp-268h]
  _BYTE v30[4]; // [sp+F0h] [bp-260h] BYREF
  __int64 v31; // [sp+F4h] [bp-25Ch]
  _BYTE v32[4]; // [sp+FCh] [bp-254h] BYREF
  __int64 v33; // [sp+100h] [bp-250h]
  _BYTE v34[4]; // [sp+108h] [bp-248h] BYREF
  __int64 v35; // [sp+10Ch] [bp-244h]
  _BYTE v36[4]; // [sp+114h] [bp-23Ch] BYREF
  __int64 v37; // [sp+118h] [bp-238h]
  _BYTE v38[4]; // [sp+120h] [bp-230h] BYREF
  __int64 v39; // [sp+124h] [bp-22Ch]
  _BYTE v40[4]; // [sp+12Ch] [bp-224h] BYREF
  __int64 v41; // [sp+130h] [bp-220h]
  __int64 v42; // [sp+138h] [bp-218h]
  _BYTE v43[8]; // [sp+144h] [bp-20Ch] BYREF
  void *v44; // [sp+150h] [bp-200h]
  _BYTE v45[8]; // [sp+158h] [bp-1F8h] BYREF
  void *v46; // [sp+164h] [bp-1ECh]
  _BYTE v47[8]; // [sp+16Ch] [bp-1E4h] BYREF
  void *v48; // [sp+178h] [bp-1D8h]
  _BYTE v49[8]; // [sp+180h] [bp-1D0h] BYREF
  void *v50; // [sp+18Ch] [bp-1C4h]
  _BYTE v51[8]; // [sp+194h] [bp-1BCh] BYREF
  void *v52; // [sp+1A0h] [bp-1B0h]
  _BYTE v53[8]; // [sp+1A8h] [bp-1A8h] BYREF
  void *v54; // [sp+1B4h] [bp-19Ch]
  _BYTE v55[8]; // [sp+1BCh] [bp-194h] BYREF
  void *v56; // [sp+1C8h] [bp-188h]
  _BYTE v57[8]; // [sp+1D0h] [bp-180h] BYREF
  void *v58; // [sp+1DCh] [bp-174h]
  _BYTE v59[8]; // [sp+1E4h] [bp-16Ch] BYREF
  void *v60; // [sp+1F0h] [bp-160h]
  _BYTE v61[8]; // [sp+1F8h] [bp-158h] BYREF
  void *v62; // [sp+204h] [bp-14Ch]
  _BYTE v63[8]; // [sp+20Ch] [bp-144h] BYREF
  void *v64; // [sp+218h] [bp-138h]
  _BYTE v65[8]; // [sp+220h] [bp-130h] BYREF
  void *v66; // [sp+22Ch] [bp-124h]
  _BYTE v67[8]; // [sp+234h] [bp-11Ch] BYREF
  void *v68; // [sp+240h] [bp-110h]
  _BYTE v69[8]; // [sp+248h] [bp-108h] BYREF
  void *v70; // [sp+254h] [bp-FCh]
  _BYTE v71[8]; // [sp+25Ch] [bp-F4h] BYREF
  void *v72; // [sp+268h] [bp-E8h]
  _BYTE v73[8]; // [sp+270h] [bp-E0h] BYREF
  void *v74; // [sp+27Ch] [bp-D4h]
  _BYTE v75[8]; // [sp+284h] [bp-CCh] BYREF
  void *v76; // [sp+290h] [bp-C0h]
  _BYTE v77[8]; // [sp+298h] [bp-B8h] BYREF
  void *v78; // [sp+2A4h] [bp-ACh]
  _BYTE v79[8]; // [sp+2ACh] [bp-A4h] BYREF
  void *v80; // [sp+2B8h] [bp-98h]
  _BYTE v81[8]; // [sp+2C0h] [bp-90h] BYREF
  void *v82; // [sp+2CCh] [bp-84h]
  _BYTE v83[8]; // [sp+2D4h] [bp-7Ch] BYREF
  void *v84; // [sp+2E0h] [bp-70h]
  _BYTE v85[8]; // [sp+2E8h] [bp-68h] BYREF
  void *v86; // [sp+2F4h] [bp-5Ch]
  _BYTE v87[8]; // [sp+2FCh] [bp-54h] BYREF
  void *v88; // [sp+308h] [bp-48h]
  _BYTE v89[8]; // [sp+310h] [bp-40h] BYREF
  void *v90; // [sp+31Ch] [bp-34h]
  _BYTE v91[8]; // [sp+324h] [bp-2Ch] BYREF
  void *v92; // [sp+330h] [bp-20h]
  _BYTE v93[8]; // [sp+338h] [bp-18h] BYREF
  void *p; // [sp+344h] [bp-Ch]

  v3 = (gameswf::as_object *)operator new(0x38u, 0);
  gameswf::as_object::as_object(v3, this);
  v4 = *((int **)v3 + 3);
  if ( v4 )
  {
    v6 = *v4;
    if ( *v4 < 32 )
      v6 = 32;
    v5 = (3 * v6) >> 1;
  }
  else
  {
    v5 = 48;
  }
  gameswf::hash<gameswf::tu_stringi,gameswf::as_value,gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set_raw_capacity(
    (_DWORD **)v3 + 3,
    v5);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v93, "e");
  v40[0] = 0;
  v40[1] = 2;
  v42 = 0x4005BF0A8B145769LL;
  v41 = 0x4005BF0A8B145769LL;
  gameswf::as_object::builtin_member((int)v3, (int)v93, v40);
  gameswf::as_value::drop_refs((gameswf::as_value *)v40);
  if ( v93[0] == -1 )
    gameswf::free_internal(p);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v91, "ln2");
  v38[0] = 0;
  v38[1] = 2;
  v42 = 0x3FE62E42FEFA39EFLL;
  v39 = 0x3FE62E42FEFA39EFLL;
  gameswf::as_object::builtin_member((int)v3, (int)v91, v38);
  gameswf::as_value::drop_refs((gameswf::as_value *)v38);
  if ( v91[0] == -1 )
    gameswf::free_internal(v92);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v89, "log2e");
  v36[0] = 0;
  v36[1] = 2;
  v42 = 0x3FF71547652B82FELL;
  v37 = 0x3FF71547652B82FELL;
  gameswf::as_object::builtin_member((int)v3, (int)v89, v36);
  gameswf::as_value::drop_refs((gameswf::as_value *)v36);
  if ( v89[0] == -1 )
    gameswf::free_internal(v90);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v87, "ln10");
  v34[0] = 0;
  v34[1] = 2;
  v42 = 0x40026BB1BBB55516LL;
  v35 = 0x40026BB1BBB55516LL;
  gameswf::as_object::builtin_member((int)v3, (int)v87, v34);
  gameswf::as_value::drop_refs((gameswf::as_value *)v34);
  if ( v87[0] == -1 )
    gameswf::free_internal(v88);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v85, "log10e");
  v32[0] = 0;
  v32[1] = 2;
  v42 = 0x3FDBCB7B1526E50ELL;
  v33 = 0x3FDBCB7B1526E50ELL;
  gameswf::as_object::builtin_member((int)v3, (int)v85, v32);
  gameswf::as_value::drop_refs((gameswf::as_value *)v32);
  if ( v85[0] == -1 )
    gameswf::free_internal(v86);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v83, "pi");
  v30[0] = 0;
  v30[1] = 2;
  v42 = 0x400921FB54442D18LL;
  v31 = 0x400921FB54442D18LL;
  gameswf::as_object::builtin_member((int)v3, (int)v83, v30);
  gameswf::as_value::drop_refs((gameswf::as_value *)v30);
  if ( v83[0] == -1 )
    gameswf::free_internal(v84);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v81, "sqrt1_2");
  v28[0] = 0;
  v28[1] = 2;
  v42 = 0x3FE6A09E667F3BCDLL;
  v29 = 0x3FE6A09E667F3BCDLL;
  gameswf::as_object::builtin_member((int)v3, (int)v81, v28);
  gameswf::as_value::drop_refs((gameswf::as_value *)v28);
  if ( v81[0] == -1 )
    gameswf::free_internal(v82);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v79, "sqrt2");
  v26[0] = 0;
  v26[1] = 2;
  v42 = 0x3FF6A09E667F3BCDLL;
  v27 = 0x3FF6A09E667F3BCDLL;
  gameswf::as_object::builtin_member((int)v3, (int)v79, v26);
  gameswf::as_value::drop_refs((gameswf::as_value *)v26);
  if ( v79[0] == -1 )
    gameswf::free_internal(v80);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v77, "abs");
  v25[1] = 0;
  v25[0] = 0;
  gameswf::as_value::set_as_c_function((gameswf::as_value *)v25, (void (*)(const gameswf::fn_call *))gameswf::math_fabs);
  gameswf::as_object::builtin_member((int)v3, (int)v77, v25);
  gameswf::as_value::drop_refs((gameswf::as_value *)v25);
  if ( v77[0] == -1 )
    gameswf::free_internal(v78);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v75, "acos");
  v24[1] = 0;
  v24[0] = 0;
  gameswf::as_value::set_as_c_function((gameswf::as_value *)v24, (void (*)(const gameswf::fn_call *))gameswf::math_acos);
  gameswf::as_object::builtin_member((int)v3, (int)v75, v24);
  gameswf::as_value::drop_refs((gameswf::as_value *)v24);
  if ( v75[0] == -1 )
    gameswf::free_internal(v76);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v73, "asin");
  v23[1] = 0;
  v23[0] = 0;
  gameswf::as_value::set_as_c_function((gameswf::as_value *)v23, (void (*)(const gameswf::fn_call *))gameswf::math_asin);
  gameswf::as_object::builtin_member((int)v3, (int)v73, v23);
  gameswf::as_value::drop_refs((gameswf::as_value *)v23);
  if ( v73[0] == -1 )
    gameswf::free_internal(v74);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v71, "atan");
  v22[1] = 0;
  v22[0] = 0;
  gameswf::as_value::set_as_c_function((gameswf::as_value *)v22, (void (*)(const gameswf::fn_call *))gameswf::math_atan);
  gameswf::as_object::builtin_member((int)v3, (int)v71, v22);
  gameswf::as_value::drop_refs((gameswf::as_value *)v22);
  if ( v71[0] == -1 )
    gameswf::free_internal(v72);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v69, "ceil");
  v21[1] = 0;
  v21[0] = 0;
  gameswf::as_value::set_as_c_function((gameswf::as_value *)v21, (void (*)(const gameswf::fn_call *))gameswf::math_ceil);
  gameswf::as_object::builtin_member((int)v3, (int)v69, v21);
  gameswf::as_value::drop_refs((gameswf::as_value *)v21);
  if ( v69[0] == 255 )
    gameswf::free_internal(v70);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v67, "cos");
  v20[1] = 0;
  v20[0] = 0;
  gameswf::as_value::set_as_c_function((gameswf::as_value *)v20, (void (*)(const gameswf::fn_call *))gameswf::math_cos);
  gameswf::as_object::builtin_member((int)v3, (int)v67, v20);
  gameswf::as_value::drop_refs((gameswf::as_value *)v20);
  if ( v67[0] == 255 )
    gameswf::free_internal(v68);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v65, "exp");
  v19[1] = 0;
  v19[0] = 0;
  gameswf::as_value::set_as_c_function((gameswf::as_value *)v19, (void (*)(const gameswf::fn_call *))gameswf::math_exp);
  gameswf::as_object::builtin_member((int)v3, (int)v65, v19);
  gameswf::as_value::drop_refs((gameswf::as_value *)v19);
  if ( v65[0] == 255 )
    gameswf::free_internal(v66);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v63, "floor");
  v18[1] = 0;
  v18[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v18,
    (void (*)(const gameswf::fn_call *))gameswf::math_floor);
  gameswf::as_object::builtin_member((int)v3, (int)v63, v18);
  gameswf::as_value::drop_refs((gameswf::as_value *)v18);
  if ( v63[0] == 255 )
    gameswf::free_internal(v64);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v61, "log");
  v17[1] = 0;
  v17[0] = 0;
  gameswf::as_value::set_as_c_function((gameswf::as_value *)v17, (void (*)(const gameswf::fn_call *))gameswf::math_log);
  gameswf::as_object::builtin_member((int)v3, (int)v61, v17);
  gameswf::as_value::drop_refs((gameswf::as_value *)v17);
  if ( v61[0] == 255 )
    gameswf::free_internal(v62);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v59, "random");
  v16[1] = 0;
  v16[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v16,
    (void (*)(const gameswf::fn_call *))gameswf::math_random);
  gameswf::as_object::builtin_member((int)v3, (int)v59, v16);
  gameswf::as_value::drop_refs((gameswf::as_value *)v16);
  if ( v59[0] == 255 )
    gameswf::free_internal(v60);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v57, "round");
  v15[1] = 0;
  v15[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v15,
    (void (*)(const gameswf::fn_call *))gameswf::math_round);
  gameswf::as_object::builtin_member((int)v3, (int)v57, v15);
  gameswf::as_value::drop_refs((gameswf::as_value *)v15);
  if ( v57[0] == 255 )
    gameswf::free_internal(v58);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v55, "sin");
  v14[1] = 0;
  v14[0] = 0;
  gameswf::as_value::set_as_c_function((gameswf::as_value *)v14, (void (*)(const gameswf::fn_call *))gameswf::math_sin);
  gameswf::as_object::builtin_member((int)v3, (int)v55, v14);
  gameswf::as_value::drop_refs((gameswf::as_value *)v14);
  if ( v55[0] == 255 )
    gameswf::free_internal(v56);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v53, "sqrt");
  v13[1] = 0;
  v13[0] = 0;
  gameswf::as_value::set_as_c_function((gameswf::as_value *)v13, (void (*)(const gameswf::fn_call *))gameswf::math_sqrt);
  gameswf::as_object::builtin_member((int)v3, (int)v53, v13);
  gameswf::as_value::drop_refs((gameswf::as_value *)v13);
  if ( v53[0] == 255 )
    gameswf::free_internal(v54);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v51, "tan");
  v12[1] = 0;
  v12[0] = 0;
  gameswf::as_value::set_as_c_function((gameswf::as_value *)v12, (void (*)(const gameswf::fn_call *))gameswf::math_tan);
  gameswf::as_object::builtin_member((int)v3, (int)v51, v12);
  gameswf::as_value::drop_refs((gameswf::as_value *)v12);
  if ( v51[0] == 255 )
    gameswf::free_internal(v52);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v49, "atan2");
  v11[1] = 0;
  v11[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v11,
    (void (*)(const gameswf::fn_call *))gameswf::math_atan2);
  gameswf::as_object::builtin_member((int)v3, (int)v49, v11);
  gameswf::as_value::drop_refs((gameswf::as_value *)v11);
  if ( v49[0] == 255 )
    gameswf::free_internal(v50);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v47, "max");
  v10[1] = 0;
  v10[0] = 0;
  gameswf::as_value::set_as_c_function((gameswf::as_value *)v10, (void (*)(const gameswf::fn_call *))gameswf::math_max);
  gameswf::as_object::builtin_member((int)v3, (int)v47, v10);
  gameswf::as_value::drop_refs((gameswf::as_value *)v10);
  if ( v47[0] == 255 )
    gameswf::free_internal(v48);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v45, "min");
  v9[1] = 0;
  v9[0] = 0;
  gameswf::as_value::set_as_c_function((gameswf::as_value *)v9, (void (*)(const gameswf::fn_call *))gameswf::math_min);
  gameswf::as_object::builtin_member((int)v3, (int)v45, v9);
  gameswf::as_value::drop_refs((gameswf::as_value *)v9);
  if ( v45[0] == 255 )
    gameswf::free_internal(v46);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v43, "pow");
  v8[1] = 0;
  v8[0] = 0;
  gameswf::as_value::set_as_c_function((gameswf::as_value *)v8, (void (*)(const gameswf::fn_call *))gameswf::math_pow);
  gameswf::as_object::builtin_member((int)v3, (int)v43, v8);
  gameswf::as_value::drop_refs((gameswf::as_value *)v8);
  if ( v43[0] == 255 )
    gameswf::free_internal(v44);
  return v3;
}


// ===== 7a13d4 gameswf::as_matrix::is(int) =====
bool __fastcall gameswf::as_matrix::is(gameswf::as_matrix *this, int a2)
{
  return a2 == 26 || a2 == 0;
}


// ===== 7a13ec gameswf::cast_to<gameswf::as_matrix>(gameswf::as_object_interface *) =====
int __fastcall gameswf::cast_to<gameswf::as_matrix>(int a1)
{
  if ( a1 && (*(int (__fastcall **)(int, int))(*(_DWORD *)a1 + 8))(a1, 26) )
    return a1;
  else
    return 0;
}


// ===== 7a1420 gameswf::as_matrix::~as_matrix() =====
void __fastcall gameswf::as_matrix::~as_matrix(gameswf::as_matrix *this)
{
  *(_DWORD *)this = off_990D48;
  gameswf::as_object::~as_object(this);
}


// ===== 7a1454 gameswf::smart_ptr<gameswf::as_point>::set_ref(gameswf::as_point*) =====
void __fastcall gameswf::smart_ptr<gameswf::as_point>::set_ref(gameswf::ref_counted **a1, gameswf::ref_counted *this)
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


// ===== 7a1494 gameswf::as_matrix_transformPoint(gameswf::fn_call const&) =====
void __fastcall gameswf::as_matrix_transformPoint(gameswf *this, const gameswf::fn_call *a2)
{
  float *v3; // r5
  int v4; // r3
  float *v5; // r6
  int v6; // r10
  gameswf::player *v7; // r10
  gameswf::as_point *v8; // r8
  gameswf::ref_counted *v9; // r7
  gameswf::ref_counted *v10; // [sp+4h] [bp-8h] BYREF

  if ( *((int *)this + 4) > 0 )
  {
    v3 = (float *)gameswf::cast_to<gameswf::as_matrix>(*((_DWORD *)this + 1));
    if ( v3 )
    {
      v4 = **((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5);
      if ( *(_BYTE *)(v4 + 1) == 5 )
      {
        v5 = *(float **)(v4 + 4);
        if ( v5 )
        {
          if ( (*(int (__fastcall **)(float *, int))(*(_DWORD *)v5 + 8))(v5, 25) )
          {
            v6 = *((_DWORD *)this + 3);
            v10 = nullptr;
            gameswf::weak_ptr<gameswf::player>::check_proxy(v6 + 100);
            v7 = *(gameswf::player **)(v6 + 104);
            v8 = (gameswf::as_point *)operator new(0x40u, 0);
            gameswf::as_point::as_point(v8, v7, 0.0, 0.0);
            gameswf::smart_ptr<gameswf::as_point>::set_ref(&v10, v8);
            v9 = v10;
            *((float *)v10 + 14) = (float)((float)(v3[14] * v5[14]) + (float)(v3[15] * v5[15])) + v3[16];
            *((float *)v9 + 15) = (float)((float)(v3[17] * v5[14]) + (float)(v3[18] * v5[15])) + v3[19];
            gameswf::as_value::set_as_object(*(gameswf::as_value **)this, v10);
            if ( v10 )
              gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v10);
          }
        }
      }
    }
  }
}


// ===== 7a15e0 gameswf::smart_ptr<gameswf::as_matrix>::set_ref(gameswf::as_matrix*) =====
void __fastcall gameswf::smart_ptr<gameswf::as_matrix>::set_ref(gameswf::ref_counted **a1, gameswf::ref_counted *this)
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


// ===== 7a1620 gameswf::as_matrix::~as_matrix() =====
void __fastcall gameswf::as_matrix::~as_matrix(gameswf::as_matrix *this)
{
  *(_DWORD *)this = off_990D48;
  gameswf::as_object::~as_object(this);
  LC_API_FREE_0(this);
}


// ===== 7a165c gameswf::as_matrix_concat(gameswf::fn_call const&) =====
int *__fastcall gameswf::as_matrix_concat(int *this, const gameswf::fn_call *a2)
{
  int *v2; // r4
  int *v3; // r5
  int v4; // r3
  int v5; // r1
  int v6; // r2
  int v7; // r3
  int v8; // r1
  int *v9; // r5
  int v10; // r1
  int v11; // r2
  int v12; // r3
  int v13; // r1
  int v14; // [sp+0h] [bp-18h] BYREF
  int v15; // [sp+4h] [bp-14h]
  int v16; // [sp+8h] [bp-10h]
  int v17; // [sp+Ch] [bp-Ch]
  int v18; // [sp+10h] [bp-8h]
  int v19; // [sp+14h] [bp-4h]

  v2 = this;
  if ( *(this + 4) > 0 )
  {
    this = (int *)gameswf::cast_to<gameswf::as_matrix>(*(this + 1));
    v3 = this;
    if ( this )
    {
      v4 = *(_DWORD *)v2[3] + 12 * v2[5];
      if ( *(_BYTE *)(v4 + 1) == 5 )
      {
        this = *(int **)(v4 + 4);
        if ( this )
        {
          this = (int *)gameswf::cast_to<gameswf::as_matrix>((int)this);
          if ( this )
          {
            v16 = 0;
            v17 = 0;
            v19 = 0;
            v15 = 0;
            v18 = 1065353216;
            v14 = 1065353216;
            v5 = *(this + 15);
            v6 = *(this + 16);
            v7 = *(this + 17);
            v14 = *(this + 14);
            v15 = v5;
            v16 = v6;
            v17 = v7;
            v8 = *(this + 19);
            v9 = v3 + 14;
            v18 = *(this + 18);
            v19 = v8;
            gameswf::matrix::concatenate((float *)&v14, (float *)v9);
            v10 = v15;
            v11 = v16;
            v12 = v17;
            *v9 = v14;
            v9[1] = v10;
            v9[2] = v11;
            v9[3] = v12;
            v9 += 4;
            this = (int *)v18;
            v13 = v19;
            *v9 = v18;
            v9[1] = v13;
          }
        }
      }
    }
  }
  return this;
}


// ===== 7a172c gameswf::as_matrix_invert(gameswf::fn_call const&) =====
int __fastcall gameswf::as_matrix_invert(gameswf *this, const gameswf::fn_call *a2)
{
  int result; // r0
  int *v3; // r4
  int v4; // r1
  int v5; // r2
  int v6; // r3
  int v7; // r1
  int v8; // [sp+0h] [bp-1Ch] BYREF
  int v9; // [sp+4h] [bp-18h]
  int v10; // [sp+8h] [bp-14h]
  int v11; // [sp+Ch] [bp-10h]
  int v12; // [sp+10h] [bp-Ch]
  int v13; // [sp+14h] [bp-8h]

  result = gameswf::cast_to<gameswf::as_matrix>(*((_DWORD *)this + 1));
  if ( result )
  {
    v10 = 0;
    v11 = 0;
    v3 = (int *)(result + 56);
    v13 = 0;
    v12 = 1065353216;
    v9 = 0;
    v8 = 1065353216;
    gameswf::matrix::set_inverse((gameswf::matrix *)&v8, (const gameswf::matrix *)(result + 56));
    v4 = v9;
    v5 = v10;
    v6 = v11;
    *v3 = v8;
    v3[1] = v4;
    v3[2] = v5;
    v3[3] = v6;
    v3 += 4;
    result = v12;
    v7 = v13;
    *v3 = v12;
    v3[1] = v7;
  }
  return result;
}


// ===== 7a179c gameswf::as_matrix::as_matrix(gameswf::player *,gameswf::matrix const*) =====
gameswf::as_matrix *__fastcall gameswf::as_matrix::as_matrix(
        gameswf::as_matrix *this,
        gameswf::player *a2,
        const gameswf::matrix *a3)
{
  int v5; // r1
  int v6; // r2
  int v7; // r3
  int v8; // r1
  _BYTE v10[12]; // [sp+4h] [bp-E4h] BYREF
  _BYTE v11[12]; // [sp+10h] [bp-D8h] BYREF
  _BYTE v12[12]; // [sp+1Ch] [bp-CCh] BYREF
  _BYTE v13[12]; // [sp+28h] [bp-C0h] BYREF
  _BYTE v14[12]; // [sp+34h] [bp-B4h] BYREF
  _BYTE v15[12]; // [sp+40h] [bp-A8h] BYREF
  _BYTE v16[12]; // [sp+4Ch] [bp-9Ch] BYREF
  _BYTE v17[8]; // [sp+58h] [bp-90h] BYREF
  void *v18; // [sp+64h] [bp-84h]
  _BYTE v19[8]; // [sp+6Ch] [bp-7Ch] BYREF
  void *v20; // [sp+78h] [bp-70h]
  _BYTE v21[8]; // [sp+80h] [bp-68h] BYREF
  void *v22; // [sp+8Ch] [bp-5Ch]
  _BYTE v23[8]; // [sp+94h] [bp-54h] BYREF
  void *v24; // [sp+A0h] [bp-48h]
  _BYTE v25[8]; // [sp+A8h] [bp-40h] BYREF
  void *v26; // [sp+B4h] [bp-34h]
  _BYTE v27[8]; // [sp+BCh] [bp-2Ch] BYREF
  void *v28; // [sp+C8h] [bp-20h]
  _BYTE v29[8]; // [sp+D0h] [bp-18h] BYREF
  void *p; // [sp+DCh] [bp-Ch]

  gameswf::as_object::as_object(this, a2);
  *(_DWORD *)this = off_990D48;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 18) = 1065353216;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 14) = 1065353216;
  if ( a3 )
  {
    v5 = *((_DWORD *)a3 + 1);
    v6 = *((_DWORD *)a3 + 2);
    v7 = *((_DWORD *)a3 + 3);
    *((_DWORD *)this + 14) = *(_DWORD *)a3;
    *((_DWORD *)this + 15) = v5;
    *((_DWORD *)this + 16) = v6;
    *((_DWORD *)this + 17) = v7;
    v8 = *((_DWORD *)a3 + 5);
    *((_DWORD *)this + 18) = *((_DWORD *)a3 + 4);
    *((_DWORD *)this + 19) = v8;
  }
  gameswf::tu_string::tu_string((gameswf::tu_string *)v29, "translate");
  v16[1] = 0;
  v16[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v16,
    (void (*)(const gameswf::fn_call *))gameswf::as_matrix_translate);
  gameswf::as_object::builtin_member((int)this, (int)v29, v16);
  gameswf::as_value::drop_refs((gameswf::as_value *)v16);
  if ( v29[0] == -1 )
    gameswf::free_internal(p);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v27, "rotate");
  v15[1] = 0;
  v15[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v15,
    (void (*)(const gameswf::fn_call *))gameswf::as_matrix_rotate);
  gameswf::as_object::builtin_member((int)this, (int)v27, v15);
  gameswf::as_value::drop_refs((gameswf::as_value *)v15);
  if ( v27[0] == -1 )
    gameswf::free_internal(v28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v25, "scale");
  v14[1] = 0;
  v14[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v14,
    (void (*)(const gameswf::fn_call *))gameswf::as_matrix_scale);
  gameswf::as_object::builtin_member((int)this, (int)v25, v14);
  gameswf::as_value::drop_refs((gameswf::as_value *)v14);
  if ( v25[0] == -1 )
    gameswf::free_internal(v26);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v23, "concat");
  v13[1] = 0;
  v13[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v13,
    (void (*)(const gameswf::fn_call *))gameswf::as_matrix_concat);
  gameswf::as_object::builtin_member((int)this, (int)v23, v13);
  gameswf::as_value::drop_refs((gameswf::as_value *)v13);
  if ( v23[0] == -1 )
    gameswf::free_internal(v24);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v21, "clone");
  v12[1] = 0;
  v12[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v12,
    (void (*)(const gameswf::fn_call *))gameswf::as_matrix_clone);
  gameswf::as_object::builtin_member((int)this, (int)v21, v12);
  gameswf::as_value::drop_refs((gameswf::as_value *)v12);
  if ( v21[0] == -1 )
    gameswf::free_internal(v22);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v19, "invert");
  v11[1] = 0;
  v11[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v11,
    (void (*)(const gameswf::fn_call *))gameswf::as_matrix_invert);
  gameswf::as_object::builtin_member((int)this, (int)v19, v11);
  gameswf::as_value::drop_refs((gameswf::as_value *)v11);
  if ( v19[0] == -1 )
    gameswf::free_internal(v20);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v17, "transformPoint");
  v10[1] = 0;
  v10[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v10,
    (void (*)(const gameswf::fn_call *))gameswf::as_matrix_transformPoint);
  gameswf::as_object::builtin_member((int)this, (int)v17, v10);
  gameswf::as_value::drop_refs((gameswf::as_value *)v10);
  if ( v17[0] == -1 )
    gameswf::free_internal(v18);
  return this;
}


// ===== 7a1b58 gameswf::as_matrix_clone(gameswf::fn_call const&) =====
void __fastcall gameswf::as_matrix_clone(gameswf *this, const gameswf::fn_call *a2)
{
  _DWORD *v3; // r6
  int v4; // r7
  gameswf::player *v5; // r10
  gameswf::as_matrix *v6; // r7
  int v7; // r1
  int v8; // r2
  int v9; // r3
  _DWORD *v10; // r12
  int v11; // r1
  gameswf::ref_counted *v12; // [sp+4h] [bp-8h] BYREF

  v3 = (_DWORD *)gameswf::cast_to<gameswf::as_matrix>(*((_DWORD *)this + 1));
  if ( v3 )
  {
    v4 = *((_DWORD *)this + 3);
    v12 = nullptr;
    gameswf::weak_ptr<gameswf::player>::check_proxy(v4 + 100);
    v5 = *(gameswf::player **)(v4 + 104);
    v6 = (gameswf::as_matrix *)operator new(0x50u, 0);
    gameswf::as_matrix::as_matrix(v6, v5, nullptr);
    gameswf::smart_ptr<gameswf::as_matrix>::set_ref(&v12, v6);
    v7 = v3[15];
    v8 = v3[16];
    v9 = v3[17];
    v10 = (_DWORD *)((char *)v12 + 56);
    *((_DWORD *)v12 + 14) = v3[14];
    v10[1] = v7;
    v10[2] = v8;
    v10[3] = v9;
    v10 += 4;
    v11 = v3[19];
    *v10 = v3[18];
    v10[1] = v11;
    gameswf::as_value::set_as_object(*(gameswf::as_value **)this, v12);
    if ( v12 )
      gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v12);
  }
}


// ===== 7a1bf8 gameswf::as_global_matrix_ctor(gameswf::fn_call const&) =====
void __fastcall gameswf::as_global_matrix_ctor(gameswf *this, const gameswf::fn_call *a2)
{
  int v2; // r6
  gameswf::player *v4; // r8
  gameswf::as_matrix *v5; // r6
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
  gameswf::ref_counted *v25; // [sp+4h] [bp-4h] BYREF

  v2 = *((_DWORD *)this + 3);
  v25 = nullptr;
  gameswf::weak_ptr<gameswf::player>::check_proxy(v2 + 100);
  v4 = *(gameswf::player **)(v2 + 104);
  v5 = (gameswf::as_matrix *)operator new(0x50u, 0);
  gameswf::as_matrix::as_matrix(v5, v4, nullptr);
  gameswf::smart_ptr<gameswf::as_matrix>::set_ref(&v25, v5);
  switch ( *((_DWORD *)this + 4) )
  {
    case 0:
      goto LABEL_26;
    case 1:
      goto LABEL_22;
    case 2:
      goto LABEL_18;
    case 3:
      goto LABEL_14;
    case 4:
      goto LABEL_10;
    case 5:
      goto LABEL_6;
    default:
      v7 = v25;
      v8 = COERCE_DOUBLE(
             gameswf::as_value::to_number(
               (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 5)),
               v6,
               (const char *)(*((_DWORD *)this + 5) - 5)));
      v9 = v8;
      if ( v8 < -3.4028e38 || v8 > 3.4028e38 )
        v9 = 0.0;
      *((float *)v7 + 19) = v9;
LABEL_6:
      v10 = v25;
      v11 = COERCE_DOUBLE(
              gameswf::as_value::to_number(
                (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 4)),
                v6,
                (const char *)(*((_DWORD *)this + 5) - 4)));
      v12 = v11;
      if ( v11 < -3.4028e38 || v11 > 3.4028e38 )
        v12 = 0.0;
      *((float *)v10 + 16) = v12;
LABEL_10:
      v13 = v25;
      v14 = COERCE_DOUBLE(
              gameswf::as_value::to_number(
                (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 3)),
                v6,
                (const char *)(*((_DWORD *)this + 5) - 3)));
      v15 = v14;
      if ( v14 < -3.4028e38 || v14 > 3.4028e38 )
        v15 = 0.0;
      *((float *)v13 + 18) = v15;
LABEL_14:
      v16 = v25;
      v17 = COERCE_DOUBLE(
              gameswf::as_value::to_number(
                (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 2)),
                v6,
                (const char *)(*((_DWORD *)this + 5) - 2)));
      v18 = v17;
      if ( v17 < -3.4028e38 || v17 > 3.4028e38 )
        v18 = 0.0;
      *((float *)v16 + 17) = v18;
LABEL_18:
      v19 = v25;
      v20 = COERCE_DOUBLE(
              gameswf::as_value::to_number(
                (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 1)),
                v6,
                (const char *)(*((_DWORD *)this + 5) - 1)));
      v21 = v20;
      if ( v20 < -3.4028e38 || v20 > 3.4028e38 )
        v21 = 0.0;
      *((float *)v19 + 15) = v21;
LABEL_22:
      v22 = v25;
      v23 = COERCE_DOUBLE(
              gameswf::as_value::to_number(
                (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
                v6,
                (const char *)*((_DWORD *)this + 5)));
      v24 = v23;
      if ( v23 < -3.4028e38 || v23 > 3.4028e38 )
        v24 = 0.0;
      *((float *)v22 + 14) = v24;
LABEL_26:
      gameswf::as_value::set_as_object(*(gameswf::as_value **)this, v25);
      if ( v25 )
        gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v25);
      return;
  }
}


// ===== 7a1ea0 gameswf::as_matrix::as_matrix(gameswf::player *,gameswf::matrix const*) =====
gameswf::as_matrix *__fastcall gameswf::as_matrix::as_matrix(
        gameswf::as_matrix *this,
        gameswf::player *a2,
        const gameswf::matrix *a3)
{
  int v5; // r1
  int v6; // r2
  int v7; // r3
  int v8; // r1
  _BYTE v10[12]; // [sp+4h] [bp-E4h] BYREF
  _BYTE v11[12]; // [sp+10h] [bp-D8h] BYREF
  _BYTE v12[12]; // [sp+1Ch] [bp-CCh] BYREF
  _BYTE v13[12]; // [sp+28h] [bp-C0h] BYREF
  _BYTE v14[12]; // [sp+34h] [bp-B4h] BYREF
  _BYTE v15[12]; // [sp+40h] [bp-A8h] BYREF
  _BYTE v16[12]; // [sp+4Ch] [bp-9Ch] BYREF
  _BYTE v17[8]; // [sp+58h] [bp-90h] BYREF
  void *v18; // [sp+64h] [bp-84h]
  _BYTE v19[8]; // [sp+6Ch] [bp-7Ch] BYREF
  void *v20; // [sp+78h] [bp-70h]
  _BYTE v21[8]; // [sp+80h] [bp-68h] BYREF
  void *v22; // [sp+8Ch] [bp-5Ch]
  _BYTE v23[8]; // [sp+94h] [bp-54h] BYREF
  void *v24; // [sp+A0h] [bp-48h]
  _BYTE v25[8]; // [sp+A8h] [bp-40h] BYREF
  void *v26; // [sp+B4h] [bp-34h]
  _BYTE v27[8]; // [sp+BCh] [bp-2Ch] BYREF
  void *v28; // [sp+C8h] [bp-20h]
  _BYTE v29[8]; // [sp+D0h] [bp-18h] BYREF
  void *p; // [sp+DCh] [bp-Ch]

  gameswf::as_object::as_object(this, a2);
  *(_DWORD *)this = off_990D48;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 18) = 1065353216;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 14) = 1065353216;
  if ( a3 )
  {
    v5 = *((_DWORD *)a3 + 1);
    v6 = *((_DWORD *)a3 + 2);
    v7 = *((_DWORD *)a3 + 3);
    *((_DWORD *)this + 14) = *(_DWORD *)a3;
    *((_DWORD *)this + 15) = v5;
    *((_DWORD *)this + 16) = v6;
    *((_DWORD *)this + 17) = v7;
    v8 = *((_DWORD *)a3 + 5);
    *((_DWORD *)this + 18) = *((_DWORD *)a3 + 4);
    *((_DWORD *)this + 19) = v8;
  }
  gameswf::tu_string::tu_string((gameswf::tu_string *)v29, "translate");
  v16[1] = 0;
  v16[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v16,
    (void (*)(const gameswf::fn_call *))gameswf::as_matrix_translate);
  gameswf::as_object::builtin_member((int)this, (int)v29, v16);
  gameswf::as_value::drop_refs((gameswf::as_value *)v16);
  if ( v29[0] == -1 )
    gameswf::free_internal(p);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v27, "rotate");
  v15[1] = 0;
  v15[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v15,
    (void (*)(const gameswf::fn_call *))gameswf::as_matrix_rotate);
  gameswf::as_object::builtin_member((int)this, (int)v27, v15);
  gameswf::as_value::drop_refs((gameswf::as_value *)v15);
  if ( v27[0] == -1 )
    gameswf::free_internal(v28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v25, "scale");
  v14[1] = 0;
  v14[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v14,
    (void (*)(const gameswf::fn_call *))gameswf::as_matrix_scale);
  gameswf::as_object::builtin_member((int)this, (int)v25, v14);
  gameswf::as_value::drop_refs((gameswf::as_value *)v14);
  if ( v25[0] == -1 )
    gameswf::free_internal(v26);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v23, "concat");
  v13[1] = 0;
  v13[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v13,
    (void (*)(const gameswf::fn_call *))gameswf::as_matrix_concat);
  gameswf::as_object::builtin_member((int)this, (int)v23, v13);
  gameswf::as_value::drop_refs((gameswf::as_value *)v13);
  if ( v23[0] == -1 )
    gameswf::free_internal(v24);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v21, "clone");
  v12[1] = 0;
  v12[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v12,
    (void (*)(const gameswf::fn_call *))gameswf::as_matrix_clone);
  gameswf::as_object::builtin_member((int)this, (int)v21, v12);
  gameswf::as_value::drop_refs((gameswf::as_value *)v12);
  if ( v21[0] == -1 )
    gameswf::free_internal(v22);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v19, "invert");
  v11[1] = 0;
  v11[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v11,
    (void (*)(const gameswf::fn_call *))gameswf::as_matrix_invert);
  gameswf::as_object::builtin_member((int)this, (int)v19, v11);
  gameswf::as_value::drop_refs((gameswf::as_value *)v11);
  if ( v19[0] == -1 )
    gameswf::free_internal(v20);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v17, "transformPoint");
  v10[1] = 0;
  v10[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v10,
    (void (*)(const gameswf::fn_call *))gameswf::as_matrix_transformPoint);
  gameswf::as_object::builtin_member((int)this, (int)v17, v10);
  gameswf::as_value::drop_refs((gameswf::as_value *)v10);
  if ( v17[0] == -1 )
    gameswf::free_internal(v18);
  return this;
}


// ===== 7a225c gameswf::as_matrix_scale(gameswf::fn_call const&) =====
int __fastcall gameswf::as_matrix_scale(int this, const gameswf::fn_call *a2)
{
  int v2; // r6
  int v3; // r5
  _DWORD *v4; // r0
  int v5; // r5
  double v6; // r10
  const char *v7; // r2
  double v8; // r8
  float v9; // r0
  float v10; // r6
  float v11; // r0
  int v12; // r1
  int v13; // r2
  int v14; // r3
  int v15; // r1
  int v16; // [sp+0h] [bp-1Ch] BYREF
  int v17; // [sp+4h] [bp-18h]
  int v18; // [sp+8h] [bp-14h]
  int v19; // [sp+Ch] [bp-10h]
  int v20; // [sp+10h] [bp-Ch]
  int v21; // [sp+14h] [bp-8h]

  v2 = this;
  if ( *(int *)(this + 16) > 1 )
  {
    this = gameswf::cast_to<gameswf::as_matrix>(*(_DWORD *)(this + 4));
    v3 = this;
    if ( this )
    {
      v18 = 0;
      v19 = 0;
      v4 = *(_DWORD **)(v2 + 12);
      v21 = 0;
      v17 = 0;
      v20 = 1065353216;
      v16 = 1065353216;
      v5 = v3 + 56;
      v6 = COERCE_DOUBLE(gameswf::as_value::to_number((gameswf::as_value *)(*v4 + 12 * *(_DWORD *)(v2 + 20)), 1065353216, nullptr));
      v8 = COERCE_DOUBLE(
             gameswf::as_value::to_number(
               (gameswf::as_value *)(**(_DWORD **)(v2 + 12) + 12 * (*(_DWORD *)(v2 + 20) - 1)),
               SHIDWORD(v6),
               v7));
      v9 = v6;
      v10 = v9;
      v11 = v8;
      gameswf::matrix::set_scale_rotation((gameswf::matrix *)&v16, v10, v11, 0.0);
      gameswf::matrix::concatenate((float *)&v16, (float *)v5);
      v12 = v17;
      v13 = v18;
      v14 = v19;
      *(_DWORD *)v5 = v16;
      *(_DWORD *)(v5 + 4) = v12;
      *(_DWORD *)(v5 + 8) = v13;
      *(_DWORD *)(v5 + 12) = v14;
      v5 += 16;
      this = v20;
      v15 = v21;
      *(_DWORD *)v5 = v20;
      *(_DWORD *)(v5 + 4) = v15;
    }
  }
  return this;
}


// ===== 7a2348 gameswf::as_matrix_rotate(gameswf::fn_call const&) =====
int __fastcall gameswf::as_matrix_rotate(int this, const gameswf::fn_call *a2)
{
  int v2; // r7
  _DWORD *v3; // r1
  int v4; // r5
  float v5; // r0
  int v6; // r1
  int v7; // r2
  int v8; // r3
  int v9; // r1
  int v10; // [sp+0h] [bp-1Ch] BYREF
  int v11; // [sp+4h] [bp-18h]
  int v12; // [sp+8h] [bp-14h]
  int v13; // [sp+Ch] [bp-10h]
  int v14; // [sp+10h] [bp-Ch]
  int v15; // [sp+14h] [bp-8h]

  v2 = this;
  if ( *(int *)(this + 16) > 0 )
  {
    this = gameswf::cast_to<gameswf::as_matrix>(*(_DWORD *)(this + 4));
    if ( this )
    {
      v12 = 0;
      v13 = 0;
      v3 = *(_DWORD **)(v2 + 12);
      v15 = 0;
      v11 = 0;
      v10 = 1065353216;
      v14 = 1065353216;
      v4 = this + 56;
      v5 = COERCE_DOUBLE(
             gameswf::as_value::to_number(
               (gameswf::as_value *)(*v3 + 12 * *(_DWORD *)(v2 + 20)),
               (int)v3,
               (const char *)*(_DWORD *)(v2 + 20)));
      gameswf::matrix::set_scale_rotation((gameswf::matrix *)&v10, 1.0, 1.0, v5);
      gameswf::matrix::concatenate((float *)&v10, (float *)v4);
      v6 = v11;
      v7 = v12;
      v8 = v13;
      *(_DWORD *)v4 = v10;
      *(_DWORD *)(v4 + 4) = v6;
      *(_DWORD *)(v4 + 8) = v7;
      *(_DWORD *)(v4 + 12) = v8;
      v4 += 16;
      this = v14;
      v9 = v15;
      *(_DWORD *)v4 = v14;
      *(_DWORD *)(v4 + 4) = v9;
    }
  }
  return this;
}


// ===== 7a23f4 gameswf::as_matrix_translate(gameswf::fn_call const&) =====
int __fastcall gameswf::as_matrix_translate(int this, const gameswf::fn_call *a2)
{
  int v2; // r5
  int v3; // r4
  _DWORD *v4; // r0
  float v5; // r0
  int v6; // r1
  float v7; // r8
  const char *v8; // r2
  float v9; // r0
  float v10; // r5
  float v11; // r5
  int v12; // r4
  int v13; // r1
  float v14; // r2
  float v15; // r3
  float v16; // r1
  int v17; // [sp+0h] [bp-18h] BYREF
  int v18; // [sp+4h] [bp-14h]
  float v19; // [sp+8h] [bp-10h]
  float v20; // [sp+Ch] [bp-Ch]
  float v21; // [sp+10h] [bp-8h]
  float v22; // [sp+14h] [bp-4h]

  v2 = this;
  if ( *(int *)(this + 16) > 1 )
  {
    this = gameswf::cast_to<gameswf::as_matrix>(*(_DWORD *)(this + 4));
    v3 = this;
    if ( this )
    {
      v19 = 0.0;
      v20 = 0.0;
      v4 = *(_DWORD **)(v2 + 12);
      v22 = 0.0;
      v18 = 0;
      v21 = 1.0;
      v17 = 1065353216;
      v5 = COERCE_DOUBLE(gameswf::as_value::to_number((gameswf::as_value *)(*v4 + 12 * *(_DWORD *)(v2 + 20)), 1065353216, nullptr));
      v7 = v5;
      v9 = COERCE_DOUBLE(
             gameswf::as_value::to_number(
               (gameswf::as_value *)(**(_DWORD **)(v2 + 12) + 12 * (*(_DWORD *)(v2 + 20) - 1)),
               v6,
               v8));
      v10 = (float)((float)(v7 * 1.0) + (float)(v9 * 0.0)) + 0.0;
      if ( v10 < -3.4028e38 || v10 > 3.4028e38 )
        v10 = 0.0;
      v19 = v10;
      v11 = (float)((float)(v7 * v20) + (float)(v9 * v21)) + v22;
      if ( v11 < -3.4028e38 || v11 > 3.4028e38 )
        v11 = 0.0;
      v12 = v3 + 56;
      v22 = v11;
      gameswf::matrix::concatenate((float *)&v17, (float *)v12);
      v13 = v18;
      v14 = v19;
      v15 = v20;
      *(_DWORD *)v12 = v17;
      *(_DWORD *)(v12 + 4) = v13;
      *(float *)(v12 + 8) = v14;
      *(float *)(v12 + 12) = v15;
      v12 += 16;
      this = LODWORD(v21);
      v16 = v22;
      *(float *)v12 = v21;
      *(float *)(v12 + 4) = v16;
    }
  }
  return this;
}


// ===== 7a2584 gameswf::as_mcloader::is(int) =====
bool __fastcall gameswf::as_mcloader::is(gameswf::as_mcloader *this, int a2)
{
  return a2 == 36 || a2 == 0;
}


// ===== 7a259c gameswf::cast_to<gameswf::as_mcloader>(gameswf::as_object_interface *) =====
int __fastcall gameswf::cast_to<gameswf::as_mcloader>(int a1)
{
  if ( a1 && (*(int (__fastcall **)(int, int))(*(_DWORD *)a1 + 8))(a1, 36) )
    return a1;
  else
    return 0;
}


// ===== 7a25d0 gameswf::array<gameswf::as_mcloader::loadable_movie>::reserve(int) =====
void __fastcall gameswf::array<gameswf::as_mcloader::loadable_movie>::reserve(int a1, int a2)
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


// ===== 7a264c gameswf::array<gameswf::as_value>::push_back<gameswf::character *>(gameswf::character * const&) =====
int __fastcall gameswf::array<gameswf::as_value>::push_back<gameswf::character *>(_DWORD *a1, int *a2)
{
  int v2; // r3
  int v4; // r5
  int result; // r0
  int v7; // r2

  v2 = a1[1];
  v4 = v2 + 1;
  if ( v2 + 1 > a1[2] )
  {
    gameswf::array<gameswf::as_value>::reserve((int)a1, v4 + (v4 >> 1));
    v2 = a1[1];
  }
  result = *a2;
  v7 = *a1 + 12 * v2;
  *(_BYTE *)v7 = 0;
  *(_BYTE *)(v7 + 1) = 5;
  *(_DWORD *)(v7 + 4) = result;
  if ( result )
    result = gameswf::ref_counted::add_ref(result);
  a1[1] = v4;
  return result;
}


// ===== 7a26b8 gameswf::array<gameswf::as_mcloader::loadable_movie>::push_back<gameswf::as_mcloader::loadable_movie>(gameswf::as_mcloader::loadable_movie const&) =====
int __fastcall gameswf::array<gameswf::as_mcloader::loadable_movie>::push_back<gameswf::as_mcloader::loadable_movie>(
        int *a1,
        int *a2)
{
  int v2; // r3
  int v4; // r6
  int result; // r0
  int v7; // r7
  bool v8; // zf
  _DWORD *v9; // r7
  _DWORD *v10; // r3

  v2 = a1[1];
  v4 = v2 + 1;
  if ( v2 + 1 > a1[2] )
  {
    gameswf::array<gameswf::as_mcloader::loadable_movie>::reserve((int)a1, v4 + (v4 >> 1));
    v2 = a1[1];
  }
  result = *a2;
  v7 = *a1;
  v8 = *a2 == 0;
  *(_DWORD *)(*a1 + 16 * v2) = *a2;
  v9 = (_DWORD *)(v7 + 16 * v2);
  if ( !v8 )
    result = gameswf::ref_counted::add_ref(result);
  v10 = (_DWORD *)a2[1];
  v9[1] = v10;
  if ( v10 )
    ++*v10;
  v9[2] = a2[2];
  v9[3] = a2[3];
  a1[1] = v4;
  return result;
}


// ===== 7a2734 gameswf::as_mcloader::loadable_movie::~loadable_movie() =====
void __fastcall gameswf::as_mcloader::loadable_movie::~loadable_movie(gameswf::as_mcloader::loadable_movie *this)
{
  _DWORD *v2; // r0

  v2 = *((_DWORD **)this + 1);
  if ( v2 )
  {
    if ( (*v2)-- == 1 )
      gameswf::free_internal(v2);
  }
  if ( *(_DWORD *)this )
    gameswf::ref_counted::drop_ref(*(void (__fastcall ****)(_DWORD))this);
}


// ===== 7a277c gameswf::smart_ptr<gameswf::movie_def_impl>::set_ref(gameswf::movie_def_impl*) =====
void __fastcall gameswf::smart_ptr<gameswf::movie_def_impl>::set_ref(
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


// ===== 7a27bc gameswf::as_mcloader_unloadclip(gameswf::fn_call const&) =====
void __fastcall gameswf::as_mcloader_unloadclip(gameswf::as_environment **this, const gameswf::fn_call *a2)
{
  if ( *(this + 4) == (gameswf::as_environment *)((char *)&dword_0 + 1) )
  {
    gameswf::as_environment::load_file(
      *(this + 3),
      "",
      (const gameswf::as_value *)(*(_DWORD *)*(this + 3) + 12 * (_DWORD)*(this + 5)));
    gameswf::as_value::set_bool(*this, 1);
  }
  else
  {
    gameswf::as_value::set_bool(*this, 0);
  }
}


// ===== 7a2814 gameswf::as_mcloader_removelistener(gameswf::fn_call const&) =====
void __fastcall gameswf::as_mcloader_removelistener(gameswf *this, const gameswf::fn_call *a2)
{
  int v3; // r0
  gameswf::listener *v4; // r0
  int v5; // r3
  gameswf::as_object *v6; // r1

  v3 = gameswf::cast_to<gameswf::as_mcloader>(*((_DWORD *)this + 1));
  if ( *((_DWORD *)this + 4) == 1 )
  {
    v4 = (gameswf::listener *)(v3 + 56);
    v5 = **((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5);
    if ( *(_BYTE *)(v5 + 1) == 5 )
      v6 = *(gameswf::as_object **)(v5 + 4);
    else
      v6 = nullptr;
    gameswf::listener::remove(v4, v6);
    gameswf::as_value::set_bool(*(gameswf::as_value **)this, 1);
  }
  else
  {
    gameswf::as_value::set_bool(*(gameswf::as_value **)this, 0);
  }
}


// ===== 7a287c gameswf::as_mcloader_addlistener(gameswf::fn_call const&) =====
void __fastcall gameswf::as_mcloader_addlistener(gameswf *this, const gameswf::fn_call *a2)
{
  int v3; // r0
  gameswf::as_object *v4; // r5
  gameswf::listener *v5; // r0
  int v6; // r3
  gameswf::as_object *v7; // r1
  int v8; // r0

  v3 = gameswf::cast_to<gameswf::as_mcloader>(*((_DWORD *)this + 1));
  v4 = (gameswf::as_object *)v3;
  if ( *((_DWORD *)this + 4) == 1 )
  {
    v5 = (gameswf::listener *)(v3 + 56);
    v6 = **((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5);
    if ( *(_BYTE *)(v6 + 1) == 5 )
      v7 = *(gameswf::as_object **)(v6 + 4);
    else
      v7 = nullptr;
    gameswf::listener::add(v5, v7);
    gameswf::as_value::set_bool(*(gameswf::as_value **)this, 1);
    v8 = (*(int (__fastcall **)(gameswf::as_object *))(*(_DWORD *)v4 + 84))(v4);
    gameswf::listener::add((gameswf::listener *)(v8 + 184), v4);
  }
  else
  {
    gameswf::as_value::set_bool(*(gameswf::as_value **)this, 0);
  }
}


// ===== 7a2904 gameswf::array<gameswf::as_mcloader::loadable_movie>::resize(int) [clone] =====
void __fastcall gameswf::array<gameswf::as_mcloader::loadable_movie>::resize(_DWORD *a1)
{
  int v1; // r4
  int i; // r5
  gameswf::as_mcloader::loadable_movie *v4; // r0
  int v5; // r2
  _DWORD *v6; // r1

  v1 = a1[1];
  if ( v1 > 0 )
  {
    for ( i = 0; i != v1; ++i )
    {
      v4 = (gameswf::as_mcloader::loadable_movie *)(*a1 + 16 * i);
      gameswf::as_mcloader::loadable_movie::~loadable_movie(v4);
    }
    goto LABEL_4;
  }
  if ( v1 >= 0 )
  {
LABEL_4:
    a1[1] = 0;
    return;
  }
  v5 = 16 * v1;
  do
  {
    ++v1;
    v6 = (_DWORD *)(*a1 + v5);
    *v6 = 0;
    v6[3] = 0;
    v6[1] = 0;
    v6[2] = 0;
    v5 += 16;
  }
  while ( v1 );
  a1[1] = 0;
}


// ===== 7a297c gameswf::array<gameswf::as_mcloader::loadable_movie>::remove(int) =====
void __fastcall gameswf::array<gameswf::as_mcloader::loadable_movie>::remove(_DWORD *a1, int a2)
{
  int v4; // r5

  if ( a1[1] == 1 )
  {
    gameswf::array<gameswf::as_mcloader::loadable_movie>::resize(a1);
  }
  else
  {
    v4 = 16 * a2;
    gameswf::as_mcloader::loadable_movie::~loadable_movie((gameswf::as_mcloader::loadable_movie *)(*a1 + 16 * a2));
    memmove((void *)(*a1 + v4), (const void *)(*a1 + 16 * (a2 + 1)), 16 * (--a1[1] - a2));
  }
}


// ===== 7a29dc gameswf::array<gameswf::as_value>::resize(int) [clone] =====
void __fastcall gameswf::array<gameswf::as_value>::resize(_DWORD *a1)
{
  int v1; // r4
  int v3; // r5
  int i; // r6
  int v5; // r3
  _BYTE *v6; // r0

  v1 = a1[1];
  if ( v1 <= 0 )
  {
    if ( v1 < 0 )
    {
      v5 = 12 * v1;
      do
      {
        ++v1;
        v6 = (_BYTE *)(*a1 + v5);
        *v6 = 0;
        v6[1] = 0;
        v5 += 12;
      }
      while ( v1 );
    }
  }
  else
  {
    v3 = 0;
    for ( i = 0; i != v1; ++i )
    {
      gameswf::as_value::drop_refs((gameswf::as_value *)(*a1 + v3));
      v3 += 12;
    }
  }
  a1[1] = 0;
}


// ===== 7a2a58 gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::resize(int) [clone] =====
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


// ===== 7a2aec gameswf::as_mcloader::~as_mcloader() =====
void __fastcall gameswf::as_mcloader::~as_mcloader(gameswf::as_mcloader *this)
{
  char *v2; // r6
  _DWORD *v3; // r5

  *(_DWORD *)this = off_990DB8;
  v2 = (char *)this + 72;
  v3 = (_DWORD *)((char *)this + 56);
  gameswf::array<gameswf::as_mcloader::loadable_movie>::resize((_DWORD *)this + 18);
  gameswf::array<gameswf::as_mcloader::loadable_movie>::reserve((int)v2, 0);
  gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::resize(v3);
  gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::reserve((int)v3, 0);
  gameswf::as_object::~as_object(this);
}


// ===== 7a2b54 gameswf::as_mcloader::as_mcloader(gameswf::player *) =====
gameswf::as_mcloader *__fastcall gameswf::as_mcloader::as_mcloader(gameswf::as_mcloader *this, gameswf::player *a2)
{
  _BYTE v4[12]; // [sp+4h] [bp-A8h] BYREF
  _BYTE v5[12]; // [sp+10h] [bp-9Ch] BYREF
  _BYTE v6[12]; // [sp+1Ch] [bp-90h] BYREF
  _BYTE v7[12]; // [sp+28h] [bp-84h] BYREF
  _BYTE v8[12]; // [sp+34h] [bp-78h] BYREF
  _BYTE v9[8]; // [sp+40h] [bp-6Ch] BYREF
  void *v10; // [sp+4Ch] [bp-60h]
  _BYTE v11[8]; // [sp+54h] [bp-58h] BYREF
  void *v12; // [sp+60h] [bp-4Ch]
  _BYTE v13[8]; // [sp+68h] [bp-44h] BYREF
  void *v14; // [sp+74h] [bp-38h]
  _BYTE v15[8]; // [sp+7Ch] [bp-30h] BYREF
  void *v16; // [sp+88h] [bp-24h]
  _BYTE v17[8]; // [sp+90h] [bp-1Ch] BYREF
  void *p; // [sp+9Ch] [bp-10h]

  gameswf::as_object::as_object(this, a2);
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *(_DWORD *)this = off_990DB8;
  *((_DWORD *)this + 16) = 0;
  *((_BYTE *)this + 68) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_BYTE *)this + 84) = 0;
  gameswf::tu_string::tu_string((gameswf::tu_string *)v17, "addListener");
  v8[1] = 0;
  v8[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v8,
    (void (*)(const gameswf::fn_call *))gameswf::as_mcloader_addlistener);
  gameswf::as_object::builtin_member((int)this, (int)v17, v8);
  gameswf::as_value::drop_refs((gameswf::as_value *)v8);
  if ( v17[0] == -1 )
    gameswf::free_internal(p);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v15, "removeListener");
  v7[1] = 0;
  v7[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v7,
    (void (*)(const gameswf::fn_call *))gameswf::as_mcloader_removelistener);
  gameswf::as_object::builtin_member((int)this, (int)v15, v7);
  gameswf::as_value::drop_refs((gameswf::as_value *)v7);
  if ( v15[0] == -1 )
    gameswf::free_internal(v16);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v13, "loadClip");
  v6[1] = 0;
  v6[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v6,
    (void (*)(const gameswf::fn_call *))gameswf::as_mcloader_loadclip);
  gameswf::as_object::builtin_member((int)this, (int)v13, v6);
  gameswf::as_value::drop_refs((gameswf::as_value *)v6);
  if ( v13[0] == -1 )
    gameswf::free_internal(v14);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v11, "unloadClip");
  v5[1] = 0;
  v5[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v5,
    (void (*)(const gameswf::fn_call *))gameswf::as_mcloader_unloadclip);
  gameswf::as_object::builtin_member((int)this, (int)v11, v5);
  gameswf::as_value::drop_refs((gameswf::as_value *)v5);
  if ( v11[0] == -1 )
    gameswf::free_internal(v12);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v9, "getProgress");
  v4[1] = 0;
  v4[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v4,
    (void (*)(const gameswf::fn_call *))gameswf::as_mcloader_getprogress);
  gameswf::as_object::builtin_member((int)this, (int)v9, v4);
  gameswf::as_value::drop_refs((gameswf::as_value *)v4);
  if ( v9[0] == -1 )
    gameswf::free_internal(v10);
  return this;
}


// ===== 7a2e0c gameswf::as_mcloader::as_mcloader(gameswf::player *) =====
gameswf::as_mcloader *__fastcall gameswf::as_mcloader::as_mcloader(gameswf::as_mcloader *this, gameswf::player *a2)
{
  _BYTE v4[12]; // [sp+4h] [bp-A8h] BYREF
  _BYTE v5[12]; // [sp+10h] [bp-9Ch] BYREF
  _BYTE v6[12]; // [sp+1Ch] [bp-90h] BYREF
  _BYTE v7[12]; // [sp+28h] [bp-84h] BYREF
  _BYTE v8[12]; // [sp+34h] [bp-78h] BYREF
  _BYTE v9[8]; // [sp+40h] [bp-6Ch] BYREF
  void *v10; // [sp+4Ch] [bp-60h]
  _BYTE v11[8]; // [sp+54h] [bp-58h] BYREF
  void *v12; // [sp+60h] [bp-4Ch]
  _BYTE v13[8]; // [sp+68h] [bp-44h] BYREF
  void *v14; // [sp+74h] [bp-38h]
  _BYTE v15[8]; // [sp+7Ch] [bp-30h] BYREF
  void *v16; // [sp+88h] [bp-24h]
  _BYTE v17[8]; // [sp+90h] [bp-1Ch] BYREF
  void *p; // [sp+9Ch] [bp-10h]

  gameswf::as_object::as_object(this, a2);
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *(_DWORD *)this = off_990DB8;
  *((_DWORD *)this + 16) = 0;
  *((_BYTE *)this + 68) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_BYTE *)this + 84) = 0;
  gameswf::tu_string::tu_string((gameswf::tu_string *)v17, "addListener");
  v8[1] = 0;
  v8[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v8,
    (void (*)(const gameswf::fn_call *))gameswf::as_mcloader_addlistener);
  gameswf::as_object::builtin_member((int)this, (int)v17, v8);
  gameswf::as_value::drop_refs((gameswf::as_value *)v8);
  if ( v17[0] == -1 )
    gameswf::free_internal(p);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v15, "removeListener");
  v7[1] = 0;
  v7[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v7,
    (void (*)(const gameswf::fn_call *))gameswf::as_mcloader_removelistener);
  gameswf::as_object::builtin_member((int)this, (int)v15, v7);
  gameswf::as_value::drop_refs((gameswf::as_value *)v7);
  if ( v15[0] == -1 )
    gameswf::free_internal(v16);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v13, "loadClip");
  v6[1] = 0;
  v6[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v6,
    (void (*)(const gameswf::fn_call *))gameswf::as_mcloader_loadclip);
  gameswf::as_object::builtin_member((int)this, (int)v13, v6);
  gameswf::as_value::drop_refs((gameswf::as_value *)v6);
  if ( v13[0] == -1 )
    gameswf::free_internal(v14);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v11, "unloadClip");
  v5[1] = 0;
  v5[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v5,
    (void (*)(const gameswf::fn_call *))gameswf::as_mcloader_unloadclip);
  gameswf::as_object::builtin_member((int)this, (int)v11, v5);
  gameswf::as_value::drop_refs((gameswf::as_value *)v5);
  if ( v11[0] == -1 )
    gameswf::free_internal(v12);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v9, "getProgress");
  v4[1] = 0;
  v4[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v4,
    (void (*)(const gameswf::fn_call *))gameswf::as_mcloader_getprogress);
  gameswf::as_object::builtin_member((int)this, (int)v9, v4);
  gameswf::as_value::drop_refs((gameswf::as_value *)v4);
  if ( v9[0] == -1 )
    gameswf::free_internal(v10);
  return this;
}


// ===== 7a30c4 gameswf::as_mcloader::~as_mcloader() =====
void __fastcall gameswf::as_mcloader::~as_mcloader(gameswf::as_mcloader *this)
{
  char *v2; // r6
  _DWORD *v3; // r5

  *(_DWORD *)this = off_990DB8;
  v2 = (char *)this + 72;
  v3 = (_DWORD *)((char *)this + 56);
  gameswf::array<gameswf::as_mcloader::loadable_movie>::resize((_DWORD *)this + 18);
  gameswf::array<gameswf::as_mcloader::loadable_movie>::reserve((int)v2, 0);
  gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::resize(v3);
  gameswf::array<gameswf::weak_ptr<gameswf::as_object>>::reserve((int)v3, 0);
  gameswf::as_object::~as_object(this);
}


// ===== 7a312c gameswf::as_mcloader::~as_mcloader() =====
void __fastcall gameswf::as_mcloader::~as_mcloader(gameswf::as_mcloader *this)
{
  gameswf::as_mcloader::~as_mcloader(this);
  LC_API_FREE_0(this);
}


// ===== 7a3148 gameswf::as_mcloader::advance(float) =====
void __fastcall gameswf::as_mcloader::advance(gameswf::as_mcloader *this, float a2)
{
  int v2; // r3
  int v4; // r7
  _DWORD *v5; // r9
  int *v6; // r1
  int v7; // r10
  int *v8; // r1
  _DWORD *v9; // r10
  int loaded_bytes; // r0
  int v11; // r3
  int v12; // r3
  int v13; // r3
  _BYTE *v14; // r0
  int v16; // r0
  _DWORD *v17; // [sp+4h] [bp-50h]
  _DWORD v18[3]; // [sp+18h] [bp-3Ch] BYREF
  char v19; // [sp+24h] [bp-30h]
  _BYTE v20[2]; // [sp+28h] [bp-2Ch] BYREF
  __int16 v21; // [sp+2Ah] [bp-2Ah]
  _DWORD *v22; // [sp+2Ch] [bp-28h]
  _BYTE v23[2]; // [sp+30h] [bp-24h] BYREF
  __int16 v24; // [sp+32h] [bp-22h]
  _DWORD *v25; // [sp+34h] [bp-20h]
  _BYTE v26[2]; // [sp+38h] [bp-1Ch] BYREF
  __int16 v27; // [sp+3Ah] [bp-1Ah]
  _DWORD *v28; // [sp+3Ch] [bp-18h]
  _BYTE v29[2]; // [sp+40h] [bp-14h] BYREF
  __int16 v30; // [sp+42h] [bp-12h]
  _DWORD *v31; // [sp+44h] [bp-10h]
  int file_bytes; // [sp+48h] [bp-Ch] BYREF
  int v33[2]; // [sp+4Ch] [bp-8h] BYREF

  v2 = *((_DWORD *)this + 19);
  if ( v2 )
  {
    v17 = (_DWORD *)((char *)this + 72);
    v4 = 0;
    v5 = (_DWORD *)((char *)this + 56);
    if ( v2 > 0 )
    {
      do
      {
        v6 = (int *)(*((_DWORD *)this + 18) + 16 * v4 + 12);
        memset(v18, 0, sizeof(v18));
        v19 = 0;
        gameswf::array<gameswf::as_value>::push_back<gameswf::character *>(v18, v6);
        v7 = *((_DWORD *)this + 18);
        v8 = *(int **)(v7 + 16 * v4);
        v9 = (_DWORD *)(v7 + 16 * v4);
        if ( v8[15] > 0 && !v9[3] )
        {
          v13 = v9[2];
          if ( v13 )
          {
            v14 = (_BYTE *)v9[1];
            if ( v14[4] )
            {
              v9[3] = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v13 + 176))(v9[2]);
            }
            else
            {
              if ( (*(_DWORD *)v14)-- == 1 )
                gameswf::free_internal(v14);
              v9[2] = 0;
              v9[1] = 0;
            }
          }
          v29[0] = 24;
          v29[1] = 0;
          v30 = 0;
          v31 = v18;
          gameswf::listener::notify(v5, (int)v29);
          v8 = *(int **)(*((_DWORD *)this + 18) + 16 * v4);
        }
        loaded_bytes = gameswf::movie_def_impl::get_loaded_bytes((gameswf::movie_def_impl *)v8);
        v11 = *((_DWORD *)this + 18);
        v33[0] = loaded_bytes;
        file_bytes = gameswf::movie_def_impl::get_file_bytes(*(gameswf::movie_def_impl **)(v11 + 16 * v4));
        if ( file_bytes <= v33[0] )
        {
          gameswf::array<gameswf::as_value>::push_back<int>(v18, v33);
          gameswf::array<gameswf::as_value>::push_back<int>(v18, &file_bytes);
          v24 = 0;
          v23[0] = 25;
          v23[1] = 0;
          v25 = v18;
          gameswf::listener::notify(v5, (int)v23);
          v20[0] = 22;
          v21 = 0;
          v20[1] = 0;
          v22 = v18;
          gameswf::listener::notify(v5, (int)v20);
          gameswf::array<gameswf::as_mcloader::loadable_movie>::remove(v17, v4);
          gameswf::array<gameswf::as_value>::resize(v18);
          gameswf::array<gameswf::as_value>::reserve((int)v18, 0);
          v12 = *((_DWORD *)this + 19);
        }
        else
        {
          gameswf::array<gameswf::as_value>::push_back<int>(v18, v33);
          gameswf::array<gameswf::as_value>::push_back<int>(v18, &file_bytes);
          v26[0] = 25;
          v27 = 0;
          v26[1] = 0;
          v28 = v18;
          gameswf::listener::notify(v5, (int)v26);
          gameswf::array<gameswf::as_value>::resize(v18);
          gameswf::array<gameswf::as_value>::reserve((int)v18, 0);
          v12 = *((_DWORD *)this + 19);
          ++v4;
        }
      }
      while ( v4 < v12 );
    }
  }
  else
  {
    v16 = (*(int (__fastcall **)(gameswf::as_mcloader *, _DWORD))(*(_DWORD *)this + 84))(this, LODWORD(a2));
    gameswf::listener::remove((gameswf::listener *)(v16 + 184), this);
  }
}


// ===== 7a33b4 gameswf::as_mcloader_getprogress(gameswf::fn_call const&) =====
void __fastcall gameswf::as_mcloader_getprogress(gameswf *this, const gameswf::fn_call *a2)
{
  int v3; // r3
  gameswf::sprite_instance *v4; // r8
  int v5; // r7
  gameswf::player *v6; // r10
  _BYTE *v7; // r0
  gameswf::as_object *v8; // r7
  void (__fastcall *v9)(gameswf::as_object *, _BYTE *, _BYTE *); // r9
  void (__fastcall *v10)(gameswf::as_object *, _BYTE *, _BYTE *); // r10
  _BYTE v12[4]; // [sp+0h] [bp-54h] BYREF
  double v13; // [sp+4h] [bp-50h]
  _BYTE v14[4]; // [sp+Ch] [bp-48h] BYREF
  double v15; // [sp+10h] [bp-44h]
  double loaded_bytes; // [sp+18h] [bp-3Ch]
  _BYTE v17[8]; // [sp+24h] [bp-30h] BYREF
  void *p; // [sp+30h] [bp-24h]
  _BYTE v19[8]; // [sp+38h] [bp-1Ch] BYREF
  void *v20; // [sp+44h] [bp-10h]

  if ( *((_DWORD *)this + 4) == 1
    && (v3 = **((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5), *(_BYTE *)(v3 + 1) == 5)
    && (v4 = *(gameswf::sprite_instance **)(v3 + 4)) != nullptr
    && (*(int (__fastcall **)(gameswf::sprite_instance *, int))(*(_DWORD *)v4 + 8))(v4, 2) )
  {
    v5 = *((_DWORD *)this + 3);
    v6 = *(gameswf::player **)(v5 + 104);
    if ( v6 )
    {
      v7 = *(_BYTE **)(v5 + 100);
      if ( !v7[4] )
      {
        if ( (*(_DWORD *)v7)-- == 1 )
          gameswf::free_internal(v7);
        v6 = nullptr;
        *(_DWORD *)(v5 + 104) = 0;
        *(_DWORD *)(v5 + 100) = 0;
      }
    }
    v8 = (gameswf::as_object *)operator new(0x38u, 0);
    gameswf::as_object::as_object(v8, v6);
    v9 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v8 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v19, "bytesLoaded");
    v14[0] = 0;
    v14[1] = 2;
    loaded_bytes = (double)(int)gameswf::sprite_instance::get_loaded_bytes(v4);
    v15 = loaded_bytes;
    v9(v8, v19, v14);
    gameswf::as_value::drop_refs((gameswf::as_value *)v14);
    if ( v19[0] == -1 )
      gameswf::free_internal(v20);
    v10 = *(void (__fastcall **)(gameswf::as_object *, _BYTE *, _BYTE *))(*(_DWORD *)v8 + 28);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v17, "bytesTotal");
    v12[0] = 0;
    v12[1] = 2;
    loaded_bytes = (double)(int)gameswf::sprite_instance::get_file_bytes(v4);
    v13 = loaded_bytes;
    v10(v8, v17, v12);
    gameswf::as_value::drop_refs((gameswf::as_value *)v12);
    if ( v17[0] == -1 )
      gameswf::free_internal(p);
    gameswf::as_value::set_as_object(*(gameswf::as_value **)this, v8);
  }
  else
  {
    gameswf::as_value::set_as_object(*(gameswf::as_value **)this, nullptr);
  }
}


// ===== 7a35e0 gameswf::as_global_mcloader_ctor(gameswf::fn_call const&) =====
void __fastcall gameswf::as_global_mcloader_ctor(gameswf *this, const gameswf::fn_call *a2)
{
  int v2; // r4
  gameswf::as_value *v3; // r6
  gameswf::player *v4; // r5
  _BYTE *v5; // r0
  gameswf::as_mcloader *v6; // r4

  v2 = *((_DWORD *)this + 3);
  v3 = *(gameswf::as_value **)this;
  v4 = *(gameswf::player **)(v2 + 104);
  if ( v4 )
  {
    v5 = *(_BYTE **)(v2 + 100);
    if ( !v5[4] )
    {
      if ( (*(_DWORD *)v5)-- == 1 )
        gameswf::free_internal(v5);
      v4 = nullptr;
      *(_DWORD *)(v2 + 104) = 0;
      *(_DWORD *)(v2 + 100) = 0;
    }
  }
  v6 = (gameswf::as_mcloader *)operator new(0x58u, 0);
  gameswf::as_mcloader::as_mcloader(v6, v4);
  gameswf::as_value::set_as_object(v3, v6);
}


// ===== 7a3658 gameswf::as_mcloader_loadclip(gameswf::fn_call const&) =====
void __fastcall gameswf::as_mcloader_loadclip(gameswf *this, const gameswf::fn_call *a2)
{
  int v3; // r8
  int v4; // r10
  gameswf::player *v5; // r0
  _BYTE *v6; // r3
  char *workdir; // r0
  char *v8; // r0
  int v9; // r9
  gameswf::player *v10; // r0
  _BYTE *v11; // r3
  const char *v12; // r1
  gameswf::movie_def_impl *movie; // r0
  gameswf::ref_counted *v14; // r10
  gameswf::ref_counted *v15; // r1
  gameswf::ref_counted *target; // r0
  gameswf::ref_counted *v17; // r9
  gameswf::ref_counted *v18; // r1
  bool v19; // zf
  int v20; // r3
  int v21; // r10
  int v22; // r3
  gameswf::ref_counted *v23; // [sp+0h] [bp-68h] BYREF
  _DWORD v24[3]; // [sp+4h] [bp-64h] BYREF
  int v25; // [sp+10h] [bp-58h] BYREF
  int v26; // [sp+14h] [bp-54h]
  int v27; // [sp+18h] [bp-50h]
  char v28; // [sp+1Ch] [bp-4Ch]
  _BYTE v29[12]; // [sp+20h] [bp-48h] BYREF
  _BYTE v30[2]; // [sp+2Ch] [bp-3Ch] BYREF
  __int16 v31; // [sp+2Eh] [bp-3Ah]
  int *v32; // [sp+30h] [bp-38h]
  _BYTE v33[2]; // [sp+34h] [bp-34h] BYREF
  __int16 v34; // [sp+36h] [bp-32h]
  int *v35; // [sp+38h] [bp-30h]
  _BYTE v36[8]; // [sp+3Ch] [bp-2Ch] BYREF
  void *v37; // [sp+48h] [bp-20h]
  char v38; // [sp+50h] [bp-18h] BYREF
  _BYTE v39[3]; // [sp+51h] [bp-17h] BYREF
  void *p; // [sp+5Ch] [bp-Ch]

  v3 = gameswf::cast_to<gameswf::as_mcloader>(*((_DWORD *)this + 1));
  gameswf::as_value::set_bool(*(gameswf::as_value **)this, 0);
  if ( *((_DWORD *)this + 4) == 2 )
  {
    v29[1] = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29[0] = 0;
    gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(&v25);
    gameswf::as_value::drop_refs((gameswf::as_value *)v29);
    v4 = *((_DWORD *)this + 3);
    v5 = *(gameswf::player **)(v4 + 104);
    if ( v5 )
    {
      v6 = *(_BYTE **)(v4 + 100);
      if ( !v6[4] )
      {
        v19 = (*(_DWORD *)v6)-- == 1;
        if ( v19 )
          gameswf::free_internal(v6);
        v5 = nullptr;
        *(_DWORD *)(v4 + 104) = 0;
        *(_DWORD *)(v4 + 100) = 0;
      }
    }
    workdir = gameswf::player::get_workdir(v5);
    gameswf::tu_string::tu_string((gameswf::tu_string *)v36, workdir);
    v8 = gameswf::as_value::to_string((gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)));
    gameswf::get_full_url((gameswf *)&v38, (const gameswf::tu_string *)v36, v8);
    if ( v36[0] == -1 )
      gameswf::free_internal(v37);
    v9 = *((_DWORD *)this + 3);
    v10 = *(gameswf::player **)(v9 + 104);
    if ( v10 )
    {
      v11 = *(_BYTE **)(v9 + 100);
      if ( !v11[4] )
      {
        v19 = (*(_DWORD *)v11)-- == 1;
        if ( v19 )
          gameswf::free_internal(v11);
        v10 = nullptr;
        *(_DWORD *)(v9 + 104) = 0;
        *(_DWORD *)(v9 + 100) = 0;
      }
    }
    if ( v38 == -1 )
      v12 = (const char *)p;
    else
      v12 = v39;
    movie = gameswf::player::create_movie(v10, v12);
    v14 = movie;
    if ( movie )
    {
      v23 = nullptr;
      memset(v24, 0, sizeof(v24));
      if ( (*(int (__fastcall **)(gameswf::movie_def_impl *, int))(*(_DWORD *)movie + 8))(movie, 8) )
        v15 = v14;
      else
        v15 = nullptr;
      gameswf::smart_ptr<gameswf::movie_def_impl>::set_ref(&v23, v15);
      target = (gameswf::ref_counted *)gameswf::as_environment::find_target(
                                         *((gameswf::as_environment **)this + 3),
                                         (const gameswf::as_value *)(**((_DWORD **)this + 3)
                                                                   + 12 * (*((_DWORD *)this + 5) - 1)));
      v17 = target;
      if ( target && (*(int (__fastcall **)(gameswf::ref_counted *, int))(*(_DWORD *)target + 8))(target, 1) )
        v18 = v17;
      else
        v18 = nullptr;
      gameswf::weak_ptr<gameswf::character>::operator=((int)v24, v18);
      gameswf::array<gameswf::as_mcloader::loadable_movie>::push_back<gameswf::as_mcloader::loadable_movie>(
        (int *)(v3 + 72),
        (int *)&v23);
      v31 = 0;
      v30[1] = 0;
      v30[0] = 26;
      v32 = &v25;
      gameswf::listener::notify((_DWORD *)(v3 + 56), (int)v30);
      gameswf::as_value::set_bool(*(gameswf::as_value **)this, 1);
      gameswf::as_mcloader::loadable_movie::~loadable_movie((gameswf::as_mcloader::loadable_movie *)&v23);
      if ( v38 != -1 )
        goto LABEL_20;
    }
    else
    {
      v20 = v26;
      v21 = v26 + 1;
      if ( v26 + 1 > v27 )
      {
        gameswf::array<gameswf::as_value>::reserve((int)&v25, v21 + (v21 >> 1));
        v20 = v26;
      }
      v22 = v25 + 12 * v20;
      *(_BYTE *)v22 = 0;
      *(_BYTE *)(v22 + 1) = 0;
      gameswf::as_value::set_string((gameswf::tu_string **)v22, "URLNotFound");
      v33[0] = 23;
      v26 = v21;
      v34 = 0;
      v33[1] = 0;
      v35 = &v25;
      gameswf::listener::notify((_DWORD *)(v3 + 56), (int)v33);
      if ( v38 != -1 )
        goto LABEL_20;
    }
    gameswf::free_internal(p);
LABEL_20:
    gameswf::array<gameswf::as_value>::resize(&v25);
    gameswf::array<gameswf::as_value>::reserve((int)&v25, 0);
  }
}


// ===== 7a399c gameswf::as_netconnection::is(int) =====
bool __fastcall gameswf::as_netconnection::is(gameswf::as_netconnection *this, int a2)
{
  return a2 == 29 || a2 == 0;
}


// ===== 7a39b4 gameswf::as_netconnection::~as_netconnection() =====
void __fastcall gameswf::as_netconnection::~as_netconnection(gameswf::as_netconnection *this)
{
  *(_DWORD *)this = off_990E28;
  gameswf::as_object::~as_object(this);
}


// ===== 7a39e8 gameswf::as_netconnection_connect(gameswf::fn_call const&) =====
void __fastcall gameswf::as_netconnection_connect(gameswf *this, const gameswf::fn_call *a2)
{
  int v2; // r3
  int v4; // r1
  gameswf::as_value *v5; // r0
  int v6; // r3

  v2 = *((_DWORD *)this + 1);
  if ( v2 )
    (*(void (__fastcall **)(_DWORD, int))(*(_DWORD *)v2 + 8))(*((_DWORD *)this + 1), 29);
  v4 = *((_DWORD *)this + 4);
  if ( v4 == 1
    && (v6 = **((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5), *(_BYTE *)(v6 + 1) == 5)
    && !*(_DWORD *)(v6 + 4) )
  {
    v5 = *(gameswf::as_value **)this;
  }
  else
  {
    v5 = *(gameswf::as_value **)this;
    LOBYTE(v4) = 0;
  }
  gameswf::as_value::set_bool(v5, v4);
}


// ===== 7a3a64 gameswf::tu_string::tu_string(char const*) [clone] =====
gameswf::tu_string *__fastcall gameswf::tu_string::tu_string(gameswf::tu_string *this, const char *a2)
{
  char *v3; // r0
  unsigned int v5; // r3

  *(_BYTE *)this = 1;
  *((_BYTE *)this + 1) = 0;
  gameswf::tu_string::resize(this, 7);
  if ( *(char *)this == -1 )
    v3 = *((char **)this + 3);
  else
    v3 = (char *)this + 1;
  strcpy(v3, "connect");
  v5 = *((_DWORD *)this + 4) & 0xFF000000 | 0xFFFFFF;
  *((_DWORD *)this + 4) = v5;
  *((_BYTE *)this + 19) = HIBYTE(v5) & 0xFE;
  return this;
}


// ===== 7a3acc gameswf::as_netconnection::as_netconnection(gameswf::player *) =====
gameswf::as_netconnection *__fastcall gameswf::as_netconnection::as_netconnection(
        gameswf::as_netconnection *this,
        gameswf::player *a2)
{
  const char *v3; // r1
  _BYTE v5[12]; // [sp+4h] [bp-24h] BYREF
  char v6[8]; // [sp+10h] [bp-18h] BYREF
  void *p; // [sp+1Ch] [bp-Ch]

  gameswf::as_object::as_object(this, a2);
  *(_DWORD *)this = off_990E28;
  gameswf::tu_string::tu_string((gameswf::tu_string *)v6, v3);
  v5[1] = 0;
  v5[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v5,
    (void (*)(const gameswf::fn_call *))gameswf::as_netconnection_connect);
  gameswf::as_object::set_member((int *)this, v6, (const gameswf::as_value *)v5);
  gameswf::as_value::drop_refs((gameswf::as_value *)v5);
  if ( v6[0] == -1 )
    gameswf::free_internal(p);
  return this;
}


// ===== 7a3b98 gameswf::as_netconnection::as_netconnection(gameswf::player *) =====
gameswf::as_netconnection *__fastcall gameswf::as_netconnection::as_netconnection(
        gameswf::as_netconnection *this,
        gameswf::player *a2)
{
  const char *v3; // r1
  _BYTE v5[12]; // [sp+4h] [bp-24h] BYREF
  char v6[8]; // [sp+10h] [bp-18h] BYREF
  void *p; // [sp+1Ch] [bp-Ch]

  gameswf::as_object::as_object(this, a2);
  *(_DWORD *)this = off_990E28;
  gameswf::tu_string::tu_string((gameswf::tu_string *)v6, v3);
  v5[1] = 0;
  v5[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v5,
    (void (*)(const gameswf::fn_call *))gameswf::as_netconnection_connect);
  gameswf::as_object::set_member((int *)this, v6, (const gameswf::as_value *)v5);
  gameswf::as_value::drop_refs((gameswf::as_value *)v5);
  if ( v6[0] == -1 )
    gameswf::free_internal(p);
  return this;
}


// ===== 7a3c64 gameswf::as_global_netconnection_ctor(gameswf::fn_call const&) =====
void __fastcall gameswf::as_global_netconnection_ctor(gameswf *this, const gameswf::fn_call *a2)
{
  int v2; // r4
  gameswf::as_value *v3; // r5
  gameswf::player *v4; // r6
  gameswf::as_netconnection *v5; // r4

  v2 = *((_DWORD *)this + 3);
  v3 = *(gameswf::as_value **)this;
  gameswf::weak_ptr<gameswf::player>::check_proxy(v2 + 100);
  v4 = *(gameswf::player **)(v2 + 104);
  v5 = (gameswf::as_netconnection *)operator new(0x38u, 0);
  gameswf::as_netconnection::as_netconnection(v5, v4);
  gameswf::as_value::set_as_object(v3, v5);
}


// ===== 7a3ca4 gameswf::as_netconnection::~as_netconnection() =====
void __fastcall gameswf::as_netconnection::~as_netconnection(gameswf::as_netconnection *this)
{
  *(_DWORD *)this = off_990E28;
  gameswf::as_object::~as_object(this);
  LC_API_FREE_0(this);
}


// ===== 7a3ce0 gameswf::as_global_netstream_ctor(gameswf::fn_call const&) =====
const char *__fastcall gameswf::as_global_netstream_ctor(gameswf *this, const gameswf::fn_call *a2)
{
  return gameswf::log_error("video requires FFMPEG library\n", (const char *)a2);
}


// ===== 7a3cf0 gameswf::as_number_valueof(gameswf::fn_call const&) =====
void __fastcall gameswf::as_number_valueof(gameswf *this, const gameswf::fn_call *a2)
{
  ;
}


// ===== 7a3cf4 gameswf::tu_string::operator+=(char) =====
char *__fastcall gameswf::tu_string::operator+=(char *result, int a2)
{
  char *v2; // r4
  int v3; // r5
  int v4; // r5
  char *v5; // r0
  char v6[5]; // [sp+7h] [bp-5h] BYREF

  v2 = result;
  v6[0] = a2;
  if ( a2 )
  {
    v3 = *result;
    if ( v3 == -1 )
      v3 = *((_DWORD *)result + 1);
    v4 = v3 - 1;
    gameswf::tu_string::resize((gameswf::tu_string *)result, v4 + 1);
    if ( *v2 == -1 )
      v5 = *((char **)v2 + 3);
    else
      v5 = v2 + 1;
    result = LC_API_STRNCPY_0(&v5[v4], v6, 1u);
    *((_DWORD *)v2 + 4) = *((_DWORD *)v2 + 4) & 0xFF000000 | 0xFFFFFF;
  }
  return result;
}


// ===== 7a3d5c gameswf::as_number_to_string(gameswf::fn_call const&) =====
void __fastcall gameswf::as_number_to_string(gameswf *this, const gameswf::fn_call *a2)
{
  gameswf *v2; // r5
  _DWORD *v3; // r1
  char v4; // r2
  int v5; // r8
  int v6; // r6
  int v7; // r1
  char v8; // r2
  char *v9; // r5
  double v10; // [sp+8h] [bp-74h]
  gameswf *v11; // [sp+14h] [bp-68h]
  char s[8]; // [sp+18h] [bp-64h] BYREF
  void *p; // [sp+24h] [bp-58h]
  unsigned int v14; // [sp+28h] [bp-54h]
  char v15[8]; // [sp+4Ch] [bp-30h] BYREF
  void *v16; // [sp+58h] [bp-24h]
  char v17; // [sp+60h] [bp-1Ch] BYREF
  char v18; // [sp+61h] [bp-1Bh] BYREF
  void *v19; // [sp+6Ch] [bp-10h]
  unsigned int v20; // [sp+70h] [bp-Ch]

  v2 = this;
  v10 = COERCE_DOUBLE(
          gameswf::as_value::to_number(
            (gameswf::as_value *)*((_DWORD *)this + 2),
            (int)a2,
            (const char *)&elf_hash_bucket[4084]));
  if ( *((int *)v2 + 4) <= 0 )
  {
    snprintf(s, 0x32u, "%.14g", v10);
    gameswf::as_value::set_string(*(gameswf::tu_string ***)v2, s);
  }
  else
  {
    v3 = *((_DWORD **)v2 + 3);
    v4 = ((v20 & 0xFF000000 | 0xFFFFFF) >> 24) & 0xFE;
    v20 = v20 & 0xFF000000 | 0xFFFFFF;
    v17 = 1;
    HIBYTE(v20) = v4;
    v18 = 0;
    v5 = (int)COERCE_DOUBLE(
                gameswf::as_value::to_number(
                  (gameswf::as_value *)(*v3 + 12 * *((_DWORD *)v2 + 5)),
                  (int)v3,
                  (const char *)*((_DWORD *)v2 + 5)));
    if ( (unsigned int)(v5 - 2) <= 0x22 )
    {
      v6 = (int)v10;
      v11 = v2;
      do
      {
        v7 = gameswf::as_number_to_string(gameswf::fn_call const&)::s_hex_digits[v6 % v5];
        v8 = ((v14 & 0xFF000000 | 0xFFFFFF) >> 24) & 0xFE;
        v14 = v14 & 0xFF000000 | 0xFFFFFF;
        v6 /= v5;
        HIBYTE(v14) = v8;
        s[1] = 0;
        s[0] = 1;
        gameswf::tu_string::operator+=(s, v7);
        if ( v17 == -1 )
          v9 = (char *)v19;
        else
          v9 = &v18;
        gameswf::tu_string::tu_string((gameswf::tu_string *)v15, (const gameswf::tu_string *)s);
        gameswf::tu_string::operator+=((gameswf::tu_string *)v15, v9);
        gameswf::tu_string::operator=((gameswf::tu_string *)&v17, v15);
        if ( v15[0] == -1 )
          gameswf::free_internal(v16);
        if ( s[0] == -1 )
          gameswf::free_internal(p);
      }
      while ( v6 > 0 );
      v2 = v11;
    }
    gameswf::as_value::set_tu_string(*(gameswf::as_value **)v2, (const gameswf::tu_string *)&v17);
    if ( v17 == -1 )
      gameswf::free_internal(v19);
  }
}


// ===== 7a3fa8 gameswf::as_global_number_ctor(gameswf::fn_call const&) =====
int __fastcall gameswf::as_global_number_ctor(gameswf::as_value **this, const gameswf::fn_call *a2)
{
  gameswf::as_value *v2; // r4
  __int64 v3; // r2

  if ( *(this + 4) != (gameswf::as_value *)((char *)&dword_0 + 1) )
    return gameswf::as_value::set_double(*this, 0.0);
  v2 = *this;
  v3 = gameswf::as_value::to_number(
         (gameswf::as_value *)(*(_DWORD *)*(this + 3) + 12 * (_DWORD)*(this + 5)),
         (int)a2,
         (const char *)*(this + 5));
  return gameswf::as_value::set_double(v2, *(double *)&v3);
}


// ===== 7a3ffc gameswf::as_global_isnan(gameswf::fn_call const&) =====
void __fastcall gameswf::as_global_isnan(gameswf *this, const gameswf::fn_call *a2)
{
  gameswf::as_value *v3; // r0
  bool v4; // r1

  if ( *((_DWORD *)this + 4) == 1 )
  {
    gameswf::as_value::to_number(
      (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
      (int)a2,
      *((const char **)this + 5));
    v4 = 0;
    v3 = *(gameswf::as_value **)this;
  }
  else
  {
    v3 = *(gameswf::as_value **)this;
    v4 = 1;
  }
  gameswf::as_value::set_bool(v3, v4);
}


// ===== 7a4058 gameswf::as_global_parse_int(gameswf::fn_call const&) =====
int __fastcall gameswf::as_global_parse_int(gameswf *this, const gameswf::fn_call *a2)
{
  int v2; // r3
  char *v4; // r0
  const char *v5; // r2
  int v7; // [sp+4h] [bp-4h] BYREF

  v2 = *((_DWORD *)this + 4);
  if ( v2 == 2 )
  {
    gameswf::log_error("parseInt: radix is not yet supported\n", (const char *)a2);
    v2 = *((_DWORD *)this + 4);
  }
  if ( v2 > 1
    && (v4 = gameswf::as_value::to_string((gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5))),
        gameswf::string_to_number((gameswf *)&v7, v4, v5)) )
  {
    return gameswf::as_value::set_double(*(gameswf::as_value **)this, (double)v7);
  }
  else
  {
    return gameswf::as_value::set_double(*(gameswf::as_value **)this, NAN);
  }
}


// ===== 7a40f8 gameswf::as_global_parse_float(gameswf::fn_call const&) =====
int __fastcall gameswf::as_global_parse_float(gameswf::as_value **this, const gameswf::fn_call *a2)
{
  double *v4; // r0
  const char *v5; // r2
  double v6; // [sp+0h] [bp-8h] BYREF

  if ( *(this + 4) == (gameswf::as_value *)((char *)&dword_0 + 1)
    && (v4 = (double *)gameswf::as_value::to_string((gameswf::as_value *)(*(_DWORD *)*(this + 3)
                                                                        + 12 * (_DWORD)*(this + 5))),
        gameswf::string_to_number((gameswf *)&v6, v4, v5)) )
  {
    return gameswf::as_value::set_double(*this, v6);
  }
  else
  {
    return gameswf::as_value::set_double(*this, NAN);
  }
}


// ===== 7a4168 gameswf::as_point::is(int) =====
bool __fastcall gameswf::as_point::is(gameswf::as_point *this, int a2)
{
  return a2 == 25 || a2 == 0;
}


// ===== 7a4180 gameswf::cast_to<gameswf::as_point>(gameswf::as_object_interface *) =====
int __fastcall gameswf::cast_to<gameswf::as_point>(int a1)
{
  if ( a1 && (*(int (__fastcall **)(int, int))(*(_DWORD *)a1 + 8))(a1, 25) )
    return a1;
  else
    return 0;
}


// ===== 7a41b4 gameswf::as_point::~as_point() =====
void __fastcall gameswf::as_point::~as_point(gameswf::as_point *this)
{
  *(_DWORD *)this = off_990E98;
  gameswf::as_object::~as_object(this);
}


// ===== 7a41e8 gameswf::as_point::get_member(gameswf::tu_stringi const&,gameswf::as_value *) =====
int __fastcall gameswf::as_point::get_member(int a1, _DWORD *a2, gameswf::as_value *a3)
{
  const char *v5; // r0
  float length; // r0
  const char *v8; // r0
  const char *v9; // r0

  if ( *(char *)a2 == -1 )
    v5 = (const char *)a2[3];
  else
    v5 = (char *)a2 + 1;
  if ( gameswf::tu_string::stricmp(v5, "x") )
  {
    if ( *(char *)a2 == -1 )
      v8 = (const char *)a2[3];
    else
      v8 = (char *)a2 + 1;
    if ( gameswf::tu_string::stricmp(v8, "y") )
    {
      if ( *(char *)a2 == -1 )
        v9 = (const char *)a2[3];
      else
        v9 = (char *)a2 + 1;
      if ( gameswf::tu_string::stricmp(v9, "length") )
        return gameswf::as_object::get_member((int *)a1, a2, a3);
      length = gameswf::point::get_length((gameswf::point *)(a1 + 56));
    }
    else
    {
      length = *(float *)(a1 + 60);
    }
  }
  else
  {
    length = *(float *)(a1 + 56);
  }
  gameswf::as_value::set_double(a3, length);
  return 1;
}


// ===== 7a42b0 gameswf::as_point::set_member(gameswf::tu_stringi const&,gameswf::as_value const&) =====
int __fastcall gameswf::as_point::set_member(int a1, char *a2, const gameswf::as_value *a3)
{
  const char *v5; // r0
  int v7; // r1
  const char *v8; // r2
  const char *v9; // r0
  int v10; // r1
  const char *v11; // r2
  float v13; // r0
  float v14; // r0

  if ( *a2 == -1 )
    v5 = *((const char **)a2 + 3);
  else
    v5 = a2 + 1;
  if ( gameswf::tu_string::stricmp(v5, "x") )
  {
    if ( *a2 == -1 )
      v9 = *((const char **)a2 + 3);
    else
      v9 = a2 + 1;
    if ( gameswf::tu_string::stricmp(v9, "y") )
    {
      return gameswf::as_object::set_member((int *)a1, a2, a3);
    }
    else
    {
      v13 = COERCE_DOUBLE(gameswf::as_value::to_number(a3, v10, v11));
      *(float *)(a1 + 60) = v13;
      return 1;
    }
  }
  else
  {
    v14 = COERCE_DOUBLE(gameswf::as_value::to_number(a3, v7, v8));
    *(float *)(a1 + 56) = v14;
    return 1;
  }
}


// ===== 7a4354 gameswf::as_point_normalize(gameswf::fn_call const&) =====
float __fastcall gameswf::as_point_normalize(float this, const gameswf::fn_call *a2)
{
  float v2; // r5
  int v3; // r1
  float v4; // r4
  float v5; // r0
  float v6; // r5
  float v7; // r0

  v2 = this;
  if ( *(int *)(LODWORD(this) + 16) > 0 )
  {
    this = COERCE_FLOAT(gameswf::cast_to<gameswf::as_point>(*(_DWORD *)(LODWORD(this) + 4)));
    v4 = this;
    if ( this != 0.0 )
    {
      v5 = COERCE_DOUBLE(
             gameswf::as_value::to_number(
               (gameswf::as_value *)(**(_DWORD **)(LODWORD(v2) + 12) + 12 * *(_DWORD *)(LODWORD(v2) + 20)),
               v3,
               (const char *)*(_DWORD *)(LODWORD(v2) + 20)));
      v6 = v5;
      LODWORD(this) = v5 == 0.0;
      if ( this == 0.0 )
      {
        v7 = v6
           / sqrtf(
               (float)(*(float *)(LODWORD(v4) + 56) * *(float *)(LODWORD(v4) + 56))
             + (float)(*(float *)(LODWORD(v4) + 60) * *(float *)(LODWORD(v4) + 60)));
        *(float *)(LODWORD(v4) + 56) = *(float *)(LODWORD(v4) + 56) * v7;
        this = *(float *)(LODWORD(v4) + 60) * v7;
        *(float *)(LODWORD(v4) + 60) = this;
      }
    }
  }
  return this;
}


// ===== 7a4410 gameswf::as_point::~as_point() =====
void __fastcall gameswf::as_point::~as_point(gameswf::as_point *this)
{
  *(_DWORD *)this = off_990E98;
  gameswf::as_object::~as_object(this);
  LC_API_FREE_0(this);
}


// ===== 7a444c gameswf::as_point::as_point(gameswf::player *,float,float) =====
gameswf::as_point *__fastcall gameswf::as_point::as_point(
        gameswf::as_point *this,
        gameswf::player *a2,
        float a3,
        float a4)
{
  _BYTE v8[12]; // [sp+4h] [bp-64h] BYREF
  _BYTE v9[12]; // [sp+10h] [bp-58h] BYREF
  _BYTE v10[12]; // [sp+1Ch] [bp-4Ch] BYREF
  _BYTE v11[8]; // [sp+28h] [bp-40h] BYREF
  void *v12; // [sp+34h] [bp-34h]
  _BYTE v13[8]; // [sp+3Ch] [bp-2Ch] BYREF
  void *v14; // [sp+48h] [bp-20h]
  _BYTE v15[8]; // [sp+50h] [bp-18h] BYREF
  void *p; // [sp+5Ch] [bp-Ch]

  gameswf::as_object::as_object(this, a2);
  *((float *)this + 14) = a3;
  *((float *)this + 15) = a4;
  *(_DWORD *)this = off_990E98;
  gameswf::tu_string::tu_string((gameswf::tu_string *)v15, "add");
  v10[1] = 0;
  v10[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v10,
    (void (*)(const gameswf::fn_call *))gameswf::as_point_add);
  gameswf::as_object::builtin_member((int)this, (int)v15, v10);
  gameswf::as_value::drop_refs((gameswf::as_value *)v10);
  if ( v15[0] == -1 )
    gameswf::free_internal(p);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v13, "subtract");
  v9[1] = 0;
  v9[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v9,
    (void (*)(const gameswf::fn_call *))gameswf::as_point_subtract);
  gameswf::as_object::builtin_member((int)this, (int)v13, v9);
  gameswf::as_value::drop_refs((gameswf::as_value *)v9);
  if ( v13[0] == -1 )
    gameswf::free_internal(v14);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v11, "normalize");
  v8[1] = 0;
  v8[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v8,
    (void (*)(const gameswf::fn_call *))gameswf::as_point_normalize);
  gameswf::as_object::builtin_member((int)this, (int)v11, v8);
  gameswf::as_value::drop_refs((gameswf::as_value *)v8);
  if ( v11[0] == -1 )
    gameswf::free_internal(v12);
  return this;
}


// ===== 7a4614 gameswf::as_point_subtract(gameswf::fn_call const&) =====
void __fastcall gameswf::as_point_subtract(gameswf *this, const gameswf::fn_call *a2)
{
  int v3; // r7
  int v4; // r3
  int v5; // r0
  int v6; // r8
  int v7; // r6
  gameswf::player *v8; // r9
  gameswf::as_point *v9; // r6
  gameswf::ref_counted *v10; // [sp+4h] [bp-4h] BYREF

  if ( *((int *)this + 4) > 0 )
  {
    v3 = gameswf::cast_to<gameswf::as_point>(*((_DWORD *)this + 1));
    if ( v3 )
    {
      v4 = **((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5);
      if ( *(_BYTE *)(v4 + 1) == 5 )
      {
        v5 = *(_DWORD *)(v4 + 4);
        if ( v5 )
        {
          v6 = gameswf::cast_to<gameswf::as_point>(v5);
          if ( v6 )
          {
            v7 = *((_DWORD *)this + 3);
            v10 = nullptr;
            gameswf::weak_ptr<gameswf::player>::check_proxy(v7 + 100);
            v8 = *(gameswf::player **)(v7 + 104);
            v9 = (gameswf::as_point *)operator new(0x40u, 0);
            gameswf::as_point::as_point(
              v9,
              v8,
              *(float *)(v3 + 56) - *(float *)(v6 + 56),
              *(float *)(v3 + 60) - *(float *)(v6 + 60));
            gameswf::smart_ptr<gameswf::as_point>::set_ref(&v10, v9);
            gameswf::as_value::set_as_object(*(gameswf::as_value **)this, v10);
            if ( v10 )
              gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v10);
          }
        }
      }
    }
  }
}


// ===== 7a4704 gameswf::as_point_add(gameswf::fn_call const&) =====
void __fastcall gameswf::as_point_add(gameswf *this, const gameswf::fn_call *a2)
{
  int v3; // r7
  int v4; // r3
  int v5; // r0
  int v6; // r8
  int v7; // r6
  gameswf::player *v8; // r9
  gameswf::as_point *v9; // r6
  gameswf::ref_counted *v10; // [sp+4h] [bp-4h] BYREF

  if ( *((int *)this + 4) > 0 )
  {
    v3 = gameswf::cast_to<gameswf::as_point>(*((_DWORD *)this + 1));
    if ( v3 )
    {
      v4 = **((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5);
      if ( *(_BYTE *)(v4 + 1) == 5 )
      {
        v5 = *(_DWORD *)(v4 + 4);
        if ( v5 )
        {
          v6 = gameswf::cast_to<gameswf::as_point>(v5);
          if ( v6 )
          {
            v7 = *((_DWORD *)this + 3);
            v10 = nullptr;
            gameswf::weak_ptr<gameswf::player>::check_proxy(v7 + 100);
            v8 = *(gameswf::player **)(v7 + 104);
            v9 = (gameswf::as_point *)operator new(0x40u, 0);
            gameswf::as_point::as_point(
              v9,
              v8,
              *(float *)(v3 + 56) + *(float *)(v6 + 56),
              *(float *)(v3 + 60) + *(float *)(v6 + 60));
            gameswf::smart_ptr<gameswf::as_point>::set_ref(&v10, v9);
            gameswf::as_value::set_as_object(*(gameswf::as_value **)this, v10);
            if ( v10 )
              gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v10);
          }
        }
      }
    }
  }
}


// ===== 7a47f4 gameswf::as_global_point_ctor(gameswf::fn_call const&) =====
void __fastcall gameswf::as_global_point_ctor(gameswf *this, const gameswf::fn_call *a2)
{
  float v2; // r7
  int v3; // r3
  float v5; // r6
  int v6; // r5
  gameswf::player *v7; // r8
  gameswf::as_point *v8; // r5
  float v9; // r0
  int v10; // r1
  const char *v11; // r2
  float v12; // r0
  gameswf::ref_counted *v13; // [sp+4h] [bp-4h] BYREF

  v3 = *((_DWORD *)this + 4);
  if ( v3 != 2 )
    v2 = 0.0;
  v13 = nullptr;
  if ( v3 == 2 )
  {
    v9 = COERCE_DOUBLE(
           gameswf::as_value::to_number(
             (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 1)),
             (int)a2,
             nullptr));
    v5 = v9;
    v12 = COERCE_DOUBLE(
            gameswf::as_value::to_number(
              (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
              v10,
              v11));
    v2 = v12;
  }
  else
  {
    v5 = v2;
  }
  v6 = *((_DWORD *)this + 3);
  gameswf::weak_ptr<gameswf::player>::check_proxy(v6 + 100);
  v7 = *(gameswf::player **)(v6 + 104);
  v8 = (gameswf::as_point *)operator new(0x40u, 0);
  gameswf::as_point::as_point(v8, v7, v2, v5);
  gameswf::smart_ptr<gameswf::as_point>::set_ref(&v13, v8);
  gameswf::as_value::set_as_object(*(gameswf::as_value **)this, v13);
  if ( v13 )
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v13);
}


// ===== 7a48c0 gameswf::as_point::as_point(gameswf::player *,float,float) =====
gameswf::as_point *__fastcall gameswf::as_point::as_point(
        gameswf::as_point *this,
        gameswf::player *a2,
        float a3,
        float a4)
{
  _BYTE v8[12]; // [sp+4h] [bp-64h] BYREF
  _BYTE v9[12]; // [sp+10h] [bp-58h] BYREF
  _BYTE v10[12]; // [sp+1Ch] [bp-4Ch] BYREF
  _BYTE v11[8]; // [sp+28h] [bp-40h] BYREF
  void *v12; // [sp+34h] [bp-34h]
  _BYTE v13[8]; // [sp+3Ch] [bp-2Ch] BYREF
  void *v14; // [sp+48h] [bp-20h]
  _BYTE v15[8]; // [sp+50h] [bp-18h] BYREF
  void *p; // [sp+5Ch] [bp-Ch]

  gameswf::as_object::as_object(this, a2);
  *((float *)this + 14) = a3;
  *((float *)this + 15) = a4;
  *(_DWORD *)this = off_990E98;
  gameswf::tu_string::tu_string((gameswf::tu_string *)v15, "add");
  v10[1] = 0;
  v10[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v10,
    (void (*)(const gameswf::fn_call *))gameswf::as_point_add);
  gameswf::as_object::builtin_member((int)this, (int)v15, v10);
  gameswf::as_value::drop_refs((gameswf::as_value *)v10);
  if ( v15[0] == -1 )
    gameswf::free_internal(p);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v13, "subtract");
  v9[1] = 0;
  v9[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v9,
    (void (*)(const gameswf::fn_call *))gameswf::as_point_subtract);
  gameswf::as_object::builtin_member((int)this, (int)v13, v9);
  gameswf::as_value::drop_refs((gameswf::as_value *)v9);
  if ( v13[0] == -1 )
    gameswf::free_internal(v14);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v11, "normalize");
  v8[1] = 0;
  v8[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v8,
    (void (*)(const gameswf::fn_call *))gameswf::as_point_normalize);
  gameswf::as_object::builtin_member((int)this, (int)v11, v8);
  gameswf::as_value::drop_refs((gameswf::as_value *)v8);
  if ( v11[0] == -1 )
    gameswf::free_internal(v12);
  return this;
}


// ===== 7a4a88 gameswf::as_selection::is(int) =====
bool __fastcall gameswf::as_selection::is(gameswf::as_selection *this, int a2)
{
  return a2 == 24 || a2 == 0;
}


// ===== 7a4aa0 gameswf::as_selection::as_selection(gameswf::player *) =====
gameswf::as_selection *__fastcall gameswf::as_selection::as_selection(gameswf::as_selection *this, gameswf::player *a2)
{
  gameswf::as_object::as_object(this, a2);
  *(_DWORD *)this = off_990F08;
  return this;
}


// ===== 7a4ad4 gameswf::as_selection::as_selection(gameswf::player *) =====
gameswf::as_selection *__fastcall gameswf::as_selection::as_selection(gameswf::as_selection *this, gameswf::player *a2)
{
  gameswf::as_object::as_object(this, a2);
  *(_DWORD *)this = off_990F08;
  return this;
}


// ===== 7a4b08 gameswf::as_selection::~as_selection() =====
void __fastcall gameswf::as_selection::~as_selection(gameswf::as_selection *this)
{
  *(_DWORD *)this = off_990F08;
  gameswf::as_object::~as_object(this);
}


// ===== 7a4b3c gameswf::as_selection_setfocus(gameswf::fn_call const&) =====
void __fastcall gameswf::as_selection_setfocus(gameswf *this, const gameswf::fn_call *a2)
{
  int v2; // r3
  int target; // r0
  int v5; // r5
  void (__fastcall *v6)(int, _BYTE *); // r3
  _BYTE v7[2]; // [sp+0h] [bp-Ch] BYREF
  __int16 v8; // [sp+2h] [bp-Ah]
  int v9; // [sp+4h] [bp-8h]

  v2 = *((_DWORD *)this + 1);
  if ( v2 )
  {
    if ( (*(int (__fastcall **)(_DWORD, int))(*(_DWORD *)v2 + 8))(*((_DWORD *)this + 1), 24) )
    {
      if ( *((int *)this + 4) > 0 )
      {
        target = gameswf::as_environment::find_target(
                   *((gameswf::as_environment **)this + 3),
                   (const gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)));
        v5 = target;
        if ( target )
        {
          if ( (*(int (__fastcall **)(int, int))(*(_DWORD *)target + 8))(target, 1) )
          {
            v6 = *(void (__fastcall **)(int, _BYTE *))(*(_DWORD *)v5 + 44);
            v7[0] = 20;
            v9 = 0;
            v7[1] = 0;
            v8 = 0;
            v6(v5, v7);
            gameswf::as_value::set_bool(*(gameswf::as_value **)this, 1);
          }
        }
      }
    }
  }
  gameswf::as_value::set_bool(*(gameswf::as_value **)this, 0);
}


// ===== 7a4c00 gameswf::selection_init(gameswf::player *) =====
gameswf::as_selection *__fastcall gameswf::selection_init(gameswf *this, gameswf::player *a2)
{
  gameswf::as_selection *v3; // r7
  char *v4; // r0
  _BYTE v6[12]; // [sp+4h] [bp-24h] BYREF
  char v7; // [sp+10h] [bp-18h] BYREF
  char v8; // [sp+11h] [bp-17h] BYREF
  void *p; // [sp+1Ch] [bp-Ch]
  unsigned int v10; // [sp+20h] [bp-8h]

  v3 = (gameswf::as_selection *)operator new(0x38u, 0);
  gameswf::as_selection::as_selection(v3, this);
  v7 = 1;
  v8 = 0;
  gameswf::tu_string::resize((gameswf::tu_string *)&v7, 8);
  if ( v7 == -1 )
    v4 = (char *)p;
  else
    v4 = &v8;
  strcpy(v4, "setFocus");
  v10 = v10 & 0xFF000000 | 0xFFFFFF;
  v6[1] = 0;
  HIBYTE(v10) &= ~1u;
  v6[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v6,
    (void (*)(const gameswf::fn_call *))gameswf::as_selection_setfocus);
  gameswf::as_object::builtin_member((int)v3, (int)&v7, v6);
  gameswf::as_value::drop_refs((gameswf::as_value *)v6);
  if ( v7 == -1 )
    gameswf::free_internal(p);
  return v3;
}


// ===== 7a4d20 gameswf::as_selection::~as_selection() =====
void __fastcall gameswf::as_selection::~as_selection(gameswf::as_selection *this)
{
  *(_DWORD *)this = off_990F08;
  gameswf::as_object::~as_object(this);
  LC_API_FREE_0(this);
}


// ===== 7a4d5c gameswf::as_sound::is(int) =====
bool __fastcall gameswf::as_sound::is(gameswf::as_sound *this, int a2)
{
  return a2 == 18 || a2 == 0;
}


// ===== 7a4d74 gameswf::cast_to<gameswf::as_sound>(gameswf::as_object_interface *) =====
int __fastcall gameswf::cast_to<gameswf::as_sound>(int a1)
{
  if ( a1 && (*(int (__fastcall **)(int, int))(*(_DWORD *)a1 + 8))(a1, 18) )
    return a1;
  else
    return 0;
}


// ===== 7a4da8 gameswf::as_sound::clear(void) =====
int __fastcall gameswf::as_sound::clear(int this)
{
  int v1; // r4

  v1 = this;
  if ( *(_BYTE *)(this + 60) )
  {
    if ( *(int *)(this + 56) >= 0 )
    {
      this = gameswf::get_sound_handler((gameswf *)this);
      if ( this )
        this = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)this + 28))(this, *(_DWORD *)(v1 + 56));
    }
  }
  *(_DWORD *)(v1 + 56) = -1;
  *(_BYTE *)(v1 + 60) = 0;
  return this;
}


// ===== 7a4df8 gameswf::as_sound::~as_sound() =====
void __fastcall gameswf::as_sound::~as_sound(gameswf::as_sound *this)
{
  _DWORD *v2; // r0

  *(_DWORD *)this = off_990F78;
  gameswf::as_sound::clear((int)this);
  v2 = *((_DWORD **)this + 16);
  if ( v2 )
  {
    if ( (*v2)-- == 1 )
      gameswf::free_internal(v2);
  }
  gameswf::as_object::~as_object(this);
}


// ===== 7a4e58 gameswf::as_sound::~as_sound() =====
void __fastcall gameswf::as_sound::~as_sound(gameswf::as_sound *this)
{
  gameswf::as_sound::~as_sound(this);
  LC_API_FREE_0(this);
}


// ===== 7a4e74 gameswf::sound_stop(gameswf::fn_call const&) =====
int __fastcall gameswf::sound_stop(gameswf *this, const gameswf::fn_call *a2)
{
  int result; // r0
  int v4; // r4
  int v5; // r0

  result = gameswf::get_sound_handler(this);
  v4 = result;
  if ( result )
  {
    v5 = gameswf::cast_to<gameswf::as_sound>(*((_DWORD *)this + 1));
    return (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v4 + 20))(v4, *(_DWORD *)(v5 + 56));
  }
  return result;
}


// ===== 7a4ea8 gameswf::get_position(gameswf::fn_call const&) =====
int __fastcall gameswf::get_position(gameswf *this, const gameswf::fn_call *a2)
{
  int result; // r0
  int v4; // r5
  int v5; // r0
  double v6; // r2

  result = gameswf::get_sound_handler(this);
  v4 = result;
  if ( result )
  {
    v5 = gameswf::cast_to<gameswf::as_sound>(*((_DWORD *)this + 1));
    v6 = (double)(*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v4 + 60))(v4, *(_DWORD *)(v5 + 56));
    return gameswf::as_value::set_double(*(gameswf::as_value **)this, v6);
  }
  return result;
}


// ===== 7a4ef8 gameswf::sound_load(gameswf::fn_call const&) =====
void __fastcall gameswf::sound_load(gameswf *this, const gameswf::fn_call *a2)
{
  int sound_handler; // r6
  int v4; // r0
  int v5; // r10
  int v6; // r8
  gameswf::player *v7; // r0
  _BYTE *v8; // r3
  char *workdir; // r0
  char *v10; // r0
  _BYTE *v11; // r1
  int v12; // r6
  _BYTE v14[8]; // [sp+4h] [bp-30h] BYREF
  void *v15; // [sp+10h] [bp-24h]
  char v16; // [sp+18h] [bp-1Ch] BYREF
  _BYTE v17[3]; // [sp+19h] [bp-1Bh] BYREF
  void *p; // [sp+24h] [bp-10h]

  if ( *((int *)this + 4) > 1 )
  {
    sound_handler = gameswf::get_sound_handler(this);
    if ( sound_handler )
    {
      v4 = gameswf::cast_to<gameswf::as_sound>(*((_DWORD *)this + 1));
      v5 = *((_DWORD *)this + 3);
      v6 = v4;
      v7 = *(gameswf::player **)(v5 + 104);
      if ( v7 )
      {
        v8 = *(_BYTE **)(v5 + 100);
        if ( !v8[4] )
        {
          if ( (*(_DWORD *)v8)-- == 1 )
            gameswf::free_internal(v8);
          v7 = nullptr;
          *(_DWORD *)(v5 + 104) = 0;
          *(_DWORD *)(v5 + 100) = 0;
        }
      }
      workdir = gameswf::player::get_workdir(v7);
      gameswf::tu_string::tu_string((gameswf::tu_string *)v14, workdir);
      v10 = gameswf::as_value::to_string((gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)));
      gameswf::get_full_url((gameswf *)&v16, (const gameswf::tu_string *)v14, v10);
      if ( v14[0] == -1 )
        gameswf::free_internal(v15);
      if ( v16 == -1 )
        v11 = p;
      else
        v11 = v17;
      v12 = (*(int (__fastcall **)(int, _BYTE *))(*(_DWORD *)sound_handler + 4))(sound_handler, v11);
      if ( v12 >= 0 )
      {
        gameswf::as_sound::clear(v6);
        *(_BYTE *)(v6 + 60) = 1;
        *(_DWORD *)(v6 + 56) = v12;
      }
      if ( v16 == -1 )
        gameswf::free_internal(p);
    }
  }
}


// ===== 7a5068 gameswf::sound_volume(gameswf::fn_call const&) =====
gameswf *__fastcall gameswf::sound_volume(gameswf *this, const gameswf::fn_call *a2)
{
  gameswf *result; // r0
  gameswf *v4; // r6
  gameswf *v5; // r4
  int v6; // r0

  if ( *((int *)this + 4) <= 0 )
    return (gameswf *)gameswf::log_error("set volume of sound needs one argument\n", (const char *)a2);
  result = (gameswf *)(int)COERCE_DOUBLE(
                             gameswf::as_value::to_number(
                               (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
                               (int)a2,
                               (const char *)*((_DWORD *)this + 5)));
  v4 = result;
  if ( (unsigned int)result <= 0x64 )
  {
    result = (gameswf *)gameswf::get_sound_handler(result);
    v5 = result;
    if ( result )
    {
      v6 = gameswf::cast_to<gameswf::as_sound>(*((_DWORD *)this + 1));
      return (gameswf *)(*(int (__fastcall **)(gameswf *, _DWORD, gameswf *))(*(_DWORD *)v5 + 16))(
                          v5,
                          *(_DWORD *)(v6 + 56),
                          v4);
    }
  }
  return result;
}


// ===== 7a50ec gameswf::sound_start(gameswf::fn_call const&) =====
int __fastcall gameswf::sound_start(gameswf *this, const gameswf::fn_call *a2)
{
  int result; // r0
  int v4; // r4
  int v5; // r1
  const char *v6; // r2
  int v7; // r6
  int v8; // r2
  int v9; // r1
  const char *v10; // r2

  result = gameswf::get_sound_handler(this);
  v4 = result;
  if ( result )
  {
    result = gameswf::cast_to<gameswf::as_sound>(*((_DWORD *)this + 1));
    v7 = result;
    if ( result )
    {
      if ( *((int *)this + 4) > 1 )
      {
        v9 = (unsigned __int64)gameswf::as_value::to_number(
                                 (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)),
                                 v5,
                                 v6) >> 32;
        v8 = (int)COERCE_DOUBLE(
                    gameswf::as_value::to_number(
                      (gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - 1)),
                      v9,
                      v10));
      }
      else
      {
        v8 = 0;
      }
      return (*(int (__fastcall **)(int, _DWORD, int))(*(_DWORD *)v4 + 12))(v4, *(_DWORD *)(v7 + 56), v8);
    }
  }
  return result;
}


// ===== 7a5170 gameswf::as_global_sound_ctor(gameswf::fn_call const&) =====
void __fastcall gameswf::as_global_sound_ctor(gameswf *this, const gameswf::fn_call *a2)
{
  int v2; // r4
  gameswf::player *v4; // r7
  _BYTE *v5; // r0
  gameswf::as_object *v6; // r4
  gameswf::ref_counted *target; // r0
  gameswf::ref_counted *v8; // r7
  gameswf::ref_counted *v9; // r1
  _BYTE v11[12]; // [sp+Ch] [bp-E0h] BYREF
  _BYTE v12[12]; // [sp+18h] [bp-D4h] BYREF
  _BYTE v13[12]; // [sp+24h] [bp-C8h] BYREF
  _BYTE v14[12]; // [sp+30h] [bp-BCh] BYREF
  _BYTE v15[12]; // [sp+3Ch] [bp-B0h] BYREF
  _BYTE v16[12]; // [sp+48h] [bp-A4h] BYREF
  _BYTE v17[12]; // [sp+54h] [bp-98h] BYREF
  _BYTE v18[12]; // [sp+60h] [bp-8Ch] BYREF
  _BYTE v19[8]; // [sp+6Ch] [bp-80h] BYREF
  void *v20; // [sp+78h] [bp-74h]
  _BYTE v21[8]; // [sp+80h] [bp-6Ch] BYREF
  void *v22; // [sp+8Ch] [bp-60h]
  _BYTE v23[8]; // [sp+94h] [bp-58h] BYREF
  void *v24; // [sp+A0h] [bp-4Ch]
  _BYTE v25[8]; // [sp+A8h] [bp-44h] BYREF
  void *v26; // [sp+B4h] [bp-38h]
  _BYTE v27[8]; // [sp+BCh] [bp-30h] BYREF
  void *v28; // [sp+C8h] [bp-24h]
  _BYTE v29[8]; // [sp+D0h] [bp-1Ch] BYREF
  void *p; // [sp+DCh] [bp-10h]

  v2 = *((_DWORD *)this + 3);
  v4 = *(gameswf::player **)(v2 + 104);
  if ( v4 )
  {
    v5 = *(_BYTE **)(v2 + 100);
    if ( !v5[4] )
    {
      if ( (*(_DWORD *)v5)-- == 1 )
        gameswf::free_internal(v5);
      v4 = nullptr;
      *(_DWORD *)(v2 + 104) = 0;
      *(_DWORD *)(v2 + 100) = 0;
    }
  }
  v6 = (gameswf::as_object *)operator new(0x48u, 0);
  gameswf::as_object::as_object(v6, v4);
  *((_DWORD *)v6 + 17) = 0;
  *((_BYTE *)v6 + 60) = 0;
  *((_DWORD *)v6 + 16) = 0;
  *((_DWORD *)v6 + 14) = -1;
  *(_DWORD *)v6 = off_990F78;
  gameswf::ref_counted::add_ref((int)v6);
  if ( *((int *)this + 4) > 0 )
  {
    target = (gameswf::ref_counted *)gameswf::as_environment::find_target(
                                       *((gameswf::as_environment **)this + 3),
                                       (const gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)));
    v8 = target;
    if ( target && (*(int (__fastcall **)(gameswf::ref_counted *, int))(*(_DWORD *)target + 8))(target, 1) )
      v9 = v8;
    else
      v9 = nullptr;
    gameswf::weak_ptr<gameswf::character>::operator=((int)v6 + 64, v9);
  }
  gameswf::tu_string::tu_string((gameswf::tu_string *)v29, "attachSound");
  v18[1] = 0;
  v18[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v18,
    (void (*)(const gameswf::fn_call *))gameswf::sound_attach);
  gameswf::as_object::builtin_member((int)v6, (int)v29, v18);
  gameswf::as_value::drop_refs((gameswf::as_value *)v18);
  if ( v29[0] == -1 )
    gameswf::free_internal(p);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v27, "start");
  v17[1] = 0;
  v17[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v17,
    (void (*)(const gameswf::fn_call *))gameswf::sound_start);
  gameswf::as_object::builtin_member((int)v6, (int)v27, v17);
  gameswf::as_value::drop_refs((gameswf::as_value *)v17);
  if ( v27[0] == -1 )
    gameswf::free_internal(v28);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v25, "stop");
  v16[1] = 0;
  v16[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v16,
    (void (*)(const gameswf::fn_call *))gameswf::sound_stop);
  gameswf::as_object::builtin_member((int)v6, (int)v25, v16);
  gameswf::as_value::drop_refs((gameswf::as_value *)v16);
  if ( v25[0] == -1 )
    gameswf::free_internal(v26);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v23, "setVolume");
  v15[1] = 0;
  v15[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v15,
    (void (*)(const gameswf::fn_call *))gameswf::sound_volume);
  gameswf::as_object::builtin_member((int)v6, (int)v23, v15);
  gameswf::as_value::drop_refs((gameswf::as_value *)v15);
  if ( v23[0] == -1 )
    gameswf::free_internal(v24);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v21, "loadSound");
  v14[1] = 0;
  v14[0] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v14,
    (void (*)(const gameswf::fn_call *))gameswf::sound_load);
  gameswf::as_object::builtin_member((int)v6, (int)v21, v14);
  gameswf::as_value::drop_refs((gameswf::as_value *)v14);
  if ( v21[0] == -1 )
    gameswf::free_internal(v22);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v19, "position");
  v12[0] = 0;
  v12[1] = 0;
  gameswf::as_value::set_as_c_function(
    (gameswf::as_value *)v12,
    (void (*)(const gameswf::fn_call *))gameswf::get_position);
  v13[1] = 0;
  v13[0] = 0;
  gameswf::as_value::as_value((gameswf::as_value *)v11, (const gameswf::as_value *)v12, (const gameswf::as_value *)v13);
  gameswf::as_object::builtin_member((int)v6, (int)v19, v11);
  gameswf::as_value::drop_refs((gameswf::as_value *)v11);
  gameswf::as_value::drop_refs((gameswf::as_value *)v13);
  gameswf::as_value::drop_refs((gameswf::as_value *)v12);
  if ( v19[0] == -1 )
    gameswf::free_internal(v20);
  gameswf::as_value::set_as_object(*(gameswf::as_value **)this, v6);
  gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v6);
}


// ===== 7a5594 gameswf::sound_attach(gameswf::fn_call const&) =====
void __fastcall gameswf::sound_attach(gameswf *this, const gameswf::fn_call *a2)
{
  int v3; // r0
  int target; // r8
  int v5; // r6
  _BYTE *v6; // r0
  int (__fastcall *v7)(int, _BYTE *); // r10
  char *v8; // r0
  _DWORD *v9; // r5
  const char *v10; // r1
  int v11; // r5
  _BYTE v13[8]; // [sp+0h] [bp-1Ch] BYREF
  void *p; // [sp+Ch] [bp-10h]

  if ( *((int *)this + 4) <= 0 )
  {
    gameswf::log_error("attach sound needs one argument\n", (const char *)a2);
    return;
  }
  v3 = gameswf::cast_to<gameswf::as_sound>(*((_DWORD *)this + 1));
  target = *(_DWORD *)(v3 + 68);
  v5 = v3;
  if ( !target )
  {
LABEL_15:
    target = gameswf::as_environment::get_target(*((gameswf::as_environment **)this + 3));
    if ( !target )
      return;
    goto LABEL_4;
  }
  v6 = *(_BYTE **)(v3 + 64);
  if ( !v6[4] )
  {
    if ( (*(_DWORD *)v6)-- == 1 )
      gameswf::free_internal(v6);
    *(_DWORD *)(v5 + 68) = 0;
    *(_DWORD *)(v5 + 64) = 0;
    goto LABEL_15;
  }
LABEL_4:
  v7 = *(int (__fastcall **)(int, _BYTE *))(*(_DWORD *)target + 132);
  v8 = gameswf::as_value::to_string((gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * *((_DWORD *)this + 5)));
  gameswf::tu_string::tu_string((gameswf::tu_string *)v13, v8);
  v9 = (_DWORD *)v7(target, v13);
  if ( v13[0] == -1 )
    gameswf::free_internal(p);
  if ( v9 )
  {
    if ( (*(int (__fastcall **)(_DWORD *, int))(*v9 + 8))(v9, 13) )
    {
      v11 = v9[8];
      gameswf::as_sound::clear(v5);
      *(_BYTE *)(v5 + 60) = 0;
      *(_DWORD *)(v5 + 56) = v11;
    }
    else
    {
      gameswf::log_error("sound sample is NULL\n", v10);
    }
  }
}


// ===== 7a5708 gameswf::string_to_string(gameswf::fn_call const&) =====
void __fastcall gameswf::string_to_string(gameswf::as_value **this, const gameswf::fn_call *a2)
{
  char *v3; // r1

  v3 = gameswf::as_value::to_tu_string(*(this + 2));
  gameswf::as_value::set_tu_string(*this, (const gameswf::tu_string *)v3);
}


// ===== 7a5728 gameswf::string_length(gameswf::fn_call const&) =====
int __fastcall gameswf::string_length(gameswf::as_value **this, const gameswf::fn_call *a2)
{
  char *v3; // r0
  int v4; // r3
  gameswf::as_value *v5; // r4
  int v6; // r0

  v3 = gameswf::as_value::to_tu_string(*(this + 2));
  v4 = *v3;
  v5 = *this;
  if ( v4 == -1 )
    v6 = *((_DWORD *)v3 + 1);
  else
    v6 = v4 - 1;
  if ( v4 == -1 )
    --v6;
  return gameswf::as_value::set_double(v5, (double)v6);
}


// ===== 7a5768 gameswf::array<gameswf::as_value>::push_back<char *>(char * const&) =====
void __fastcall gameswf::array<gameswf::as_value>::push_back<char *>(_DWORD *a1, const char **a2)
{
  int v2; // r3
  int v4; // r5
  const char *v6; // r1
  int v7; // r0

  v2 = a1[1];
  v4 = v2 + 1;
  if ( v2 + 1 > a1[2] )
  {
    gameswf::array<gameswf::as_value>::reserve((int)a1, v4 + (v4 >> 1));
    v2 = a1[1];
  }
  v6 = *a2;
  v7 = *a1 + 12 * v2;
  *(_BYTE *)v7 = 0;
  *(_BYTE *)(v7 + 1) = 0;
  gameswf::as_value::set_string((gameswf::tu_string **)v7, v6);
  a1[1] = v4;
}


// ===== 7a57c4 gameswf::string_last_index_of(gameswf::fn_call const&) =====
int __fastcall gameswf::string_last_index_of(gameswf::as_value **this, const gameswf::fn_call *a2)
{
  char *v3; // r0
  int v4; // r1
  int v5; // r3
  char *v6; // r5
  int v7; // r0
  gameswf::tu_string *v8; // r7
  char *v9; // r5
  const char *i; // r8
  char *v11; // r0
  char *v12; // r0
  int v13; // r2
  gameswf::as_value *v14; // r4
  double v15; // r2

  v3 = gameswf::as_value::to_tu_string(*(this + 2));
  v5 = (int)*(this + 4);
  v6 = v3;
  if ( v5 <= 0 )
    return gameswf::as_value::set_double(*this, -1.0);
  v7 = v5 == 1
     ? 0
     : (int)COERCE_DOUBLE(
              gameswf::as_value::to_number(
                (gameswf::as_value *)(*(_DWORD *)*(this + 3) + 12 * ((_DWORD)*(this + 5) - 1)),
                v4,
                (const char *)*(this + 5) - 1));
  v8 = *v6 == -1 ? *((gameswf::tu_string **)v6 + 3) : (gameswf::tu_string *)(v6 + 1);
  v9 = nullptr;
  for ( i = (char *)v8 + v7; ; i = v12 + 1 )
  {
    v11 = gameswf::as_value::to_string((gameswf::as_value *)(*(_DWORD *)*(this + 3) + 12 * (_DWORD)*(this + 5)));
    v12 = LC_API_STRSTR_0(i, v11);
    if ( !v12 )
      break;
    v9 = v12;
  }
  if ( !v9 )
    return gameswf::as_value::set_double(*this, -1.0);
  v14 = *this;
  v15 = (double)gameswf::tu_string::utf8_char_count(v8, (const char **)(v9 - (char *)v8), v13);
  return gameswf::as_value::set_double(v14, v15);
}


// ===== 7a58a8 gameswf::string_index_of(gameswf::fn_call const&) =====
int __fastcall gameswf::string_index_of(gameswf::as_value **this, const gameswf::fn_call *a2)
{
  char *v3; // r0
  int v4; // r1
  int v5; // r3
  char *v6; // r5
  int v7; // r6
  gameswf::tu_string *v8; // r5
  char *v9; // r0
  char *v10; // r0
  int v11; // r2
  gameswf::as_value *v12; // r4
  double v13; // r2

  v3 = gameswf::as_value::to_tu_string(*(this + 2));
  v5 = (int)*(this + 4);
  v6 = v3;
  if ( v5 <= 0 )
    return gameswf::as_value::set_double(*this, -1.0);
  v7 = v5 == 1
     ? 0
     : (int)COERCE_DOUBLE(
              gameswf::as_value::to_number(
                (gameswf::as_value *)(*(_DWORD *)*(this + 3) + 12 * ((_DWORD)*(this + 5) - 1)),
                v4,
                (const char *)*(this + 5) - 1));
  v8 = *v6 == -1 ? *((gameswf::tu_string **)v6 + 3) : (gameswf::tu_string *)(v6 + 1);
  v9 = gameswf::as_value::to_string((gameswf::as_value *)(*(_DWORD *)*(this + 3) + 12 * (_DWORD)*(this + 5)));
  v10 = LC_API_STRSTR_0((const char *)v8 + v7, v9);
  if ( !v10 )
    return gameswf::as_value::set_double(*this, -1.0);
  v12 = *this;
  v13 = (double)gameswf::tu_string::utf8_char_count(v8, (const char **)(v10 - (char *)v8), v11);
  return gameswf::as_value::set_double(v12, v13);
}


// ===== 7a5974 gameswf::string_to_number(int *,char const*) =====
bool __fastcall gameswf::string_to_number(gameswf *this, char *a2, const char *a3)
{
  int v5; // r0
  char *v6; // r3
  char *v8; // [sp+4h] [bp-4h] BYREF

  v8 = nullptr;
  v5 = strtol(a2, &v8, 10);
  v6 = v8;
  *(_DWORD *)this = v5;
  return v6 != a2 && *v6 == 0;
}


// ===== 7a59c8 gameswf::string_to_number(double *,char const*) =====
bool __fastcall gameswf::string_to_number(gameswf *this, double *a2, const char *a3)
{
  double v5; // r0
  double *v6; // r3
  double *v8; // [sp+4h] [bp-4h] BYREF

  v8 = nullptr;
  v5 = strtod((const char *)a2, (char **)&v8);
  v6 = v8;
  *(double *)this = v5;
  return v6 != a2 && *(_BYTE *)v6 == 0;
}


// ===== 7a5a18 gameswf::string_slice(gameswf::fn_call const&) =====
void __fastcall gameswf::string_slice(gameswf::as_value **this, const gameswf::fn_call *a2)
{
  char *v3; // r0
  int v4; // r2
  int v5; // r1
  char *v6; // r6
  bool v7; // zf
  const char **v8; // r1
  int v9; // r0
  int v10; // r1
  int v11; // r7
  int v12; // r3
  int v13; // r10
  int v14; // r0
  int v15; // r1
  int v16; // r0
  gameswf::as_value *v17; // r4
  int v18; // r2
  _BYTE v19[8]; // [sp+0h] [bp-1Ch] BYREF
  void *p; // [sp+Ch] [bp-10h]

  v3 = gameswf::as_value::to_tu_string(*(this + 2));
  v5 = *v3;
  v6 = v3;
  v7 = v5 == -1;
  if ( v5 == -1 )
  {
    v8 = *((const char ***)v3 + 1);
  }
  else
  {
    v8 = (const char **)(v5 - 1);
    ++v3;
  }
  if ( v7 )
  {
    v3 = *((char **)v6 + 3);
    v8 = (const char **)((char *)v8 - 1);
  }
  v9 = gameswf::tu_string::utf8_char_count((gameswf::tu_string *)v3, v8, v4);
  v11 = v9;
  if ( (int)*(this + 4) > 0 )
  {
    v14 = (int)COERCE_DOUBLE(
                 gameswf::as_value::to_number(
                   (gameswf::as_value *)(*(_DWORD *)*(this + 3) + 12 * (_DWORD)*(this + 5)),
                   v10,
                   (const char *)*(this + 5)));
    v13 = v14;
    if ( v14 < 0 )
      v13 = v14 + v11;
    if ( (int)*(this + 4) > 1 )
    {
      v16 = (int)COERCE_DOUBLE(
                   gameswf::as_value::to_number(
                     (gameswf::as_value *)(*(_DWORD *)*(this + 3) + 12 * ((_DWORD)*(this + 5) - 1)),
                     v15,
                     (const char *)*(this + 5) - 1));
      v12 = v16;
      if ( v16 < 0 )
        v12 = v16 + v11;
    }
    else
    {
      v12 = v11;
    }
  }
  else
  {
    v12 = v9;
    v13 = 0;
  }
  if ( v13 >= v11 )
    v13 = v11;
  v17 = *this;
  v18 = v13 & ~(v13 >> 31);
  if ( v12 >= v11 )
    v12 = v11;
  if ( v12 < v18 )
    v12 = v13 & ~(v13 >> 31);
  gameswf::tu_string::utf8_substring((gameswf::tu_string *)v19, v6, v18, v12);
  gameswf::as_value::set_tu_string(v17, (const gameswf::tu_string *)v19);
  if ( v19[0] == -1 )
    gameswf::free_internal(p);
}


// ===== 7a5b5c gameswf::string_split(gameswf::fn_call const&) =====
int __fastcall gameswf::string_split(gameswf::as_value **this, const gameswf::fn_call *a2)
{
  char *v2; // r4
  int v3; // r5
  gameswf::player *v4; // r5
  int v5; // r2
  bool v6; // cc
  char *v7; // r0
  char *v8; // r0
  int v9; // r1
  bool v10; // zf
  const char **v11; // r1
  void **v12; // r1
  int v13; // r11
  int v14; // r0
  int v15; // r3
  char *v16; // r4
  int v17; // r5
  int v18; // r5
  const char **v19; // r1
  int v20; // r3
  int result; // r0
  int v22; // r2
  size_t v23; // r2
  int v24; // r7
  char *v25; // r6
  size_t v26; // r11
  char *v27; // r1
  int v28; // r0
  const char **v29; // r1
  _BOOL4 v30; // r8
  int v31; // r9
  size_t v32; // r10
  int v33; // r4
  char *v34; // r3
  gameswf::ref_counted *v36; // [sp+4h] [bp-70h]
  int v37; // [sp+8h] [bp-6Ch]
  void **v38; // [sp+20h] [bp-54h]
  void *v39; // [sp+28h] [bp-4Ch] BYREF
  int v40; // [sp+2Ch] [bp-48h]
  int v41; // [sp+30h] [bp-44h]
  char v42; // [sp+34h] [bp-40h]
  const char *v43; // [sp+38h] [bp-3Ch] BYREF
  char *v44; // [sp+3Ch] [bp-38h] BYREF
  char *v45; // [sp+40h] [bp-34h] BYREF
  _BYTE v46[8]; // [sp+44h] [bp-30h] BYREF
  void *p; // [sp+50h] [bp-24h]
  char v48; // [sp+58h] [bp-1Ch] BYREF
  char v49; // [sp+59h] [bp-1Bh] BYREF
  int v50; // [sp+5Ch] [bp-18h]
  char *v51; // [sp+64h] [bp-10h]
  unsigned int v52; // [sp+68h] [bp-Ch]

  v2 = gameswf::as_value::to_tu_string(*(this + 2));
  v3 = (int)*(this + 3);
  gameswf::weak_ptr<gameswf::player>::check_proxy(v3 + 100);
  v4 = *(gameswf::player **)(v3 + 104);
  v36 = (gameswf::ref_counted *)operator new(0x5Cu, 0);
  gameswf::as_array::as_array(v36, v4);
  if ( v36 )
    gameswf::ref_counted::add_ref((int)v36);
  v5 = 0;
  v6 = (int)*(this + 4) <= 0;
  v7 = (_BYTE *)(&dword_0 + 1);
  v52 = v52 & 0xFF000000 | 0xFFFFFF;
  v48 = 1;
  HIBYTE(v52) &= ~1u;
  v49 = 0;
  if ( !v6 )
  {
    v8 = gameswf::as_value::to_string((gameswf::as_value *)(*(_DWORD *)*(this + 3) + 12 * (_DWORD)*(this + 5)));
    v7 = gameswf::tu_string::operator=(&v48, v8);
  }
  v9 = *v2;
  v10 = v9 == -1;
  if ( v9 == -1 )
  {
    v11 = *((const char ***)v2 + 1);
  }
  else
  {
    v11 = (const char **)(v9 - 1);
    v7 = v2 + 1;
  }
  if ( v10 )
  {
    v7 = *((char **)v2 + 3);
    v11 = (const char **)((char *)v11 - 1);
  }
  v13 = gameswf::tu_string::utf8_char_count((gameswf::tu_string *)v7, v11, v5);
  if ( (int)*(this + 4) > 1 )
  {
    v14 = (int)COERCE_DOUBLE(
                 gameswf::as_value::to_number(
                   (gameswf::as_value *)(*(_DWORD *)*(this + 3) + 12 * ((_DWORD)*(this + 5) - 1)),
                   (int)v12,
                   (const char *)*(this + 5) - 1));
    v13 = v14;
  }
  v42 = 0;
  v39 = nullptr;
  v40 = 0;
  v41 = 0;
  v15 = v48;
  if ( *v2 == -1 )
    v16 = *((char **)v2 + 3);
  else
    v16 = v2 + 1;
  if ( v48 == -1 )
    v17 = v50;
  else
    v17 = v48;
  v45 = v16;
  v18 = v17 - 1;
  if ( v18 )
  {
    if ( v48 == -1 )
      v22 = v50;
    else
      v22 = v48;
    if ( v13 <= 0 )
      v12 = &v39;
    v23 = v22 - 1;
    if ( v13 > 0 )
    {
      v24 = 0;
      v37 = v13;
      v38 = &v39;
      v25 = v16;
      v26 = v23;
      while ( 1 )
      {
        if ( v15 == -1 )
          v27 = v51;
        else
          v27 = &v49;
        v28 = LC_API_STRNCMP_0(v16, v27, v26);
        v30 = v28 == 0;
        if ( *v16 && v28 )
        {
          gameswf::decode_next_unicode_character((gameswf *)&v45, v29);
        }
        else
        {
          v31 = v40;
          v32 = v16 - v25;
          v33 = v16 - v25 + 1;
          if ( v33 < v40 )
            v33 = v40;
          if ( v33 && v41 < v33 )
            gameswf::array<char>::reserve((int)&v39, v33 + (v33 >> 1));
          if ( v31 < v33 )
          {
            do
              *((_BYTE *)v39 + v31++) = 0;
            while ( v31 != v33 );
          }
          v40 = v33;
          memcpy(v39, v25, v32);
          *((_BYTE *)v39 + v32) = 0;
          v43 = (const char *)v39;
          gameswf::array<gameswf::as_value>::push_back<char *>((_DWORD *)v36 + 19, &v43);
          if ( v30 )
            v25 = v45;
          else
            v34 = v45;
          if ( v30 )
          {
            v25 += v26;
            v45 = v25;
            v34 = v25;
          }
          if ( !*v34 )
            goto LABEL_27;
          ++v24;
        }
        if ( v37 <= v24 )
          goto LABEL_27;
        v16 = v45;
        v15 = v48;
      }
    }
    v38 = v12;
  }
  else if ( v13 <= 0 )
  {
LABEL_26:
    v38 = &v39;
  }
  else
  {
    v19 = (const char **)v36;
    while ( 1 )
    {
      v44 = v16;
      gameswf::decode_next_unicode_character((gameswf *)&v44, v19);
      if ( v44 == v45 )
        break;
      gameswf::tu_string::tu_string((gameswf::tu_string *)v46, v45, v44 - v45);
      gameswf::array<gameswf::as_value>::push_back<gameswf::tu_string>((_DWORD *)v36 + 19, (gameswf::tu_string *)v46);
      ++v18;
      v45 = v44;
      if ( v46[0] == -1 )
      {
        gameswf::free_internal(p);
        if ( v18 == v13 )
          goto LABEL_26;
      }
      else if ( v18 == v13 )
      {
        goto LABEL_26;
      }
      v16 = v45;
    }
    v38 = &v39;
  }
LABEL_27:
  gameswf::as_value::set_as_object(*this, v36);
  v20 = v40;
  if ( v40 < 0 )
  {
    do
      *((_BYTE *)v39 + v20++) = 0;
    while ( v20 );
  }
  v40 = 0;
  gameswf::array<char>::reserve((int)v38, 0);
  if ( v48 == -1 )
    gameswf::free_internal(v51);
  if ( v36 )
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v36);
  return result;
}


// ===== 7a5f80 gameswf::string_from_char_code(gameswf::fn_call const&) =====
void __fastcall gameswf::string_from_char_code(gameswf *this, const gameswf::fn_call *a2)
{
  unsigned int v2; // r3
  int v4; // r0
  int v5; // r4
  const char *v6; // r2
  int v7; // r1
  int v8; // r0
  int *v9; // r0
  _BYTE v10[8]; // [sp+0h] [bp-1Ch] BYREF
  void *p; // [sp+Ch] [bp-10h]
  unsigned int v12; // [sp+10h] [bp-Ch]

  v2 = v12 & 0xFF000000 | 0xFFFFFF;
  v4 = *((_DWORD *)this + 4);
  v5 = 0;
  v6 = (const char *)(HIBYTE(v2) & 0xFFFFFFFE);
  v7 = 1;
  v12 = v2;
  v10[0] = 1;
  HIBYTE(v12) = HIBYTE(v2) & 0xFE;
  v10[1] = 0;
  if ( v4 > 0 )
  {
    do
    {
      v8 = *((_DWORD *)this + 5) - v5++;
      v9 = (int *)COERCE_DOUBLE(gameswf::as_value::to_number((gameswf::as_value *)(**((_DWORD **)this + 3) + 12 * v8), v7, v6));
      gameswf::tu_string::append_wide_char((gameswf::tu_string *)v10, v9);
    }
    while ( *((_DWORD *)this + 4) > v5 );
  }
  gameswf::as_value::set_tu_string(*(gameswf::as_value **)this, (const gameswf::tu_string *)v10);
  if ( v10[0] == -1 )
    gameswf::free_internal(p);
}


// ===== 7a6070 gameswf::string_substring(gameswf::fn_call const&) =====
void __fastcall gameswf::string_substring(gameswf::as_value **this, const gameswf::fn_call *a2)
{
  char *v3; // r0
  int v4; // r2
  int v5; // r1
  char *v6; // r6
  bool v7; // zf
  const char **v8; // r1
  int v9; // r0
  int v10; // r1
  int v11; // r7
  int v12; // r3
  int v13; // r10
  int v14; // r0
  int v15; // r1
  int v16; // r0
  gameswf::as_value *v17; // r4
  int v18; // r2
  _BYTE v19[8]; // [sp+0h] [bp-1Ch] BYREF
  void *p; // [sp+Ch] [bp-10h]

  v3 = gameswf::as_value::to_tu_string(*(this + 2));
  v5 = *v3;
  v6 = v3;
  v7 = v5 == -1;
  if ( v5 == -1 )
  {
    v8 = *((const char ***)v3 + 1);
  }
  else
  {
    v8 = (const char **)(v5 - 1);
    ++v3;
  }
  if ( v7 )
  {
    v3 = *((char **)v6 + 3);
    v8 = (const char **)((char *)v8 - 1);
  }
  v9 = gameswf::tu_string::utf8_char_count((gameswf::tu_string *)v3, v8, v4);
  v11 = v9;
  if ( (int)*(this + 4) > 0 )
  {
    v14 = (int)COERCE_DOUBLE(
                 gameswf::as_value::to_number(
                   (gameswf::as_value *)(*(_DWORD *)*(this + 3) + 12 * (_DWORD)*(this + 5)),
                   v10,
                   (const char *)*(this + 5)));
    if ( v14 >= v11 )
      v13 = v11;
    else
      v13 = v14;
    if ( v13 <= 0 )
      v13 = 0;
    if ( (int)*(this + 4) > 1 )
    {
      v16 = (int)COERCE_DOUBLE(
                   gameswf::as_value::to_number(
                     (gameswf::as_value *)(*(_DWORD *)*(this + 3) + 12 * ((_DWORD)*(this + 5) - 1)),
                     v15,
                     (const char *)*(this + 5) - 1));
      if ( v16 < v11 )
        v11 = v16;
      v12 = v11 & ~(v11 >> 31);
    }
    else
    {
      v12 = v11;
    }
  }
  else
  {
    v12 = v9;
    v13 = 0;
  }
  v17 = *this;
  if ( v12 < v13 )
  {
    v18 = v13;
    v13 = v12;
    v12 = v18;
  }
  gameswf::tu_string::utf8_substring((gameswf::tu_string *)v19, v6, v13, v12);
  gameswf::as_value::set_tu_string(v17, (const gameswf::tu_string *)v19);
  if ( v19[0] == -1 )
    gameswf::free_internal(p);
}


// ===== 7a61c0 gameswf::string_concat(gameswf::fn_call const&) =====
void __fastcall gameswf::string_concat(gameswf::as_value **this, const gameswf::fn_call *a2)
{
  int v3; // r4
  char *v4; // r0
  int v5; // r1
  int v6; // r0
  char *v7; // r0
  _BYTE v8[8]; // [sp+4h] [bp-2Ch] BYREF
  void *p; // [sp+10h] [bp-20h]
  unsigned int v10; // [sp+14h] [bp-1Ch]
  _BYTE v11[8]; // [sp+18h] [bp-18h] BYREF
  void *v12; // [sp+24h] [bp-Ch]

  v3 = 0;
  v4 = gameswf::as_value::to_tu_string(*(this + 2));
  gameswf::tu_string::tu_string((gameswf::tu_string *)v11, (const gameswf::tu_string *)v4);
  v5 = (int)*(this + 4);
  v10 = v10 & 0xFF000000 | 0xFFFFFF;
  v8[0] = 1;
  HIBYTE(v10) &= ~1u;
  v8[1] = 0;
  if ( v5 > 0 )
  {
    do
    {
      v6 = (int)*(this + 5) - v3++;
      v7 = gameswf::as_value::to_string(
             (gameswf::as_value *)(*(_DWORD *)*(this + 3) + 12 * v6),
             (gameswf::tu_string *)v8);
      gameswf::tu_string::operator+=((gameswf::tu_string *)v11, v7);
    }
    while ( (int)*(this + 4) > v3 );
  }
  gameswf::as_value::set_tu_string(*this, (const gameswf::tu_string *)v11);
  if ( v8[0] != -1 )
  {
    if ( v11[0] != -1 )
      return;
LABEL_7:
    gameswf::free_internal(v12);
    return;
  }
  gameswf::free_internal(p);
  if ( v11[0] == -1 )
    goto LABEL_7;
}


// ===== 7a62e8 gameswf::string_to_uppercase(gameswf::fn_call const&) =====
void __fastcall gameswf::string_to_uppercase(gameswf::as_value **this, const gameswf::fn_call *a2)
{
  char *v3; // r0
  gameswf::as_value *v4; // r7
  _BYTE v5[8]; // [sp+0h] [bp-1Ch] BYREF
  void *p; // [sp+Ch] [bp-10h]

  v3 = gameswf::as_value::to_tu_string(*(this + 2));
  v4 = *this;
  gameswf::tu_string::utf8_to_upper((gameswf::tu_string *)v5, v3);
  gameswf::as_value::set_tu_string(v4, (const gameswf::tu_string *)v5);
  if ( v5[0] == -1 )
    gameswf::free_internal(p);
}


// ===== 7a6378 gameswf::string_to_lowercase(gameswf::fn_call const&) =====
void __fastcall gameswf::string_to_lowercase(gameswf::as_value **this, const gameswf::fn_call *a2)
{
  char *v3; // r0
  gameswf::as_value *v4; // r7
  _BYTE v5[8]; // [sp+0h] [bp-1Ch] BYREF
  void *p; // [sp+Ch] [bp-10h]

  v3 = gameswf::as_value::to_tu_string(*(this + 2));
  v4 = *this;
  gameswf::tu_string::utf8_to_lower((gameswf::tu_string *)v5, v3);
  gameswf::as_value::set_tu_string(v4, (const gameswf::tu_string *)v5);
  if ( v5[0] == -1 )
    gameswf::free_internal(p);
}


// ===== 7a6408 gameswf::as_global_string_ctor(gameswf::fn_call const&) =====
void __fastcall gameswf::as_global_string_ctor(gameswf *this, const gameswf::fn_call *a2)
{
  _DWORD *v2; // lr
  gameswf::as_value *v3; // r6
  char *v4; // r0
  _BYTE v5[8]; // [sp+0h] [bp-18h] BYREF
  void *p; // [sp+Ch] [bp-Ch]
  unsigned int v7; // [sp+10h] [bp-8h]

  if ( *((_DWORD *)this + 4) == 1 )
  {
    v2 = *((_DWORD **)this + 3);
    v7 = v7 & 0xFF000000 | 0xFFFFFF;
    v5[1] = 0;
    HIBYTE(v7) &= ~1u;
    v5[0] = 1;
    v3 = *(gameswf::as_value **)this;
    v4 = gameswf::as_value::to_string((gameswf::as_value *)(*v2 + 12 * *((_DWORD *)this + 5)), (gameswf::tu_string *)v5);
    gameswf::as_value::set_tu_string(v3, (const gameswf::tu_string *)v4);
    if ( v5[0] == -1 )
      gameswf::free_internal(p);
  }
  else
  {
    gameswf::as_value::set_string(*(gameswf::tu_string ***)this, "");
  }
}


// ===== 7a64e0 gameswf::string_char_at(gameswf::fn_call const&) =====
void __fastcall gameswf::string_char_at(gameswf::as_value **this, const gameswf::fn_call *a2)
{
  char *v3; // r7
  int v4; // r1
  gameswf::tu_string *v5; // r0
  int v6; // r2
  const char **v7; // r8
  int v8; // r1
  bool v9; // zf
  const char **v10; // r1
  gameswf::as_value *v11; // r5
  char v12[4]; // [sp+4h] [bp-1Ch] BYREF
  _BYTE v13[8]; // [sp+8h] [bp-18h] BYREF
  void *p; // [sp+14h] [bp-Ch]

  v3 = gameswf::as_value::to_tu_string(*(this + 2));
  v5 = (gameswf::tu_string *)(int)COERCE_DOUBLE(
                                    gameswf::as_value::to_number(
                                      (gameswf::as_value *)(*(_DWORD *)*(this + 3) + 12 * (_DWORD)*(this + 5)),
                                      v4,
                                      (const char *)*(this + 5)));
  v7 = (const char **)v5;
  if ( (int)v5 >= 0 )
  {
    v8 = *v3;
    v9 = v8 == -1;
    if ( v8 == -1 )
    {
      v10 = *((const char ***)v3 + 1);
    }
    else
    {
      v10 = (const char **)(v8 - 1);
      v5 = (gameswf::tu_string *)(v3 + 1);
    }
    if ( v9 )
    {
      v5 = *((gameswf::tu_string **)v3 + 3);
      v10 = (const char **)((char *)v10 - 1);
    }
    if ( (int)v7 < gameswf::tu_string::utf8_char_count(v5, v10, v6) )
    {
      v12[0] = gameswf::tu_string::utf8_char_at((gameswf::tu_string *)v3, v7);
      v11 = *this;
      v12[1] = 0;
      gameswf::tu_string::tu_string((gameswf::tu_string *)v13, v12);
      gameswf::as_value::set_tu_string(v11, (const gameswf::tu_string *)v13);
      if ( v13[0] == -1 )
        gameswf::free_internal(p);
    }
  }
}


// ===== 7a65d8 gameswf::string_char_code_at(gameswf::fn_call const&) =====
int __fastcall gameswf::string_char_code_at(gameswf::as_value **this, const gameswf::fn_call *a2)
{
  char *v3; // r5
  int v4; // r1
  gameswf::tu_string *v5; // r0
  int v6; // r2
  const char **v7; // r6
  int v8; // r1
  bool v9; // zf
  const char **v10; // r1
  gameswf::as_value *v11; // r4
  double v12; // r2

  v3 = gameswf::as_value::to_tu_string(*(this + 2));
  v5 = (gameswf::tu_string *)(int)COERCE_DOUBLE(
                                    gameswf::as_value::to_number(
                                      (gameswf::as_value *)(*(_DWORD *)*(this + 3) + 12 * (_DWORD)*(this + 5)),
                                      v4,
                                      (const char *)*(this + 5)));
  v7 = (const char **)v5;
  if ( (int)v5 < 0 )
    return gameswf::as_value::set_double(*this, NAN);
  v8 = *v3;
  v9 = v8 == -1;
  if ( v8 == -1 )
  {
    v10 = *((const char ***)v3 + 1);
  }
  else
  {
    v10 = (const char **)(v8 - 1);
    v5 = (gameswf::tu_string *)(v3 + 1);
  }
  if ( v9 )
  {
    v5 = *((gameswf::tu_string **)v3 + 3);
    v10 = (const char **)((char *)v10 - 1);
  }
  if ( (int)v7 >= gameswf::tu_string::utf8_char_count(v5, v10, v6) )
    return gameswf::as_value::set_double(*this, NAN);
  v11 = *this;
  v12 = (double)(unsigned int)gameswf::tu_string::utf8_char_at((gameswf::tu_string *)v3, v7);
  return gameswf::as_value::set_double(v11, v12);
}


// ===== 7a6678 gameswf::string_substr(gameswf::fn_call const&) =====
void __fastcall gameswf::string_substr(gameswf::as_value **this, const gameswf::fn_call *a2)
{
  char *v3; // r0
  int v4; // r2
  char *v5; // r7
  int v6; // r1
  bool v7; // zf
  const char **v8; // r1
  int v9; // r8
  int v10; // r1
  const char *v11; // r2
  int v12; // r0
  int v13; // r1
  const char *v14; // r2
  int v15; // r10
  int v16; // r0
  int v17; // r0
  int v18; // r3
  gameswf::as_value *v19; // r5
  _BYTE v20[8]; // [sp+0h] [bp-18h] BYREF
  void *p; // [sp+Ch] [bp-Ch]

  v3 = gameswf::as_value::to_tu_string(*(this + 2));
  v5 = v3;
  if ( (int)*(this + 4) > 0 )
  {
    v6 = *v3;
    v7 = v6 == -1;
    if ( v6 == -1 )
    {
      v8 = *((const char ***)v3 + 1);
    }
    else
    {
      v8 = (const char **)(v6 - 1);
      ++v3;
    }
    if ( v7 )
    {
      v3 = *((char **)v5 + 3);
      v8 = (const char **)((char *)v8 - 1);
    }
    v9 = gameswf::tu_string::utf8_char_count((gameswf::tu_string *)v3, v8, v4);
    v12 = (int)COERCE_DOUBLE(
                 gameswf::as_value::to_number(
                   (gameswf::as_value *)(*(_DWORD *)*(this + 3) + 12 * (_DWORD)*(this + 5)),
                   v10,
                   v11));
    if ( v12 >= v9 )
      v12 = v9;
    v15 = v12 & ~(v12 >> 31);
    if ( (int)*(this + 4) > 1 )
    {
      v17 = (int)COERCE_DOUBLE(
                   gameswf::as_value::to_number(
                     (gameswf::as_value *)(*(_DWORD *)*(this + 3) + 12 * ((_DWORD)*(this + 5) - 1)),
                     v13,
                     v14));
      if ( v17 >= v9 )
        v17 = v9;
      v16 = v17 & ~(v17 >> 31);
    }
    else
    {
      v16 = v9;
    }
    v18 = v16 + v15;
    if ( v16 + v15 >= v9 )
      v18 = v9;
    if ( v18 > v15 )
    {
      v19 = *this;
      gameswf::tu_string::utf8_substring((gameswf::tu_string *)v20, v5, v15, v18);
      gameswf::as_value::set_tu_string(v19, (const gameswf::tu_string *)v20);
      if ( v20[0] == -1 )
        gameswf::free_internal(p);
    }
  }
}


// ===== 7a67b4 gameswf::as_textformat::is(int) =====
bool __fastcall gameswf::as_textformat::is(gameswf::as_textformat *this, int a2)
{
  return a2 == 35 || a2 == 0;
}


// ===== 7a67cc __tcf_0_3 =====
void _tcf_0_3()
{
  int *v0; // r4
  void *v1; // r0

  v0 = &glitch::ps::vHalf;
  do
  {
    while ( *((char *)v0 - 20) != -1 )
    {
      v0 -= 5;
      if ( v0 == (int *)&gameswf::as_global_textformat_ctor_paramnames )
        return;
    }
    v1 = (void *)*(v0 - 2);
    v0 -= 5;
    gameswf::free_internal(v1);
  }
  while ( v0 != (int *)&gameswf::as_global_textformat_ctor_paramnames );
}


// ===== 7a681c gameswf::as_textformat::as_textformat(gameswf::player *) =====
gameswf::as_textformat *__fastcall gameswf::as_textformat::as_textformat(
        gameswf::as_textformat *this,
        gameswf::player *a2)
{
  gameswf::as_object::as_object(this, a2);
  *(_DWORD *)this = off_990FE8;
  return this;
}


// ===== 7a6850 gameswf::as_textformat::as_textformat(gameswf::player *) =====
gameswf::as_textformat *__fastcall gameswf::as_textformat::as_textformat(
        gameswf::as_textformat *this,
        gameswf::player *a2)
{
  gameswf::as_object::as_object(this, a2);
  *(_DWORD *)this = off_990FE8;
  return this;
}


// ===== 7a6884 gameswf::as_textformat::~as_textformat() =====
void __fastcall gameswf::as_textformat::~as_textformat(gameswf::as_textformat *this)
{
  *(_DWORD *)this = off_990FE8;
  gameswf::as_object::~as_object(this);
}


// ===== 7a68b8 gameswf::as_global_textformat_ctor(gameswf::fn_call const&) =====
int __fastcall gameswf::as_global_textformat_ctor(gameswf *this, const gameswf::fn_call *a2)
{
  int v2; // r4
  gameswf::player *v4; // r4
  gameswf::as_textformat *v5; // r6
  int v6; // r4
  void (__fastcall *v7)(gameswf::as_textformat *, _BYTE *, int); // r8
  int result; // r0
  _BYTE v9[8]; // [sp+8h] [bp-1Ch] BYREF
  void *p; // [sp+14h] [bp-10h]

  v2 = *((_DWORD *)this + 3);
  gameswf::weak_ptr<gameswf::player>::check_proxy(v2 + 100);
  v4 = *(gameswf::player **)(v2 + 104);
  v5 = (gameswf::as_textformat *)operator new(0x38u, 0);
  gameswf::as_textformat::as_textformat(v5, v4);
  if ( v5 )
    gameswf::ref_counted::add_ref((int)v5);
  if ( *((int *)this + 4) > 0 )
  {
    v6 = 0;
    do
    {
      while ( 1 )
      {
        v7 = *(void (__fastcall **)(gameswf::as_textformat *, _BYTE *, int))(*(_DWORD *)v5 + 28);
        gameswf::tu_string::tu_string(
          (gameswf::tu_string *)v9,
          (const gameswf::tu_string *)((char *)&gameswf::as_global_textformat_ctor_paramnames + 20 * v6));
        v7(v5, v9, **((_DWORD **)this + 3) + 12 * (*((_DWORD *)this + 5) - v6));
        if ( v9[0] == -1 )
          break;
        if ( *((_DWORD *)this + 4) <= ++v6 )
          goto LABEL_8;
      }
      gameswf::free_internal(p);
      ++v6;
    }
    while ( *((_DWORD *)this + 4) > v6 );
  }
LABEL_8:
  gameswf::as_value::set_as_object(*(gameswf::as_value **)this, v5);
  if ( v5 )
    gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v5);
  return result;
}


// ===== 7a69fc `global constructor keyed to'.._.._src_gameswf_gameswf_as_classes_as_textformat.cpp =====
int `global constructor keyed to'.._.._src_gameswf_gameswf_as_classes_as_textformat.cpp()
{
  gameswf::tu_string::tu_string((gameswf::tu_string *)&gameswf::as_global_textformat_ctor_paramnames, "font");
  gameswf::tu_string::tu_string((gameswf::tu_string *)&unk_A2CAA0, "size");
  gameswf::tu_string::tu_string((gameswf::tu_string *)&unk_A2CAB4, "color");
  gameswf::tu_string::tu_string((gameswf::tu_string *)&unk_A2CAC8, "bold");
  gameswf::tu_string::tu_string((gameswf::tu_string *)&unk_A2CADC, "italic");
  gameswf::tu_string::tu_string((gameswf::tu_string *)&unk_A2CAF0, "underline");
  gameswf::tu_string::tu_string((gameswf::tu_string *)&unk_A2CB04, "url");
  gameswf::tu_string::tu_string((gameswf::tu_string *)&unk_A2CB18, "target");
  gameswf::tu_string::tu_string((gameswf::tu_string *)&unk_A2CB2C, "align");
  gameswf::tu_string::tu_string((gameswf::tu_string *)&unk_A2CB40, "leftMargin");
  gameswf::tu_string::tu_string((gameswf::tu_string *)&unk_A2CB54, "rightMargin");
  gameswf::tu_string::tu_string((gameswf::tu_string *)&unk_A2CB68, "indent");
  gameswf::tu_string::tu_string((gameswf::tu_string *)&unk_A2CB7C, "leading");
  return _aeabi_atexit(0, (int)_tcf_0_3, (int)&_dso_handle);
}


// ===== 7a6b40 gameswf::as_textformat::~as_textformat() =====
void __fastcall gameswf::as_textformat::~as_textformat(gameswf::as_textformat *this)
{
  *(_DWORD *)this = off_990FE8;
  gameswf::as_object::~as_object(this);
  LC_API_FREE_0(this);
}


// ===== 7a6b7c gameswf::as_timer::is(int) =====
bool __fastcall gameswf::as_timer::is(gameswf::as_timer *this, int a2)
{
  return a2 == 37 || a2 == 0;
}


// ===== 7a6b94 gameswf::as_timer::clear_refs(gameswf::hash<gameswf::as_object *,bool,gameswf::fixed_size_hash<gameswf::as_object *>> *,gameswf::as_object *) =====
void __fastcall gameswf::as_timer::clear_refs(int a1, int *a2, int a3)
{
  int v6; // r12
  int v7; // r4
  int i; // r5
  int v9; // r0
  int v10; // r3
  int v11; // r3
  int v12; // r3
  _BYTE v13[4]; // [sp+4h] [bp-38h] BYREF
  int v14; // [sp+8h] [bp-34h]
  int v15; // [sp+Ch] [bp-30h]
  _BYTE v16[4]; // [sp+10h] [bp-2Ch] BYREF
  int v17; // [sp+14h] [bp-28h]
  int v18; // [sp+18h] [bp-24h]
  _BYTE v19[4]; // [sp+1Ch] [bp-20h] BYREF
  int v20; // [sp+20h] [bp-1Ch]
  int v21; // [sp+24h] [bp-18h]
  int v22; // [sp+28h] [bp-14h]
  int v23; // [sp+2Ch] [bp-10h]
  int v24; // [sp+34h] [bp-8h] BYREF

  v24 = a1;
  if ( gameswf::hash<gameswf::as_object *,bool,gameswf::fixed_size_hash<gameswf::as_object *>>::find_index(a2, &v24) >= 0 )
    return;
  gameswf::as_object::clear_refs(a1, a2, a3);
  if ( *(_BYTE *)(a1 + 61) != 5 || (v11 = *(_DWORD *)(a1 + 64)) == 0 )
  {
LABEL_4:
    if ( *(_BYTE *)(a1 + 73) == 5 )
      goto LABEL_17;
    goto LABEL_5;
  }
  if ( a3 == v11 )
  {
    v22 = 0;
    v23 = 0;
    v19[0] = 0;
    v19[1] = 2;
    v20 = 0;
    v21 = 0;
    gameswf::as_value::operator=((gameswf::as_value *)(a1 + 60), (int)v19);
    gameswf::as_value::drop_refs((gameswf::as_value *)v19);
    goto LABEL_4;
  }
  (*(void (__fastcall **)(_DWORD, int *, int))(*(_DWORD *)v11 + 64))(*(_DWORD *)(a1 + 64), a2, a3);
  if ( *(_BYTE *)(a1 + 73) == 5 )
  {
LABEL_17:
    v12 = *(_DWORD *)(a1 + 76);
    if ( v12 )
    {
      if ( a3 == v12 )
      {
        v22 = 0;
        v23 = 0;
        v16[0] = 0;
        v16[1] = 2;
        v17 = 0;
        v18 = 0;
        gameswf::as_value::operator=((gameswf::as_value *)(a1 + 72), (int)v16);
        gameswf::as_value::drop_refs((gameswf::as_value *)v16);
      }
      else
      {
        (*(void (__fastcall **)(_DWORD, int *, int))(*(_DWORD *)v12 + 64))(*(_DWORD *)(a1 + 76), a2, a3);
      }
    }
  }
LABEL_5:
  v6 = *(_DWORD *)(a1 + 92);
  if ( v6 > 0 )
  {
    v7 = 0;
    for ( i = 0; i < v6; ++i )
    {
      v9 = *(_DWORD *)(a1 + 88) + v7;
      if ( *(_BYTE *)(v9 + 1) == 5 )
      {
        v10 = *(_DWORD *)(v9 + 4);
        if ( v10 )
        {
          if ( a3 == v10 )
          {
            v22 = 0;
            v23 = 0;
            v14 = 0;
            v15 = 0;
            v13[0] = 0;
            v13[1] = 2;
            gameswf::as_value::operator=((gameswf::as_value *)v9, (int)v13);
            gameswf::as_value::drop_refs((gameswf::as_value *)v13);
          }
          else
          {
            (*(void (__fastcall **)(_DWORD, int *, int))(*(_DWORD *)v10 + 64))(*(_DWORD *)(v9 + 4), a2, a3);
          }
          v6 = *(_DWORD *)(a1 + 92);
        }
      }
      v7 += 12;
    }
  }
}


// ===== 7a6da8 gameswf::as_timer::clear(void) =====
void __fastcall gameswf::as_timer::clear(gameswf::as_timer *this)
{
  int v2; // r0

  v2 = (*(int (__fastcall **)(gameswf::as_timer *))(*(_DWORD *)this + 84))(this);
  gameswf::listener::remove((gameswf::listener *)(v2 + 184), this);
}


// ===== 7a6dcc gameswf::array<gameswf::as_value>::resize(int) [clone] =====
void __fastcall gameswf::array<gameswf::as_value>::resize(_DWORD *a1)
{
  int v1; // r4
  int v3; // r5
  int i; // r6
  int v5; // r3
  _BYTE *v6; // r0

  v1 = a1[1];
  if ( v1 <= 0 )
  {
    if ( v1 < 0 )
    {
      v5 = 12 * v1;
      do
      {
        ++v1;
        v6 = (_BYTE *)(*a1 + v5);
        *v6 = 0;
        v6[1] = 0;
        v5 += 12;
      }
      while ( v1 );
    }
  }
  else
  {
    v3 = 0;
    for ( i = 0; i != v1; ++i )
    {
      gameswf::as_value::drop_refs((gameswf::as_value *)(*a1 + v3));
      v3 += 12;
    }
  }
  a1[1] = 0;
}


// ===== 7a6e48 gameswf::as_timer::~as_timer() =====
void __fastcall gameswf::as_timer::~as_timer(gameswf::as_timer *this)
{
  char *v2; // r5

  *(_DWORD *)this = off_991058;
  v2 = (char *)this + 88;
  gameswf::array<gameswf::as_value>::resize((_DWORD *)this + 22);
  gameswf::array<gameswf::as_value>::reserve((int)v2, 0);
  gameswf::as_value::drop_refs((gameswf::as_timer *)((char *)this + 72));
  gameswf::as_value::drop_refs((gameswf::as_timer *)((char *)this + 60));
  gameswf::as_object::~as_object(this);
}


// ===== 7a6ea8 gameswf::as_timer::~as_timer() =====
void __fastcall gameswf::as_timer::~as_timer(gameswf::as_timer *this)
{
  gameswf::as_timer::~as_timer(this);
  LC_API_FREE_0(this);
}


// ===== 7a6ec4 gameswf::as_timer::~as_timer() =====
void __fastcall gameswf::as_timer::~as_timer(gameswf::as_timer *this)
{
  char *v2; // r5

  *(_DWORD *)this = off_991058;
  v2 = (char *)this + 88;
  gameswf::array<gameswf::as_value>::resize((_DWORD *)this + 22);
  gameswf::array<gameswf::as_value>::reserve((int)v2, 0);
  gameswf::as_value::drop_refs((gameswf::as_timer *)((char *)this + 72));
  gameswf::as_value::drop_refs((gameswf::as_timer *)((char *)this + 60));
  gameswf::as_object::~as_object(this);
}


// ===== 7a6f24 gameswf::as_timer::as_timer(gameswf::as_value &,gameswf::as_value &,double,gameswf::fn_call const&,int) =====
gameswf::as_timer *__fastcall gameswf::as_timer::as_timer(
        gameswf::as_timer *this,
        gameswf::as_value *a2,
        gameswf::as_value *a3,
        int a4,
        double a5,
        const gameswf::fn_call *a6,
        int a7)
{
  int v8; // r7
  gameswf::player *v10; // r1
  int v12; // r10
  _BYTE *v13; // r0
  float v14; // r0
  int root; // r0

  v8 = *((_DWORD *)a6 + 3);
  v10 = *(gameswf::player **)(v8 + 104);
  v12 = a7;
  if ( v10 )
  {
    v13 = *(_BYTE **)(v8 + 100);
    if ( !v13[4] )
    {
      if ( (*(_DWORD *)v13)-- == 1 )
        gameswf::free_internal(v13);
      v10 = nullptr;
      *(_DWORD *)(v8 + 104) = 0;
      *(_DWORD *)(v8 + 100) = 0;
    }
  }
  gameswf::as_object::as_object(this, v10);
  *(_DWORD *)this = off_991058;
  v14 = a5;
  *((float *)this + 14) = v14 / 1000.0;
  *((_BYTE *)this + 60) = 0;
  *((_BYTE *)this + 61) = 0;
  gameswf::as_value::operator=((gameswf::as_timer *)((char *)this + 60), (int)a2);
  *((_BYTE *)this + 72) = 0;
  *((_BYTE *)this + 73) = 0;
  gameswf::as_value::operator=((gameswf::as_timer *)((char *)this + 72), (int)a3);
  *((_BYTE *)this + 100) = 0;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 24) = 0;
  if ( a7 < *((_DWORD *)a6 + 4) )
  {
    do
    {
      ++v12;
      gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>((_DWORD *)this + 22);
    }
    while ( *((_DWORD *)a6 + 4) > v12 );
  }
  root = gameswf::as_object::get_root(this);
  gameswf::listener::add((gameswf::listener *)(root + 184), this);
  return this;
}


// ===== 7a7064 gameswf::as_timer::as_timer(gameswf::as_value &,gameswf::as_value &,double,gameswf::fn_call const&,int) =====
gameswf::as_timer *__fastcall gameswf::as_timer::as_timer(
        gameswf::as_timer *this,
        gameswf::as_value *a2,
        gameswf::as_value *a3,
        int a4,
        double a5,
        const gameswf::fn_call *a6,
        int a7)
{
  int v8; // r7
  gameswf::player *v10; // r1
  int v12; // r10
  _BYTE *v13; // r0
  float v14; // r0
  int root; // r0

  v8 = *((_DWORD *)a6 + 3);
  v10 = *(gameswf::player **)(v8 + 104);
  v12 = a7;
  if ( v10 )
  {
    v13 = *(_BYTE **)(v8 + 100);
    if ( !v13[4] )
    {
      if ( (*(_DWORD *)v13)-- == 1 )
        gameswf::free_internal(v13);
      v10 = nullptr;
      *(_DWORD *)(v8 + 104) = 0;
      *(_DWORD *)(v8 + 100) = 0;
    }
  }
  gameswf::as_object::as_object(this, v10);
  *(_DWORD *)this = off_991058;
  v14 = a5;
  *((float *)this + 14) = v14 / 1000.0;
  *((_BYTE *)this + 60) = 0;
  *((_BYTE *)this + 61) = 0;
  gameswf::as_value::operator=((gameswf::as_timer *)((char *)this + 60), (int)a2);
  *((_BYTE *)this + 72) = 0;
  *((_BYTE *)this + 73) = 0;
  gameswf::as_value::operator=((gameswf::as_timer *)((char *)this + 72), (int)a3);
  *((_BYTE *)this + 100) = 0;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 24) = 0;
  if ( a7 < *((_DWORD *)a6 + 4) )
  {
    do
    {
      ++v12;
      gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>((_DWORD *)this + 22);
    }
    while ( *((_DWORD *)a6 + 4) > v12 );
  }
  root = gameswf::as_object::get_root(this);
  gameswf::listener::add((gameswf::listener *)(root + 184), this);
  return this;
}


// ===== 7a71a4 gameswf::as_timer::advance(float) =====
void __fastcall gameswf::as_timer::advance(gameswf::as_timer *this, float a2)
{
  float v3; // r0
  float v4; // r1
  gameswf::ref_counted *v5; // r1
  _BYTE *v6; // r0
  int v7; // r5
  int v8; // r6
  int i; // r7
  _DWORD v11[27]; // [sp+14h] [bp-84h] BYREF
  _BYTE v12[12]; // [sp+80h] [bp-18h] BYREF
  _BYTE v13[12]; // [sp+8Ch] [bp-Ch] BYREF

  v3 = a2 + *((float *)this + 21);
  v4 = *((float *)this + 14);
  *((float *)this + 21) = v3;
  if ( v3 >= v4 )
  {
    v5 = *((gameswf::ref_counted **)this + 12);
    *((_DWORD *)this + 21) = 0;
    if ( v5 )
    {
      v6 = *((_BYTE **)this + 11);
      if ( !v6[4] )
      {
        if ( (*(_DWORD *)v6)-- == 1 )
          gameswf::free_internal(v6);
        v5 = nullptr;
        *((_DWORD *)this + 11) = 0;
        *((_DWORD *)this + 12) = 0;
      }
    }
    gameswf::as_environment::as_environment((int)v11, v5);
    v7 = *((_DWORD *)this + 23);
    if ( v7 > 0 )
    {
      v8 = 0;
      for ( i = 0; i != v7; ++i )
      {
        gameswf::array<gameswf::as_value>::push_back<gameswf::as_value>(v11);
        v8 += 12;
      }
    }
    v13[1] = 0;
    v13[0] = 0;
    gameswf::as_value::operator=((gameswf::as_value *)v13, (int)this + 60);
    gameswf::call_method(
      (int)v12,
      (gameswf::as_timer *)((char *)this + 72),
      (int)v11,
      (int)v13,
      v7,
      v11[1] - 1,
      (int)"timer");
    gameswf::as_value::drop_refs((gameswf::as_value *)v12);
    gameswf::as_value::drop_refs((gameswf::as_value *)v13);
    gameswf::as_environment::~as_environment((gameswf::as_environment *)v11);
  }
}


// ===== 7a72d0 gameswf::as_transform::is(int) =====
bool __fastcall gameswf::as_transform::is(gameswf::as_transform *this, int a2)
{
  return a2 == 27 || a2 == 0;
}


// ===== 7a72e8 gameswf::as_transform::~as_transform() =====
void __fastcall gameswf::as_transform::~as_transform(gameswf::as_transform *this)
{
  _DWORD *v2; // r0

  v2 = *((_DWORD **)this + 14);
  *(_DWORD *)this = off_9910C8;
  if ( v2 )
  {
    if ( (*v2)-- == 1 )
      gameswf::free_internal(v2);
  }
  gameswf::as_object::~as_object(this);
}


// ===== 7a7344 gameswf::as_transform::~as_transform() =====
void __fastcall gameswf::as_transform::~as_transform(gameswf::as_transform *this)
{
  gameswf::as_transform::~as_transform(this);
  LC_API_FREE_0(this);
}


// ===== 7a7360 gameswf::as_transform::set_member(gameswf::tu_stringi const&,gameswf::as_value const&) =====
int __fastcall gameswf::as_transform::set_member(int a1, gameswf::tu_string *this, int a3)
{
  int *v6; // r6
  int v7; // r0
  int v8; // r3
  int v9; // r4
  int result; // r0
  int *v11; // r6
  int v12; // r0
  int v13; // r3
  int v14; // r4

  switch ( gameswf::get_standard_member(this) )
  {
    case '*':
      if ( *(_BYTE *)(a3 + 1) != 5 )
        goto LABEL_9;
      v11 = *(int **)(a3 + 4);
      if ( !v11 || !(*(int (__fastcall **)(_DWORD, int))(*v11 + 8))(*(_DWORD *)(a3 + 4), 26) )
        goto LABEL_9;
      gameswf::as_object::set_member((int *)a1, (char *)this, (const gameswf::as_value *)a3);
      v12 = *(_DWORD *)(a1 + 60);
      if ( v12 )
      {
        v13 = *(_DWORD *)(a1 + 56);
        v14 = *(unsigned __int8 *)(v13 + 4);
        if ( !*(_BYTE *)(v13 + 4) )
        {
          gameswf::smart_ptr_proxy::operator=((_DWORD **)(a1 + 56), (_DWORD *)*(unsigned __int8 *)(v13 + 4));
          *(_DWORD *)(a1 + 60) = v14;
          v12 = v14;
        }
      }
      gameswf::character::set_matrix(v12, v11 + 14);
      result = 1;
      break;
    case '+':
    case '-':
      goto LABEL_9;
    case ',':
      if ( *(_BYTE *)(a3 + 1) == 5 )
      {
        v6 = *(int **)(a3 + 4);
        if ( v6 )
        {
          if ( (*(int (__fastcall **)(_DWORD, int))(*v6 + 8))(*(_DWORD *)(a3 + 4), 28) )
          {
            gameswf::as_object::set_member((int *)a1, (char *)this, (const gameswf::as_value *)a3);
            v7 = *(_DWORD *)(a1 + 60);
            if ( v7 )
            {
              v8 = *(_DWORD *)(a1 + 56);
              v9 = *(unsigned __int8 *)(v8 + 4);
              if ( !*(_BYTE *)(v8 + 4) )
              {
                gameswf::smart_ptr_proxy::operator=((_DWORD **)(a1 + 56), (_DWORD *)*(unsigned __int8 *)(v8 + 4));
                *(_DWORD *)(a1 + 60) = v9;
                v7 = v9;
              }
            }
            gameswf::character::set_cxform(v7, v6 + 14);
          }
        }
      }
LABEL_9:
      result = 1;
      break;
    default:
      result = gameswf::as_object::set_member((int *)a1, (char *)this, (const gameswf::as_value *)a3);
      break;
  }
  return result;
}


// ===== 7a74b4 gameswf::as_transform::get_member(gameswf::tu_stringi const&,gameswf::as_value *) =====
int __fastcall gameswf::as_transform::get_member(int *a1, gameswf::tu_string *this, int a3)
{
  int standard_member; // r0
  _DWORD *v8; // r5
  gameswf::character *v9; // r0
  _BYTE *v10; // r3
  char *world_cxform; // r0
  int v12; // r1
  int v13; // r2
  int v14; // r3
  int v15; // r1
  int v16; // r2
  int v17; // r3

  standard_member = gameswf::get_standard_member(this);
  if ( standard_member == 43 )
  {
    gameswf::as_object::get_member(a1, this, (gameswf::as_value *)a3);
    return 1;
  }
  if ( standard_member != 45 )
    return gameswf::as_object::get_member(a1, this, (gameswf::as_value *)a3);
  if ( !gameswf::as_object::get_member(a1, this, (gameswf::as_value *)a3) )
    return 1;
  if ( *(_BYTE *)(a3 + 1) != 5 )
    return 1;
  v8 = *(_DWORD **)(a3 + 4);
  if ( !v8 || !(*(int (__fastcall **)(_DWORD *, int))(*v8 + 8))(v8, 28) )
    return 1;
  v9 = (gameswf::character *)a1[15];
  if ( v9 )
  {
    v10 = (_BYTE *)a1[14];
    if ( !v10[4] )
    {
      if ( (*(_DWORD *)v10)-- == 1 )
        gameswf::free_internal(v10);
      v9 = nullptr;
      a1[15] = 0;
      a1[14] = 0;
    }
  }
  world_cxform = gameswf::character::get_world_cxform(v9);
  v12 = *((_DWORD *)world_cxform + 1);
  v13 = *((_DWORD *)world_cxform + 2);
  v14 = *((_DWORD *)world_cxform + 3);
  v8[14] = *(_DWORD *)world_cxform;
  v8[15] = v12;
  v8[16] = v13;
  v8[17] = v14;
  v15 = *((_DWORD *)world_cxform + 5);
  v16 = *((_DWORD *)world_cxform + 6);
  v17 = *((_DWORD *)world_cxform + 7);
  v8[18] = *((_DWORD *)world_cxform + 4);
  v8[19] = v15;
  v8[20] = v16;
  v8[21] = v17;
  return 1;
}


// ===== 7a75c0 gameswf::as_transform::init(void) =====
void __fastcall gameswf::as_transform::init(gameswf::as_transform *this)
{
  gameswf::player *v2; // r10
  _BYTE *v3; // r0
  int v4; // r3
  _BYTE *v5; // r0
  const gameswf::cxform *v6; // r9
  gameswf::as_color_transform *v7; // r6
  gameswf::player *v8; // r10
  _BYTE *v9; // r0
  gameswf::character *v10; // r0
  _BYTE *v11; // r3
  char *world_cxform; // r9
  gameswf::as_color_transform *v13; // r6
  gameswf::player *v14; // r10
  _BYTE *v15; // r0
  int v16; // r3
  _BYTE *v17; // r0
  const gameswf::matrix *v18; // r9
  gameswf::as_matrix *v19; // r6
  gameswf::player *v20; // r10
  _BYTE *v21; // r0
  gameswf::character *v22; // r0
  _BYTE *v23; // r3
  char *world_matrix; // r9
  gameswf::as_matrix *v25; // r6
  bool v26; // zf
  _BYTE v27[4]; // [sp+4h] [bp-84h] BYREF
  gameswf::as_matrix *v28; // [sp+8h] [bp-80h]
  _BYTE v29[4]; // [sp+10h] [bp-78h] BYREF
  gameswf::as_matrix *v30; // [sp+14h] [bp-74h]
  _BYTE v31[4]; // [sp+1Ch] [bp-6Ch] BYREF
  gameswf::as_color_transform *v32; // [sp+20h] [bp-68h]
  _BYTE v33[4]; // [sp+28h] [bp-60h] BYREF
  gameswf::as_color_transform *v34; // [sp+2Ch] [bp-5Ch]
  _BYTE v35[8]; // [sp+34h] [bp-54h] BYREF
  void *p; // [sp+40h] [bp-48h]
  _BYTE v37[8]; // [sp+48h] [bp-40h] BYREF
  void *v38; // [sp+54h] [bp-34h]
  _BYTE v39[8]; // [sp+5Ch] [bp-2Ch] BYREF
  void *v40; // [sp+68h] [bp-20h]
  _BYTE v41[8]; // [sp+70h] [bp-18h] BYREF
  void *v42; // [sp+7Ch] [bp-Ch]

  gameswf::tu_string::tu_string((gameswf::tu_string *)v41, "colorTransform");
  v2 = *((gameswf::player **)this + 12);
  if ( v2 )
  {
    v3 = *((_BYTE **)this + 11);
    if ( !v3[4] )
    {
      v26 = (*(_DWORD *)v3)-- == 1;
      if ( v26 )
        gameswf::free_internal(v3);
      v2 = nullptr;
      *((_DWORD *)this + 11) = 0;
      *((_DWORD *)this + 12) = 0;
    }
  }
  v4 = *((_DWORD *)this + 15);
  if ( v4 )
  {
    v5 = *((_BYTE **)this + 14);
    if ( !v5[4] )
    {
      v26 = (*(_DWORD *)v5)-- == 1;
      if ( v26 )
        gameswf::free_internal(v5);
      v4 = 0;
      *((_DWORD *)this + 14) = 0;
      *((_DWORD *)this + 15) = 0;
    }
  }
  v6 = *(const gameswf::cxform **)(v4 + 72);
  v7 = (gameswf::as_color_transform *)operator new(0x58u, 0);
  gameswf::as_color_transform::as_color_transform(v7, v2, v6);
  v33[0] = 0;
  v33[1] = 5;
  v34 = v7;
  if ( v7 )
    gameswf::ref_counted::add_ref((int)v7);
  gameswf::as_object::builtin_member((int)this, (int)v41, v33);
  gameswf::as_value::drop_refs((gameswf::as_value *)v33);
  if ( v41[0] == -1 )
    gameswf::free_internal(v42);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v39, "concatenatedColorTransform");
  v8 = *((gameswf::player **)this + 12);
  if ( v8 )
  {
    v9 = *((_BYTE **)this + 11);
    if ( !v9[4] )
    {
      v26 = (*(_DWORD *)v9)-- == 1;
      if ( v26 )
        gameswf::free_internal(v9);
      v8 = nullptr;
      *((_DWORD *)this + 11) = 0;
      *((_DWORD *)this + 12) = 0;
    }
  }
  v10 = *((gameswf::character **)this + 15);
  if ( v10 )
  {
    v11 = *((_BYTE **)this + 14);
    if ( !v11[4] )
    {
      v26 = (*(_DWORD *)v11)-- == 1;
      if ( v26 )
        gameswf::free_internal(v11);
      v10 = nullptr;
      *((_DWORD *)this + 14) = 0;
      *((_DWORD *)this + 15) = 0;
    }
  }
  world_cxform = gameswf::character::get_world_cxform(v10);
  v13 = (gameswf::as_color_transform *)operator new(0x58u, 0);
  gameswf::as_color_transform::as_color_transform(v13, v8, (const gameswf::cxform *)world_cxform);
  v31[0] = 0;
  v31[1] = 5;
  v32 = v13;
  if ( v13 )
    gameswf::ref_counted::add_ref((int)v13);
  gameswf::as_object::builtin_member((int)this, (int)v39, v31);
  gameswf::as_value::drop_refs((gameswf::as_value *)v31);
  if ( v39[0] == -1 )
    gameswf::free_internal(v40);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v37, "matrix");
  v14 = *((gameswf::player **)this + 12);
  if ( v14 )
  {
    v15 = *((_BYTE **)this + 11);
    if ( !v15[4] )
    {
      v26 = (*(_DWORD *)v15)-- == 1;
      if ( v26 )
        gameswf::free_internal(v15);
      v14 = nullptr;
      *((_DWORD *)this + 11) = 0;
      *((_DWORD *)this + 12) = 0;
    }
  }
  v16 = *((_DWORD *)this + 15);
  if ( v16 )
  {
    v17 = *((_BYTE **)this + 14);
    if ( !v17[4] )
    {
      v26 = (*(_DWORD *)v17)-- == 1;
      if ( v26 )
        gameswf::free_internal(v17);
      v16 = 0;
      *((_DWORD *)this + 14) = 0;
      *((_DWORD *)this + 15) = 0;
    }
  }
  v18 = *(const gameswf::matrix **)(v16 + 76);
  v19 = (gameswf::as_matrix *)operator new(0x50u, 0);
  gameswf::as_matrix::as_matrix(v19, v14, v18);
  v29[0] = 0;
  v29[1] = 5;
  v30 = v19;
  if ( v19 )
    gameswf::ref_counted::add_ref((int)v19);
  gameswf::as_object::builtin_member((int)this, (int)v37, v29);
  gameswf::as_value::drop_refs((gameswf::as_value *)v29);
  if ( v37[0] == -1 )
    gameswf::free_internal(v38);
  gameswf::tu_string::tu_string((gameswf::tu_string *)v35, "concatenatedMatrix");
  v20 = *((gameswf::player **)this + 12);
  if ( v20 )
  {
    v21 = *((_BYTE **)this + 11);
    if ( !v21[4] )
    {
      v26 = (*(_DWORD *)v21)-- == 1;
      if ( v26 )
        gameswf::free_internal(v21);
      v20 = nullptr;
      *((_DWORD *)this + 11) = 0;
      *((_DWORD *)this + 12) = 0;
    }
  }
  v22 = *((gameswf::character **)this + 15);
  if ( v22 )
  {
    v23 = *((_BYTE **)this + 14);
    if ( !v23[4] )
    {
      v26 = (*(_DWORD *)v23)-- == 1;
      if ( v26 )
        gameswf::free_internal(v23);
      v22 = nullptr;
      *((_DWORD *)this + 14) = 0;
      *((_DWORD *)this + 15) = 0;
    }
  }
  world_matrix = gameswf::character::get_world_matrix(v22);
  v25 = (gameswf::as_matrix *)operator new(0x50u, 0);
  gameswf::as_matrix::as_matrix(v25, v20, (const gameswf::matrix *)world_matrix);
  v27[0] = 0;
  v27[1] = 5;
  v28 = v25;
  if ( v25 )
    gameswf::ref_counted::add_ref((int)v25);
  gameswf::as_object::builtin_member((int)this, (int)v35, v27);
  gameswf::as_value::drop_refs((gameswf::as_value *)v27);
  if ( v35[0] == -1 )
    gameswf::free_internal(p);
}


// ===== 7a7a8c gameswf::as_transform::as_transform(gameswf::player *,gameswf::character *) =====
gameswf::as_transform *__fastcall gameswf::as_transform::as_transform(
        gameswf::as_transform *this,
        gameswf::player *a2,
        gameswf::character *a3)
{
  gameswf::as_object::as_object(this, a2);
  *(_DWORD *)this = off_9910C8;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 14) = 0;
  gameswf::weak_ptr<gameswf::character>::operator=((int)this + 56, a3);
  gameswf::as_transform::init(this);
  return this;
}


// ===== 7a7ae4 gameswf::as_global_transform_ctor(gameswf::fn_call const&) =====
void __fastcall gameswf::as_global_transform_ctor(gameswf *this, const gameswf::fn_call *a2)
{
  _DWORD *v3; // r3
  int v4; // r3
  gameswf::as_object *v5; // r1
  gameswf::character *v6; // r6
  int v7; // r7
  gameswf::player *v8; // r8
  int v9; // r3
  gameswf::player *v10; // r5
  gameswf::as_transform *v11; // r5
  gameswf::ref_counted *v12; // [sp+4h] [bp-4h] BYREF

  if ( *((_DWORD *)this + 4) == 1 )
  {
    v3 = *((_DWORD **)this + 3);
    v12 = nullptr;
    v4 = *v3 + 12 * *((_DWORD *)this + 5);
    if ( *(_BYTE *)(v4 + 1) == 5 && (v6 = *(gameswf::character **)(v4 + 4)) != nullptr )
    {
      if ( (*(int (__fastcall **)(gameswf::character *))(*(_DWORD *)v6 + 8))(v6) )
      {
        v7 = *((_DWORD *)this + 3);
        v8 = *(gameswf::player **)(v7 + 104);
        if ( v8 )
        {
          v9 = *(_DWORD *)(v7 + 100);
          v10 = (gameswf::player *)*(unsigned __int8 *)(v9 + 4);
          if ( !*(_BYTE *)(v9 + 4) )
          {
            gameswf::smart_ptr_proxy::operator=((_DWORD **)(v7 + 100), (_DWORD *)*(unsigned __int8 *)(v9 + 4));
            v8 = v10;
            *(_DWORD *)(v7 + 104) = v10;
          }
        }
        v11 = (gameswf::as_transform *)operator new(0x40u, 0);
        gameswf::as_transform::as_transform(v11, v8, v6);
        gameswf::smart_ptr<gameswf::as_transform>::set_ref(&v12, v11);
      }
      v5 = v12;
    }
    else
    {
      v5 = nullptr;
    }
    gameswf::as_value::set_as_object(*(gameswf::as_value **)this, v5);
    if ( v12 )
      gameswf::ref_counted::drop_ref((void (__fastcall ***)(_DWORD))v12);
  }
}


// ===== 7a7bd8 gameswf::as_transform::as_transform(gameswf::player *,gameswf::character *) =====
gameswf::as_transform *__fastcall gameswf::as_transform::as_transform(
        gameswf::as_transform *this,
        gameswf::player *a2,
        gameswf::character *a3)
{
  gameswf::as_object::as_object(this, a2);
  *(_DWORD *)this = off_9910C8;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 14) = 0;
  gameswf::weak_ptr<gameswf::character>::operator=((int)this + 56, a3);
  gameswf::as_transform::init(this);
  return this;
}


// ===== 7a7c30 fs_callback(gameswf::character *,char const*,char const*) =====
void __fastcall fs_callback(gameswf::character *a1, const char *a2, const char *a3)
{
  ;
}


// ===== 7a7c34 RenderFX::SetWireFrame(bool) =====
int __fastcall RenderFX::SetWireFrame(RenderFX *this, bool a2)
{
  return (*(int (__fastcall **)(int, RenderFX *))(*(_DWORD *)gameswf::s_render_handler + 64))(
           gameswf::s_render_handler,
           this);
}


// ===== 7a7c6c RenderFX::SetEventListener(RenderFX::EventListener *) =====
int __fastcall RenderFX::SetEventListener(int this, RenderFX::EventListener *a2)
{
  *(_DWORD *)(this + 252) = a2;
  return this;
}


// ===== 7a7c74 RenderFX::GetController(int) =====
char *__fastcall RenderFX::GetController(RenderFX *this, int a2)
{
  return (char *)this + 40 * a2 + 88;
}

