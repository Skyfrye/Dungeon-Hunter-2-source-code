// ===== 87abac codebook_decode_deinterleave_repeat(stb_vorbis *,Codebook *,float **,int,int *,int *,int,int) =====
int __fastcall codebook_decode_deinterleave_repeat(int a1, int a2, int a3, int a4, int *a5, int *a6, int a7, int a8)
{
  int v9; // r5
  int v10; // r6
  int v11; // r11
  int v12; // r3
  unsigned int v13; // r0
  int v14; // r3
  int v15; // r2
  unsigned int v16; // r0
  int v17; // r2
  int v18; // r7
  int v19; // r8
  int v20; // r8
  int result; // r0
  int v22; // r2
  int *v23; // r0
  float v24; // r0
  int v25; // r8
  int v26; // r7
  int v27; // r9
  int v28; // [sp+0h] [bp-1Ch]
  int v31; // [sp+Ch] [bp-10h]

  v9 = *a5;
  v10 = *a6;
  if ( !*(_BYTE *)(a2 + 21) )
  {
    result = 0;
    *(_DWORD *)(a1 + 116) = 21;
    return result;
  }
  if ( a8 <= 0 )
  {
LABEL_18:
    *a5 = v9;
    *a6 = v10;
    return 1;
  }
  v28 = *(_DWORD *)a2;
  v11 = a1;
  while ( 1 )
  {
    v12 = *(_DWORD *)(v11 + 1412);
    if ( v12 <= 9 )
    {
      if ( !v12 )
        *(_DWORD *)(v11 + 1408) = 0;
      while ( !*(_DWORD *)(v11 + 1400) || *(_BYTE *)(v11 + 1392) )
      {
        v23 = get8_packet_raw(v11);
        if ( v23 == (int *)-1 )
          break;
        v22 = *(_DWORD *)(v11 + 1412);
        v13 = *(_DWORD *)(v11 + 1408) + ((_DWORD)v23 << v22);
        *(_DWORD *)(v11 + 1408) = v13;
        *(_DWORD *)(v11 + 1412) = v22 + 8;
        if ( v22 + 8 > 24 )
          goto LABEL_6;
      }
    }
    v13 = *(_DWORD *)(v11 + 1408);
LABEL_6:
    v14 = *(__int16 *)(a2 + 2 * (v13 & 0x3FF) + 36);
    if ( v14 >= 0 )
      break;
    v14 = codebook_decode_scalar_raw(v11, a2);
    if ( v14 < 0 )
      goto LABEL_36;
LABEL_8:
    if ( v9 + v28 + a4 * v10 > a4 * a7 )
      v28 = v9 + a4 * (a7 - v10);
    v18 = *(unsigned __int8 *)(a2 + 22);
    v19 = *(_DWORD *)a2 * v14;
    if ( *(_BYTE *)(a2 + 22) )
    {
      if ( v28 <= 0 )
        goto LABEL_17;
      v31 = v11;
      v24 = 0.0;
      v25 = 4 * v19;
      v26 = 0;
      do
      {
        ++v26;
        v24 = v24 + *(float *)(*(_DWORD *)(a2 + 28) + v25);
        v27 = *(_DWORD *)(a3 + 4 * v9++);
        v25 += 4;
        *(float *)(v27 + 4 * v10) = *(float *)(v27 + 4 * v10) + v24;
        if ( a4 == v9 )
        {
          ++v10;
          v9 = 0;
        }
      }
      while ( v26 != v28 );
      goto LABEL_16;
    }
    if ( v28 > 0 )
    {
      v31 = v11;
      v20 = 4 * v19;
      do
      {
        *(float *)(*(_DWORD *)(a3 + 4 * v9) + 4 * v10) = *(float *)(*(_DWORD *)(a3 + 4 * v9) + 4 * v10)
                                                       + (float)(*(float *)(*(_DWORD *)(a2 + 28) + v20) + 0.0);
        ++v9;
        ++v18;
        if ( a4 == v9 )
        {
          ++v10;
          v9 = 0;
        }
        v20 += 4;
      }
      while ( v18 != v28 );
LABEL_16:
      v11 = v31;
    }
LABEL_17:
    a8 -= v28;
    if ( a8 <= 0 )
      goto LABEL_18;
  }
  v15 = *(unsigned __int8 *)(*(_DWORD *)(a2 + 8) + v14);
  v16 = v13 >> v15;
  v17 = *(_DWORD *)(v11 + 1412) - v15;
  *(_DWORD *)(v11 + 1408) = v16;
  *(_DWORD *)(v11 + 1412) = v17;
  if ( v17 >= 0 )
    goto LABEL_8;
  *(_DWORD *)(a1 + 1412) = 0;
LABEL_36:
  result = *(unsigned __int8 *)(a1 + 1392);
  if ( *(_BYTE *)(a1 + 1392) || !*(_DWORD *)(a1 + 1400) )
  {
    *(_DWORD *)(a1 + 116) = 21;
    return 0;
  }
  return result;
}


// ===== 87ae5c codebook_decode_start(stb_vorbis *,Codebook *,int) =====
int __fastcall codebook_decode_start(int a1, int a2)
{
  int result; // r0
  int v5; // r3
  unsigned int v6; // r3
  int v7; // r2
  unsigned int v8; // r3
  int v9; // r2
  int v10; // r3
  int v11; // r2
  int *v12; // r0

  if ( !*(_BYTE *)(a2 + 21) )
  {
    *(_DWORD *)(a1 + 116) = 21;
    return -1;
  }
  v5 = *(_DWORD *)(a1 + 1412);
  if ( v5 <= 9 )
  {
    if ( !v5 )
      *(_DWORD *)(a1 + 1408) = 0;
    while ( !*(_DWORD *)(a1 + 1400) || *(_BYTE *)(a1 + 1392) )
    {
      v12 = get8_packet_raw(a1);
      if ( v12 == (int *)-1 )
        break;
      v10 = *(_DWORD *)(a1 + 1412);
      v11 = v10 + 8;
      v6 = *(_DWORD *)(a1 + 1408) + ((_DWORD)v12 << v10);
      *(_DWORD *)(a1 + 1408) = v6;
      *(_DWORD *)(a1 + 1412) = v11;
      if ( v11 > 24 )
        goto LABEL_5;
    }
  }
  v6 = *(_DWORD *)(a1 + 1408);
LABEL_5:
  result = *(__int16 *)(a2 + 2 * (v6 & 0x3FF) + 36);
  if ( result < 0 )
  {
    result = codebook_decode_scalar_raw(a1, a2);
    if ( result >= 0 )
      return result;
    goto LABEL_20;
  }
  v7 = *(unsigned __int8 *)(*(_DWORD *)(a2 + 8) + result);
  v8 = v6 >> v7;
  v9 = *(_DWORD *)(a1 + 1412) - v7;
  *(_DWORD *)(a1 + 1408) = v8;
  if ( v9 < 0 )
    v8 = 0;
  *(_DWORD *)(a1 + 1412) = v9;
  if ( v9 < 0 )
  {
    result = -1;
    *(_DWORD *)(a1 + 1412) = v8;
LABEL_20:
    if ( *(_BYTE *)(a1 + 1392) || !*(_DWORD *)(a1 + 1400) )
      *(_DWORD *)(a1 + 116) = 21;
  }
  return result;
}


// ===== 87af70 vorbis_decode_packet(stb_vorbis *,int *,int *,int *) =====
int __fastcall vorbis_decode_packet(int a1, int *a2, int *a3, int *a4)
{
  int result; // r0
  int v6; // r1
  int v7; // r2
  int v8; // r2
  int v9; // r4
  int v10; // r5
  int v11; // r3
  int v12; // r6
  unsigned __int8 *v13; // r10
  _WORD *v14; // r8
  int v15; // r0
  int v16; // r0
  int v17; // r12
  int v18; // r3
  int v19; // r8
  int v20; // r4
  unsigned __int8 v21; // r9
  int v22; // r6
  int v23; // r7
  int v24; // r2
  int v25; // r3
  int v26; // r1
  int v27; // r2
  int v28; // r1
  int v29; // r8
  unsigned int v30; // r4
  int v31; // r3
  int v32; // r3
  int v33; // r2
  int v34; // r6
  unsigned int v35; // r3
  int v36; // r0
  int v37; // r2
  unsigned int v38; // r3
  int v39; // r2
  int v40; // r3
  unsigned __int16 *v41; // r4
  _WORD *v42; // r7
  int v43; // r6
  int v44; // r5
  int v45; // r8
  int v46; // r11
  int v47; // r3
  int v48; // r9
  int v49; // r0
  int v50; // r11
  int v51; // r3
  int v52; // r2
  int v53; // r1
  int i; // r1
  int v55; // r3
  int v56; // r2
  int *v57; // r0
  int v58; // r3
  int v59; // r7
  int *v60; // r0
  int v61; // r2
  int v62; // r0
  int v63; // r3
  int v64; // r2
  int v65; // r12
  int v66; // r1
  int v67; // lr
  int v68; // r1
  int v69; // lr
  int v70; // r1
  char *v71; // r10
  int v72; // r4
  int v73; // r2
  int v74; // r1
  int v75; // r3
  int v76; // r5
  char *v77; // r6
  bool v78; // zf
  char *v79; // r8
  char *v80; // r6
  int v81; // r3
  int v82; // r1
  int v83; // r3
  _DWORD *v84; // r2
  int v85; // lr
  int j; // r4
  int v87; // r1
  void *v88; // r0
  _BOOL4 v89; // r3
  signed int v90; // r12
  int k; // r4
  int v92; // r0
  int v93; // r3
  int v94; // r2
  int v95; // r3
  int v96; // r3
  int v97; // r8
  int *v98; // r0
  int v99; // r2
  int v100; // r3
  int v101; // r5
  int v102; // r3
  int v103; // r6
  int v104; // r2
  int v105; // r3
  int v106; // r4
  int v107; // r11
  int v108; // r0
  int v109; // r3
  int v110; // r7
  int v111; // r6
  int v112; // r10
  int v113; // r10
  int v114; // r8
  int v115; // r11
  int v116; // r0
  float v117; // r9
  int v118; // r10
  float *v119; // r6
  int v120; // r8
  float v121; // r7
  bool v122; // cc
  int v123; // r7
  float v124; // r0
  int v125; // r10
  int v126; // r8
  float v127; // r0
  signed int v128; // r6
  int v129; // r8
  int v130; // r5
  int v131; // r5
  unsigned int v132; // r2
  int v133; // r0
  int v134; // r3
  unsigned int v135; // r2
  int v136; // r3
  int v137; // r5
  bool v138; // cc
  int v139; // r12
  int v140; // r3
  int v141; // r2
  bool v142; // cc
  int v143; // r3
  int v144; // r8
  int v145; // r5
  bool v146; // cc
  int v147; // r6
  int v148; // r7
  int v149; // r5
  unsigned int v150; // r2
  int v151; // r0
  int v152; // r3
  unsigned int v153; // r2
  int v154; // r3
  int v155; // r5
  int v156; // r3
  int v157; // r2
  int v158; // r6
  float *v159; // r1
  int v160; // r3
  unsigned int v161; // r3
  int v162; // r0
  int v163; // r2
  unsigned int v164; // r3
  int v165; // r2
  int v166; // r7
  float v167; // r9
  int v168; // r10
  int v169; // r7
  int v170; // r3
  int v171; // r2
  int *v172; // r0
  int v173; // r3
  int v174; // r11
  int v175; // r9
  int v176; // r10
  int v177; // r5
  signed int v178; // r5
  int v179; // r8
  int v180; // r3
  int v181; // r7
  unsigned int v182; // r2
  int v183; // r0
  int v184; // r1
  int v185; // r3
  unsigned int v186; // r2
  int v187; // r3
  int v188; // r7
  bool v189; // cc
  int v190; // r3
  int v191; // r2
  bool v192; // cc
  int v193; // r11
  int v194; // r2
  int v195; // r8
  int v196; // r10
  int v197; // r4
  float *v198; // r7
  int v199; // r6
  float v200; // r9
  float v201; // r3
  float v202; // r0
  float v203; // r5
  float v204; // r9
  int v205; // r3
  int v206; // r4
  int v207; // r10
  int v208; // r12
  int v209; // r2
  int v210; // r1
  int v211; // r2
  int v212; // r5
  int v213; // r1
  int v214; // r3
  int v215; // r6
  int v216; // r8
  unsigned int v217; // r7
  char *v218; // lr
  float v219; // r0
  int v220; // r9
  unsigned int v221; // r9
  int v222; // r6
  int v223; // r4
  float *v224; // r7
  bool v225; // cc
  float v226; // r4
  int v227; // r6
  float *v228; // r5
  int v229; // r7
  float *v230; // r4
  float *v231; // r0
  float *v232; // lr
  float *v233; // r7
  float *v234; // r4
  float *v235; // r6
  float *v236; // r5
  float *v237; // r8
  float v238; // r0
  float v239; // t1
  float v240; // r10
  float v241; // r0
  unsigned int v242; // r3
  float *v243; // r5
  float v244; // r6
  float v245; // r0
  float v246; // t1
  float v247; // t1
  float *v248; // r4
  float *v249; // r5
  float *v250; // r6
  float *v251; // r8
  float *v252; // r7
  float v253; // r10
  float v254; // r0
  float v255; // r10
  float v256; // r0
  float v257; // r9
  float v258; // r0
  int v259; // r4
  char v260; // r10
  int v261; // r6
  int v262; // r9
  int v263; // r7
  float v264; // r8
  int v265; // r5
  int v266; // r10
  int v267; // r9
  int n; // r4
  int v269; // r3
  char v270; // r7
  int v271; // r10
  int v272; // r3
  int v273; // r2
  float *v274; // r1
  int v275; // r2
  float v276; // r9
  float v277; // r11
  float *v278; // r4
  int v279; // r3
  float *v280; // r5
  float v281; // r6
  float v282; // r0
  float v283; // r6
  float v284; // r0
  float v285; // r6
  float v286; // r0
  float v287; // r6
  float v288; // r0
  float *v289; // r4
  float v290; // r5
  float v291; // r7
  float v292; // r8
  float v293; // r6
  float v294; // r1
  float v295; // r0
  float v296; // r9
  float v297; // r8
  float v298; // r6
  float v299; // r1
  float v300; // r1
  float v301; // r7
  float v302; // r6
  float v303; // r8
  float v304; // r1
  float v305; // r9
  float v306; // r8
  float v307; // r7
  float v308; // r1
  float *v309; // r0
  float *v310; // r3
  unsigned __int16 *v311; // r12
  float *v312; // r4
  unsigned __int16 *v313; // r0
  int v314; // r6
  float *v315; // r2
  int v316; // lr
  int v317; // lr
  float *v318; // r6
  float *v319; // r5
  float v320; // r10
  float v321; // r0
  float v322; // r7
  float v323; // r8
  float v324; // r10
  float v325; // r0
  float v326; // r10
  float v327; // r11
  float v328; // r7
  float v329; // r8
  float v330; // r10
  float v331; // r0
  float *v332; // r4
  float *v333; // r5
  float *v334; // r6
  float *v335; // r7
  float *v336; // r8
  float *ii; // r10
  float v338; // r9
  float v339; // r0
  float v340; // r9
  float v341; // r0
  float v342; // r9
  float v343; // r0
  float v344; // r9
  float v345; // t1
  float v346; // r0
  float v347; // r3
  int v348; // r3
  _DWORD *v349; // r8
  int v350; // r3
  unsigned int v351; // r2
  unsigned int v352; // r1
  bool v353; // cf
  int v354; // r3
  int v355; // r2
  int v356; // [sp+10h] [bp-A64h]
  float v357; // [sp+10h] [bp-A64h]
  float v358; // [sp+10h] [bp-A64h]
  int v359; // [sp+10h] [bp-A64h]
  float v360; // [sp+10h] [bp-A64h]
  float v361; // [sp+10h] [bp-A64h]
  float v362; // [sp+10h] [bp-A64h]
  float v363; // [sp+14h] [bp-A60h]
  float v364; // [sp+18h] [bp-A5Ch]
  float v365; // [sp+18h] [bp-A5Ch]
  int v366; // [sp+1Ch] [bp-A58h]
  int v367; // [sp+1Ch] [bp-A58h]
  int v368; // [sp+1Ch] [bp-A58h]
  int v369; // [sp+1Ch] [bp-A58h]
  int v370; // [sp+1Ch] [bp-A58h]
  int v371; // [sp+1Ch] [bp-A58h]
  float v372; // [sp+1Ch] [bp-A58h]
  int v373; // [sp+20h] [bp-A54h]
  int v374; // [sp+20h] [bp-A54h]
  int v375; // [sp+20h] [bp-A54h]
  int v376; // [sp+20h] [bp-A54h]
  char *v377; // [sp+20h] [bp-A54h]
  int v378; // [sp+20h] [bp-A54h]
  float v379; // [sp+20h] [bp-A54h]
  _WORD *v380; // [sp+24h] [bp-A50h]
  int v381; // [sp+24h] [bp-A50h]
  float *v382; // [sp+24h] [bp-A50h]
  int v383; // [sp+24h] [bp-A50h]
  int v384; // [sp+24h] [bp-A50h]
  float v385; // [sp+24h] [bp-A50h]
  _WORD *v386; // [sp+28h] [bp-A4Ch]
  int v387; // [sp+28h] [bp-A4Ch]
  int v388; // [sp+28h] [bp-A4Ch]
  int v389; // [sp+28h] [bp-A4Ch]
  int v390; // [sp+28h] [bp-A4Ch]
  float v391; // [sp+28h] [bp-A4Ch]
  int v392; // [sp+2Ch] [bp-A48h]
  int v393; // [sp+2Ch] [bp-A48h]
  signed int v394; // [sp+2Ch] [bp-A48h]
  int v395; // [sp+2Ch] [bp-A48h]
  float v396; // [sp+2Ch] [bp-A48h]
  int v397; // [sp+30h] [bp-A44h]
  int v398; // [sp+30h] [bp-A44h]
  int v399; // [sp+30h] [bp-A44h]
  int v400; // [sp+30h] [bp-A44h]
  int v401; // [sp+34h] [bp-A40h]
  int v402; // [sp+34h] [bp-A40h]
  int v403; // [sp+34h] [bp-A40h]
  int v404; // [sp+38h] [bp-A3Ch]
  int v405; // [sp+38h] [bp-A3Ch]
  int v406; // [sp+38h] [bp-A3Ch]
  int v407; // [sp+38h] [bp-A3Ch]
  int v408; // [sp+38h] [bp-A3Ch]
  int *v409; // [sp+3Ch] [bp-A38h]
  int v410; // [sp+3Ch] [bp-A38h]
  __int16 *v411; // [sp+3Ch] [bp-A38h]
  int v412; // [sp+3Ch] [bp-A38h]
  unsigned __int8 *p; // [sp+40h] [bp-A34h]
  _DWORD *pa; // [sp+40h] [bp-A34h]
  char *pb; // [sp+40h] [bp-A34h]
  signed int v416; // [sp+44h] [bp-A30h]
  float *v417; // [sp+44h] [bp-A30h]
  float *v418; // [sp+44h] [bp-A30h]
  int v419; // [sp+48h] [bp-A2Ch]
  int v420; // [sp+48h] [bp-A2Ch]
  int v422; // [sp+50h] [bp-A24h]
  int v423; // [sp+50h] [bp-A24h]
  int v424; // [sp+50h] [bp-A24h]
  float *v425; // [sp+54h] [bp-A20h]
  float *v426; // [sp+54h] [bp-A20h]
  float *v427; // [sp+54h] [bp-A20h]
  int v428; // [sp+58h] [bp-A1Ch]
  unsigned __int16 *v429; // [sp+5Ch] [bp-A18h]
  int v430; // [sp+5Ch] [bp-A18h]
  int v431; // [sp+60h] [bp-A14h]
  int v432; // [sp+60h] [bp-A14h]
  signed int v433; // [sp+64h] [bp-A10h]
  float *v434; // [sp+64h] [bp-A10h]
  float *v435; // [sp+68h] [bp-A0Ch]
  float *v436; // [sp+6Ch] [bp-A08h]
  int v437; // [sp+70h] [bp-A04h]
  float *v438; // [sp+70h] [bp-A04h]
  int v439; // [sp+74h] [bp-A00h]
  float *v440; // [sp+74h] [bp-A00h]
  int v441; // [sp+7Ch] [bp-9F8h]
  int v442; // [sp+80h] [bp-9F4h]
  float *v443; // [sp+84h] [bp-9F0h]
  int v444; // [sp+88h] [bp-9ECh]
  int v445; // [sp+88h] [bp-9ECh]
  int v446; // [sp+8Ch] [bp-9E8h]
  int v447; // [sp+8Ch] [bp-9E8h]
  int v448; // [sp+90h] [bp-9E4h]
  unsigned int v449; // [sp+90h] [bp-9E4h]
  int v450; // [sp+94h] [bp-9E0h]
  int v451; // [sp+94h] [bp-9E0h]
  int v452; // [sp+98h] [bp-9DCh]
  char *v453; // [sp+9Ch] [bp-9D8h]
  int v454; // [sp+A0h] [bp-9D4h]
  int v456; // [sp+ACh] [bp-9C8h]
  int v457; // [sp+B0h] [bp-9C4h]
  int m; // [sp+B4h] [bp-9C0h]
  int v459; // [sp+B8h] [bp-9BCh]
  int v460; // [sp+BCh] [bp-9B8h]
  float *v461; // [sp+C0h] [bp-9B4h]
  int v463; // [sp+CCh] [bp-9A8h]
  int v464; // [sp+D0h] [bp-9A4h]
  unsigned int v465; // [sp+D4h] [bp-9A0h]
  int v466; // [sp+D8h] [bp-99Ch]
  int v467; // [sp+E4h] [bp-990h]
  int v468; // [sp+E8h] [bp-98Ch]
  int v469; // [sp+104h] [bp-970h]
  int v470; // [sp+108h] [bp-96Ch]
  unsigned __int8 *v471; // [sp+10Ch] [bp-968h]
  _DWORD v472[2]; // [sp+118h] [bp-95Ch] BYREF
  _DWORD v473[2]; // [sp+518h] [bp-55Ch] BYREF
  int v474; // [sp+51Ch] [bp-558h] BYREF
  int v475; // [sp+918h] [bp-15Ch] BYREF
  int v476; // [sp+91Ch] [bp-158h]
  int v477; // [sp+958h] [bp-11Ch] BYREF
  int v478; // [sp+95Ch] [bp-118h] BYREF
  int v479; // [sp+960h] [bp-114h] BYREF
  int v480; // [sp+964h] [bp-110h] BYREF
  int v481; // [sp+968h] [bp-10Ch] BYREF
  _BYTE v482[256]; // [sp+96Ch] [bp-108h]
  char v483; // [sp+A70h] [bp-4h] BYREF

  result = vorbis_decode_initial((_DWORD *)a1, a3, &v480, a4, &v479, &v481);
  if ( !result )
    return result;
  v6 = a1 + 6 * v481;
  v7 = *(_DWORD *)(a1 + 4);
  v448 = *(_DWORD *)(a1 + 420);
  v446 = 40 * *(unsigned __int8 *)(v6 + 429);
  v441 = *(_DWORD *)(a1 + 4 * (*(unsigned __int8 *)(v6 + 428) + 30));
  v471 = (unsigned __int8 *)(v6 + 428);
  v470 = *a4;
  v452 = *a3;
  v456 = v479;
  v429 = (unsigned __int16 *)(v448 + v446);
  v442 = v441 >> 1;
  if ( v7 > 0 )
  {
    v8 = *(unsigned __int8 *)(*((_DWORD *)v429 + 1) + 2);
    v473[0] = 0;
    v9 = *((unsigned __int8 *)v429 + v8 + 9);
    if ( !*(_WORD *)(a1 + 2 * v9 + 148) )
    {
LABEL_82:
      *(_DWORD *)(a1 + 116) = 21;
      return 0;
    }
    v401 = 0;
    v409 = &v474;
    v404 = a1;
    p = (_BYTE *)(&dword_0 + 3);
    v10 = a1;
    while ( 1 )
    {
      v12 = *(_DWORD *)(v10 + 276);
      if ( !get_bits(v10, 1) )
        goto LABEL_5;
      v13 = (unsigned __int8 *)(v12 + 1596 * v9);
      v14 = *(_WORD **)(v404 + 1012);
      v397 = *(_DWORD *)&ilog(int)::log2_4[4 * v13[1588] + 124];
      v386 = v14;
      v15 = ilog(v397);
      *v14 = get_bits(v10, v15 - 1);
      v16 = ilog(v397);
      v14[1] = get_bits(v10, v16 - 1);
      if ( *v13 )
      {
        v17 = 0;
        v18 = 2;
        v392 = 0;
        do
        {
          v19 = v18;
          v20 = v13[v392 + 1];
          v21 = v13[v20 + 49];
          v22 = v13[v20 + 33];
          if ( v21 )
          {
            v24 = *(_DWORD *)(v10 + 1412);
            v25 = *(_DWORD *)(v10 + 140) + 2096 * v13[v20 + 65];
            if ( v24 <= 9 )
            {
              if ( !v24 )
                *(_DWORD *)(v10 + 1408) = 0;
              v59 = v25;
              do
              {
                if ( *(_DWORD *)(v10 + 1400) && !*(_BYTE *)(v10 + 1392) )
                  break;
                v60 = get8_packet_raw(v10);
                if ( v60 == (int *)-1 )
                  break;
                v61 = *(_DWORD *)(v10 + 1412);
                *(_DWORD *)(v10 + 1408) += (_DWORD)v60 << v61;
                *(_DWORD *)(v10 + 1412) = v61 + 8;
              }
              while ( v61 + 8 <= 24 );
              v25 = v59;
            }
            v23 = *(__int16 *)(v25 + 2 * (*(_DWORD *)(v10 + 1408) & 0x3FF) + 36);
            if ( v23 < 0 )
            {
              v356 = v25;
              v62 = codebook_decode_scalar_raw(v10, v25);
              v25 = v356;
              v23 = v62;
            }
            else
            {
              v26 = *(unsigned __int8 *)(*(_DWORD *)(v25 + 8) + v23);
              v27 = *(_DWORD *)(v10 + 1408) >> v26;
              v28 = *(_DWORD *)(v10 + 1412) - v26;
              if ( v28 < 0 )
                v17 = 0;
              *(_DWORD *)(v10 + 1412) = v28;
              *(_DWORD *)(v10 + 1408) = v27;
              if ( v28 < 0 )
              {
                *(_DWORD *)(v10 + 1412) = v17;
                v23 = -1;
              }
            }
            if ( *(_BYTE *)(v25 + 23) )
              v23 = *(_DWORD *)(*(_DWORD *)(v25 + 2088) + 4 * v23);
          }
          else
          {
            v23 = v13[v20 + 49];
          }
          if ( v22 )
          {
            v373 = 8 * v20;
            v366 = 2 * v22;
            v380 = &v386[v19];
            v29 = v19 + 1;
            v30 = 0;
            do
            {
              v31 = v23 & ((1 << v21) - 1);
              v23 >>= v21;
              v32 = *(__int16 *)&v13[2 * v373 + 82 + 2 * v31];
              if ( v32 < 0 )
              {
                v380[v30 / 2] = 0;
                v18 = v29;
              }
              else
              {
                v33 = *(_DWORD *)(v10 + 1412);
                v17 = 2096;
                v34 = *(_DWORD *)(v10 + 140) + 2096 * v32;
                if ( v33 <= 9 )
                {
                  if ( !v33 )
                    *(_DWORD *)(v10 + 1408) = 0;
                  while ( !*(_DWORD *)(v10 + 1400) || *(_BYTE *)(v10 + 1392) )
                  {
                    v57 = get8_packet_raw(v10);
                    if ( v57 == (int *)-1 )
                      break;
                    v55 = *(_DWORD *)(v10 + 1412);
                    v56 = v55 + 8;
                    v35 = *(_DWORD *)(v10 + 1408) + ((_DWORD)v57 << v55);
                    *(_DWORD *)(v10 + 1408) = v35;
                    *(_DWORD *)(v10 + 1412) = v56;
                    if ( v56 > 24 )
                      goto LABEL_27;
                  }
                }
                v35 = *(_DWORD *)(v10 + 1408);
LABEL_27:
                v36 = *(__int16 *)(v34 + 2 * (v35 & 0x3FF) + 36);
                if ( v36 < 0 )
                {
                  v36 = codebook_decode_scalar_raw(v10, v34);
                }
                else
                {
                  v37 = *(unsigned __int8 *)(*(_DWORD *)(v34 + 8) + v36);
                  v38 = v35 >> v37;
                  v39 = *(_DWORD *)(v10 + 1412) - v37;
                  if ( v39 < 0 )
                    v36 = 0;
                  *(_DWORD *)(v10 + 1412) = v39;
                  *(_DWORD *)(v10 + 1408) = v38;
                  if ( v39 < 0 )
                  {
                    *(_DWORD *)(v10 + 1412) = v36;
                    v36 = -1;
                  }
                }
                if ( *(_BYTE *)(v34 + 23) )
                  v36 = *(_DWORD *)(*(_DWORD *)(v34 + 2088) + 4 * v36);
                v18 = v29;
                v380[v30 / 2] = v36;
              }
              v30 += 2;
              ++v29;
            }
            while ( v30 != v366 );
          }
          else
          {
            v18 = v19;
          }
          ++v392;
        }
        while ( v392 < *v13 );
      }
      if ( *(_DWORD *)(v10 + 1412) == -1 )
      {
LABEL_5:
        *(v409 - 1) = 1;
      }
      else
      {
        v482[1] = 1;
        v482[0] = 1;
        v40 = *((_DWORD *)v13 + 398);
        if ( v40 > 2 )
        {
          v41 = (unsigned __int16 *)(v13 + 342);
          v42 = v386;
          v43 = 2;
          v374 = v10;
          do
          {
            while ( 1 )
            {
              v44 = *((unsigned __int8 *)v41 + 750);
              v45 = *((unsigned __int8 *)v41 + 751);
              v46 = (__int16)v386[v44];
              v47 = *(unsigned __int16 *)&v13[2 * v44 + 338];
              v48 = (__int16)v386[v45] - v46;
              v49 = (int)((*v41 - v47) * abs32(v48)) / (*(unsigned __int16 *)&v13[2 * v45 + 338] - v47);
              v50 = v48 >= 0 ? v49 + v46 : v46 - v49;
              v51 = (__int16)v42[2];
              v52 = v397 - v50;
              v53 = v50 <= v397 - v50 ? 2 * v50 : 2 * v52;
              if ( v42[2] )
                break;
              ++v41;
              v482[v43] = 0;
              v42[2] = v50;
              v40 = *((_DWORD *)v13 + 398);
              ++v43;
              ++v42;
              if ( v43 >= v40 )
                goto LABEL_52;
            }
            v482[v45] = 1;
            v482[v44] = 1;
            v482[v43] = 1;
            if ( v51 < v53 )
            {
              if ( (v51 & 1) != 0 )
                v58 = v50 - ((v51 + 1) >> 1);
              else
                v58 = v50 + (v51 >> 1);
              v42[2] = v58;
            }
            else if ( v50 >= v52 )
            {
              v42[2] = ~(_WORD)v51 + v397;
            }
            v40 = *((_DWORD *)v13 + 398);
            ++v43;
            ++v41;
            ++v42;
          }
          while ( v43 < v40 );
LABEL_52:
          v10 = v374;
        }
        if ( v40 > 0 )
        {
          for ( i = 0; i < v40; ++i )
          {
            if ( !v482[i] )
            {
              v386[i] = -1;
              v40 = *((_DWORD *)v13 + 398);
            }
          }
        }
      }
      v7 = *(_DWORD *)(v10 + 4);
      if ( ++v401 >= v7 )
        break;
      v404 += 4;
      v11 = p[*((_DWORD *)v429 + 1) + 2];
      *v409++ = 0;
      p += 3;
      v9 = *((unsigned __int8 *)v429 + v11 + 9);
      if ( !*(_WORD *)(v10 + 2 * v9 + 148) )
        goto LABEL_82;
    }
  }
  memcpy(v472, v473, 4 * v7);
  v63 = 0;
  v64 = 0;
  v65 = *v429;
  while ( v64 < v65 )
  {
    v66 = *((_DWORD *)v429 + 1);
    v67 = *(unsigned __int8 *)(v66 + v63);
    v68 = v66 + v63;
    v69 = v67;
    if ( v473[v69] )
    {
      v70 = *(unsigned __int8 *)(v68 + 1);
      if ( v473[v70] )
        goto LABEL_88;
    }
    else
    {
      v70 = *(unsigned __int8 *)(v68 + 1);
    }
    v473[v70] = 0;
    v473[v69] = 0;
    v65 = *v429;
LABEL_88:
    ++v64;
    v63 += 3;
  }
  v439 = 0;
  v454 = 4 * v442;
  v444 = v448 + v446;
  while ( v439 < *((unsigned __int8 *)v429 + 8) )
  {
    v71 = (char *)a1;
    v72 = *(_DWORD *)(a1 + 4);
    if ( v72 > 0 )
    {
      v73 = 0;
      v74 = a1;
      v75 = 0;
      v76 = 0;
      do
      {
        while ( *(unsigned __int8 *)(*((_DWORD *)v429 + 1) + v73 + 2) != v439 )
        {
          ++v75;
          v73 += 3;
          v74 += 4;
          if ( v75 >= v72 )
            goto LABEL_107;
        }
        v77 = (char *)v473[v75++];
        v73 += 3;
        v78 = v77 == nullptr;
        if ( v77 )
        {
          v77 = &v483;
        }
        else
        {
          v71 = &v483;
          v482[v76] = 0;
        }
        if ( v78 )
          v79 = *(char **)(v74 + 816);
        else
          v79 = &v77[v76];
        if ( v78 )
        {
          v80 = &v71[4 * v76];
        }
        else
        {
          v80 = &v77[4 * v76];
          *(v79 - 260) = 1;
          v79 = nullptr;
        }
        *((_DWORD *)v80 - 86) = v79;
        ++v76;
        v74 += 4;
      }
      while ( v75 < v72 );
LABEL_107:
      v398 = v76;
    }
    else
    {
      v398 = 0;
    }
    v81 = *(unsigned __int8 *)(v444 + 24);
    v402 = *(_DWORD *)(a1 + 412) + 24 * v81;
    v422 = *(_DWORD *)(*(_DWORD *)(a1 + 140) + 2096 * *(unsigned __int8 *)(v402 + 13));
    v431 = *(unsigned __int16 *)(a1 + 2 * (v81 + 140) + 4);
    v416 = (unsigned int)(*(_DWORD *)(v402 + 4) - *(_DWORD *)v402) / *(_DWORD *)(v402 + 8);
    v450 = *(_DWORD *)(a1 + 108);
    pa = VoxAlloc(
           v72 * 4 * (v416 + 1),
           "..\\..\\lib\\VOX\\project\\vs2005/..\\..\\src\\stb_vorbis.cpp",
           "decode_residue",
           0x747u);
    v82 = *(_DWORD *)(a1 + 4);
    if ( v82 > 0 )
    {
      v83 = 0;
      v84 = &pa[v82];
      do
      {
        pa[v83++] = v84;
        v84 += v416;
      }
      while ( v83 != v82 );
    }
    v85 = v398;
    if ( v398 )
    {
      for ( j = 0; j != v398; ++j )
      {
        while ( 1 )
        {
          v87 = (unsigned __int8)v482[j];
          if ( !v482[j] )
            break;
          if ( ++j == v398 )
            goto LABEL_116;
        }
        v88 = (void *)*(&v475 + j);
        LC_API_MEMSET_0(v88, v87, v454);
      }
    }
LABEL_116:
    v89 = v398 != 1;
    if ( v431 != 2 )
      v89 = 0;
    if ( !v89 )
    {
      v437 = 0;
      while ( 1 )
      {
        v419 = 0;
        v433 = 0;
        while ( 1 )
        {
          v90 = v416;
          if ( v416 <= v433 )
            break;
          if ( !v437 && v398 )
          {
            for ( k = 0; k != v398; ++k )
            {
              if ( !v482[k] )
              {
                v96 = *(_DWORD *)(a1 + 1412);
                v97 = *(_DWORD *)(a1 + 140) + 2096 * *(unsigned __int8 *)(v402 + 13);
                if ( v96 <= 9 )
                {
                  if ( !v96 )
                    *(_DWORD *)(a1 + 1408) = 0;
                  do
                  {
                    if ( *(_DWORD *)(a1 + 1400) && !*(_BYTE *)(a1 + 1392) )
                      break;
                    v98 = get8_packet_raw(a1);
                    if ( v98 == (int *)-1 )
                      break;
                    v99 = *(_DWORD *)(a1 + 1412);
                    *(_DWORD *)(a1 + 1408) += (_DWORD)v98 << v99;
                    *(_DWORD *)(a1 + 1412) = v99 + 8;
                  }
                  while ( v99 + 8 <= 24 );
                }
                v92 = *(__int16 *)(v97 + 2 * (*(_DWORD *)(a1 + 1408) & 0x3FF) + 36);
                if ( v92 < 0 )
                {
                  v92 = codebook_decode_scalar_raw(a1, v97);
                }
                else
                {
                  v93 = *(unsigned __int8 *)(*(_DWORD *)(v97 + 8) + v92);
                  v94 = *(_DWORD *)(a1 + 1408) >> v93;
                  v95 = *(_DWORD *)(a1 + 1412) - v93;
                  if ( v95 < 0 )
                    v90 = 0;
                  *(_DWORD *)(a1 + 1412) = v95;
                  *(_DWORD *)(a1 + 1408) = v94;
                  if ( v95 < 0 )
                  {
                    *(_DWORD *)(a1 + 1412) = v90;
                    v92 = -1;
                  }
                }
                if ( *(_BYTE *)(v97 + 23) )
                  v92 = *(_DWORD *)(*(_DWORD *)(v97 + 2088) + 4 * v92);
                if ( v92 == -1 )
                  goto LABEL_149;
                *(_DWORD *)(pa[k] + v419) = *(_DWORD *)(*(_DWORD *)(v402 + 16) + 4 * v92);
              }
            }
          }
          if ( v422 > 0 )
          {
            v425 = nullptr;
            do
            {
              if ( v398 )
              {
                v393 = 0;
                v375 = 0;
                do
                {
                  v101 = (unsigned __int8)v482[v375];
                  if ( !v482[v375] )
                  {
                    v102 = *(__int16 *)(*(_DWORD *)(v402 + 20)
                                      + 16 * *((unsigned __int8 *)v425 + *(_DWORD *)(pa[v393] + v419))
                                      + 2 * v437);
                    if ( v102 >= 0 )
                    {
                      v103 = *(_DWORD *)(v402 + 8);
                      v387 = v103;
                      v104 = *(_DWORD *)(a1 + 140);
                      v367 = *(_DWORD *)v402 + v103 * v433;
                      v105 = 2096 * v102;
                      v106 = v104 + v105;
                      v381 = *(int *)((char *)&v475 + v393 * 4);
                      if ( v431 )
                      {
                        if ( v103 > 0 )
                        {
                          while ( 1 )
                          {
                            v107 = v387 - v101;
                            v108 = codebook_decode_start(a1, v106);
                            if ( v108 < 0 )
                              goto LABEL_149;
                            v109 = *(_DWORD *)v106;
                            v110 = *(unsigned __int8 *)(v106 + 22);
                            if ( v107 >= *(_DWORD *)v106 )
                              v107 = *(_DWORD *)v106;
                            v111 = v381 + 4 * v367;
                            v112 = v109 * v108;
                            if ( *(_BYTE *)(v106 + 22) )
                            {
                              if ( v107 > 0 )
                              {
                                v123 = 0;
                                v124 = 0.0;
                                v125 = 4 * v112;
                                v126 = 0;
                                do
                                {
                                  ++v126;
                                  v127 = v124 + *(float *)(*(_DWORD *)(v106 + 28) + v125);
                                  *(float *)(v111 + v123) = *(float *)(v111 + v123) + v127;
                                  v124 = v127 + *(float *)(v106 + 12);
                                  v125 += 4;
                                  v123 += 4;
                                }
                                while ( v126 != v107 );
                                goto LABEL_172;
                              }
                            }
                            else if ( v107 > 0 )
                            {
                              v113 = 4 * v112;
                              v114 = *(unsigned __int8 *)(v106 + 22);
                              do
                              {
                                ++v114;
                                *(float *)(v111 + v110) = *(float *)(v111 + v110)
                                                        + (float)(*(float *)(*(_DWORD *)(v106 + 28) + v113) + 0.0);
                                v113 += 4;
                                v110 += 4;
                              }
                              while ( v114 != v107 );
LABEL_172:
                              v109 = *(_DWORD *)v106;
                            }
                            v101 += v109;
                            if ( v387 <= v101 )
                              break;
                            v367 += v109;
                          }
                        }
                      }
                      else
                      {
                        v405 = v103 / *(_DWORD *)(v104 + v105);
                        if ( v405 > 0 )
                        {
                          v382 = (float *)(v381 + 4 * v367);
                          v388 = v103 - v367;
                          v368 = 0;
                          do
                          {
                            v115 = v388 - v368;
                            v116 = codebook_decode_start(a1, v106);
                            if ( v116 < 0 )
                              goto LABEL_149;
                            if ( *(_DWORD *)v106 < v115 )
                              v115 = *(_DWORD *)v106;
                            if ( v115 > 0 )
                            {
                              v117 = 0.0;
                              v118 = 4 * *(_DWORD *)v106 * v116;
                              v119 = v382;
                              v120 = 0;
                              while ( 1 )
                              {
                                ++v120;
                                v121 = v117 + *(float *)(*(_DWORD *)(v106 + 28) + v118);
                                *v119 = *v119 + v121;
                                v118 += 4;
                                v119 += v405;
                                if ( !*(_BYTE *)(v106 + 22) )
                                  v121 = v117;
                                if ( v120 == v115 )
                                  break;
                                v117 = v121;
                              }
                            }
                            v78 = ++v368 == v405;
                            ++v382;
                          }
                          while ( !v78 );
                        }
                      }
                    }
                  }
                  v78 = ++v375 == v398;
                  ++v393;
                }
                while ( !v78 );
              }
              v122 = v416 <= v433 + 1;
              if ( v416 > v433 + 1 )
                v122 = v422 <= (int)v425 + 1;
              v425 = (float *)((char *)v425 + 1);
              ++v433;
            }
            while ( !v122 );
          }
          v419 += 4;
        }
        if ( ++v437 == 8 )
          goto LABEL_149;
      }
    }
    if ( !v398 )
      goto LABEL_149;
    if ( v482[0] )
    {
      v100 = 0;
      do
      {
        if ( ++v100 == v398 )
          goto LABEL_149;
      }
      while ( v482[v100] );
    }
    v406 = 0;
    while ( v398 != 2 )
    {
      if ( v398 == 1 )
      {
        v178 = 0;
        v179 = 0;
        while ( v416 > v178 )
        {
          v85 = 0;
          v180 = *(_DWORD *)v402 + *(_DWORD *)(v402 + 8) * v178;
          v477 = 0;
          v478 = v180;
          if ( !v406 )
          {
            v181 = *(_DWORD *)(a1 + 140) + 2096 * *(unsigned __int8 *)(v402 + 13);
            if ( *(int *)(a1 + 1412) <= 9 )
              prep_huffman((int *)a1);
            v182 = *(_DWORD *)(a1 + 1408);
            v183 = *(__int16 *)(v181 + ((2 * v182) & 0x7FF) + 36);
            if ( v183 < 0 )
            {
              v183 = codebook_decode_scalar_raw(a1, v181);
            }
            else
            {
              v184 = *(_DWORD *)(a1 + 1412);
              v185 = *(unsigned __int8 *)(*(_DWORD *)(v181 + 8) + v183);
              v186 = v182 >> v185;
              v187 = v184 - v185;
              if ( v187 < 0 )
                v184 = 0;
              *(_DWORD *)(a1 + 1412) = v187;
              *(_DWORD *)(a1 + 1408) = v186;
              if ( v187 < 0 )
              {
                *(_DWORD *)(a1 + 1412) = v184;
                v183 = -1;
              }
            }
            if ( *(_BYTE *)(v181 + 23) )
              v183 = *(_DWORD *)(*(_DWORD *)(v181 + 2088) + 4 * v183);
            if ( v183 == -1 )
              goto LABEL_149;
            *(_DWORD *)(*pa + v179) = *(_DWORD *)(*(_DWORD *)(v402 + 16) + 4 * v183);
          }
          if ( v422 > 0 )
          {
            v188 = 0;
            do
            {
              while ( 1 )
              {
                v190 = *(__int16 *)(*(_DWORD *)(v402 + 20)
                                  + 16 * *(unsigned __int8 *)(*(_DWORD *)(*pa + v179) + v188)
                                  + 2 * v406);
                if ( v190 >= 0 )
                  break;
                v191 = *(_DWORD *)(v402 + 8) + *(_DWORD *)v402 + *(_DWORD *)(v402 + 8) * v178;
                ++v188;
                ++v178;
                v85 = 0;
                v192 = v416 <= v178;
                if ( v416 > v178 )
                  v192 = v422 <= v188;
                v477 = 0;
                v478 = v191;
                if ( v192 )
                  goto LABEL_318;
              }
              if ( !codebook_decode_deinterleave_repeat(
                      a1,
                      *(_DWORD *)(a1 + 140) + 2096 * v190,
                      (int)&v475,
                      1,
                      &v477,
                      &v478,
                      v442,
                      *(_DWORD *)(v402 + 8)) )
                goto LABEL_149;
              ++v188;
              v189 = v416 <= ++v178;
              if ( v416 > v178 )
                v189 = v422 <= v188;
            }
            while ( !v189 );
          }
LABEL_318:
          v179 += 4;
        }
      }
      else
      {
        v128 = 0;
        v129 = 0;
        while ( v416 > v128 )
        {
          v130 = *(_DWORD *)v402 + *(_DWORD *)(v402 + 8) * v128;
          v478 = v130 % v398;
          v477 = v130 / v398;
          if ( !v406 )
          {
            v131 = *(_DWORD *)(a1 + 140) + 2096 * *(unsigned __int8 *)(v402 + 13);
            if ( *(int *)(a1 + 1412) <= 9 )
              prep_huffman((int *)a1);
            v132 = *(_DWORD *)(a1 + 1408);
            v133 = *(__int16 *)(v131 + ((2 * v132) & 0x7FF) + 36);
            if ( v133 < 0 )
            {
              v133 = codebook_decode_scalar_raw(a1, v131);
            }
            else
            {
              v134 = *(unsigned __int8 *)(*(_DWORD *)(v131 + 8) + v133);
              v135 = v132 >> v134;
              v136 = *(_DWORD *)(a1 + 1412) - v134;
              if ( v136 < 0 )
                v85 = 0;
              *(_DWORD *)(a1 + 1412) = v136;
              *(_DWORD *)(a1 + 1408) = v135;
              if ( v136 < 0 )
              {
                *(_DWORD *)(a1 + 1412) = v85;
                v133 = -1;
              }
            }
            if ( *(_BYTE *)(v131 + 23) )
              v133 = *(_DWORD *)(*(_DWORD *)(v131 + 2088) + 4 * v133);
            if ( v133 == -1 )
              goto LABEL_149;
            *(_DWORD *)(*pa + v129) = *(_DWORD *)(*(_DWORD *)(v402 + 16) + 4 * v133);
          }
          if ( v422 > 0 )
          {
            v137 = 0;
            do
            {
              while ( 1 )
              {
                v139 = *(_DWORD *)(v402 + 8);
                v140 = *(__int16 *)(*(_DWORD *)(v402 + 20)
                                  + 16 * *(unsigned __int8 *)(*(_DWORD *)(*pa + v129) + v137)
                                  + 2 * v406);
                if ( v140 >= 0 )
                  break;
                v141 = v139 + *(_DWORD *)v402;
                v478 = (v141 + v139 * v128) % v398;
                v85 = v416;
                v477 = (v141 + v139 * v128) / v398;
                ++v137;
                v142 = v416 <= ++v128;
                if ( v416 > v128 )
                  v142 = v422 <= v137;
                if ( v142 )
                  goto LABEL_228;
              }
              if ( !codebook_decode_deinterleave_repeat(
                      a1,
                      *(_DWORD *)(a1 + 140) + 2096 * v140,
                      (int)&v475,
                      v398,
                      &v478,
                      &v477,
                      v442,
                      *(_DWORD *)(v402 + 8)) )
                goto LABEL_149;
              v85 = v416;
              ++v137;
              v138 = v416 <= ++v128;
              if ( v416 > v128 )
                v138 = v422 <= v137;
            }
            while ( !v138 );
          }
LABEL_228:
          v129 += 4;
        }
      }
LABEL_444:
      if ( ++v406 == 8 )
        goto LABEL_149;
    }
    v410 = 0;
    v394 = 0;
    while ( 1 )
    {
      if ( v416 <= v394 )
        goto LABEL_444;
      v147 = *(_DWORD *)v402;
      v148 = *(_DWORD *)(v402 + 8);
      if ( !v406 )
      {
        v149 = *(_DWORD *)(a1 + 140) + 2096 * *(unsigned __int8 *)(v402 + 13);
        if ( *(int *)(a1 + 1412) <= 9 )
          prep_huffman((int *)a1);
        v150 = *(_DWORD *)(a1 + 1408);
        v151 = *(__int16 *)(v149 + ((2 * v150) & 0x7FF) + 36);
        if ( v151 < 0 )
        {
          v151 = codebook_decode_scalar_raw(a1, v149);
        }
        else
        {
          v152 = *(unsigned __int8 *)(*(_DWORD *)(v149 + 8) + v151);
          v153 = v150 >> v152;
          v154 = *(_DWORD *)(a1 + 1412) - v152;
          if ( v154 < 0 )
            v85 = 0;
          *(_DWORD *)(a1 + 1412) = v154;
          *(_DWORD *)(a1 + 1408) = v153;
          if ( v154 < 0 )
          {
            *(_DWORD *)(a1 + 1412) = v85;
            v151 = -1;
          }
        }
        if ( *(_BYTE *)(v149 + 23) )
          v151 = *(_DWORD *)(*(_DWORD *)(v149 + 2088) + 4 * v151);
        if ( v151 == -1 )
          goto LABEL_149;
        *(_DWORD *)(*pa + v410) = *(_DWORD *)(*(_DWORD *)(v402 + 16) + 4 * v151);
      }
      if ( v422 > 0 )
        break;
LABEL_234:
      v410 += 4;
    }
    v155 = v147 + v148 * v394;
    v144 = v155 >> 1;
    v389 = 0;
    v145 = v155 & 1;
    while ( 1 )
    {
      v156 = *(_DWORD *)(v402 + 8);
      v157 = *(__int16 *)(*(_DWORD *)(v402 + 20) + 16 * *(unsigned __int8 *)(*(_DWORD *)(*pa + v410) + v389) + 2 * v406);
      if ( v157 < 0 )
      {
        v143 = v156 + *(_DWORD *)v402 + v394 * v156;
        v144 = v143 >> 1;
        v145 = v143 & 1;
        goto LABEL_230;
      }
      v158 = *(_DWORD *)(a1 + 140) + 2096 * v157;
      v159 = (float *)*(unsigned __int8 *)(v158 + 21);
      v369 = *(_DWORD *)v158;
      if ( !*(_BYTE *)(v158 + 21) )
      {
        *(_DWORD *)(a1 + 116) = 21;
        goto LABEL_149;
      }
      if ( v156 > 0 )
        v159 = (float *)&v475;
      v376 = *(_DWORD *)(v402 + 8);
      if ( v156 > 0 )
        break;
LABEL_230:
      v85 = v422;
      v146 = v416 <= v394 + 1;
      if ( v416 > v394 + 1 )
        v146 = v422 <= v389 + 1;
      ++v389;
      ++v394;
      if ( v146 )
        goto LABEL_234;
    }
    v426 = v159;
    v160 = *(_DWORD *)(a1 + 1412);
    if ( v160 <= 9 )
    {
LABEL_272:
      if ( !v160 )
        *(_DWORD *)(a1 + 1408) = 0;
      while ( !*(_DWORD *)(a1 + 1400) || *(_BYTE *)(a1 + 1392) )
      {
        v172 = get8_packet_raw(a1);
        if ( v172 == (int *)-1 )
          break;
        v170 = *(_DWORD *)(a1 + 1412);
        v171 = v170 + 8;
        v161 = *(_DWORD *)(a1 + 1408) + ((_DWORD)v172 << v170);
        *(_DWORD *)(a1 + 1408) = v161;
        *(_DWORD *)(a1 + 1412) = v171;
        if ( v171 > 24 )
          goto LABEL_259;
      }
    }
    while ( 1 )
    {
      v161 = *(_DWORD *)(a1 + 1408);
LABEL_259:
      v162 = *(__int16 *)(v158 + 2 * (v161 & 0x3FF) + 36);
      if ( v162 >= 0 )
        break;
      v162 = codebook_decode_scalar_raw(a1, v158);
      if ( v162 < 0 )
        goto LABEL_146;
LABEL_261:
      if ( v145 + v369 + 2 * v144 > 2 * v442 )
        v369 = v145 + 2 * (v442 - v144);
      v166 = *(unsigned __int8 *)(v158 + 22);
      v383 = *(_DWORD *)v158 * v162;
      if ( *(_BYTE *)(v158 + 22) )
      {
        if ( v369 > 0 )
        {
          v167 = 0.0;
          v168 = 4 * *(_DWORD *)v158 * v162;
          v169 = 0;
          do
          {
            ++v169;
            v167 = v167 + *(float *)(*(_DWORD *)(v158 + 28) + v168);
            *(float *)(LODWORD(v426[v145]) + 4 * v144) = *(float *)(LODWORD(v426[v145]) + 4 * v144) + v167;
            if ( v145 == 1 )
            {
              ++v144;
              v145 = 0;
            }
            else
            {
              v145 = 1;
            }
            v168 += 4;
          }
          while ( v169 != v369 );
        }
      }
      else
      {
        if ( v145 == 1 )
        {
          v173 = 2;
          *(float *)(v476 + 4 * v144) = *(float *)(v476 + 4 * v144)
                                      + (float)(*(float *)(*(_DWORD *)(v158 + 28) + 4 * v383) + 0.0);
          v166 = 1;
          ++v144;
        }
        else
        {
          v173 = 1;
        }
        if ( v369 > v173 )
        {
          v174 = v476 + 4 * v144;
          v175 = v475 + 4 * v144;
          v176 = 2 * (v166 + v383);
          v177 = 0;
          do
          {
            *(float *)(v175 + v177) = *(float *)(v175 + v177)
                                    + (float)(*(float *)(*(_DWORD *)(v158 + 28) + 2 * (v177 + v176)) + 0.0);
            v166 += 2;
            *(float *)(v174 + v177) = *(float *)(v174 + v177)
                                    + (float)(*(float *)(*(_DWORD *)(v158 + 28) + 2 * (v177 + v176 + 2)) + 0.0);
            ++v144;
            v177 += 4;
          }
          while ( v369 > v166 + 1 );
        }
        if ( v369 > v166 )
        {
          *(float *)(v475 + 4 * v144) = *(float *)(v475 + 4 * v144)
                                      + (float)(*(float *)(*(_DWORD *)(v158 + 28) + 4 * (v166 + v383)) + 0.0);
          v145 = 1;
        }
        else
        {
          v145 = 0;
        }
      }
      v376 -= v369;
      if ( v376 <= 0 )
        goto LABEL_230;
      v160 = *(_DWORD *)(a1 + 1412);
      if ( v160 <= 9 )
        goto LABEL_272;
    }
    v163 = *(unsigned __int8 *)(*(_DWORD *)(v158 + 8) + v162);
    v164 = v161 >> v163;
    v165 = *(_DWORD *)(a1 + 1412) - v163;
    *(_DWORD *)(a1 + 1408) = v164;
    *(_DWORD *)(a1 + 1412) = v165;
    if ( v165 >= 0 )
      goto LABEL_261;
    *(_DWORD *)(a1 + 1412) = 0;
LABEL_146:
    if ( *(_BYTE *)(a1 + 1392) || !*(_DWORD *)(a1 + 1400) )
      *(_DWORD *)(a1 + 116) = 21;
LABEL_149:
    VoxFree(pa);
    *(_DWORD *)(a1 + 108) = v450;
    ++v439;
    ++v444;
  }
  v193 = 3 * (*(unsigned __int16 *)(v448 + v446) - 1);
  while ( 2 )
  {
    if ( v193 != -3 )
    {
      v194 = *((_DWORD *)v429 + 1);
      v195 = *(_DWORD *)(a1 + 4 * (*(unsigned __int8 *)(v194 + v193) + 204));
      v196 = *(_DWORD *)(a1 + 4 * (*(unsigned __int8 *)(v194 + v193 + 1) + 204));
      if ( v442 <= 0 )
      {
LABEL_329:
        v193 -= 3;
        continue;
      }
      v197 = 0;
      v198 = *(float **)(a1 + 4 * (*(unsigned __int8 *)(v194 + v193 + 1) + 204));
      v199 = 0;
      while ( 2 )
      {
        while ( 1 )
        {
          v203 = *(float *)(v195 + v197);
          if ( v203 > 0.0 )
            break;
          v204 = *(float *)(v196 + v197);
          if ( v204 <= 0.0 )
          {
            v202 = v203 - v204;
            v201 = *(float *)(v195 + v197);
            goto LABEL_325;
          }
          ++v199;
          *(float *)(v195 + v197) = v203;
          *v198++ = v203 + v204;
          v197 += 4;
          if ( v199 == v442 )
            goto LABEL_329;
        }
        v200 = *(float *)(v196 + v197);
        if ( v200 <= 0.0 )
        {
          v202 = v203 + v200;
          v201 = *(float *)(v195 + v197);
        }
        else
        {
          v201 = v203 - v200;
          v202 = *(float *)(v195 + v197);
        }
LABEL_325:
        ++v199;
        *(float *)(v195 + v197) = v202;
        *v198++ = v201;
        v197 += 4;
        if ( v199 == v442 )
          goto LABEL_329;
        continue;
      }
    }
    break;
  }
  v423 = 0;
  v459 = a1;
  v417 = (float *)a1;
  v420 = 0;
  v205 = *(_DWORD *)(a1 + 4);
  while ( v420 < v205 )
  {
    v206 = v472[v420];
    if ( v206 )
    {
      LC_API_MEMSET_0(*((void **)v417 + 204), 0, v454);
      v205 = *(_DWORD *)(a1 + 4);
    }
    else
    {
      v207 = v423;
      v403 = *((_DWORD *)v417 + 204);
      v208 = a1;
      v411 = *((__int16 **)v417 + 253);
      v209 = *((unsigned __int8 *)v429 + *(unsigned __int8 *)(*((_DWORD *)v429 + 1) + v423 + 2) + 9);
      if ( *(_WORD *)(a1 + 2 * v209 + 148) )
      {
        v210 = *(_DWORD *)(a1 + 276) + 1596 * v209;
        v399 = v210;
        v211 = *(_DWORD *)(v210 + 1592);
        v212 = *(unsigned __int8 *)(v210 + 1588) * *v411;
        if ( v211 > 1 )
        {
          v390 = v210;
          v395 = 1;
          while ( 1 )
          {
            v213 = *(unsigned __int8 *)(v390 + 839);
            v214 = v411[v213];
            if ( v214 >= 0 )
            {
              v407 = *(unsigned __int8 *)(v399 + 1588) * v214;
              v215 = v407 - v212;
              v216 = *(unsigned __int16 *)(v399 + 2 * (v213 + 168) + 2) - v206;
              v384 = *(unsigned __int16 *)(v399 + 2 * (v213 + 168) + 2);
              v217 = abs32(v407 - v212);
              v370 = (v407 - v212) / v216;
              if ( v407 - v212 >= 0 )
                v208 = (v407 - v212) / v216;
              v218 = ilog(int)::log2_4;
              if ( v215 >= 0 )
                ++v208;
              else
                v207 = (v407 - v212) / v216 - 1;
              if ( v215 >= 0 )
                v377 = (char *)v208;
              else
                v377 = (char *)v207;
              v219 = *(float *)(v403 + 4 * v206) * *(float *)&ilog(int)::log2_4[4 * v212 + 160];
              v220 = (v407 - v212) / v216;
              v207 = *(unsigned __int16 *)(v399 + 2 * (v213 + 168) + 2);
              if ( v370 < 0 )
                v220 = -v370;
              v221 = v217 - v216 * v220;
              if ( v384 >= v442 )
                v207 = v441 >> 1;
              v222 = v206 + 1;
              *(float *)(v403 + 4 * v206) = v219;
              if ( v206 + 1 < v207 )
              {
                v208 = v403;
                v223 = 0;
                v224 = (float *)(v403 + 4 * v222);
                do
                {
                  v223 += v221;
                  v225 = v216 <= v223;
                  if ( v216 <= v223 )
                  {
                    v218 = v377;
                    v223 -= v216;
                  }
                  else
                  {
                    v219 = *(float *)&v370;
                  }
                  if ( v225 )
                    v212 += (int)v218;
                  else
                    v212 += LODWORD(v219);
                  v219 = *v224 * *(float *)&ilog(int)::log2_4[4 * v212 + 160];
                  ++v222;
                  *v224++ = v219;
                }
                while ( v222 != v207 );
              }
              v212 = v407;
              v211 = *(_DWORD *)(v399 + 1592);
            }
            else
            {
              v384 = v206;
            }
            v122 = ++v395 < v211;
            ++v390;
            if ( !v122 )
              break;
            v206 = v384;
          }
        }
        else
        {
          v384 = 0;
        }
        if ( v442 > v384 )
        {
          v226 = *(float *)&ilog(int)::log2_4[4 * v212 + 160];
          v227 = v384;
          v228 = (float *)(v403 + 4 * v384);
          do
          {
            ++v227;
            *v228 = *v228 * v226;
            ++v228;
          }
          while ( v227 != v442 );
          v205 = *(_DWORD *)(a1 + 4);
        }
        else
        {
          v205 = *(_DWORD *)(a1 + 4);
        }
      }
      else
      {
        *(_DWORD *)(a1 + 116) = 21;
      }
    }
    ++v420;
    ++v417;
    v423 += 3;
  }
  v445 = v442 - 1;
  v449 = 4 * (v442 - 8);
  v468 = v442 - 2;
  v451 = v441 >> 5;
  v460 = v441 >> 4;
  v465 = 4 * ((v441 >> 2) - 4);
  v229 = -(v441 >> 4);
  v466 = v442 - 4;
  v463 = v441 >> 2;
  v464 = -(v441 >> 3);
  v453 = (char *)v229;
  v467 = v442 - 1;
  for ( m = 0; m < v205; ++m )
  {
    v427 = *(float **)(v459 + 816);
    v457 = *v471;
    v230 = &v427[v454 / 4u];
    v469 = *(_DWORD *)(a1 + 108);
    v231 = (float *)VoxAlloc(
                      v454,
                      "..\\..\\lib\\VOX\\project\\vs2005/..\\..\\src\\stb_vorbis.cpp",
                      "inverse_mdct",
                      0x97Eu);
    v443 = v231;
    if ( v427 == &v427[v454 / 4u] )
      v232 = v427;
    v418 = *(float **)(a1 + 4 * v457 + 1084);
    v233 = &v231[v468];
    if ( v427 == v230 )
    {
      v461 = v232;
      v234 = *(float **)(a1 + 4 * v457 + 1084);
    }
    else
    {
      v235 = *(float **)(a1 + 4 * v457 + 1084);
      v236 = v427;
      v237 = &v231[v468];
      do
      {
        v237[1] = (float)(*v236 * *v235) - (float)(v236[2] * v235[1]);
        v238 = *v236 * v235[1];
        v239 = *v235;
        v235 += 2;
        v240 = v238;
        v241 = v236[2] * v239;
        v236 += 4;
        *v237 = v240 + v241;
        v237 -= 2;
      }
      while ( v230 != v236 );
      v242 = (unsigned int)(v454 - 16) >> 4;
      v233 += 2 * ~v242;
      v461 = &v427[4 * v242 + 4];
      v234 = &v418[2 * v242 + 2];
    }
    if ( v443 <= v233 )
    {
      v243 = &v427[v442 - 3];
      do
      {
        v233[1] = (float)(COERCE_FLOAT(*((_DWORD *)v243 + 2) + 0x80000000) * *v234) + (float)(*v243 * v234[1]);
        v244 = COERCE_FLOAT(*((_DWORD *)v243 + 2) + 0x80000000) * v234[1];
        v246 = *v243;
        v243 -= 4;
        v245 = v246;
        v247 = *v234;
        v234 += 2;
        *v233 = v244 + (float)(COERCE_FLOAT(LODWORD(v245) + 0x80000000) * v247);
        v233 -= 2;
      }
      while ( v443 <= v233 );
    }
    v248 = &v418[v449 / 4];
    if ( !__CFADD__(v418, v449) )
    {
      v249 = v443;
      v250 = &v443[v463];
      v251 = &v427[v463];
      v252 = v427;
      do
      {
        v357 = v249[1];
        v253 = v250[1] - v357;
        v254 = *v250 - *v249;
        v251[1] = v250[1] + v357;
        *v251 = *v250 + *v249;
        v252[1] = (float)(v253 * v248[4]) - (float)(v254 * v248[5]);
        *v252 = (float)(v254 * v248[4]) + (float)(v253 * v248[5]);
        v358 = v249[3];
        v255 = v250[3] - v358;
        v256 = v250[2] - v249[2];
        v251[3] = v250[3] + v358;
        v251[2] = v250[2] + v249[2];
        v252[3] = (float)(v255 * *v248) - (float)(v256 * v248[1]);
        v257 = v256 * *v248;
        v258 = v255 * v248[1];
        v248 -= 8;
        v252[2] = v257 + v258;
        v251 += 4;
        v252 += 4;
        v250 += 4;
        v249 += 4;
      }
      while ( v418 <= v248 );
    }
    v259 = ilog(v441);
    imdct_step3_iter0_loop(*(float *)&v460, v427, v445, v464, v418);
    imdct_step3_iter0_loop(*(float *)&v460, v427, v442 - 1 - (v441 >> 2), v464, v418);
    imdct_step3_inner_r_loop(v451, v427, v445, (int)v453, v418, COERCE_FLOAT(16));
    imdct_step3_inner_r_loop(v451, v427, v442 - 1 - (v441 >> 3), (int)v453, v418, COERCE_FLOAT(16));
    imdct_step3_inner_r_loop(v451, v427, v442 - 1 - 2 * (v441 >> 3), (int)v453, v418, COERCE_FLOAT(16));
    imdct_step3_inner_r_loop(v451, v427, v442 - 1 - 3 * (v441 >> 3), (int)v453, v418, COERCE_FLOAT(16));
    v371 = (v259 - 4) >> 1;
    v378 = v259 - 1;
    v424 = 2;
    while ( v424 < v371 )
    {
      while ( 1 )
      {
        v260 = v424 + 1;
        v261 = 1 << ++v424;
        if ( v261 <= 0 )
          break;
        v262 = v441 >> (v260 + 1);
        v263 = v441 >> (v260 + 3);
        LODWORD(v264) = 1 << (v260 + 2);
        v265 = v442 - 1;
        v266 = -(v262 >> 1);
        v267 = -v262;
        for ( n = 0; n != v261; ++n )
        {
          imdct_step3_inner_r_loop(v263, v427, v265, v266, v418, v264);
          v265 += v267;
        }
        if ( v424 >= v371 )
          goto LABEL_394;
      }
    }
LABEL_394:
    v447 = v378 - 6;
    v440 = &v427[v454 / 4u - 1];
    while ( v424 < v447 )
    {
      while ( 1 )
      {
        v269 = v441 >> (v424 + 6);
        v270 = v424 + 1;
        v271 = 1 << (v424 + 1);
        pb = (char *)v269;
        ++v424;
        if ( v269 <= 0 )
          break;
        v272 = 1 << (v270 + 2);
        v273 = v441 >> (v270 + 1);
        v428 = 12 * v272;
        v274 = &v440[-(v273 >> 1)];
        v412 = 0;
        v275 = -4 * v273;
        v438 = &v418[v272];
        v436 = &v418[v272 + 1];
        v435 = &v418[2 * v272 + 1];
        v434 = &v418[3 * v272 + 1];
        v430 = 16 * v272;
        v432 = 8 * v272;
        v408 = 0;
        do
        {
          v372 = *(float *)((char *)v418 + v408);
          v385 = *(float *)((char *)v438 + v408);
          v276 = *(float *)((char *)v418 + v408 + v428);
          v379 = *(float *)((char *)v418 + v408 + 4);
          v391 = *(float *)((char *)v436 + v408);
          v396 = *(float *)((char *)v418 + v408 + v432);
          v400 = *(int *)((char *)v435 + v408);
          v277 = *(float *)((char *)v434 + v408);
          if ( v271 > 0 )
          {
            v278 = &v274[v412];
            v279 = v271;
            v280 = &v440[v412];
            do
            {
              v359 = v279;
              v281 = *v280 - *v278;
              v282 = *(v280 - 1) - *(v278 - 1);
              *v280 = *v280 + *v278;
              *(v280 - 1) = *(v280 - 1) + *(v278 - 1);
              *v278 = (float)(v372 * v281) - (float)(v379 * v282);
              *(v278 - 1) = (float)(v372 * v282) + (float)(v379 * v281);
              v283 = *(v280 - 2) - *(v278 - 2);
              v284 = *(v280 - 3) - *(v278 - 3);
              *(v280 - 2) = *(v280 - 2) + *(v278 - 2);
              *(v280 - 3) = *(v280 - 3) + *(v278 - 3);
              *(v278 - 2) = (float)(v385 * v283) - (float)(v391 * v284);
              *(v278 - 3) = (float)(v385 * v284) + (float)(v391 * v283);
              v285 = *(v280 - 4) - *(v278 - 4);
              v286 = *(v280 - 5) - *(v278 - 5);
              *(v280 - 4) = *(v280 - 4) + *(v278 - 4);
              *(v280 - 5) = *(v280 - 5) + *(v278 - 5);
              *(v278 - 4) = (float)(v396 * v285) - (float)(*(float *)&v400 * v286);
              *(v278 - 5) = (float)(v396 * v286) + (float)(*(float *)&v400 * v285);
              v287 = *(v280 - 6) - *(v278 - 6);
              v288 = *(v280 - 7) - *(v278 - 7);
              *(v280 - 6) = *(v280 - 6) + *(v278 - 6);
              *(v280 - 7) = *(v280 - 7) + *(v278 - 7);
              *(v278 - 6) = (float)(v276 * v287) - (float)(v277 * v288);
              v280 = (float *)((char *)v280 + v275);
              *(v278 - 7) = (float)(v276 * v288) + (float)(v277 * v287);
              --v279;
              v278 = (float *)((char *)v278 + v275);
            }
            while ( v359 != 1 );
          }
          v78 = pb-- == (_BYTE *)&dword_0 + 1;
          v408 += v430;
          v412 -= 8;
        }
        while ( !v78 );
        if ( v424 >= v447 )
          goto LABEL_404;
      }
    }
LABEL_404:
    v289 = &v427[v467];
    v290 = v418[v441 >> 3];
    if ( __CFADD__(&v427[v467], -64 * (v441 >> 5)) )
    {
      do
      {
        v291 = *v289;
        v292 = *(v289 - 8);
        v293 = *(v289 - 1) - *(v289 - 9);
        v294 = *(v289 - 9);
        *v289 = *v289 + v292;
        *(v289 - 1) = *(v289 - 1) + v294;
        v295 = v291 - v292;
        v296 = *(v289 - 2);
        v297 = *(v289 - 10);
        *(v289 - 8) = v295;
        *(v289 - 9) = v293;
        v298 = *(v289 - 3) - *(v289 - 11);
        v299 = *(v289 - 11);
        *(v289 - 2) = v296 + v297;
        *(v289 - 3) = *(v289 - 3) + v299;
        *(v289 - 10) = v290 * (float)((float)(v296 - v297) + v298);
        v300 = *(v289 - 13);
        *(v289 - 11) = v290 * (float)(v298 - (float)(v296 - v297));
        v301 = *(v289 - 4);
        v302 = *(v289 - 12);
        v303 = *(v289 - 5) - v300;
        v304 = *(v289 - 13);
        *(v289 - 4) = v302 + v301;
        *(v289 - 5) = *(v289 - 5) + v304;
        *(v289 - 12) = v303;
        v305 = *(v289 - 14);
        v306 = *(v289 - 6);
        *(v289 - 13) = v302 - v301;
        v307 = *(v289 - 7) - *(v289 - 15);
        v308 = *(v289 - 15);
        *(v289 - 6) = v305 + v306;
        *(v289 - 7) = *(v289 - 7) + v308;
        *(v289 - 14) = v290 * (float)((float)(v305 - v306) + v307);
        *(v289 - 15) = v290 * (float)((float)(v305 - v306) - v307);
        iter_54(v289);
        v309 = v289 - 8;
        v289 -= 16;
        iter_54(v309);
      }
      while ( &v427[v467 + -16 * (v441 >> 5)] < v289 );
    }
    v310 = &v443[v465 / 4];
    v311 = *(unsigned __int16 **)(a1 + 4 * v457 + 1116);
    v312 = &v443[v466];
    if ( !__CFADD__(v443, v465) )
    {
      v313 = v311 + 2;
      v314 = (int)&v311[2 * (v465 >> 4) + 2];
      v315 = &v443[v466];
      while ( 1 )
      {
        v316 = *v311;
        v315[3] = v427[v316];
        v315[2] = v427[v316 + 1];
        v310[3] = v427[v316 + 2];
        v310[2] = v427[v316 + 3];
        v317 = v311[1];
        v311 = v313;
        v315[1] = v427[v317];
        *v315 = v427[v317 + 1];
        v315 -= 4;
        v310[1] = v427[v317 + 2];
        *v310 = v427[v317 + 3];
        v310 -= 4;
        if ( v313 == (unsigned __int16 *)v314 )
          break;
        v313 += 2;
      }
    }
    v318 = *(float **)(a1 + 4 * (v457 + 272) + 12);
    if ( v443 < v312 )
    {
      v319 = v443;
      do
      {
        v363 = v312[2];
        v320 = *v319 - v363;
        v364 = v319[1];
        v321 = v364 + v312[3];
        v322 = (float)(v320 * v318[1]) + (float)(v321 * *v318);
        v323 = (float)(v321 * v318[1]) - (float)(v320 * *v318);
        v324 = *v319 + v363;
        v325 = v364 - v312[3];
        *v319 = v322 + v324;
        v319[1] = v323 + v325;
        v312[2] = v324 - v322;
        v312[3] = v323 - v325;
        v326 = v319[2] - *v312;
        v365 = v319[3];
        v327 = v365 + v312[1];
        v328 = (float)(v326 * v318[3]) + (float)(v327 * v318[2]);
        v329 = (float)(v327 * v318[3]) - (float)(v326 * v318[2]);
        v330 = v319[2] + *v312;
        v331 = v365 - v312[1];
        v319[2] = v328 + v330;
        v319[3] = v329 + v331;
        *v312 = v330 - v328;
        v319 += 4;
        v312[1] = v329 - v331;
        v312 -= 4;
        v318 += 4;
      }
      while ( v319 < v312 );
    }
    v332 = &v443[v449 / 4];
    if ( !__CFADD__(v443, v449) )
    {
      v333 = (float *)(*(_DWORD *)(a1 + 4 * (v457 + 272) + 4) + v449);
      v334 = &v427[v441 - 4];
      v335 = &v427[v466];
      v336 = v427;
      for ( ii = v461; ; ii += 4 )
      {
        v360 = v333[7];
        v338 = (float)(v332[6] * v360) - (float)(v332[7] * v333[6]);
        v339 = (float)(v333[6] * COERCE_FLOAT(*((_DWORD *)v332 + 6) + 0x80000000)) - (float)(v360 * v332[7]);
        *v336 = v338;
        *((_DWORD *)v335 + 3) = LODWORD(v338) + 0x80000000;
        *ii = v339;
        v334[3] = v339;
        v361 = v333[5];
        v340 = (float)(v332[4] * v361) - (float)(v332[5] * v333[4]);
        v341 = (float)(v333[4] * COERCE_FLOAT(*((_DWORD *)v332 + 4) + 0x80000000)) - (float)(v361 * v332[5]);
        v336[1] = v340;
        *((_DWORD *)v335 + 2) = LODWORD(v340) + 0x80000000;
        ii[1] = v341;
        v334[2] = v341;
        v362 = v333[3];
        v342 = (float)(v332[2] * v362) - (float)(v332[3] * v333[2]);
        v343 = (float)(v333[2] * COERCE_FLOAT(*((_DWORD *)v332 + 2) + 0x80000000)) - (float)(v362 * v332[3]);
        v336[2] = v342;
        *((_DWORD *)v335 + 1) = LODWORD(v342) + 0x80000000;
        ii[2] = v343;
        v334[1] = v343;
        v344 = v333[1];
        v345 = *v333;
        v333 -= 8;
        v346 = (float)(v345 * COERCE_FLOAT(*(_DWORD *)v332 + 0x80000000)) - (float)(v344 * v332[1]);
        v347 = (float)(*v332 * v344) - (float)(v332[1] * v345);
        v336[3] = v347;
        v332 -= 8;
        *(_DWORD *)v335 = LODWORD(v347) + 0x80000000;
        v335 -= 4;
        v336 += 4;
        ii[3] = v346;
        *v334 = v346;
        v334 -= 4;
        if ( ii + 4 == &v461[4 * (v449 >> 5) + 4] )
          break;
      }
    }
    VoxFree(v443);
    v205 = *(_DWORD *)(a1 + 4);
    *(_DWORD *)(a1 + 108) = v469;
    v229 = v459 + 4;
    v459 += 4;
  }
  while ( get8_packet_raw(a1) != (int *)-1 )
    ;
  v348 = *(unsigned __int8 *)(a1 + 1393);
  if ( *(_BYTE *)(a1 + 1393) )
  {
    *(_DWORD *)(a1 + 1428) = v441 - v456;
    *(_DWORD *)(a1 + 1080) = 1;
    *(_DWORD *)(a1 + 1076) = -v442;
    *(_BYTE *)(a1 + 1393) = 0;
  }
  else
  {
    v355 = *(_DWORD *)(a1 + 1428);
    if ( v355 )
    {
      v229 = (int)a3;
      v452 += v355;
      *a3 = v452;
      *(_DWORD *)(a1 + 1428) = v348;
    }
  }
  v349 = (_DWORD *)a1;
  if ( *(_DWORD *)(a1 + 1404) != *(_DWORD *)(a1 + 1420) )
  {
    if ( *(_DWORD *)(a1 + 1080) )
      goto LABEL_424;
    goto LABEL_425;
  }
  if ( !*(_DWORD *)(a1 + 1080) )
  {
    v350 = *(_DWORD *)(a1 + 1424);
    goto LABEL_440;
  }
  if ( (*(_BYTE *)(a1 + 1391) & 4) == 0 )
  {
    v350 = *(_DWORD *)(a1 + 1424);
    goto LABEL_440;
  }
  v350 = *(_DWORD *)(a1 + 1424);
  v351 = *(_DWORD *)(a1 + 1076);
  v352 = v456 - v441 + v350;
  if ( v352 >= v456 + v351 )
  {
LABEL_440:
    *(_DWORD *)(a1 + 1076) = v452 - v442 + v350;
    *(_DWORD *)(a1 + 1080) = 1;
LABEL_424:
    *(_DWORD *)(a1 + 1076) += v470 - v452;
LABEL_425:
    *a2 = v456;
    return 1;
  }
  else
  {
    v353 = v352 >= v351;
    if ( v352 >= v351 )
    {
      v349 = a2;
      v351 = v352 - v351;
    }
    else
    {
      v229 = (int)a2;
    }
    if ( v353 )
      *v349 = v351;
    else
      *(_DWORD *)v229 = 0;
    v354 = v452 + *a2;
    *a2 = v354;
    *(_DWORD *)(a1 + 1076) += v354;
    return 1;
  }
}


// ===== 87de80 vorbis_pump_first_frame(stb_vorbis *) =====
int __fastcall vorbis_pump_first_frame(_DWORD *a1)
{
  int result; // r0
  int v3; // [sp+4h] [bp-Ch] BYREF
  int v4; // [sp+8h] [bp-8h] BYREF
  int v5; // [sp+Ch] [bp-4h] BYREF

  result = vorbis_decode_packet((int)a1, &v5, &v3, &v4);
  if ( result )
    return vorbis_finish_frame(a1, v5, v3, v4);
  return result;
}


// ===== 87debc stb_vorbis_seek_start(stb_vorbis *) =====
int __fastcall stb_vorbis_seek_start(int a1)
{
  set_file_offset((int *)a1, *(_DWORD *)(a1 + 52));
  *(_DWORD *)(a1 + 1008) = 0;
  *(_BYTE *)(a1 + 1393) = 1;
  *(_DWORD *)(a1 + 1396) = -1;
  return vorbis_pump_first_frame((_DWORD *)a1);
}


// ===== 87def0 stb_vorbis_open_memory(uchar *,int,int *,stb_vorbis_alloc *) =====
_DWORD *__fastcall stb_vorbis_open_memory(_DWORD *a1, int a2, int *a3, _DWORD *a4)
{
  _DWORD *v4; // r5
  int v7; // r3
  void *v8; // r0
  int v10[362]; // [sp+4h] [bp-5B0h] BYREF

  v4 = a1;
  if ( a1 )
  {
    vorbis_init(v10, a4);
    v10[10] = (int)v4 + a2;
    v10[9] = (int)v4;
    v10[11] = a2;
    LOBYTE(v10[12]) = 0;
    v10[8] = (int)v4;
    if ( start_decoder(v10) && (v8 = setup_malloc(v10, 1448), (v4 = v8) != nullptr) )
    {
      memcpy(v8, v10, 0x5A8u);
      vorbis_pump_first_frame(v4);
      if ( a3 )
        *a3 = v4[29];
    }
    else
    {
      if ( a3 )
        v7 = v10[29];
      v4 = nullptr;
      if ( a3 )
        *a3 = v7;
      vorbis_deinit((int)v10);
    }
  }
  return v4;
}


// ===== 87dfe4 stb_vorbis_open_file_section(vox::StreamCursorInterface *,int,int *,stb_vorbis_alloc *,uint) =====
_DWORD *__fastcall stb_vorbis_open_file_section(int a1, int a2, int *a3, _DWORD *a4, int a5)
{
  int v8; // r3
  void *v9; // r0
  _DWORD *v10; // r7
  int v12[362]; // [sp+4h] [bp-5B0h] BYREF

  vorbis_init(v12, a4);
  v12[5] = a1;
  v12[6] = ftell(a1);
  v12[11] = a5;
  v12[7] = a2;
  if ( start_decoder(v12) && (v9 = setup_malloc(v12, 1448), (v10 = v9) != nullptr) )
  {
    memcpy(v9, v12, 0x5A8u);
    vorbis_pump_first_frame(v10);
  }
  else
  {
    if ( a3 )
      v8 = v12[29];
    v10 = nullptr;
    if ( a3 )
      *a3 = v8;
    vorbis_deinit((int)v12);
  }
  return v10;
}


// ===== 87e0c8 stb_vorbis_open_file(vox::StreamCursorInterface *,int,int *,stb_vorbis_alloc *) =====
_DWORD *__fastcall stb_vorbis_open_file(int a1, int a2, int *a3, _DWORD *a4)
{
  int v8; // r5
  int v9; // r10

  v8 = ftell(a1);
  fseek(a1);
  v9 = ftell(a1);
  fseek(a1);
  return stb_vorbis_open_file_section(a1, a2, a3, a4, v9 - v8);
}


// ===== 87e138 stb_vorbis_get_frame_float(stb_vorbis *,int *,float ***) =====
int __fastcall stb_vorbis_get_frame_float(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  int result; // r0
  int v7; // r0
  int v8; // r3
  _DWORD *v9; // r2
  int i; // r1
  int v11; // r3
  int v12; // [sp+4h] [bp-Ch] BYREF
  int v13; // [sp+8h] [bp-8h] BYREF
  int v14; // [sp+Ch] [bp-4h] BYREF

  result = vorbis_decode_packet((int)a1, &v14, &v12, &v13);
  if ( result )
  {
    v7 = vorbis_finish_frame(a1, v14, v12, v13);
    v8 = a1[1];
    v14 = v7;
    if ( v8 > 0 )
    {
      v9 = a1;
      for ( i = 0; i < v8; ++i )
      {
        v9[220] = v9[204] + 4 * v12;
        ++v9;
      }
    }
    v11 = v12;
    result = v14;
    a1[360] = v12;
    a1[361] = result + v11;
    if ( a2 )
      *a2 = a1[1];
    if ( a3 )
      *a3 = a1 + 220;
  }
  else
  {
    a1[360] = 0;
    a1[361] = 0;
  }
  return result;
}


// ===== 87e1f0 stb_vorbis_get_samples_float(stb_vorbis *,int,float **,int) =====
int __fastcall stb_vorbis_get_samples_float(_DWORD *a1, int a2, int a3, int a4)
{
  int v4; // r5
  int i; // r10
  int v8; // r1
  int v9; // r9
  int v10; // r2
  bool v11; // cc
  int v12; // r6
  int v13; // r6
  int v14; // r0
  int *v15; // r7
  int v16; // t1
  int v18; // [sp+4h] [bp-28h]
  int v20; // [sp+10h] [bp-1Ch]
  _DWORD *v21; // [sp+1Ch] [bp-10h]
  int v22; // [sp+24h] [bp-8h] BYREF

  v4 = a1[1];
  v20 = a3;
  if ( a2 < v4 )
    v4 = a2;
  if ( a4 <= 0 )
    a3 = 0;
  if ( a4 <= 0 )
    return a3;
  v21 = a1 + 204;
  for ( i = 0; ; i = v18 )
  {
    v8 = a1[360];
    v9 = a1[361] - v8;
    v10 = i + v9;
    v11 = a4 <= i + v9;
    if ( a4 <= i + v9 )
      v9 = a4 - i;
    v18 = v10;
    if ( v11 )
      v18 = v9 + i;
    if ( v9 )
    {
      if ( v4 > 0 )
      {
        v13 = 0;
        while ( 1 )
        {
          v14 = *(_DWORD *)(v20 + 4 * v13++);
          memcpy((void *)(v14 + 4 * i), &v21[v8], 4 * v9);
          if ( v13 == v4 )
            break;
          v8 = a1[360];
        }
        v12 = v4;
      }
      else
      {
        v12 = 0;
      }
      if ( v12 < a2 )
      {
        v15 = (int *)(v20 + 4 * v12);
        do
        {
          v16 = *v15++;
          ++v12;
          LC_API_MEMSET_0((void *)(v16 + 4 * i), 0, 4 * v9);
        }
        while ( v12 != a2 );
      }
      v8 = a1[360];
    }
    a1[360] = v8 + v9;
    if ( a4 == v18 || !stb_vorbis_get_frame_float(a1, nullptr, &v22) || a4 <= v18 )
      break;
  }
  return v18;
}


// ===== 87e358 stb_vorbis_get_samples_float_interleaved(stb_vorbis *,int,float *,int) =====
_DWORD *__fastcall stb_vorbis_get_samples_float_interleaved(_DWORD *a1, int a2, int a3, int a4)
{
  int v7; // r0
  int v8; // r10
  _DWORD *v9; // r2
  int v10; // r6
  int v11; // r3
  int v12; // r1
  int v13; // r9
  char *v14; // r0
  bool v15; // cc
  int i; // r12
  int v17; // r1
  _DWORD *v19; // [sp+0h] [bp-14h]
  int v20; // [sp+4h] [bp-10h]
  int v21; // [sp+Ch] [bp-8h] BYREF

  v7 = a4 / a2;
  v8 = a1[1];
  if ( a2 < v8 )
    v8 = a2;
  if ( v7 <= 0 )
    a4 = 0;
  v20 = v7;
  if ( v7 <= 0 )
    return (_DWORD *)a4;
  v9 = nullptr;
  v10 = 4 * v8;
  while ( 1 )
  {
    v11 = a1[360];
    v12 = v20;
    v13 = a1[361] - v11;
    v14 = (char *)v9 + v13;
    v15 = v20 <= (int)v9 + v13;
    if ( v20 <= (int)v9 + v13 )
    {
      v13 = v20 - (_DWORD)v9;
      v9 = (_DWORD *)v20;
    }
    v19 = v14;
    if ( v15 )
      v19 = v9;
    if ( v13 > 0 )
    {
      for ( i = 0; i != v13; ++i )
      {
        if ( v8 > 0 )
        {
          v9 = a1;
          v11 = 0;
        }
        else
        {
          v12 = 0;
        }
        if ( v8 > 0 )
        {
          do
          {
            v17 = v9[204];
            ++v9;
            *(_DWORD *)(a3 + v11) = *(_DWORD *)(v17 + 4 * (i + a1[360]));
            v11 += 4;
          }
          while ( v11 != v10 );
          a3 += v10;
          v12 = v8;
        }
        if ( a2 > v12 )
        {
          v9 = (_DWORD *)v12;
          v11 = 0;
          do
          {
            v9 = (_DWORD *)((char *)v9 + 1);
            *(_DWORD *)(a3 + v11) = 0;
            v11 += 4;
          }
          while ( v9 != (_DWORD *)a2 );
          v12 = a2 + 1 + ~v12;
          a3 += 4 * v12;
        }
      }
      v11 = a1[360];
    }
    a1[360] = v11 + v13;
    if ( v19 == (_DWORD *)v20 || !stb_vorbis_get_frame_float(a1, nullptr, &v21) || (int)v19 >= v20 )
      break;
    v9 = v19;
  }
  return v19;
}


// ===== 87e4a8 stb_vorbis_get_samples_short(stb_vorbis *,int,short **,int) =====
int __fastcall stb_vorbis_get_samples_short(int *a1, int a2, __int16 **a3, int a4)
{
  int v8; // r4
  float **v9; // r11
  int i; // r2
  int *v11; // r0
  int v12; // r12
  int v13; // r5
  int v15; // [sp+14h] [bp-8h] BYREF

  if ( a4 <= 0 )
    return 0;
  v9 = (float **)(a1 + 204);
  for ( i = 0; ; i = v8 )
  {
    v12 = a1[360];
    v13 = a1[361] - v12;
    v8 = i + v13;
    if ( a4 <= i + v13 )
    {
      v13 = a4 - i;
      v8 = a4;
    }
    if ( v13 )
    {
      convert_samples_short(a2, a3, i, a1[1], v9, a1[360], v13);
      v11 = a1;
      a1[360] += v13;
      if ( a4 == v8 )
        return v8;
    }
    else
    {
      v11 = a1;
      a1[360] = v12;
      if ( a4 == v8 )
        return v8;
    }
    if ( !stb_vorbis_get_frame_float(v11, nullptr, &v15) || a4 <= v8 )
      break;
  }
  return v8;
}


// ===== 87e578 stb_vorbis_get_samples_short_interleaved(stb_vorbis *,int,short *,int) =====
int __fastcall stb_vorbis_get_samples_short_interleaved(int a1, int a2, int a3, int a4)
{
  int v7; // r7
  int v8; // r5
  _DWORD *v9; // r0
  int v10; // r12
  int v11; // r4
  bool v12; // cc
  int v14; // [sp+Ch] [bp-8h] BYREF

  v7 = a4 / a2;
  if ( a4 / a2 <= 0 )
    return 0;
  v8 = 0;
  while ( 1 )
  {
    v10 = *(_DWORD *)(a1 + 1440);
    v11 = *(_DWORD *)(a1 + 1444) - v10;
    v12 = v7 <= v8 + v11;
    if ( v7 > v8 + v11 )
      v8 += v11;
    else
      v11 = v7 - v8;
    if ( v12 )
      v8 += v11;
    if ( v11 )
    {
      convert_channels_short_interleaved(a2, a3, *(_DWORD *)(a1 + 4), (float **)(a1 + 816), *(_DWORD *)(a1 + 1440), v11);
      v9 = (_DWORD *)a1;
      *(_DWORD *)(a1 + 1440) += v11;
      if ( v7 == v8 )
        return v8;
    }
    else
    {
      v9 = (_DWORD *)a1;
      *(_DWORD *)(a1 + 1440) = v10;
      if ( v7 == v8 )
        return v8;
    }
    if ( !stb_vorbis_get_frame_float(v9, nullptr, &v14) || v7 <= v8 )
      break;
    a3 += 2 * a2 * v11;
  }
  return v8;
}


// ===== 87e658 stb_vorbis_get_frame_short(stb_vorbis *,int,short **,int) =====
int __fastcall stb_vorbis_get_frame_short(_DWORD *a1, int a2, __int16 **a3, int a4)
{
  int frame_float; // r0
  float **v10; // [sp+14h] [bp-8h] BYREF

  frame_float = stb_vorbis_get_frame_float(a1, nullptr, &v10);
  if ( frame_float < a4 )
    a4 = frame_float;
  if ( a4 )
    convert_samples_short(a2, a3, 0, a1[1], v10, 0, a4);
  return a4;
}


// ===== 87e6c4 stb_vorbis_get_frame_short_interleaved(stb_vorbis *,int,short *,int) =====
int __fastcall stb_vorbis_get_frame_short_interleaved(_DWORD *a1, int a2, __int16 *a3, int a4)
{
  int frame_float; // r0
  int v8; // r5
  __int16 *v10; // [sp+Ch] [bp-10h] BYREF
  float **v11; // [sp+14h] [bp-8h] BYREF

  v10 = a3;
  if ( a2 == 1 )
    return stb_vorbis_get_frame_short(a1, 1, &v10, a4);
  frame_float = stb_vorbis_get_frame_float(a1, nullptr, &v11);
  v8 = frame_float;
  if ( frame_float )
  {
    if ( a4 < a2 * frame_float )
      v8 = a4 / a2;
    convert_channels_short_interleaved(a2, (int)v10, a1[1], v11, 0, v8);
  }
  return v8;
}


// ===== 87e750 stb_vorbis_decode_memory(uchar *,int,int *,int *,short **) =====
int __fastcall stb_vorbis_decode_memory(unsigned __int8 *a1, int a2, int *a3, int *a4, __int16 **a5)
{
  int *v7; // r0
  int *v8; // r7
  int v9; // r10
  int v10; // r11
  __int16 *v11; // r9
  int v12; // r11
  int v13; // r4
  int v14; // r1
  int v15; // r5
  int frame_short_interleaved; // r0
  int v17; // r6
  int v18; // r8
  __int16 *v19; // r0
  size_t v20; // r2
  __int16 *v21; // r5
  int v23; // [sp+Ch] [bp-8h] BYREF

  v7 = stb_vorbis_open_memory(a1, a2, &v23, nullptr);
  v8 = v7;
  if ( !v7 )
    return -1;
  v10 = v7[1];
  *a3 = v10;
  *a4 = *v7;
  v11 = (__int16 *)VoxAlloc(
                     v10 << 13,
                     "..\\..\\lib\\VOX\\project\\vs2005/..\\..\\src\\stb_vorbis.cpp",
                     "stb_vorbis_decode_memory",
                     0x13D9u);
  v12 = v10 << 12;
  if ( v11 )
  {
    v13 = 0;
    v14 = v8[1];
    v15 = v12;
    v9 = 0;
    while ( 1 )
    {
      frame_short_interleaved = stb_vorbis_get_frame_short_interleaved(v8, v14, &v11[v13], v15 - v13);
      v17 = frame_short_interleaved;
      if ( !frame_short_interleaved )
        break;
      v14 = v8[1];
      v18 = v15;
      v13 += v14 * frame_short_interleaved;
      if ( v15 < v13 + v12 )
      {
        v19 = (__int16 *)VoxAlloc(
                           4 * v15,
                           "..\\..\\lib\\VOX\\project\\vs2005/..\\..\\src\\stb_vorbis.cpp",
                           "stb_vorbis_decode_memory",
                           0x13E8u);
        v18 = 2 * v15;
        v20 = 2 * v15;
        v21 = v19;
        memcpy(v19, v11, v20);
        VoxFree(v11);
        if ( !v21 )
          goto LABEL_12;
        v11 = v21;
        v14 = v8[1];
      }
      v9 += v17;
      v15 = v18;
    }
    *a5 = v11;
    stb_vorbis_close(v8);
  }
  else
  {
LABEL_12:
    stb_vorbis_close(v8);
    return -2;
  }
  return v9;
}


// ===== 87e894 stb_vorbis_decode_filename(char *,int *,short **) =====
int __fastcall stb_vorbis_decode_filename(char *a1, int *a2, __int16 **a3)
{
  int v4; // r0
  _DWORD *v5; // r7
  int v6; // r10
  int v7; // r11
  __int16 *v8; // r9
  int v9; // r11
  int v10; // r4
  int v11; // r1
  int v12; // r5
  _DWORD *v13; // r8
  int frame_short_interleaved; // r0
  int v15; // r6
  int v16; // r7
  __int16 *v17; // r0
  size_t v18; // r2
  __int16 *v19; // r5
  int v22; // [sp+14h] [bp-8h] BYREF

  v4 = stb_vorbis_open_filename((int)a1, &v22);
  v5 = (_DWORD *)v4;
  if ( !v4 )
    return -1;
  v7 = *(_DWORD *)(v4 + 4);
  *a2 = v7;
  v8 = (__int16 *)VoxAlloc(
                    v7 << 13,
                    "..\\..\\lib\\VOX\\project\\vs2005/..\\..\\src\\stb_vorbis.cpp",
                    "stb_vorbis_decode_filename",
                    0x13AFu);
  v9 = v7 << 12;
  if ( !v8 )
    goto LABEL_13;
  v10 = 0;
  v11 = v5[1];
  v12 = v9;
  v6 = 0;
  v13 = v5;
  while ( 1 )
  {
    frame_short_interleaved = stb_vorbis_get_frame_short_interleaved(v13, v11, &v8[v10], v12 - v10);
    v15 = frame_short_interleaved;
    if ( !frame_short_interleaved )
    {
      *a3 = v8;
      stb_vorbis_close(v13);
      return v6;
    }
    v11 = v13[1];
    v16 = v12;
    v10 += v11 * frame_short_interleaved;
    if ( v12 < v10 + v9 )
      break;
LABEL_5:
    v6 += v15;
    v12 = v16;
  }
  v17 = (__int16 *)VoxAlloc(
                     4 * v12,
                     "..\\..\\lib\\VOX\\project\\vs2005/..\\..\\src\\stb_vorbis.cpp",
                     "stb_vorbis_decode_filename",
                     0x13BEu);
  v16 = 2 * v12;
  v18 = 2 * v12;
  v19 = v17;
  memcpy(v17, v8, v18);
  VoxFree(v8);
  if ( v19 )
  {
    v8 = v19;
    v11 = v13[1];
    goto LABEL_5;
  }
  v5 = v13;
LABEL_13:
  stb_vorbis_close(v5);
  return -2;
}


// ===== 87e9dc vorbis_seek_frame_from_page(stb_vorbis *,uint,uint,uint,int) =====
int __fastcall vorbis_seek_frame_from_page(int *a1, unsigned int a2, int a3, unsigned int a4, int a5)
{
  int i; // r6
  int v9; // r2
  int v10; // r3
  int v12; // r8
  int j; // r10
  int v14; // r3
  int v15; // r0
  int v16; // r0
  int *v17; // r1
  int k; // r6
  int m; // r3
  int v20; // [sp+Ch] [bp-28h]
  int v22; // [sp+18h] [bp-1Ch] BYREF
  int v23; // [sp+1Ch] [bp-18h] BYREF
  int v24; // [sp+20h] [bp-14h] BYREF
  int v25; // [sp+24h] [bp-10h] BYREF
  int v26; // [sp+28h] [bp-Ch] BYREF
  int v27; // [sp+2Ch] [bp-8h] BYREF

  set_file_offset(a1, a2);
  a1[349] = -1;
  for ( i = 0; ; ++i )
  {
    if ( !vorbis_decode_initial(a1, &v27, &v26, &v25, &v24, &v23) )
    {
LABEL_13:
      a1[29] = 37;
      return 0;
    }
    if ( i )
      v10 = v27;
    else
      v9 = v26;
    v20 = i ? v10 : v9;
    if ( a3 + v25 - v20 > a4 )
      break;
    while ( get8_packet_raw((int)a1) != (int *)-1 )
      ;
    if ( a1[28] )
      goto LABEL_13;
    a3 += v25 - v20;
  }
  v12 = v26 - v27;
  if ( a4 <= a3 + v26 - v27 )
  {
    --i;
    v12 = -1;
  }
  set_file_offset(a1, a2);
  a1[349] = -1;
  if ( i > 0 )
  {
    for ( j = 0; j != i; ++j )
    {
      maybe_start_packet((int)a1);
      while ( get8_packet_raw((int)a1) != (int *)-1 )
        ;
    }
  }
  if ( v12 < 0 )
  {
    a1[252] = 0;
    vorbis_pump_first_frame(a1);
  }
  else
  {
    v14 = a1[1];
    v15 = a1[32];
    a1[357] = v12;
    v16 = v15 >> 1;
    if ( v14 > 0 )
    {
      v17 = a1;
      for ( k = 0; k < v14; ++k )
      {
        if ( v16 > 0 )
        {
          for ( m = 0; m != v16; ++m )
            *(_DWORD *)(v17[236] + 4 * m) = 0;
          v14 = a1[1];
        }
        ++v17;
      }
    }
    a1[252] = v16;
    a3 += v12;
  }
  if ( a5 && a4 != a3 )
  {
    stb_vorbis_get_frame_float(a1, &v22, nullptr);
    a1[360] = a4 + a1[360] - a3;
  }
  return 0;
}


// ===== 87ebc8 vorbis_seek_base(stb_vorbis *,uint,int) =====
int __fastcall vorbis_seek_base(int *a1, unsigned int a2, int a3)
{
  int v4; // r4
  unsigned int v5; // r6
  bool v6; // zf
  unsigned int v7; // r8
  unsigned int v8; // r8
  float v9; // r0
  unsigned int v10; // r3
  int v11; // r12
  unsigned int v12; // r8
  unsigned int v13; // r2
  bool v14; // cf
  int v15; // r10
  int v16; // r8
  int v17; // r3
  int v18; // r2
  int v19; // r11
  _BOOL4 v20; // r2
  int v21; // r9
  int *v22; // r0
  int v23; // r3
  int v24; // r1
  int v25; // r12
  int v26; // r3
  int v27; // r2
  int v28; // r2
  int v29; // r3
  _BYTE *v30; // r2
  int v31; // r1
  bool v32; // zf
  int v33; // r1
  bool v34; // zf
  int v36; // [sp+10h] [bp-2ACh]
  unsigned int v37; // [sp+14h] [bp-2A8h]
  unsigned int v38; // [sp+1Ch] [bp-2A0h]
  unsigned int v39; // [sp+20h] [bp-29Ch]
  unsigned int v40; // [sp+24h] [bp-298h]
  int v41; // [sp+28h] [bp-294h]
  unsigned int file_offset; // [sp+30h] [bp-28Ch]
  unsigned int v43; // [sp+34h] [bp-288h]
  unsigned int v44; // [sp+38h] [bp-284h]
  unsigned int v46; // [sp+40h] [bp-27Ch]
  unsigned int v48; // [sp+84h] [bp-238h]
  unsigned int v49; // [sp+8Ch] [bp-230h]
  int v50; // [sp+94h] [bp-228h]
  _BYTE v51[256]; // [sp+98h] [bp-224h] BYREF
  _BYTE v52[256]; // [sp+198h] [bp-124h] BYREF
  char v53[5]; // [sp+298h] [bp-24h] BYREF
  char v54; // [sp+29Dh] [bp-1Fh]
  unsigned __int8 v55; // [sp+29Eh] [bp-1Eh]
  unsigned __int8 v56; // [sp+29Fh] [bp-1Dh]
  unsigned __int8 v57; // [sp+2A0h] [bp-1Ch]
  unsigned __int8 v58; // [sp+2A1h] [bp-1Bh]
  unsigned int v59; // [sp+2B2h] [bp-Ah]

  if ( !a1[19] && !stb_vorbis_stream_length_in_samples(a1) )
  {
    a1[29] = 36;
    return 0;
  }
  v4 = a1[18];
  v5 = a1[23];
  if ( v5 <= a2 )
    a2 = v5 - 1;
  if ( a2 < a1[18] )
  {
    vorbis_seek_frame_from_page(a1, a1[14], 0, a2, a3);
    return 0;
  }
  if ( a1[19] <= (unsigned int)a1[15] )
  {
    v43 = a1[23];
    v46 = a1[19];
    v39 = a1[18];
    goto LABEL_71;
  }
  v6 = v4 == -1;
  if ( v4 != -1 )
    v6 = a1[23] == -1;
  if ( v6 )
    goto LABEL_76;
  v37 = a1[15];
  v41 = 0;
  v39 = a1[18];
  v44 = a1[21];
  v43 = a1[23];
  v46 = a1[19];
  while ( 2 )
  {
    if ( v37 + 4000 >= v44 )
      v7 = v44;
    else
      v7 = v44 - 4000;
    v8 = v7 - v37;
    v9 = floorf((float)((float)v8 / (float)(v43 - v39)) * (float)(a2 - v39));
    v11 = v41;
    v38 = (int)v9 + v37;
    if ( v41 <= 3 )
      goto LABEL_26;
    v12 = v37 + (v8 >> 1);
    if ( v41 <= 7 )
    {
      v13 = (int)v9 + v37;
      v14 = v38 >= v12;
      if ( v38 < v12 )
      {
        v12 -= v38;
        v13 = v38 + (v12 >> 1);
      }
      else
      {
        v11 = (int)v9 + v37;
      }
      if ( v14 )
        v10 = v12 + ((v11 - v12) >> 1);
      else
        v38 = v13;
      if ( v14 )
        v38 = v10;
LABEL_26:
      set_file_offset(a1, v38);
      goto LABEL_27;
    }
    v38 = v12;
    set_file_offset(a1, v12);
LABEL_27:
    if ( !vorbis_find_page(a1, nullptr, nullptr) )
      goto LABEL_76;
    file_offset = stb_vorbis_get_file_offset(a1);
    getn((int)a1, v53, 0x1Bu);
    getn((int)a1, v52, (unsigned __int8)v59);
    v15 = (unsigned __int8)v59;
    if ( (_BYTE)v59 )
    {
      v16 = 0;
      v17 = 0;
      do
      {
        v18 = (unsigned __int8)v52[v17++];
        v16 += v18;
      }
      while ( v17 < (unsigned __int8)v59 );
    }
    else
    {
      v16 = 0;
    }
    v19 = v54 & 4;
    v40 = (v57 << 16) + (v56 << 8) + v55 + (v58 << 16);
    if ( v19 || !(_BYTE)v59 )
      goto LABEL_60;
    v20 = !(v54 & 1);
    v21 = v54 & 4;
    while ( !v20 )
    {
      skip(a1, (unsigned __int8)v52[v21]);
      v26 = (unsigned __int8)v59;
      v27 = (unsigned __int8)v52[v21++];
      if ( v21 >= (unsigned __int8)v59 )
        goto LABEL_42;
LABEL_39:
      v20 = v27 != 255;
    }
    if ( !v52[v21]
      || (v22 = get8(a1), ((unsigned __int8)v22 & 1) != 0)
      || (v36 = a1[106], v23 = (unsigned __int8)(((1 << ilog(v36 - 1)) - 1) & ((int)v22 >> 1)), v36 <= v23) )
    {
      set_file_offset(a1, file_offset);
      a1[29] = 37;
      return 0;
    }
    v24 = (unsigned __int8)v52[v21];
    v51[v19] = *((_BYTE *)a1 + 6 * v23 + 428);
    skip(a1, v24 - 1);
    v26 = (unsigned __int8)v59;
    v27 = (unsigned __int8)v52[v21++];
    ++v19;
    if ( v21 < (unsigned __int8)v59 )
      goto LABEL_39;
LABEL_42:
    if ( v19 > 1 )
      v26 = (unsigned __int8)v51[v19 - 1];
    v28 = v19 - 2;
    if ( v19 > 1 )
      v29 = a1[v26 + 30];
    else
      v29 = 0;
    if ( v28 > 0 )
    {
      v30 = &v51[v28];
      do
      {
        while ( *v30 != 1 )
        {
          --v30;
          v29 += a1[32] >> 1;
          if ( v30 == v51 )
            goto LABEL_60;
        }
        v31 = (unsigned __int8)(v30--)[1];
        v32 = v31 == 1;
        if ( v31 == 1 )
        {
          v33 = a1[33];
        }
        else
        {
          v33 = a1[32];
          v25 = a1[33];
        }
        if ( v32 )
          v29 += v33 >> 1;
        else
          v33 = (v33 >> 1) + ((v25 - v33) >> 2);
        if ( !v32 )
          v29 += v33;
      }
      while ( v30 != v51 );
    }
LABEL_60:
    set_file_offset(a1, file_offset);
    if ( file_offset == v46 )
    {
      v48 = v46;
      v49 = v38;
LABEL_63:
      v46 = v48;
      HIWORD(v50) = HIWORD(v40);
      v43 = v40;
      v44 = v49;
      if ( v48 <= v37 )
        goto LABEL_71;
LABEL_64:
      v34 = v43 == -1;
      if ( v43 != -1 )
        v34 = v39 == -1;
      if ( !v34 )
      {
        ++v41;
        continue;
      }
LABEL_76:
      a1[29] = 37;
      return 0;
    }
    break;
  }
  if ( a2 < v40 )
  {
    v49 = v38;
    v48 = file_offset;
    goto LABEL_63;
  }
  HIWORD(v50) = HIWORD(v40);
  v39 = v40;
  v37 = v15 + 27 + file_offset + v16;
  if ( v46 > v37 )
    goto LABEL_64;
LABEL_71:
  if ( a2 < v39 || a2 >= v43 )
    goto LABEL_76;
  vorbis_seek_frame_from_page(a1, v46, v39, a2, a3);
  return 0;
}


// ===== 87f1b0 stb_vorbis_seek(stb_vorbis *,uint) =====
int __fastcall stb_vorbis_seek(int *a1, unsigned int a2)
{
  return vorbis_seek_base(a1, a2, 1);
}


// ===== 87f1b8 stb_vorbis_seek_frame(stb_vorbis *,uint) =====
int __fastcall stb_vorbis_seek_frame(int *a1, unsigned int a2)
{
  return vorbis_seek_base(a1, a2, 0);
}


// ===== 87f1c0 mpc_bits_read =====
int __fastcall mpc_bits_read(_DWORD *a1, unsigned int a2)
{
  int v2; // r3
  int v3; // r12
  int v4; // r3
  unsigned __int8 *v5; // r2
  int v6; // r0

  v2 = a1[1] - a2;
  v3 = -(v2 >> 3);
  v4 = v2 & 7;
  v5 = (unsigned __int8 *)(*a1 + v3);
  *a1 = v5;
  a1[1] = v4;
  v6 = (*v5 | (*(v5 - 1) << 8)) >> v4;
  if ( a2 > 16 - v4 )
  {
    v6 |= (unsigned int)((*(v5 - 2) << 16) | (*(v5 - 3) << 24)) >> v4;
    if ( a2 > 0x18 )
    {
      if ( v4 )
        v6 |= *(v5 - 4) << (32 - v4);
    }
  }
  return v6 & ~(-1 << a2);
}


// ===== 87f23c mpc_demux_pos =====
int __fastcall mpc_demux_pos(_DWORD *a1)
{
  int v1; // r6

  v1 = a1[16477];
  return 8 - a1[16478] + 8 * (v1 + (*(int (__fastcall **)(_DWORD))(*a1 + 8))(*a1) - a1[16476] - (_DWORD)(a1 + 92));
}


// ===== 87f28c mpc_set_replay_level =====
float __fastcall mpc_set_replay_level(int a1, float a2, int a3, int a4, unsigned __int8 a5)
{
  float v8; // r10
  float result; // r0
  float v10; // r7
  float v11; // r10
  float v12; // r7
  bool v13; // r6
  float v14; // r0
  float v15; // r0

  if ( a4 )
  {
    v8 = (float)*(unsigned __int16 *)(a1 + 54);
    result = (float)*(unsigned __int16 *)(a1 + 48);
    v10 = (float)*(unsigned __int16 *)(a1 + 48);
    if ( a5 | a3 )
      goto LABEL_3;
  }
  else
  {
    v8 = (float)*(unsigned __int16 *)(a1 + 52);
    result = (float)*(unsigned __int16 *)(a1 + 50);
    v10 = (float)*(unsigned __int16 *)(a1 + 50);
    if ( a5 | a3 )
    {
LABEL_3:
      if ( v8 == 0.0 )
      {
        v11 = 1.0;
        if ( v10 == 0.0 )
        {
          v12 = 1.0;
          goto LABEL_9;
        }
      }
      else
      {
        v15 = 32768.0 / pow(10.0, (float)(v8 / 5120.0));
        v11 = v15;
        if ( v10 == 0.0 )
        {
          v12 = 1.0;
LABEL_9:
          if ( a5 )
          {
LABEL_10:
            if ( a3 )
              v13 = v11 < v12;
            else
              v13 = 1;
            if ( v13 )
              v12 = v11;
          }
          return COERCE_FLOAT(
                   mpc_decoder_scale_output(
                     *(_DWORD *)(a1 + 4),
                     HIDWORD(COERCE_UNSIGNED_INT64(v12)),
                     COERCE_UNSIGNED_INT64(v12),
                     HIDWORD(COERCE_UNSIGNED_INT64(v12))));
        }
      }
      v14 = pow(10.0, (float)((float)((float)(v10 * -0.0039062) + a2) / 20.0));
      v12 = v14;
      if ( a5 )
        goto LABEL_10;
      return COERCE_FLOAT(
               mpc_decoder_scale_output(
                 *(_DWORD *)(a1 + 4),
                 HIDWORD(COERCE_UNSIGNED_INT64(v12)),
                 COERCE_UNSIGNED_INT64(v12),
                 HIDWORD(COERCE_UNSIGNED_INT64(v12))));
    }
  }
  return result;
}


// ===== 87f42c mpc_demux_fill =====
unsigned int __fastcall mpc_demux_fill(_DWORD *a1, unsigned int a2, char a3)
{
  size_t v3; // r10
  unsigned int v5; // r0
  _BYTE *v6; // r3
  int v7; // r12
  size_t v8; // r5
  int v9; // r8
  unsigned int v10; // r6
  unsigned int v11; // r10
  _DWORD *v12; // r7
  unsigned int result; // r0
  int v14; // r2
  char *v15; // r7
  int v16; // r2
  int v17; // r1

  v5 = a1[16476];
  v6 = (_BYTE *)a1[16477];
  v7 = a1[16478];
  v8 = (char *)a1 + v5 + 368 - v6 - ((unsigned int)(8 - v7) >> 3);
  if ( a2 - 1 > 0xEEFF )
  {
    if ( v8 <= 0xEEFF )
    {
LABEL_4:
      a2 = 61184;
LABEL_5:
      v9 = a3 & 1;
      if ( (a3 & 1) != 0 )
        v3 = v8 + 3;
      v10 = a2 - v8;
      if ( (a3 & 1) != 0 )
      {
        v11 = v3 & 0xFFFFFFFC;
        v10 &= 0xFFFFFFFC;
      }
      else
      {
        v11 = a3 & 1;
      }
      if ( (a3 & 1) != 0 )
        v11 -= v8;
      if ( v10 > 61184 - v5 )
      {
        if ( !v7 )
        {
          a1[16478] = 8;
          v6 = (_BYTE *)(a1[16477] + 1);
          a1[16477] = v6;
        }
        v12 = a1 + 92;
        memmove((char *)a1 + v11 + 368, v6, v8);
        v5 = v11 + v8;
        a1[16477] = (char *)a1 + v11 + 368;
        a1[16476] = v11 + v8;
      }
      else
      {
        v12 = a1 + 92;
      }
      result = (*(int (__fastcall **)(_DWORD, unsigned int, unsigned int))*a1)(*a1, (unsigned int)v12 + v5, v10);
      if ( v9 )
      {
        v14 = a1[16476];
        v15 = (char *)v12 + v14;
        if ( !(result >> 2) )
        {
LABEL_22:
          a1[16476] = v14 + result;
          return result;
        }
        v16 = 0;
        v17 = 0;
        do
        {
          ++v17;
          *(_DWORD *)&v15[v16] = HIBYTE(*(_DWORD *)&v15[v16])
                               | (*(_DWORD *)&v15[v16] << 24)
                               | ((*(_DWORD *)&v15[v16] & 0xFF0000u) >> 8)
                               | ((*(_DWORD *)&v15[v16] & 0xFF00) << 8);
          v16 += 4;
        }
        while ( v17 != result >> 2 );
      }
      v14 = a1[16476];
      goto LABEL_22;
    }
  }
  else if ( v8 < a2 )
  {
    if ( (a3 & 2) == 0 )
      goto LABEL_5;
    goto LABEL_4;
  }
  return -1;
}


// ===== 87f5c4 mpc_demux_seek =====
int __fastcall mpc_demux_seek(_DWORD *a1, unsigned int a2, int a3)
{
  int v3; // r3
  unsigned int v5; // r5
  bool v6; // zf
  unsigned int v9; // r1
  int v10; // r5
  char v11; // r2
  int v12; // r1
  unsigned int v13; // r1
  int result; // r0

  v3 = a1[4];
  v5 = a2 >> 3;
  v6 = v3 == 7;
  if ( v3 == 7 )
    v3 = a1[88];
  if ( v6 )
    v5 = ((v5 - v3) & 0xFFFFFFFC) + v3;
  v9 = v5;
  v10 = a2 - 8 * v5;
  (*(void (__fastcall **)(_DWORD, unsigned int))(*a1 + 4))(*a1, v9);
  v11 = 0;
  a1[16476] = 0;
  a1[16477] = a1 + 92;
  a1[16478] = 8;
  a1[16479] = 0;
  a1[16480] = 0;
  v12 = v10 + 7;
  if ( a1[4] == 7 )
  {
    v13 = (a3 + 3 + (v12 >> 3)) & 0xFFFFFFFC;
    v11 = 1;
  }
  else
  {
    v13 = a3 + (v12 >> 3);
  }
  mpc_demux_fill(a1, v13, v11);
  result = a1[16477];
  a1[16477] = result + (v10 >> 3);
  a1[16478] = 8 - (v10 & 7);
  return result;
}


// ===== 87f6ac mpc_demux_seek_sample =====
int __fastcall mpc_demux_seek_sample(int a1, __int64 a2)
{
  unsigned int v3; // r12
  int v5; // r8
  unsigned __int64 v6; // r0
  unsigned int v7; // r6
  int v8; // r10
  unsigned int v9; // r7
  unsigned int v10; // r5
  int v11; // r7
  unsigned int v12; // r2
  unsigned int v13; // r3
  int v14; // r1
  unsigned int v15; // r7
  unsigned int v16; // r6
  int i; // r8
  int v18; // r3
  __int64 v19; // r0
  int v21; // r1
  int v22; // r2
  __int64 v23; // r0
  int v24; // r2
  int v25; // [sp+Ch] [bp-38h]
  int v26; // [sp+14h] [bp-30h]
  int v27; // [sp+18h] [bp-2Ch]
  int v28; // [sp+18h] [bp-2Ch]
  unsigned __int64 v29; // [sp+20h] [bp-24h]
  int v30; // [sp+2Ch] [bp-18h]
  _BYTE v31[8]; // [sp+30h] [bp-14h] BYREF
  int v32; // [sp+38h] [bp-Ch]

  v3 = *(_DWORD *)(a1 + 68);
  v5 = *(_DWORD *)(a1 + 44);
  v6 = *(_QWORD *)(a1 + 72) + a2;
  v7 = HIDWORD(v6);
  v8 = 1152 << v5;
  v9 = v6;
  if ( v6 > __PAIR64__(v3, *(_DWORD *)(a1 + 64)) )
  {
    v9 = *(_DWORD *)(a1 + 64);
    v7 = v3;
  }
  v29 = (unsigned int)(1152 << v5);
  v10 = __PAIR64__(v7, v9) / (unsigned int)v8;
  v30 = __PAIR64__(v7, v9) % v29 + 481;
  if ( *(_DWORD *)(a1 + 16) == 7 )
  {
    if ( v10 <= 0x20 )
    {
      v24 = v30 + 1152 * v10;
      v10 = 0;
      v30 = v24;
      v11 = *(_DWORD *)(a1 + 65928) - v5;
      v12 = 0;
    }
    else
    {
      v10 -= 32;
      v11 = *(_DWORD *)(a1 + 65928) - v5;
      v30 += 36864;
      v12 = v10 >> v11;
    }
  }
  else
  {
    v11 = *(_DWORD *)(a1 + 65928) - v5;
    v12 = v10 >> v11;
  }
  v13 = *(_DWORD *)(a1 + 65932);
  v14 = *(_DWORD *)(a1 + 4);
  if ( v13 <= v12 )
    v12 = v13 - 1;
  v15 = v12 << v11;
  v16 = *(_DWORD *)(*(_DWORD *)(a1 + 65924) + 4 * v12);
  *(_DWORD *)(v14 + 28) = 0;
  *(_DWORD *)(v14 + 24) = v8 * v15;
  if ( *(_DWORD *)(a1 + 16) <= 7u )
  {
    v21 = v10;
    if ( v10 )
      v21 = 1;
    mpc_decoder_reset_scf(*(_DWORD *)(a1 + 4), v21);
    mpc_demux_seek((_DWORD *)a1, v16, 4);
    while ( v10 > v15 )
    {
      v22 = *(_DWORD *)(a1 + 4);
      ++v15;
      v23 = *(_QWORD *)(v22 + 24);
      if ( v23 == 1152 * (*(_DWORD *)(a1 + 65932) << *(_DWORD *)(a1 + 65928)) )
      {
        v26 = *(_DWORD *)(a1 + 65932);
        v28 = *(_DWORD *)(a1 + 65924);
        *(_DWORD *)(v28 + 4 * v26) = mpc_demux_pos((_DWORD *)a1);
        ++*(_DWORD *)(a1 + 65932);
        v22 = *(_DWORD *)(a1 + 4);
        v23 = *(_QWORD *)(v22 + 24);
      }
      *(_QWORD *)(v22 + 24) = v29 + v23;
      v16 += mpc_bits_read((_DWORD *)(a1 + 65908), 0x14u) + 20;
      mpc_demux_seek((_DWORD *)a1, v16, 4);
    }
  }
  else
  {
    mpc_demux_seek((_DWORD *)a1, v16, 11);
    for ( i = mpc_bits_get_block(a1 + 65908, v31); v10 > v15; i = mpc_bits_get_block(a1 + 65908, v31) )
    {
      if ( !memcmp(v31, "AP", 2u) )
      {
        v18 = *(_DWORD *)(a1 + 65932);
        v25 = *(_DWORD *)(a1 + 4);
        v19 = *(_QWORD *)(v25 + 24);
        ++v15;
        if ( v19 == 1152 * (v18 << *(_DWORD *)(a1 + 65928)) )
        {
          v27 = *(_DWORD *)(a1 + 65924);
          *(_DWORD *)(v27 + 4 * v18) = mpc_demux_pos((_DWORD *)a1) - 8 * i;
          ++*(_DWORD *)(a1 + 65932);
          v25 = *(_DWORD *)(a1 + 4);
          v19 = *(_QWORD *)(v25 + 24);
        }
        *(_QWORD *)(v25 + 24) = v29 + v19;
      }
      v16 += 8 * (i + v32);
      mpc_demux_seek((_DWORD *)a1, v16, 11);
    }
    *(_DWORD *)(a1 + 65908) -= i;
  }
  *(_DWORD *)(*(_DWORD *)(a1 + 4) + 32) = v30;
  return 0;
}


// ===== 87fa74 mpc_demux_seek_second =====
int __fastcall mpc_demux_seek_second(int a1, double a2)
{
  return mpc_demux_seek_sample(a1, (__int64)((double)*(unsigned int *)(a1 + 8) * a2 + 0.5));
}


// ===== 87fac0 mpc_demux_decode =====
int __fastcall mpc_demux_decode(_DWORD *a1, int a2)
{
  _DWORD *v4; // r7
  int v5; // r6
  _DWORD *v6; // r1
  int v7; // r7
  int v8; // r6
  int v9; // r2
  int v10; // r2
  int v11; // r1
  int v12; // r6
  int v13; // r3
  int v14; // r0
  int v15; // r10
  int v16; // r7
  int v18; // r6
  int v19; // r1
  int v20; // r2
  int v21; // r7
  int v22; // r7
  char v23; // [sp+0h] [bp-14h] BYREF
  char v24; // [sp+1h] [bp-13h]
  int v25; // [sp+8h] [bp-Ch]
  int v26; // [sp+Ch] [bp-8h]

  if ( a1[4] <= 7u )
  {
    v12 = a1[16483];
    v13 = a1[1];
    if ( *(_DWORD *)(v13 + 24) == 1152 * (v12 << a1[16482]) && !*(_DWORD *)(v13 + 28) )
    {
      v21 = a1[16481];
      *(_DWORD *)(v21 + 4 * v12) = mpc_demux_pos(a1);
      ++a1[16483];
    }
    mpc_demux_fill(a1, 0x1100u, 3);
    v14 = mpc_bits_read(a1 + 16477, 0x14u);
    a1[16479] = v14;
    if ( (unsigned __int64)(*(_QWORD *)(a1[1] + 16) - 1LL - *(_QWORD *)(a1[1] + 24)) < 0x480 )
      a1[16479] = v14 + 11;
    v15 = a1[16478];
    v16 = a1[16477];
    ((void (*)(void))mpc_decoder_decode_frame)();
    if ( *(_DWORD *)(a2 + 4) == -1 )
      return 0;
    v10 = a1[16477];
    v11 = a1[16478];
    if ( a1[16479] != v15 - v11 + 8 * (v10 - v16) )
      goto LABEL_21;
    goto LABEL_15;
  }
  *(_BYTE *)(a2 + 12) = 0;
  if ( a1[16480] )
  {
    v4 = a1 + 16477;
LABEL_5:
    v5 = a1[16477];
    if ( (int)a1 + a1[16476] - v5 + 368 <= 4352 )
    {
      mpc_demux_fill(a1, ((int)a1[16479] >> 3) + 1, 0);
      v5 = a1[16477];
    }
    v6 = v4;
    v7 = a1[16478];
    mpc_decoder_decode_frame(a1[1], v6, a2);
    v8 = a1[16479] - v7 + a1[16478] - 8 * (a1[16477] - v5);
    a1[16479] = v8;
    v9 = a1[16480] - 1;
    a1[16480] = v9;
    if ( v8 < 0 || !v9 && v8 > 7 )
      goto LABEL_21;
    if ( *(_DWORD *)(a2 + 4) == -1 )
      return 0;
    v10 = a1[16477];
    v11 = a1[16478];
LABEL_15:
    if ( (unsigned int)a1 + a1[16476] + 368 >= v10 + ((unsigned int)(8 - v11) >> 3) )
      return 0;
LABEL_21:
    *(_DWORD *)(a2 + 4) = -1;
    return -6;
  }
  a1[16478] &= 0xFFFFFFF8;
  v18 = a1[16483];
  v19 = v18 << a1[16482];
  v25 = 0;
  v26 = 0;
  v20 = a1[1];
  v24 = 0;
  v23 = 0;
  if ( *(_DWORD *)(v20 + 24) == 1152 * v19 && !*(_DWORD *)(v20 + 28) )
  {
    v22 = a1[16481];
    *(_DWORD *)(v22 + 4 * v18) = mpc_demux_pos(a1);
    ++a1[16483];
  }
  v4 = a1 + 16477;
  mpc_demux_fill(a1, 0xBu, 0);
  mpc_bits_get_block(a1 + 16477, &v23);
  while ( 1 )
  {
    if ( !memcmp(&v23, "AP", 2u) )
    {
      a1[16479] = 8 * v25;
      a1[16480] = 1 << a1[11];
      *(_BYTE *)(a2 + 12) = 1;
      goto LABEL_5;
    }
    if ( (unsigned __int8)(v23 - 65) > 0x19u || v24 <= 64 || v24 > 90 )
      goto LABEL_21;
    if ( !memcmp(&v23, "SE", 2u) )
      break;
    if ( !mpc_demux_fill(a1, v25 + 11, 0) )
      goto LABEL_21;
    a1[16477] += v25;
    mpc_bits_get_block(a1 + 16477, &v23);
  }
  *(_DWORD *)(a2 + 4) = -1;
  return 0;
}


// ===== 87ff10 mpc_demux_get_info =====
void *__fastcall mpc_demux_get_info(int a1, void *a2)
{
  return memcpy(a2, (const void *)(a1 + 8), 0x168u);
}


// ===== 87ff24 mpc_demux_exit =====
void __fastcall mpc_demux_exit(void **a1)
{
  mpc_decoder_exit(a1[1]);
  VoxFree_c(a1[16481]);
  VoxFree_c(a1[16486]);
  VoxFree_c(a1);
}


// ===== 87ff5c mpc_demux_chap_find =====
int __fastcall mpc_demux_chap_find(int result)
{
  _DWORD *v1; // r4
  unsigned int v2; // r3
  unsigned int v3; // r10
  _DWORD *v4; // r5
  int block; // r7
  int v6; // r7
  int v7; // r11
  int v8; // r8
  int i; // r0
  int v10; // r0
  int v11; // r0
  char *v12; // r9
  int v13; // r7
  int j; // r0
  int v15; // r6
  int v16; // r11
  int v17; // r11
  int v18; // r3
  bool v19; // zf
  char v20; // r2
  int v21; // [sp+0h] [bp-2Ch]
  char v22; // [sp+10h] [bp-1Ch] BYREF
  char v23; // [sp+11h] [bp-1Bh]
  __int64 v24; // [sp+18h] [bp-14h]
  _BYTE v25[12]; // [sp+20h] [bp-Ch] BYREF

  *(_DWORD *)(result + 65940) = 0;
  v1 = (_DWORD *)result;
  if ( *(_DWORD *)(result + 16) > 7u )
  {
    v2 = *(_DWORD *)(result + 65936);
    if ( v2 )
    {
      v4 = (_DWORD *)(result + 65908);
    }
    else
    {
      v3 = 8 * (*(_DWORD *)(result + 352) + 4);
      v4 = (_DWORD *)(result + 65908);
      v21 = *(_DWORD *)(result + 65936);
      mpc_demux_seek((_DWORD *)result, v3, 11);
      block = mpc_bits_get_block(v1 + 16477, &v22);
      for ( result = memcmp(&v22, "SE", 2u); result; result = memcmp(&v22, "SE", 2u) )
      {
        if ( (unsigned __int8)(v22 - 65) > 0x19u || v23 <= 64 || v23 > 90 )
          return result;
        if ( !memcmp(&v22, "CT", 2u) )
        {
          if ( !v1[16484] )
            v1[16484] = v3;
        }
        else
        {
          v1[16484] = 0;
        }
        v3 += 8 * (v24 + block);
        mpc_demux_seek(v1, v3, 11);
        block = mpc_bits_get_block(v1 + 16477, &v22);
      }
      v2 = v1[16484];
      if ( !v2 )
      {
        v1[16484] = v3;
        v2 = v3;
      }
    }
    mpc_demux_seek(v1, v2, 20);
    v6 = 0;
    v7 = mpc_bits_get_block(v4, &v22);
    v8 = 0;
    for ( i = memcmp(&v22, "CT", 2u); !i; i = memcmp(&v22, "CT", 2u) )
    {
      ++v1[16485];
      v10 = mpc_bits_get_size(v4, v25) + 4;
      v6 += v7 + v10;
      v8 += v24 - v10;
      mpc_demux_seek(v1, v1[16484] + 8 * (v8 + v6), 20);
      v7 = mpc_bits_get_block(v4, &v22);
    }
    result = v1[16485];
    if ( result > 0 )
    {
      v11 = VoxAlloc_c(
              v8 + 24 * result,
              "..\\..\\lib\\VOX\\project\\vs2005/..\\..\\src\\mpc\\mpc_demux.c",
              "mpc_demux_chap_find",
              369,
              v21);
      v1[16486] = v11;
      v12 = (char *)(v11 + 24 * v1[16485]);
      mpc_demux_seek(v1, v1[16484], 11);
      v7 = mpc_bits_get_block(v4, &v22);
      v13 = 0;
      for ( j = memcmp(&v22, "CT", 2u); ; j = memcmp(&v22, "CT", 2u) )
      {
        v20 = j;
        v19 = j == 0;
        result = (int)v1;
        if ( !v19 )
          break;
        mpc_demux_fill(v1, v24 + 11, v20);
        v15 = mpc_bits_get_size(v4, v1[16486] + v13) + 4;
        v16 = v1[16486];
        *(_WORD *)(v16 + v13 + 8) = mpc_bits_read(v4, 0x10u);
        v17 = v1[16486];
        *(_WORD *)(v17 + v13 + 10) = mpc_bits_read(v4, 0x10u);
        memcpy(v12, (const void *)(v1[16477] + ((unsigned int)(8 - v1[16478]) >> 3)), v24 - v15);
        v18 = v24 - v15;
        v1[16477] += v24 - v15;
        *(_DWORD *)(v1[16486] + v13 + 12) = v18;
        *(_DWORD *)(v1[16486] + v13 + 16) = v12;
        v13 += 24;
        v12 += v24 - v15;
        v7 = mpc_bits_get_block(v4, &v22);
      }
    }
    v1[16477] -= v7;
  }
  return result;
}


// ===== 88033c mpc_demux_chap =====
int __fastcall mpc_demux_chap(int a1, unsigned int a2)
{
  int v2; // r3
  bool v4; // zf
  int v5; // r3
  int result; // r0
  unsigned int v7; // [sp+4h] [bp-8h]

  v2 = *(_DWORD *)(a1 + 65940);
  if ( v2 == -1 )
  {
    v7 = a2;
    mpc_demux_chap_find(a1);
    v2 = *(_DWORD *)(a1 + 65940);
    a2 = v7;
  }
  v5 = ((int)a2 >= v2) | (a2 >> 31);
  v4 = v5 == 0;
  if ( v5 )
  {
    result = 0;
  }
  else
  {
    v5 = *(_DWORD *)(a1 + 65944);
    result = 24;
  }
  if ( v4 )
    return v5 + result * a2;
  return result;
}


// ===== 8803a0 mpc_demux_chap_nb =====
int __fastcall mpc_demux_chap_nb(int a1)
{
  if ( *(_DWORD *)(a1 + 65940) != -1 )
    return *(_DWORD *)(a1 + 65940);
  mpc_demux_chap_find(a1);
  return *(_DWORD *)(a1 + 65940);
}


// ===== 8803d4 mpc_demux_ST =====
unsigned int __fastcall mpc_demux_ST(unsigned int result)
{
  int v1; // r1
  int v2; // r3
  unsigned int v3; // r4
  int v4; // r5
  unsigned int v5; // r10
  int v6; // r0
  unsigned __int64 v7; // r2
  int v8; // r5
  int v9; // r3
  int v10; // r12
  char v11; // r6
  int v12; // r7
  int v13; // r0
  _DWORD *v14; // r9
  int v15; // r7
  bool v16; // zf
  int v17; // r5
  int v18; // r11
  unsigned int i; // r4
  unsigned int v20; // r2
  unsigned int v21; // r3
  int v22; // [sp+0h] [bp-24h]
  _DWORD v23[2]; // [sp+8h] [bp-1Ch] BYREF
  _DWORD v24[2]; // [sp+10h] [bp-14h]
  unsigned __int64 v25; // [sp+18h] [bp-Ch] BYREF

  v1 = *(_DWORD *)(result + 65924);
  v2 = *(_DWORD *)(result + 65912);
  v3 = result;
  v23[0] = *(_DWORD *)(result + 65908);
  v23[1] = v2;
  if ( !v1 )
  {
    mpc_bits_get_size(v23, &v25);
    v4 = *(_DWORD *)(v3 + 44);
    v5 = v25;
    v6 = mpc_bits_read(v23, 4u) + v4;
    *(_DWORD *)(v3 + 65928) = v6;
    v7 = *(_QWORD *)(v3 + 64) / (unsigned __int64)(1152 << v6) + 2;
    v25 = v7;
    if ( v7 <= 0x10000 )
    {
      v12 = HIDWORD(v7);
      v10 = 1;
      v11 = BYTE4(v7);
      v8 = HIDWORD(v7);
    }
    else
    {
      v8 = 0;
      do
      {
        ++v8;
        v9 = *(_DWORD *)(v3 + 65928) + 1;
        *(_DWORD *)(v3 + 65928) = v9;
        v7 = *(_QWORD *)(v3 + 64) / (unsigned __int64)(1152 << v9) + 2;
        v25 = v7;
      }
      while ( v7 > 0x10000 );
      v10 = 1 << v8;
      v11 = v8;
      v12 = (1 << v8) - 1;
    }
    if ( v5 >> v11 > v7 )
      v5 = (_DWORD)v7 << v11;
    v13 = VoxAlloc_c(
            4 * v7,
            "..\\..\\lib\\VOX\\project\\vs2005/..\\..\\src\\mpc\\mpc_demux.c",
            "mpc_demux_ST",
            279,
            v10);
    *(_DWORD *)(v3 + 65924) = v13;
    *(_DWORD *)(v3 + 65932) = (v5 + v12) >> v11;
    v14 = (_DWORD *)v13;
    result = mpc_bits_get_size(v23, &v25);
    v15 = 8 * (v25 + *(_DWORD *)(v3 + 352));
    *v14 = v15;
    if ( *(_DWORD *)(v3 + 65932) != 1 )
    {
      result = mpc_bits_get_size(v23, &v25);
      v16 = v8 == 0;
      v17 = 8 * (v25 + *(_DWORD *)(v3 + 352));
      if ( v16 )
        v14[1] = v17;
      v18 = v22 - 1;
      if ( v5 > 2 )
      {
        v24[0] = v15;
        v24[1] = v17;
        for ( i = 2; ; ++i )
        {
          result = mpc_bits_golomb_dec(v23, 12);
          if ( (result & 1) != 0 )
            result = -(result & 0xFFFFFFFE);
          if ( (i & v18) == 0 )
            v20 = i >> v11;
          v21 = i + 1;
          v17 = 2 * v17 - v15 + 4 * result;
          if ( (i & v18) == 0 )
            v14[v20] = v17;
          if ( v21 == v5 )
            break;
          v24[i & 1] = v17;
          v15 = v24[v21 & 1];
        }
      }
    }
  }
  return result;
}


// ===== 88063c mpc_demux_init =====
_DWORD *__fastcall mpc_demux_init(int a1)
{
  _DWORD *v2; // r0
  _DWORD *v3; // r4
  _DWORD *v4; // r6
  int v5; // r0
  char v6; // r7
  int v7; // r7
  _DWORD *v8; // r5
  int block; // r8
  void *v11; // r0
  unsigned int v12; // r8
  char v13; // r0
  char v14; // r7
  unsigned __int64 v15; // r2
  unsigned int v16; // r6
  bool v17; // cc
  unsigned int v18; // r0
  int *v19; // r6
  int v20; // r10
  int v21; // r9
  int v22; // r5
  unsigned __int8 v23; // r0
  unsigned int v24; // r5
  int v25; // [sp+10h] [bp-4Ch]
  int v26; // [sp+1Ch] [bp-40h]
  int v27; // [sp+20h] [bp-3Ch]
  _BYTE v28[8]; // [sp+28h] [bp-34h] BYREF
  unsigned int v29; // [sp+30h] [bp-2Ch]
  char v30; // [sp+38h] [bp-24h] BYREF
  char v31; // [sp+39h] [bp-23h]
  unsigned __int64 v32; // [sp+40h] [bp-1Ch]
  _DWORD v33[3]; // [sp+48h] [bp-14h] BYREF
  _BYTE v34[3]; // [sp+54h] [bp-8h] BYREF
  char v35; // [sp+57h] [bp-5h]

  v2 = (_DWORD *)VoxAlloc_c(
                   65952,
                   "..\\..\\lib\\VOX\\project\\vs2005/..\\..\\src\\mpc\\mpc_demux.c",
                   "mpc_demux_init",
                   486);
  v3 = v2;
  if ( v2 )
  {
    LC_API_MEMSET_0(v2, 0, 0x101A0u);
    *v3 = a1;
    v3[16485] = -1;
    v3[16476] = 0;
    v3[16477] = v3 + 92;
    v3[16478] = 8;
    v3[16479] = 0;
    v3[16480] = 0;
    v3[87] = "n.a.";
    *((_BYTE *)v3 + 340) = -1;
    mpc_demux_fill(v3, 3u, 0);
    if ( !memcmp((const void *)v3[16477], "ID3", 3u) )
    {
      v4 = v3 + 16477;
      mpc_demux_fill(v3, 0xAu, 0);
      mpc_bits_read(v3 + 16477, 0x18u);
      mpc_bits_read(v3 + 16477, 0x10u);
      v13 = mpc_bits_read(v3 + 16477, 8u);
      v14 = v13;
      if ( (v13 & 0xF) != 0
        || (v20 = (unsigned __int8)mpc_bits_read(v3 + 16477, 8u),
            v21 = (unsigned __int8)mpc_bits_read(v3 + 16477, 8u),
            v22 = (unsigned __int8)mpc_bits_read(v3 + 16477, 8u),
            v23 = mpc_bits_read(v3 + 16477, 8u),
            ((v23 | (unsigned __int8)(v22 | v21 | v20)) & 0x80) != 0) )
      {
        v3[88] = -1;
        goto LABEL_15;
      }
      v24 = (v21 << 14) | (v20 << 21) | v23 | (v22 << 7);
      if ( (v14 & 0x10) != 0 )
        v24 += 10;
      mpc_demux_fill(v3, v24, 0);
      v3[16477] += v24;
      v3[88] = v24 + 10;
      if ( (int)(v24 + 10) < 0 )
        goto LABEL_15;
    }
    else
    {
      v3[88] = 0;
      v4 = v3 + 16477;
    }
    v5 = (*(int (__fastcall **)(_DWORD))(*v3 + 12))(*v3);
    v3[89] = v5;
    v3[90] = v5;
    mpc_demux_fill(v3, 4u, 0);
    v34[0] = mpc_bits_read(v4, 8u);
    v34[1] = mpc_bits_read(v4, 8u);
    v34[2] = mpc_bits_read(v4, 8u);
    v6 = mpc_bits_read(v4, 8u);
    v35 = v6;
    if ( !memcmp(v34, "MP+", 3u) )
    {
      v7 = v6 & 0xF;
      v3[4] = v7;
      *((_BYTE *)v3 + 340) = v35 >> 4;
      if ( v7 == 7 )
      {
        v8 = v3 + 2;
        mpc_demux_fill(v3, 0x18u, 1);
        if ( !streaminfo_read_header_sv7(v3 + 2, v4) )
        {
LABEL_8:
          if ( v3[16481] )
          {
LABEL_9:
            v3[1] = mpc_decoder_init(v8);
            return v3;
          }
          HIDWORD(v15) = 65928;
          v3[16482] = 6;
          v16 = v3[11];
          v17 = v16 > 6;
          if ( v16 <= 6 )
          {
            v16 = 6;
            v15 = 73728;
          }
          else
          {
            LODWORD(v15) = 1152 << v16;
            v3[16482] = v16;
          }
          if ( v17 )
            v15 = (int)v15;
          v18 = *((_QWORD *)v3 + 8) / v15 + 2;
          if ( v18 > 0x10000 )
          {
            do
              v18 = *((_QWORD *)v3 + 8) / (unsigned __int64)(1152 << ++v16) + 2;
            while ( v18 > 0x10000 );
            v3[16482] = v16;
          }
          v19 = (int *)VoxAlloc_c(
                         4 * v18,
                         "..\\..\\lib\\VOX\\project\\vs2005/..\\..\\src\\mpc\\mpc_demux.c",
                         "mpc_demux_seek_init",
                         247);
          v3[16481] = v19;
          if ( v19 )
          {
            *v19 = mpc_demux_pos(v3);
            v3[16483] = 1;
            goto LABEL_9;
          }
LABEL_17:
          VoxFree_c(v3);
          return nullptr;
        }
      }
    }
    else if ( !memcmp(v34, "MPCK", 4u) )
    {
      mpc_demux_fill(v3, 0xBu, 0);
      block = mpc_bits_get_block(v4, &v30);
      v8 = v3 + 2;
      while ( memcmp(&v30, "AP", 2u) )
      {
        if ( (unsigned __int8)(v30 - 65) > 0x19u || v31 <= 64 || v31 > 90 || v32 > 0xEEF5 )
          goto LABEL_15;
        mpc_demux_fill(v3, v32 + 11, SBYTE4(v32));
        if ( !memcmp(&v30, "SH", 2u) )
        {
          if ( streaminfo_read_header_sv8(v3 + 2, v4, v32) )
            goto LABEL_15;
        }
        else if ( !memcmp(&v30, "RG", 2u) )
        {
          streaminfo_gain(v3 + 2, v4);
        }
        else if ( !memcmp(&v30, "EI", 2u) )
        {
          streaminfo_encoder_info(v3 + 2, v4);
        }
        else if ( !memcmp(&v30, "SO", 2u) )
        {
          v25 = block;
          v26 = v32;
          v12 = mpc_demux_pos(v3);
          mpc_bits_get_size(v4, v33);
          mpc_demux_seek(v3, v12 + 8 * (v33[0] - v25), 11);
          v27 = mpc_bits_get_block(v4, v28);
          if ( !memcmp(v28, "ST", 2u) )
          {
            v3[16484] = v12 + 8 * (v29 + v33[0] - v25 + v27);
            v3[16485] = -1;
            mpc_demux_fill(v3, v29, 0);
            mpc_demux_ST((unsigned int)v3);
          }
          mpc_demux_seek(v3, v12, v26 + 11);
        }
        else if ( !memcmp(&v30, "ST", 2u) )
        {
          mpc_demux_ST((unsigned int)v3);
        }
        v3[16477] += v32;
        block = mpc_bits_get_block(v4, &v30);
      }
      v3[16477] -= block;
      if ( v3[4] )
        goto LABEL_8;
    }
LABEL_15:
    v11 = (void *)v3[16481];
    if ( v11 )
      VoxFree_c(v11);
    goto LABEL_17;
  }
  return v3;
}


// ===== 880d40 mpc_decoder_scale_output =====
double __fastcall mpc_decoder_scale_output(int a1, double a2)
{
  float v4; // r0
  double v5; // r6
  float *v6; // r5
  int v7; // r4
  double v8; // r8
  float v9; // r0
  float v10; // r0
  double result; // r0

  v4 = a2 * 0.0000305175781;
  *(float *)(a1 + 41364) = v4;
  v5 = a2 * 0.0000305175781 * 0.832980665;
  v6 = (float *)(a1 + 41368);
  v7 = 0;
  v8 = a2 * 0.0000305175781 * 1.20050806;
  do
  {
    v9 = v5;
    *v6++ = v9;
    v10 = v8;
    *(float *)(a1 + 4 * (v7 + 10340)) = v10;
    v5 = v5 * 0.832980665;
    result = v8 * 1.20050806;
    v7 = (unsigned __int8)(v7 - 1);
    v8 = v8 * 1.20050806;
  }
  while ( v7 != 128 );
  return result;
}


// ===== 880e48 mpc_decoder_init_quant =====
// attributes: thunk
double __fastcall mpc_decoder_init_quant(int a1, double a2)
{
  return mpc_decoder_scale_output(a1, a2);
}


// ===== 880e4c mpc_bits_read_0 =====
int __fastcall mpc_bits_read_0(_DWORD *a1, unsigned int a2)
{
  int v2; // r3
  int v3; // r12
  int v4; // r3
  unsigned __int8 *v5; // r2
  int v6; // r0

  v2 = a1[1] - a2;
  v3 = -(v2 >> 3);
  v4 = v2 & 7;
  v5 = (unsigned __int8 *)(*a1 + v3);
  *a1 = v5;
  a1[1] = v4;
  v6 = (*v5 | (*(v5 - 1) << 8)) >> v4;
  if ( a2 > 16 - v4 )
  {
    v6 |= (unsigned int)((*(v5 - 2) << 16) | (*(v5 - 3) << 24)) >> v4;
    if ( a2 > 0x18 )
    {
      if ( v4 )
        v6 |= *(v5 - 4) << (32 - v4);
    }
  }
  return v6 & ~(-1 << a2);
}


// ===== 880ec8 streaminfo_gain =====
int __fastcall streaminfo_gain(_WORD *a1, _DWORD *a2)
{
  int v2; // r3
  int result; // r0
  _DWORD v5[3]; // [sp+0h] [bp-Ch] BYREF

  v2 = a2[1];
  v5[0] = *a2;
  v5[1] = v2;
  result = mpc_bits_read_0(v5, 8u);
  if ( result == 1 )
  {
    a1[20] = mpc_bits_read_0(v5, 0x10u);
    a1[23] = mpc_bits_read_0(v5, 0x10u);
    a1[21] = mpc_bits_read_0(v5, 0x10u);
    result = mpc_bits_read_0(v5, 0x10u);
    a1[22] = result;
  }
  return result;
}


// ===== 880f40 mpc_streaminfo_get_length =====
double __fastcall mpc_streaminfo_get_length(int a1)
{
  return (double)(unsigned __int64)(*(_QWORD *)(a1 + 56) - *(_QWORD *)(a1 + 64)) / (double)*(unsigned int *)a1;
}


// ===== 880f84 mpc_streaminfo_get_length_samples =====
__int64 __fastcall mpc_streaminfo_get_length_samples(int a1)
{
  return *(_QWORD *)(a1 + 56) - *(_QWORD *)(a1 + 64);
}


// ===== 880fa8 mpc_get_encoder_string =====
int __fastcall mpc_get_encoder_string(int a1)
{
  unsigned int v1; // r3
  int v2; // r1
  int v3; // r5
  bool v4; // zf
  int v5; // r12
  int v6; // lr
  unsigned int v7; // r3
  const char *v8; // r2

  v1 = *(_DWORD *)(a1 + 72);
  if ( *(_DWORD *)(a1 + 8) <= 7u )
    v2 = *(_DWORD *)(a1 + 72);
  else
    v2 = BYTE2(v1) + 100 * HIBYTE(v1);
  if ( v2 > 116 )
  {
    v4 = (v1 & 0x10000) == 0;
    v5 = BYTE1(v1);
    v6 = BYTE2(v1);
    v7 = HIBYTE(v1);
    if ( v4 )
      v8 = "--Stable--";
    else
      v8 = "--Unstable--";
    return sprintf((char *)(a1 + 76), "%s %u.%u.%u", v8, v7, v6, v5);
  }
  else if ( v2 )
  {
    if ( (unsigned int)(v2 % 10) > 8 )
      return sprintf((char *)(a1 + 76), "--Alpha-- %u.%02u", v2 / 100, v2 % 100);
    v3 = 1 << (v2 % 10);
    if ( (v3 & 0x154) == 0 )
    {
      if ( (v3 & 1) != 0 )
        return sprintf((char *)(a1 + 76), "Release %u.%u", v2 / 100, v2 / 10 % 10);
      return sprintf((char *)(a1 + 76), "--Alpha-- %u.%02u", v2 / 100, v2 % 100);
    }
    return sprintf((char *)(a1 + 76), "Beta %u.%02u", v2 / 100, v2 % 100);
  }
  else
  {
    strcpy((char *)(a1 + 76), "Buschmann 1.7.0...9, Klemm 0.90...1.05");
    return *(_DWORD *)"..1.05";
  }
}


// ===== 881154 streaminfo_encoder_info =====
int __fastcall streaminfo_encoder_info(int a1, _DWORD *a2)
{
  int v2; // r3
  float v4; // r0
  const char *v5; // r3
  int v6; // r6
  int v7; // r6
  _DWORD v9[2]; // [sp+0h] [bp-8h] BYREF

  v2 = a2[1];
  v9[0] = *a2;
  v9[1] = v2;
  v4 = (double)(unsigned int)mpc_bits_read_0(v9, 7u) * 0.125;
  *(float *)(a1 + 336) = v4;
  if ( v4 >= 16.0 )
    v5 = "n.a.";
  else
    v5 = versionNames[v4];
  *(_DWORD *)(a1 + 340) = v5;
  *(_BYTE *)(a1 + 332) = mpc_bits_read_0(v9, 1u);
  v6 = mpc_bits_read_0(v9, 8u) << 24;
  *(_DWORD *)(a1 + 72) = v6;
  v7 = v6 | (mpc_bits_read_0(v9, 8u) << 16);
  *(_DWORD *)(a1 + 72) = v7;
  *(_DWORD *)(a1 + 72) = v7 | (mpc_bits_read_0(v9, 8u) << 8);
  return mpc_get_encoder_string(a1);
}


// ===== 881230 streaminfo_read_header_sv8 =====
int __fastcall streaminfo_read_header_sv8(int a1, int *a2, int a3)
{
  unsigned int v3; // r3
  int v6; // r7
  int v7; // r6
  int v9; // r6
  int v10; // r0
  __int64 v11; // r6
  __int64 v12; // r8
  int v13; // [sp+0h] [bp-Ch] BYREF
  unsigned int v14; // [sp+4h] [bp-8h]

  v3 = a2[1];
  v13 = *a2;
  v14 = v3;
  v6 = mpc_bits_read_0(&v13, 0x10u);
  v7 = mpc_bits_read_0(&v13, 0x10u);
  if ( crc32mpc(v13 + 1 - (v14 >> 3), a3 - 4) != (v7 | (v6 << 16)) )
    return -1;
  v9 = mpc_bits_read_0(&v13, 8u);
  *(_DWORD *)(a1 + 8) = v9;
  if ( v9 != 8 )
    return -6;
  mpc_bits_get_size(&v13, a1 + 56);
  mpc_bits_get_size(&v13, a1 + 64);
  *(_DWORD *)(a1 + 48) = 1;
  *(_DWORD *)a1 = *(_DWORD *)&na[4 * mpc_bits_read_0(&v13, 3u) + 8];
  *(_DWORD *)(a1 + 24) = mpc_bits_read_0(&v13, 5u) + 1;
  *(_DWORD *)(a1 + 4) = mpc_bits_read_0(&v13, 4u) + 1;
  *(_DWORD *)(a1 + 28) = mpc_bits_read_0(&v13, 1u);
  v10 = mpc_bits_read_0(&v13, 3u);
  v11 = *(_QWORD *)(a1 + 56);
  v12 = *(_QWORD *)(a1 + 64);
  *(_DWORD *)(a1 + 36) = 2 * v10;
  *(_DWORD *)(a1 + 12) = 0;
  if ( v11 != v12 )
    *(double *)(a1 + 16) = (double)(*(_DWORD *)(a1 + 348) - *(_DWORD *)(a1 + 344))
                         * 8.0
                         * (double)*(unsigned int *)a1
                         / (double)(unsigned __int64)(v11 - v12);
  if ( (unsigned int)(*(_DWORD *)(a1 + 24) - 1) <= 0x1E && *(_DWORD *)(a1 + 4) <= 2u )
    return 0;
  else
    return -1;
}


// ===== 881418 streaminfo_read_header_sv7 =====
int __fastcall streaminfo_read_header_sv7(int a1, _DWORD *a2)
{
  int v4; // r7
  int v5; // r7
  float v6; // r0
  const char *v7; // r3
  __int16 v8; // r6
  int v9; // r5
  int v10; // r0
  int v11; // r3
  unsigned int v12; // r0
  unsigned int v13; // r0
  int v14; // r1
  __int64 v15; // r2
  unsigned __int64 v16; // r6
  int v17; // r3

  *(_DWORD *)(a1 + 12) = 0;
  v4 = mpc_bits_read_0(a2, 0x10u);
  v5 = mpc_bits_read_0(a2, 0x10u) | (v4 << 16);
  mpc_bits_read_0(a2, 1u);
  *(_DWORD *)(a1 + 28) = mpc_bits_read_0(a2, 1u);
  *(_DWORD *)(a1 + 24) = mpc_bits_read_0(a2, 6u);
  v6 = (float)(unsigned int)mpc_bits_read_0(a2, 4u);
  *(float *)(a1 + 336) = v6;
  if ( v6 < 16.0 )
    v7 = versionNames[v6];
  else
    v7 = "n.a.";
  *(_DWORD *)(a1 + 340) = v7;
  mpc_bits_read_0(a2, 2u);
  v8 = 0;
  *(_DWORD *)a1 = *(_DWORD *)&na[4 * mpc_bits_read_0(a2, 2u) + 8];
  mpc_bits_read_0(a2, 0x10u);
  *(_WORD *)(a1 + 40) = mpc_bits_read_0(a2, 0x10u);
  *(_WORD *)(a1 + 46) = mpc_bits_read_0(a2, 0x10u);
  *(_WORD *)(a1 + 42) = mpc_bits_read_0(a2, 0x10u);
  *(_WORD *)(a1 + 44) = mpc_bits_read_0(a2, 0x10u);
  *(_DWORD *)(a1 + 48) = mpc_bits_read_0(a2, 1u);
  v9 = mpc_bits_read_0(a2, 0xBu);
  *(_DWORD *)(a1 + 32) = mpc_bits_read_0(a2, 1u);
  mpc_bits_read_0(a2, 0x13u);
  v10 = mpc_bits_read_0(a2, 8u);
  v11 = *(unsigned __int16 *)(a1 + 40);
  *(_DWORD *)(a1 + 72) = v10;
  *(_DWORD *)(a1 + 4) = 2;
  *(_DWORD *)(a1 + 36) = 0;
  if ( v11 )
  {
    if ( (unsigned int)(int)(((double)(__int16)v11 / -100.0 + 64.82) * 256.0 + 0.5) < 0x10000 )
      v8 = (int)(((double)(__int16)v11 / -100.0 + 64.82) * 256.0 + 0.5);
    *(_WORD *)(a1 + 40) = v8;
  }
  if ( *(_WORD *)(a1 + 42) )
  {
    v12 = (int)(((double)*(__int16 *)(a1 + 42) / -100.0 + 64.82) * 256.0 + 0.5);
    if ( v12 >= 0x10000 )
      LOWORD(v12) = 0;
    *(_WORD *)(a1 + 42) = v12;
  }
  if ( *(_WORD *)(a1 + 46) )
  {
    *(_WORD *)(a1 + 46) = (unsigned int)(log10((double)*(unsigned __int16 *)(a1 + 46)) * 20.0 * 256.0 + 0.5);
    v13 = *(unsigned __int16 *)(a1 + 44);
    if ( !*(_WORD *)(a1 + 44) )
      goto LABEL_13;
  }
  else
  {
    v13 = *(unsigned __int16 *)(a1 + 44);
    if ( !*(_WORD *)(a1 + 44) )
      goto LABEL_13;
  }
  *(_WORD *)(a1 + 44) = (unsigned int)(log10((double)v13) * 20.0 * 256.0 + 0.5);
LABEL_13:
  mpc_get_encoder_string(a1);
  v14 = *(_DWORD *)(a1 + 48);
  v15 = 1152LL * (unsigned int)v5;
  if ( !v9 )
    v9 = 1152;
  *(_QWORD *)(a1 + 56) = v15;
  if ( v14 )
  {
    v16 = v15 - (unsigned int)(1152 - v9);
    *(_QWORD *)(a1 + 56) = v16;
  }
  else
  {
    v16 = v15 - 481;
    *(_QWORD *)(a1 + 56) = v15 - 481;
  }
  v17 = *(_DWORD *)(a1 + 24);
  *(double *)(a1 + 16) = (double)(*(_DWORD *)(a1 + 348) - *(_DWORD *)(a1 + 344))
                       * 8.0
                       * (double)*(unsigned int *)a1
                       / (double)v16;
  if ( (unsigned int)(v17 - 1) > 0x1E || *(_DWORD *)(a1 + 4) > 2u )
    return -1;
  else
    return 0;
}


// ===== 881810 vox::PlaylistElement::PlaylistElement(void) =====
_DWORD *__fastcall vox::PlaylistElement::PlaylistElement(_DWORD *this)
{
  *(this + 4) = 1;
  *this = -1;
  *(this + 3) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  return this;
}


// ===== 881834 vox::PlaylistElement::PlaylistElement(void) =====
_DWORD *__fastcall vox::PlaylistElement::PlaylistElement(_DWORD *this)
{
  *(this + 4) = 1;
  *this = -1;
  *(this + 3) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  return this;
}


// ===== 881858 vox::PlaylistElement::PlaylistElement(vox::PlaylistElement&) =====
_DWORD *__fastcall vox::PlaylistElement::PlaylistElement(_DWORD *this, vox::PlaylistElement *a2)
{
  *this = *(_DWORD *)a2;
  *(this + 1) = *((_DWORD *)a2 + 1);
  *(this + 2) = *((_DWORD *)a2 + 2);
  *(this + 3) = *((_DWORD *)a2 + 3);
  *(this + 4) = *((_DWORD *)a2 + 4);
  return this;
}


// ===== 881884 vox::PlaylistElement::PlaylistElement(vox::PlaylistElement&) =====
_DWORD *__fastcall vox::PlaylistElement::PlaylistElement(_DWORD *this, vox::PlaylistElement *a2)
{
  *this = *(_DWORD *)a2;
  *(this + 1) = *((_DWORD *)a2 + 1);
  *(this + 2) = *((_DWORD *)a2 + 2);
  *(this + 3) = *((_DWORD *)a2 + 3);
  *(this + 4) = *((_DWORD *)a2 + 4);
  return this;
}


// ===== 8818b0 vox::PlaylistElement::Reset(void) =====
_DWORD *__fastcall vox::PlaylistElement::Reset(_DWORD *this)
{
  *(this + 4) = 1;
  *this = -1;
  *(this + 3) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  return this;
}


// ===== 8818d4 vox::SegmentGroup::SegmentGroup(vox::GroupInfos *,int) =====
int __fastcall vox::SegmentGroup::SegmentGroup(int result, _DWORD *a2, int a3)
{
  int v3; // r4
  int v4; // r3

  v3 = 1;
  *(_BYTE *)(result + 4) = 1;
  *(_DWORD *)result = off_993860;
  *(_DWORD *)(result + 8) = a2[2];
  *(_DWORD *)(result + 16) = a2[5];
  if ( !a3 )
    v3 = a2[4];
  v4 = *(_DWORD *)(result + 16);
  *(_DWORD *)(result + 12) = v3;
  *(_DWORD *)(result + 28) = v3;
  *(_DWORD *)(result + 20) = v3;
  *(_DWORD *)(result + 32) = v4;
  *(_DWORD *)(result + 24) = v4;
  return result;
}


// ===== 881938 vox::SegmentGroup::SegmentGroup(vox::GroupInfos *,int) =====
int __fastcall vox::SegmentGroup::SegmentGroup(int result, _DWORD *a2, int a3)
{
  int v3; // r4
  int v4; // r3

  v3 = 1;
  *(_BYTE *)(result + 4) = 1;
  *(_DWORD *)result = off_993860;
  *(_DWORD *)(result + 8) = a2[2];
  *(_DWORD *)(result + 16) = a2[5];
  if ( !a3 )
    v3 = a2[4];
  v4 = *(_DWORD *)(result + 16);
  *(_DWORD *)(result + 12) = v3;
  *(_DWORD *)(result + 28) = v3;
  *(_DWORD *)(result + 20) = v3;
  *(_DWORD *)(result + 32) = v4;
  *(_DWORD *)(result + 24) = v4;
  return result;
}


// ===== 88199c vox::SegmentGroup::SegmentGroup(vox::SegmentGroup&) =====
int __fastcall vox::SegmentGroup::SegmentGroup(int result, _DWORD *a2)
{
  *(_BYTE *)(result + 4) = 1;
  *(_DWORD *)result = off_993860;
  *(_DWORD *)(result + 12) = a2[3];
  *(_DWORD *)(result + 16) = a2[4];
  *(_DWORD *)(result + 20) = a2[5];
  *(_DWORD *)(result + 24) = a2[6];
  *(_DWORD *)(result + 28) = a2[7];
  *(_DWORD *)(result + 32) = a2[8];
  *(_DWORD *)(result + 8) = a2[2];
  return result;
}


// ===== 881a08 vox::SegmentGroup::SegmentGroup(vox::SegmentGroup&) =====
int __fastcall vox::SegmentGroup::SegmentGroup(int result, _DWORD *a2)
{
  *(_BYTE *)(result + 4) = 1;
  *(_DWORD *)result = off_993860;
  *(_DWORD *)(result + 12) = a2[3];
  *(_DWORD *)(result + 16) = a2[4];
  *(_DWORD *)(result + 20) = a2[5];
  *(_DWORD *)(result + 24) = a2[6];
  *(_DWORD *)(result + 28) = a2[7];
  *(_DWORD *)(result + 32) = a2[8];
  *(_DWORD *)(result + 8) = a2[2];
  return result;
}


// ===== 881a74 vox::SegmentGroup::~SegmentGroup() =====
void __fastcall vox::SegmentGroup::~SegmentGroup(vox::SegmentGroup *this)
{
  ;
}


// ===== 881a78 vox::SegmentGroup::~SegmentGroup() =====
void __fastcall vox::SegmentGroup::~SegmentGroup(vox::SegmentGroup *this)
{
  ;
}


// ===== 881a7c vox::SegmentGroup::GetSelectMode(void) =====
int __fastcall vox::SegmentGroup::GetSelectMode(vox::SegmentGroup *this)
{
  return *((_DWORD *)this + 2);
}


// ===== 881a84 vox::SegmentGroup::IsValid(void) =====
int __fastcall vox::SegmentGroup::IsValid(vox::SegmentGroup *this)
{
  return *((unsigned __int8 *)this + 4);
}


// ===== 881a8c vox::SegmentGroup::SetState(vox::SegmentGroup&) =====
int __fastcall vox::SegmentGroup::SetState(int this, vox::SegmentGroup *a2)
{
  *(_BYTE *)(this + 4) = *((_BYTE *)a2 + 4);
  *(_DWORD *)(this + 12) = *((_DWORD *)a2 + 3);
  *(_DWORD *)(this + 16) = *((_DWORD *)a2 + 4);
  *(_DWORD *)(this + 20) = *((_DWORD *)a2 + 5);
  *(_DWORD *)(this + 24) = *((_DWORD *)a2 + 6);
  *(_DWORD *)(this + 28) = *((_DWORD *)a2 + 7);
  *(_DWORD *)(this + 32) = *((_DWORD *)a2 + 8);
  *(_DWORD *)(this + 8) = *((_DWORD *)a2 + 2);
  return this;
}


// ===== 881ad0 vox::RandomGroup::RandomGroup(vox::GroupInfos *,int) =====
_DWORD *__fastcall vox::RandomGroup::RandomGroup(_DWORD *a1, _DWORD *a2, int a3)
{
  int v5; // r3
  int v6; // r2

  vox::SegmentGroup::SegmentGroup((int)a1, a2, a3);
  v5 = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  a1[13] = a1 + 12;
  *a1 = off_993830;
  a1[12] = a1 + 12;
  v6 = a2[3];
  a1[22] = 0;
  a1[18] = 0;
  if ( v6 != -1 )
    v5 = v6;
  a1[15] = v5;
  a1[16] = v6;
  return a1;
}


// ===== 881b40 vox::RandomGroup::RandomGroup(vox::GroupInfos *,int) =====
_DWORD *__fastcall vox::RandomGroup::RandomGroup(_DWORD *a1, _DWORD *a2, int a3)
{
  int v5; // r3
  int v6; // r2

  vox::SegmentGroup::SegmentGroup((int)a1, a2, a3);
  v5 = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  a1[13] = a1 + 12;
  *a1 = off_993830;
  a1[12] = a1 + 12;
  v6 = a2[3];
  a1[22] = 0;
  a1[18] = 0;
  if ( v6 != -1 )
    v5 = v6;
  a1[15] = v5;
  a1[16] = v6;
  return a1;
}


// ===== 881bb0 vox::RandomGroup::GetState(vox::RandomGroupState *) =====
_DWORD *__fastcall vox::RandomGroup::GetState(_DWORD *result, _DWORD *a2)
{
  int v2; // r3

  *a2 = result[5];
  a2[1] = result[6];
  a2[2] = result[17];
  a2[3] = result[18];
  v2 = result[19];
  a2[9] = result + 9;
  a2[10] = result + 12;
  a2[4] = v2;
  a2[5] = result[7];
  a2[6] = result[8];
  a2[7] = result[20];
  a2[8] = result[21];
  return result;
}


// ===== 881c0c vox::RandomGroup::PeekAtNextGroupElement(vox::GroupPeekMode) =====
int __fastcall vox::RandomGroup::PeekAtNextGroupElement(int result, int a2, int a3)
{
  int v3; // r3

  v3 = *(_DWORD *)(result + 68);
  if ( v3 < 0 )
    result = -1;
  else
    a3 = *(_DWORD *)(result + 36);
  if ( v3 >= 0 )
    return **(_DWORD **)(a3 + 4 * v3);
  return result;
}


// ===== 881c28 vox::SequentialGroup::SequentialGroup(vox::GroupInfos *,int) =====
_DWORD *__fastcall vox::SequentialGroup::SequentialGroup(_DWORD *a1, _DWORD *a2, int a3)
{
  vox::SegmentGroup::SegmentGroup((int)a1, a2, a3);
  a1[13] = 0;
  a1[9] = 0;
  *a1 = off_993800;
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  return a1;
}


// ===== 881c74 vox::SequentialGroup::SequentialGroup(vox::GroupInfos *,int) =====
_DWORD *__fastcall vox::SequentialGroup::SequentialGroup(_DWORD *a1, _DWORD *a2, int a3)
{
  vox::SegmentGroup::SegmentGroup((int)a1, a2, a3);
  a1[13] = 0;
  a1[9] = 0;
  *a1 = off_993800;
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  return a1;
}


// ===== 881cc0 vox::SequentialGroup::GetGroupElementPosition(void) =====
int __fastcall vox::SequentialGroup::GetGroupElementPosition(vox::SequentialGroup *this)
{
  int v1; // r3
  int v3; // r2
  int v4; // r1
  int v5; // r5
  int v6; // r12
  int v7; // r4
  int v8; // r5
  bool v9; // cc

  v1 = *((_DWORD *)this + 6);
  if ( !v1 )
    return -1;
  v3 = *((_DWORD *)this + 5);
  if ( !v3 )
    return -1;
  v4 = *((_DWORD *)this + 12);
  v5 = *((_DWORD *)this + 10);
  v6 = *((_DWORD *)this + 9);
  v7 = v4 + 1;
  *((_DWORD *)this + 12) = v4 + 1;
  v8 = v5 - v6;
  v9 = v4 + 1 < v8 >> 2;
  if ( v4 + 1 >= v8 >> 2 )
  {
    v7 = v3 - 1;
    *((_DWORD *)this + 7) = v3;
    v8 = 0;
  }
  *((_DWORD *)this + 13) = v4;
  if ( !v9 )
  {
    *((_DWORD *)this + 12) = v8;
    *((_DWORD *)this + 5) = v7;
  }
  *((_DWORD *)this + 6) = v1 - 1;
  *((_DWORD *)this + 8) = v1;
  return *(_DWORD *)(v6 + 4 * v4);
}


// ===== 881d30 vox::SequentialGroup::GetState(vox::SequentialGroupState *) =====
_DWORD *__fastcall vox::SequentialGroup::GetState(_DWORD *result, _DWORD *a2)
{
  *a2 = result[5];
  a2[1] = result[6];
  a2[2] = result[12];
  a2[3] = result[7];
  a2[4] = result[8];
  a2[5] = result[13];
  return result;
}


// ===== 881d64 vox::SequentialGroup::PeekAtNextGroupElement(vox::GroupPeekMode) =====
int __fastcall vox::SequentialGroup::PeekAtNextGroupElement(_DWORD *a1, int a2)
{
  if ( a2 || a1[6] && a1[5] )
    return *(_DWORD *)(a1[9] + 4 * a1[12]);
  else
    return -1;
}


// ===== 881da0 vox::SequentialGroup::Reset(int) =====
_DWORD *__fastcall vox::SequentialGroup::Reset(_DWORD *this, int a2)
{
  int v2; // r2
  int v3; // r3
  int v4; // r12

  v2 = *(this + 5);
  v3 = *(this + 3);
  v4 = *(this + 12);
  *(this + 7) = v2;
  *(this + 5) = v3;
  if ( !a2 )
  {
    v2 = *(this + 6);
    v3 = *(this + 4);
  }
  *(this + 13) = v4;
  *(this + 12) = 0;
  if ( !a2 )
  {
    *(this + 8) = v2;
    *(this + 6) = v3;
  }
  return this;
}


// ===== 881dd8 vox::SequentialGroup::SetState(vox::SequentialGroup&) =====
int __fastcall vox::SequentialGroup::SetState(vox::SequentialGroup *this, vox::SequentialGroup *a2)
{
  int result; // r0

  result = vox::SegmentGroup::SetState((int)this, a2);
  *((_DWORD *)this + 12) = *((_DWORD *)a2 + 12);
  *((_DWORD *)this + 13) = *((_DWORD *)a2 + 13);
  return result;
}


// ===== 881dfc vox::SequentialGroup::SetState(vox::SequentialGroupState *) =====
_DWORD *__fastcall vox::SequentialGroup::SetState(_DWORD *result, _DWORD *a2)
{
  result[5] = *a2;
  result[6] = a2[1];
  result[12] = a2[2];
  result[7] = a2[3];
  result[8] = a2[4];
  result[13] = a2[5];
  return result;
}


// ===== 881e30 vox::SequentialGroup::SetToPreviousState(void) =====
_DWORD *__fastcall vox::SequentialGroup::SetToPreviousState(_DWORD *this)
{
  int v1; // r2
  int v2; // r3

  v1 = *(this + 8);
  v2 = *(this + 13);
  *(this + 5) = *(this + 7);
  *(this + 6) = v1;
  *(this + 12) = v2;
  return this;
}


// ===== 881e4c vox::NativePlaylist::NativePlaylist(vox::PlaylistInfos *) =====
int __fastcall vox::NativePlaylist::NativePlaylist(int result, _DWORD *a2)
{
  int v2; // r1

  *(_BYTE *)result = 1;
  *(_DWORD *)(result + 4) = *a2;
  v2 = a2[1];
  *(_DWORD *)(result + 56) = 0;
  *(_DWORD *)(result + 12) = 0;
  *(_DWORD *)(result + 32) = v2;
  *(_DWORD *)(result + 8) = v2;
  *(_DWORD *)(result + 16) = 0;
  *(_DWORD *)(result + 24) = 0;
  *(_DWORD *)(result + 28) = 0;
  *(_DWORD *)(result + 36) = 0;
  *(_DWORD *)(result + 40) = 0;
  *(_DWORD *)(result + 44) = 0;
  *(_DWORD *)(result + 48) = 0;
  *(_DWORD *)(result + 52) = 0;
  *(_DWORD *)(result + 20) = v2;
  return result;
}


// ===== 881e9c vox::NativePlaylist::NativePlaylist(vox::PlaylistInfos *) =====
int __fastcall vox::NativePlaylist::NativePlaylist(int result, _DWORD *a2)
{
  int v2; // r1

  *(_BYTE *)result = 1;
  *(_DWORD *)(result + 4) = *a2;
  v2 = a2[1];
  *(_DWORD *)(result + 56) = 0;
  *(_DWORD *)(result + 12) = 0;
  *(_DWORD *)(result + 32) = v2;
  *(_DWORD *)(result + 8) = v2;
  *(_DWORD *)(result + 16) = 0;
  *(_DWORD *)(result + 24) = 0;
  *(_DWORD *)(result + 28) = 0;
  *(_DWORD *)(result + 36) = 0;
  *(_DWORD *)(result + 40) = 0;
  *(_DWORD *)(result + 44) = 0;
  *(_DWORD *)(result + 48) = 0;
  *(_DWORD *)(result + 52) = 0;
  *(_DWORD *)(result + 20) = v2;
  return result;
}


// ===== 881eec vox::NativePlaylist::GetCurrentElement(void) =====
int __fastcall vox::NativePlaylist::GetCurrentElement(vox::NativePlaylist *this)
{
  return *(_DWORD *)(*((_DWORD *)this + 12) + 4 * *((_DWORD *)this + 4));
}


// ===== 881efc vox::NativePlaylist::GetCurrentPosition(void) =====
int __fastcall vox::NativePlaylist::GetCurrentPosition(vox::NativePlaylist *this)
{
  return *((_DWORD *)this + 4);
}


// ===== 881f04 vox::NativePlaylist::GetState(vox::PlaylistState *) =====
_DWORD *__fastcall vox::NativePlaylist::GetState(_DWORD *result, _DWORD *a2)
{
  int v2; // r3

  *a2 = result[3];
  a2[1] = result[4];
  a2[2] = result[5];
  a2[3] = result[6];
  a2[4] = result[7];
  v2 = result[8];
  a2[6] = result + 9;
  a2[5] = v2;
  return result;
}


// ===== 881f40 vox::NativePlaylist::GetPlaylistElement(int) =====
int __fastcall vox::NativePlaylist::GetPlaylistElement(vox::NativePlaylist *this, int a2)
{
  int v3; // r3

  if ( *((_DWORD *)this + 5) && a2 >= 0 && (v3 = *((_DWORD *)this + 12), a2 < (*((_DWORD *)this + 13) - v3) >> 2) )
    return *(_DWORD *)(v3 + 4 * a2);
  else
    return 0;
}


// ===== 881f78 vox::NativePlaylist::GetPlaylistElement(void) =====
int __fastcall vox::NativePlaylist::GetPlaylistElement(vox::NativePlaylist *this)
{
  int v1; // r3
  int v3; // r6
  unsigned int v5; // r5
  int v6; // r7
  int v7; // r0
  _BOOL4 v8; // r3
  int v9; // r0
  bool v10; // zf
  _DWORD *v11; // r3
  int v12; // r1
  unsigned int v13; // r2
  int v14; // r1
  unsigned int v15; // r5
  int v16; // r3
  int v17; // r2
  bool v18; // zf
  int v19; // r2
  int v20; // r2
  int v21; // r0
  int v22; // r3
  int v23; // r1
  int v24; // r0
  int v25; // r1
  int v26; // r1
  int v27; // r2
  int v28; // r3
  int v29; // r0
  int v30; // r2
  int v31; // r3

  v1 = *((_DWORD *)this + 9);
  v3 = (*((_DWORD *)this + 10) - v1) >> 2;
  if ( !*((_DWORD *)this + 5) )
    return 0;
  v5 = *((_DWORD *)this + 1);
  if ( v5 )
  {
    v6 = 0;
    v7 = -1;
    while ( 1 )
    {
      v8 = v6 < v3;
      if ( v7 != -1 )
        v8 = 0;
      if ( !v8 )
        goto LABEL_34;
      ++v6;
      v9 = *(_DWORD *)(*((_DWORD *)this + 9) + 4 * *((_DWORD *)this + 3));
      v7 = (*(int (__fastcall **)(int))(*(_DWORD *)v9 + 8))(v9);
      v10 = v6 == v3;
      if ( v6 == v3 )
        v10 = v7 == -1;
      if ( v10 )
      {
        v11 = *((_DWORD **)this + 9);
        v12 = *((_DWORD *)this + 5);
        v13 = *((_DWORD *)this + 10) - (_DWORD)v11;
        *((_DWORD *)this + 8) = v12;
        v14 = v12 - 1;
        *((_DWORD *)this + 5) = v14;
        if ( v13 >> 2 )
        {
          v15 = 0;
          do
          {
            v16 = v11[v15++];
            (*(void (__fastcall **)(int))(*(_DWORD *)v16 + 16))(v16);
            v11 = *((_DWORD **)this + 9);
          }
          while ( v15 < (*((_DWORD *)this + 10) - (int)v11) >> 2 );
          v14 = *((_DWORD *)this + 5);
        }
        v17 = *((_DWORD *)this + 3);
        v18 = v14 == 0;
        *((_DWORD *)this + 3) = 0;
        *((_DWORD *)this + 6) = v17;
        if ( !v14 )
          v14 = 0;
        v19 = 0;
        if ( v18 )
        {
          v7 = -1;
          goto LABEL_22;
        }
        v7 = (*(int (__fastcall **)(_DWORD, int, _DWORD))(*(_DWORD *)*v11 + 8))(*v11, v14, 0);
      }
      v19 = *((_DWORD *)this + 3);
      v14 = v19;
LABEL_22:
      if ( v19 + 1 >= v3 )
        v20 = 0;
      else
        v20 = v19 + 1;
      *((_DWORD *)this + 6) = v14;
      *((_DWORD *)this + 3) = v20;
    }
  }
  v21 = *(_DWORD *)(v1 + 4 * *((_DWORD *)this + 3));
  v7 = (*(int (__fastcall **)(int))(*(_DWORD *)v21 + 8))(v21);
  if ( v7 != -1 )
    goto LABEL_34;
  v22 = *((_DWORD *)this + 9);
  v23 = *((_DWORD *)this + 3);
  v24 = (*((_DWORD *)this + 10) - v22) >> 2;
  *((_DWORD *)this + 6) = v23;
  *((_DWORD *)this + 3) = v23 + 1;
  if ( v23 + 1 < v24 )
    goto LABEL_31;
  v25 = *((_DWORD *)this + 5);
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 8) = v25;
  v26 = v25 - 1;
  *((_DWORD *)this + 5) = v26;
  v27 = v22;
  if ( v24 )
  {
    do
    {
      v28 = *(_DWORD *)(v27 + 4 * v5++);
      (*(void (__fastcall **)(int))(*(_DWORD *)v28 + 16))(v28);
      v22 = *((_DWORD *)this + 9);
      v27 = v22;
    }
    while ( v5 < (*((_DWORD *)this + 10) - v22) >> 2 );
LABEL_31:
    v26 = *((_DWORD *)this + 5);
  }
  if ( !v26 )
    return 0;
  v29 = *(_DWORD *)(v22 + 4 * *((_DWORD *)this + 3));
  v7 = (*(int (__fastcall **)(int))(*(_DWORD *)v29 + 8))(v29);
LABEL_34:
  if ( v7 < 0 )
    return 0;
  v30 = *((_DWORD *)this + 4);
  v31 = *((_DWORD *)this + 12);
  *((_DWORD *)this + 4) = v7;
  *((_DWORD *)this + 7) = v30;
  return *(_DWORD *)(v31 + 4 * v7);
}


// ===== 88219c vox::NativePlaylist::IsValid(void) =====
int __fastcall vox::NativePlaylist::IsValid(vox::NativePlaylist *this)
{
  return *(unsigned __int8 *)this;
}


// ===== 8821a4 vox::NativePlaylist::PeekAtNextElement(void) =====
int __fastcall vox::NativePlaylist::PeekAtNextElement(vox::NativePlaylist *this)
{
  int v1; // r8
  int v2; // r3
  int v4; // r5
  int v5; // r6
  int v7; // r7
  int v8; // r0
  _BOOL4 v9; // r3
  int v10; // r3
  bool v11; // zf
  int v12; // r3
  int v13; // r5

  v1 = *((_DWORD *)this + 5);
  v2 = *((_DWORD *)this + 9);
  v4 = *((_DWORD *)this + 3);
  v5 = (*((_DWORD *)this + 10) - v2) >> 2;
  if ( !v1 )
    return 0;
  if ( *((_DWORD *)this + 1) )
  {
    v7 = 0;
    v8 = -1;
    while ( 1 )
    {
      v9 = v7 < v5;
      if ( v8 != -1 )
        v9 = 0;
      ++v7;
      if ( !v9 )
        break;
      v10 = *(_DWORD *)(*((_DWORD *)this + 9) + 4 * v4++);
      v8 = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v10 + 12))(v10, 0);
      v11 = v7 == v5;
      if ( v7 == v5 )
        v11 = v8 == -1;
      if ( v11 )
      {
        --v1;
        v4 = 1;
        if ( v1 )
          v8 = (*(int (__fastcall **)(_DWORD, _DWORD))(***((_DWORD ***)this + 9) + 12))(**((_DWORD **)this + 9), 0);
        else
          v8 = -1;
      }
      if ( v5 <= v4 )
        v4 = 0;
    }
  }
  else
  {
    v8 = (*(int (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(v2 + 4 * v4) + 12))(
           *(_DWORD *)(v2 + 4 * v4),
           *((_DWORD *)this + 1));
    if ( v8 == -1 )
    {
      v12 = *((_DWORD *)this + 9);
      v13 = v4 + 1;
      if ( v13 >= (*((_DWORD *)this + 10) - v12) >> 2 )
      {
        if ( v1 == 1 )
          return 0;
        v13 = 0;
      }
      v8 = (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(v12 + 4 * v13) + 12))(*(_DWORD *)(v12 + 4 * v13), 1);
    }
  }
  if ( v8 < 0 )
    return 0;
  return *(_DWORD *)(*((_DWORD *)this + 12) + 4 * v8);
}


// ===== 8822e8 vox::NativePlaylist::Reset(void) =====
int __fastcall vox::NativePlaylist::Reset(vox::NativePlaylist *this)
{
  int v1; // r3
  int v2; // r6
  int v4; // r1
  int result; // r0
  int v6; // r2
  int v7; // r6
  int v8; // r4
  int v9; // r3

  v1 = *((_DWORD *)this + 9);
  v2 = *((_DWORD *)this + 10);
  v4 = *((_DWORD *)this + 4);
  result = *((_DWORD *)this + 3);
  v6 = *((_DWORD *)this + 2);
  v7 = (v2 - v1) >> 2;
  v8 = 0;
  *((_DWORD *)this + 6) = result;
  *((_DWORD *)this + 7) = v4;
  *((_DWORD *)this + 8) = v6;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = v6;
  if ( v7 > 0 )
  {
    while ( 1 )
    {
      v9 = *(_DWORD *)(v1 + 4 * v8++);
      result = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v9 + 16))(v9, 0);
      if ( v8 == v7 )
        break;
      v1 = *((_DWORD *)this + 9);
    }
  }
  return result;
}


// ===== 882360 vox::NativePlaylist::SetState(vox::NativePlaylist&) =====
int __fastcall vox::NativePlaylist::SetState(int this, vox::NativePlaylist *a2)
{
  int v2; // r2
  int v3; // r7
  int v4; // r7
  int v6; // r5
  int v7; // r4
  int v8; // r3
  int v9; // r1

  v2 = *(_DWORD *)(this + 36);
  v3 = *(_DWORD *)(this + 40);
  *(_BYTE *)this = *(_BYTE *)a2;
  v4 = (v3 - v2) >> 2;
  *(_DWORD *)(this + 4) = *((_DWORD *)a2 + 1);
  v6 = this;
  *(_DWORD *)(this + 8) = *((_DWORD *)a2 + 2);
  *(_DWORD *)(this + 12) = *((_DWORD *)a2 + 3);
  *(_DWORD *)(this + 16) = *((_DWORD *)a2 + 4);
  *(_DWORD *)(this + 20) = *((_DWORD *)a2 + 5);
  *(_DWORD *)(this + 24) = *((_DWORD *)a2 + 6);
  *(_DWORD *)(this + 28) = *((_DWORD *)a2 + 7);
  *(_DWORD *)(this + 32) = *((_DWORD *)a2 + 8);
  if ( v4 )
  {
    v7 = 0;
    while ( 1 )
    {
      vox::SegmentGroup::GetSelectMode(*(vox::SegmentGroup **)(v2 + 4 * v7));
      v8 = *(_DWORD *)(*(_DWORD *)(v6 + 36) + 4 * v7);
      v9 = *(_DWORD *)(*((_DWORD *)a2 + 9) + 4 * v7++);
      this = (*(int (__fastcall **)(int, int))(*(_DWORD *)v8 + 20))(v8, v9);
      if ( v7 == v4 )
        break;
      v2 = *(_DWORD *)(v6 + 36);
    }
  }
  return this;
}


// ===== 88240c vox::NativePlaylist::SetToPreviousState(void) =====
int __fastcall vox::NativePlaylist::SetToPreviousState(vox::NativePlaylist *this)
{
  int v2; // r0
  int result; // r0
  int v4; // r2
  int v5; // r3

  v2 = *(_DWORD *)(*((_DWORD *)this + 9) + 4 * *((_DWORD *)this + 6));
  result = (*(int (__fastcall **)(int))(*(_DWORD *)v2 + 24))(v2);
  v4 = *((_DWORD *)this + 7);
  v5 = *((_DWORD *)this + 8);
  *((_DWORD *)this + 3) = *((_DWORD *)this + 6);
  *((_DWORD *)this + 4) = v4;
  *((_DWORD *)this + 5) = v5;
  return result;
}


// ===== 882448 vox::NativePlaylistsManager::NativePlaylistsManager(void) =====
int __fastcall vox::NativePlaylistsManager::NativePlaylistsManager(int this)
{
  *(_DWORD *)(this + 12) = 0;
  *(_BYTE *)this = 1;
  *(_DWORD *)(this + 4) = 0;
  *(_DWORD *)(this + 8) = 0;
  return this;
}


// ===== 882464 vox::NativePlaylistsManager::NativePlaylistsManager(void) =====
int __fastcall vox::NativePlaylistsManager::NativePlaylistsManager(int this)
{
  *(_DWORD *)(this + 12) = 0;
  *(_BYTE *)this = 1;
  *(_DWORD *)(this + 4) = 0;
  *(_DWORD *)(this + 8) = 0;
  return this;
}


// ===== 882480 vox::NativePlaylistsManager::GetNbPlaylists(void) =====
int __fastcall vox::NativePlaylistsManager::GetNbPlaylists(vox::NativePlaylistsManager *this)
{
  return *((_DWORD *)this + 2);
}


// ===== 882488 vox::NativePlaylistsManager::GetPlaylistElement(int,int,int) =====
int __fastcall vox::NativePlaylistsManager::GetPlaylistElement(
        vox::NativePlaylistsManager *this,
        int a2,
        int a3,
        int a4)
{
  vox::NativePlaylist *v4; // r0

  v4 = *(vox::NativePlaylist **)(*((_DWORD *)this + 3) + 4 * a2);
  switch ( a3 )
  {
    case 0:
      return vox::NativePlaylist::GetPlaylistElement(v4);
    case 1:
      return vox::NativePlaylist::GetCurrentElement(v4);
    case 2:
      return vox::NativePlaylist::GetPlaylistElement(v4, a4);
  }
  return 0;
}


// ===== 8824c0 vox::NativePlaylistsManager::IsValid(void) =====
int __fastcall vox::NativePlaylistsManager::IsValid(vox::NativePlaylistsManager *this)
{
  return *(unsigned __int8 *)this;
}


// ===== 8824c8 vox::NativePlaylistsManager::PeekAtNextPlaylistElement(int) =====
int __fastcall vox::NativePlaylistsManager::PeekAtNextPlaylistElement(vox::NativePlaylistsManager *this, int a2)
{
  return vox::NativePlaylist::PeekAtNextElement(*(vox::NativePlaylist **)(*((_DWORD *)this + 3) + 4 * a2));
}


// ===== 8824d4 vox::NativePlaylistsManager::ResetPlaylist(int) =====
int __fastcall vox::NativePlaylistsManager::ResetPlaylist(int this, int a2)
{
  if ( a2 >= 0 )
    return vox::NativePlaylist::Reset(*(vox::NativePlaylist **)(*(_DWORD *)(this + 12) + 4 * a2));
  return this;
}


// ===== 8824e8 vox::NativePlaylistsManager::SetPlaylistToPreviousState(int) =====
int __fastcall vox::NativePlaylistsManager::SetPlaylistToPreviousState(vox::NativePlaylistsManager *this, int a2)
{
  return vox::NativePlaylist::SetToPreviousState(*(vox::NativePlaylist **)(*((_DWORD *)this + 3) + 4 * a2));
}


// ===== 8824f4 vox::NativePlaylistsManager::SetState(vox::NativePlaylistsManager&) =====
int __fastcall vox::NativePlaylistsManager::SetState(int this, vox::NativePlaylistsManager *a2)
{
  int v2; // r2
  int v4; // r5
  int v5; // r4

  v2 = *(_DWORD *)(this + 8);
  *(_BYTE *)this = *(_BYTE *)a2;
  v4 = this;
  *(_DWORD *)(this + 4) = *((_DWORD *)a2 + 1);
  if ( v2 > 0 )
  {
    v5 = 0;
    do
    {
      this = vox::NativePlaylist::SetState(
               *(_DWORD *)(*(_DWORD *)(v4 + 12) + 4 * v5),
               *(vox::NativePlaylist **)(*((_DWORD *)a2 + 3) + 4 * v5));
      ++v5;
    }
    while ( *(_DWORD *)(v4 + 8) > v5 );
  }
  return this;
}


// ===== 882548 vox::NativePlaylistsManager::Init(int) =====
void *__fastcall vox::NativePlaylistsManager::Init(vox::NativePlaylistsManager *this, int a2)
{
  void *result; // r0

  result = VoxAlloc(4 * a2);
  *((_DWORD *)this + 3) = result;
  if ( !result )
    *(_BYTE *)this = 0;
  return result;
}


// ===== 882568 vox::NativePlaylistsManager::AddPlaylist(int,vox::PlaylistInfos *) =====
int __fastcall vox::NativePlaylistsManager::AddPlaylist(int a1, int a2, _DWORD *a3)
{
  void *v6; // r6
  int result; // r0
  int v8; // r3
  bool v9; // zf

  v6 = VoxAlloc(0x3Cu, 0);
  result = vox::NativePlaylist::NativePlaylist((int)v6, a3);
  *(_DWORD *)(*(_DWORD *)(a1 + 12) + 4 * a2) = v6;
  v8 = *(_DWORD *)(*(_DWORD *)(a1 + 12) + 4 * a2);
  v9 = v8 == 0;
  if ( v8 )
    v8 = *(_DWORD *)(a1 + 8);
  else
    *(_BYTE *)a1 = 0;
  if ( !v9 )
    *(_DWORD *)(a1 + 8) = v8 + 1;
  return result;
}


// ===== 8825b8 vox::NativePlaylist::~NativePlaylist() =====
void __fastcall vox::NativePlaylist::~NativePlaylist(vox::NativePlaylist *this)
{
  int v1; // r3
  int v3; // r7
  int v4; // r4
  void (__fastcall ***v5)(_DWORD); // r3
  void (__fastcall ***v6)(_DWORD); // r0
  int v7; // r3
  int v8; // r6
  int v9; // r4
  void *v10; // r0
  void *v11; // r0
  void *v12; // r0

  v1 = *((_DWORD *)this + 9);
  v3 = (*((_DWORD *)this + 10) - v1) >> 2;
  if ( v3 > 0 )
  {
    v4 = 0;
    while ( vox::SegmentGroup::GetSelectMode(*(vox::SegmentGroup **)(v1 + 4 * v4)) )
    {
      v5 = *(void (__fastcall ****)(_DWORD))(*((_DWORD *)this + 9) + 4 * v4);
      v6 = v5;
      if ( v5 )
        goto LABEL_6;
      if ( ++v4 == v3 )
        goto LABEL_12;
LABEL_8:
      v1 = *((_DWORD *)this + 9);
    }
    v5 = *(void (__fastcall ****)(_DWORD))(*((_DWORD *)this + 9) + 4 * v4);
    if ( v5 )
    {
      v6 = *(void (__fastcall ****)(_DWORD))(*((_DWORD *)this + 9) + 4 * v4);
LABEL_6:
      (**v5)(v6);
      VoxFree(*(void **)(*((_DWORD *)this + 9) + 4 * v4));
    }
    if ( ++v4 == v3 )
      goto LABEL_12;
    goto LABEL_8;
  }
LABEL_12:
  v7 = *((_DWORD *)this + 12);
  v8 = (*((_DWORD *)this + 13) - v7) >> 2;
  if ( v8 > 0 )
  {
    v9 = 0;
    while ( 1 )
    {
      v10 = *(void **)(v7 + 4 * v9++);
      if ( v10 )
        VoxFree(v10);
      if ( v9 == v8 )
        break;
      v7 = *((_DWORD *)this + 12);
    }
  }
  v11 = *((void **)this + 12);
  if ( v11 )
    VoxFree(v11);
  v12 = *((void **)this + 9);
  if ( v12 )
    VoxFree(v12);
}


// ===== 8826b4 vox::NativePlaylistsManager::~NativePlaylistsManager() =====
void __fastcall vox::NativePlaylistsManager::~NativePlaylistsManager(vox::NativePlaylistsManager *this)
{
  _DWORD *v1; // r3
  int v3; // r2
  int i; // r4
  vox::NativePlaylist *v5; // r0

  v1 = *((_DWORD **)this + 3);
  if ( v1 )
  {
    v3 = *((_DWORD *)this + 2);
    if ( v3 > 0 )
    {
      for ( i = 0; i < v3; ++i )
      {
        v5 = (vox::NativePlaylist *)v1[i];
        if ( v5 )
        {
          vox::NativePlaylist::~NativePlaylist(v5);
          VoxFree(*(void **)(*((_DWORD *)this + 3) + 4 * i));
          v3 = *((_DWORD *)this + 2);
          v1 = *((_DWORD **)this + 3);
        }
      }
    }
    VoxFree(v1);
    *((_DWORD *)this + 3) = 0;
  }
}


// ===== 882720 vox::NativePlaylistsManager::~NativePlaylistsManager() =====
void __fastcall vox::NativePlaylistsManager::~NativePlaylistsManager(vox::NativePlaylistsManager *this)
{
  _DWORD *v1; // r3
  int v3; // r2
  int i; // r4
  vox::NativePlaylist *v5; // r0

  v1 = *((_DWORD **)this + 3);
  if ( v1 )
  {
    v3 = *((_DWORD *)this + 2);
    if ( v3 > 0 )
    {
      for ( i = 0; i < v3; ++i )
      {
        v5 = (vox::NativePlaylist *)v1[i];
        if ( v5 )
        {
          vox::NativePlaylist::~NativePlaylist(v5);
          VoxFree(*(void **)(*((_DWORD *)this + 3) + 4 * i));
          v3 = *((_DWORD *)this + 2);
          v1 = *((_DWORD **)this + 3);
        }
      }
    }
    VoxFree(v1);
    *((_DWORD *)this + 3) = 0;
  }
}


// ===== 88278c vox::NativePlaylist::~NativePlaylist() =====
void __fastcall vox::NativePlaylist::~NativePlaylist(vox::NativePlaylist *this)
{
  int v1; // r3
  int v3; // r7
  int v4; // r4
  void (__fastcall ***v5)(_DWORD); // r3
  void (__fastcall ***v6)(_DWORD); // r0
  int v7; // r3
  int v8; // r6
  int v9; // r4
  void *v10; // r0
  void *v11; // r0
  void *v12; // r0

  v1 = *((_DWORD *)this + 9);
  v3 = (*((_DWORD *)this + 10) - v1) >> 2;
  if ( v3 > 0 )
  {
    v4 = 0;
    while ( vox::SegmentGroup::GetSelectMode(*(vox::SegmentGroup **)(v1 + 4 * v4)) )
    {
      v5 = *(void (__fastcall ****)(_DWORD))(*((_DWORD *)this + 9) + 4 * v4);
      v6 = v5;
      if ( v5 )
        goto LABEL_6;
      if ( ++v4 == v3 )
        goto LABEL_12;
LABEL_8:
      v1 = *((_DWORD *)this + 9);
    }
    v5 = *(void (__fastcall ****)(_DWORD))(*((_DWORD *)this + 9) + 4 * v4);
    if ( v5 )
    {
      v6 = *(void (__fastcall ****)(_DWORD))(*((_DWORD *)this + 9) + 4 * v4);
LABEL_6:
      (**v5)(v6);
      VoxFree(*(void **)(*((_DWORD *)this + 9) + 4 * v4));
    }
    if ( ++v4 == v3 )
      goto LABEL_12;
    goto LABEL_8;
  }
LABEL_12:
  v7 = *((_DWORD *)this + 12);
  v8 = (*((_DWORD *)this + 13) - v7) >> 2;
  if ( v8 > 0 )
  {
    v9 = 0;
    while ( 1 )
    {
      v10 = *(void **)(v7 + 4 * v9++);
      if ( v10 )
        VoxFree(v10);
      if ( v9 == v8 )
        break;
      v7 = *((_DWORD *)this + 12);
    }
  }
  v11 = *((void **)this + 12);
  if ( v11 )
    VoxFree(v11);
  v12 = *((void **)this + 9);
  if ( v12 )
    VoxFree(v12);
}


// ===== 882888 vox::SequentialGroup::~SequentialGroup() =====
void __fastcall vox::SequentialGroup::~SequentialGroup(vox::SequentialGroup *this)
{
  void *v2; // r0

  v2 = *((void **)this + 9);
  *(_DWORD *)this = off_993800;
  if ( v2 )
    VoxFree(v2);
  vox::SegmentGroup::~SegmentGroup(this);
}


// ===== 8828d0 vox::SequentialGroup::~SequentialGroup() =====
void __fastcall vox::SequentialGroup::~SequentialGroup(vox::SequentialGroup *this)
{
  void *v2; // r0

  v2 = *((void **)this + 9);
  *(_DWORD *)this = off_993800;
  if ( v2 )
    VoxFree(v2);
  vox::SegmentGroup::~SegmentGroup(this);
}


// ===== 882918 vox::RandomGroup::~RandomGroup() =====
void __fastcall vox::RandomGroup::~RandomGroup(vox::RandomGroup *this)
{
  int v1; // r2
  int v2; // r5
  int v4; // r4
  void *v5; // r0
  char *v6; // r4
  char *v7; // r5
  void *v8; // r0
  char *v9; // r0
  char *v10; // r4
  void *v11; // r0

  v1 = *((_DWORD *)this + 9);
  v2 = (*((_DWORD *)this + 10) - v1) >> 2;
  *(_DWORD *)this = off_993830;
  if ( v2 > 0 )
  {
    v4 = 0;
    while ( 1 )
    {
      v5 = *(void **)(v1 + 4 * v4++);
      if ( v5 )
        VoxFree(v5);
      if ( v4 == v2 )
        break;
      v1 = *((_DWORD *)this + 9);
    }
  }
  v7 = (char *)this + 48;
  v6 = *((char **)this + 12);
  if ( (char *)this + 48 != v6 )
  {
    do
    {
      v8 = *((void **)v6 + 2);
      if ( v8 )
        VoxFree(v8);
      v6 = *(char **)v6;
    }
    while ( v7 != v6 );
  }
  v9 = *((char **)this + 12);
  if ( v9 != v7 )
  {
    while ( 1 )
    {
      v10 = *(char **)v9;
      VoxFree(v9);
      if ( v10 == v7 )
        break;
      v9 = v10;
    }
    v9 = (char *)this + 48;
  }
  *((_DWORD *)this + 12) = v9;
  *((_DWORD *)this + 13) = v9;
  v11 = *((void **)this + 9);
  if ( v11 )
    VoxFree(v11);
  vox::SegmentGroup::~SegmentGroup(this);
}


// ===== 8829fc vox::RandomGroup::~RandomGroup() =====
void __fastcall vox::RandomGroup::~RandomGroup(vox::RandomGroup *this)
{
  int v1; // r2
  int v2; // r5
  int v4; // r4
  void *v5; // r0
  char *v6; // r4
  char *v7; // r5
  void *v8; // r0
  char *v9; // r0
  char *v10; // r4
  void *v11; // r0

  v1 = *((_DWORD *)this + 9);
  v2 = (*((_DWORD *)this + 10) - v1) >> 2;
  *(_DWORD *)this = off_993830;
  if ( v2 > 0 )
  {
    v4 = 0;
    while ( 1 )
    {
      v5 = *(void **)(v1 + 4 * v4++);
      if ( v5 )
        VoxFree(v5);
      if ( v4 == v2 )
        break;
      v1 = *((_DWORD *)this + 9);
    }
  }
  v7 = (char *)this + 48;
  v6 = *((char **)this + 12);
  if ( (char *)this + 48 != v6 )
  {
    do
    {
      v8 = *((void **)v6 + 2);
      if ( v8 )
        VoxFree(v8);
      v6 = *(char **)v6;
    }
    while ( v7 != v6 );
  }
  v9 = *((char **)this + 12);
  if ( v9 != v7 )
  {
    while ( 1 )
    {
      v10 = *(char **)v9;
      VoxFree(v9);
      if ( v10 == v7 )
        break;
      v9 = v10;
    }
    v9 = (char *)this + 48;
  }
  *((_DWORD *)this + 12) = v9;
  *((_DWORD *)this + 13) = v9;
  v11 = *((void **)this + 9);
  if ( v11 )
    VoxFree(v11);
  vox::SegmentGroup::~SegmentGroup(this);
}


// ===== 882ae0 vox::NativePlaylist::SetState(vox::PlaylistState *) =====
_DWORD *__fastcall vox::NativePlaylist::SetState(_DWORD *result, _DWORD *a2)
{
  int v2; // r10
  int v3; // r2
  int v4; // r10
  _DWORD *v6; // r6
  unsigned int i; // r4
  int v8; // r3
  int *v9; // r5
  int v10; // r3
  vox::SegmentGroup *v11; // r5
  int v12; // r3
  _BYTE v13[44]; // [sp+4h] [bp-48h] BYREF
  _BYTE v14[28]; // [sp+30h] [bp-1Ch] BYREF

  v2 = result[10];
  v3 = result[9];
  result[3] = *a2;
  v4 = (v2 - v3) >> 2;
  result[4] = a2[1];
  result[5] = a2[2];
  v6 = result;
  result[6] = a2[3];
  result[7] = a2[4];
  result[8] = a2[5];
  if ( v4 > 0 )
  {
    for ( i = 0; i != v4; ++i )
    {
      while ( 1 )
      {
        v9 = (int *)a2[6];
        v10 = *v9;
        if ( i >= (v9[1] - *v9) >> 2 )
        {
          __ZSt24__stl_throw_out_of_rangePKc_veneer_0("vector");
          v10 = *v9;
        }
        v11 = *(vox::SegmentGroup **)(v10 + 4 * i);
        if ( vox::SegmentGroup::GetSelectMode(v11) )
          break;
        (*(void (__fastcall **)(vox::SegmentGroup *, _BYTE *))(*(_DWORD *)v11 + 28))(v11, v14);
        v8 = *(_DWORD *)(v6[9] + 4 * i++);
        result = (_DWORD *)(*(int (__fastcall **)(int, _BYTE *))(*(_DWORD *)v8 + 36))(v8, v14);
        if ( i == v4 )
          return result;
      }
      (*(void (__fastcall **)(vox::SegmentGroup *, _BYTE *))(*(_DWORD *)v11 + 28))(v11, v13);
      v12 = *(_DWORD *)(v6[9] + 4 * i);
      result = (_DWORD *)(*(int (__fastcall **)(int, _BYTE *))(*(_DWORD *)v12 + 36))(v12, v13);
    }
  }
  return result;
}


// ===== 882c0c vox::NativePlaylistsManager::TransposePlaylistParameters(int,int) =====
_DWORD *__fastcall vox::NativePlaylistsManager::TransposePlaylistParameters(_DWORD *this, int a2, int a3)
{
  int v3; // r12
  _DWORD *v4; // r5
  _DWORD v5[8]; // [sp+4h] [bp-20h] BYREF

  if ( a2 != a3 )
  {
    v3 = *(this + 3);
    v4 = *(_DWORD **)(v3 + 4 * a3);
    vox::NativePlaylist::GetState(*(_DWORD **)(v3 + 4 * a2), v5);
    return vox::NativePlaylist::SetState(v4, v5);
  }
  return this;
}


// ===== 882c4c vox::SegmentGroup::~SegmentGroup() =====
void __fastcall vox::SegmentGroup::~SegmentGroup(vox::SegmentGroup *this)
{
  vox::SegmentGroup::~SegmentGroup(this);
  LC_API_FREE_0(this);
}


// ===== 882c68 vox::SequentialGroup::~SequentialGroup() =====
void __fastcall vox::SequentialGroup::~SequentialGroup(vox::SequentialGroup *this)
{
  vox::SequentialGroup::~SequentialGroup(this);
  LC_API_FREE_0(this);
}


// ===== 882c84 vox::RandomGroup::~RandomGroup() =====
void __fastcall vox::RandomGroup::~RandomGroup(vox::RandomGroup *this)
{
  vox::RandomGroup::~RandomGroup(this);
  LC_API_FREE_0(this);
}


// ===== 882ca0 vox::RandomGroup::GetActiveElementIndex(void) =====
int __fastcall vox::RandomGroup::GetActiveElementIndex(vox::RandomGroup *this)
{
  int v2; // r4
  int v3; // r1
  int v4; // r3
  int result; // r0

  v2 = (*((_DWORD *)this + 10) - *((_DWORD *)this + 9)) >> 2;
  if ( v2 <= 0 )
    return -1;
  v3 = lrand48() % *((_DWORD *)this + 18);
  v4 = 0;
  for ( result = 0; result != v2; ++result )
  {
    v4 += *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 9) + 4 * result) + 4);
    if ( v3 < v4 )
      break;
  }
  return result;
}


// ===== 882d04 std::vector<vox::RandomGroupElement *,vox::SAllocator<vox::RandomGroupElement *,(vox::VoxMemHint)0>>::_M_insert_overflow(vox::RandomGroupElement **,vox::RandomGroupElement * const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<vox::RandomGroupElement *,vox::SAllocator<vox::RandomGroupElement *,(vox::VoxMemHint)0>>::_M_insert_overflow(
        int a1,
        int a2,
        _DWORD *a3)
{
  unsigned int v6; // r3
  unsigned int v7; // r7
  size_t v8; // r7
  char *v9; // r0
  char *v10; // r5
  size_t v11; // r6
  char *v12; // r6

  v6 = (*(_DWORD *)(a1 + 4) - *(_DWORD *)a1) >> 2;
  if ( v6 )
    v7 = 2 * v6;
  else
    v7 = 1;
  if ( v7 > 0x3FFFFFFF || v6 > v7 )
    v8 = -4;
  else
    v8 = 4 * v7;
  v9 = (char *)VoxAlloc(v8, 0);
  v10 = v9;
  v11 = a2 - *(_DWORD *)a1;
  if ( v11 )
    v12 = (char *)memmove(v9, *(const void **)a1, v11) + v11;
  else
    v12 = v9;
  *(_DWORD *)v12 = *a3;
  VoxFree(*(void **)a1);
  *(_DWORD *)a1 = v10;
  *(_DWORD *)(a1 + 4) = v12 + 4;
  *(_DWORD *)(a1 + 8) = &v10[v8];
}


// ===== 882d94 vox::RandomGroup::GetGroupElementPosition(void) =====
int __fastcall vox::RandomGroup::GetGroupElementPosition(vox::RandomGroup *this)
{
  int v1; // r3
  int v3; // r5
  int v5; // r6
  int v6; // r7
  _DWORD *v7; // r0
  _DWORD *v8; // r3
  int v9; // r3
  int v10; // r2
  int v11; // r1
  int v12; // lr
  vox::RandomGroup *v13; // r2
  int v14; // r1
  int v15; // r0
  vox::RandomGroup *v16; // r3
  int v17; // r1
  int *v18; // r3
  int *v19; // r0
  int v20; // r2
  _DWORD *v21; // r3

  v1 = *((_DWORD *)this + 6);
  if ( !v1 )
    return -1;
  if ( !*((_DWORD *)this + 5) )
    return -1;
  v5 = *((_DWORD *)this + 17);
  if ( v5 < 0 )
    return -1;
  v6 = *((_DWORD *)this + 9);
  v3 = **(_DWORD **)(v6 + 4 * v5);
  if ( *((int *)this + 15) > 0 )
  {
    v7 = VoxAlloc(0xCu, 0);
    v7[2] = *(_DWORD *)(v6 + 4 * v5);
    v8 = *((_DWORD **)this + 13);
    *v7 = (char *)this + 48;
    v7[1] = v8;
    *v8 = v7;
    v9 = *((_DWORD *)this + 9);
    v10 = *((_DWORD *)this + 17);
    *((_DWORD *)this + 13) = v7;
    v11 = ((*((_DWORD *)this + 10) - v9) >> 2) - 1;
    *((_DWORD *)this + 18) -= *(_DWORD *)(*(_DWORD *)(v9 + 4 * v10) + 4);
    *(_DWORD *)(v9 + 4 * v10) = *(_DWORD *)(v9 + 4 * v11);
    v12 = *((_DWORD *)this + 10);
    v13 = *((vox::RandomGroup **)this + 12);
    v14 = v12 - 4;
    *((_DWORD *)this + 10) = v12 - 4;
    if ( (vox::RandomGroup *)((char *)this + 48) == v13 )
    {
      v15 = 0;
    }
    else
    {
      v16 = v13;
      v15 = 0;
      do
      {
        v16 = *(vox::RandomGroup **)v16;
        ++v15;
      }
      while ( (vox::RandomGroup *)((char *)this + 48) != v16 );
    }
    if ( *((_DWORD *)this + 15) < v15 )
    {
      if ( v14 == *((_DWORD *)this + 11) )
      {
        std::vector<vox::RandomGroupElement *,vox::SAllocator<vox::RandomGroupElement *,(vox::VoxMemHint)0>>::_M_insert_overflow(
          (int)this + 36,
          v14,
          (_DWORD *)v13 + 2);
      }
      else
      {
        *(_DWORD *)(v12 - 4) = *((_DWORD *)v13 + 2);
        *((_DWORD *)this + 10) += 4;
      }
      v18 = *((int **)this + 12);
      v19 = v18;
      *((_DWORD *)this + 18) += *(_DWORD *)(v18[2] + 4);
      v20 = *v18;
      v21 = (_DWORD *)v18[1];
      *v21 = v20;
      *(_DWORD *)(v20 + 4) = v21;
      VoxFree(v19);
      *((_DWORD *)this + 22) = 1;
      v5 = *((_DWORD *)this + 17);
      v1 = *((_DWORD *)this + 6);
    }
    else
    {
      v1 = *((_DWORD *)this + 6);
      v5 = *((_DWORD *)this + 17);
      *((_DWORD *)this + 22) = 0;
    }
  }
  v17 = *((_DWORD *)this + 19);
  *((_DWORD *)this + 6) = v1 - 1;
  *((_DWORD *)this + 8) = v1;
  if ( v17 == 1 )
    v1 = *((_DWORD *)this + 5);
  *((_DWORD *)this + 19) = v17 - 1;
  *((_DWORD *)this + 21) = v17;
  if ( v17 == 1 )
  {
    *((_DWORD *)this + 5) = v1 - 1;
    *((_DWORD *)this + 7) = v1;
  }
  *((_DWORD *)this + 20) = v5;
  *((_DWORD *)this + 17) = vox::RandomGroup::GetActiveElementIndex(this);
  return v3;
}


// ===== 882f48 vox::RandomGroup::SetState(vox::RandomGroupState *) =====
void __fastcall vox::RandomGroup::SetState(_DWORD *a1, _DWORD *a2)
{
  int v3; // r2
  int v4; // r3
  int v5; // r1
  int v7; // r3
  int **v8; // r3
  int *v9; // r5
  int *v10; // r6
  int v11; // r8
  int v12; // r3
  _DWORD *v13; // r1
  int *v14; // r2
  _DWORD *v15; // r6
  _DWORD *i; // r0
  _DWORD *v17; // r5
  _DWORD *v18; // r7
  _DWORD *j; // r5
  _DWORD *v20; // r0
  _DWORD *v21; // r3

  v3 = a1[9];
  a1[5] = *a2;
  v4 = a2[1];
  v5 = a1[10];
  a1[6] = v4;
  a1[17] = a2[2];
  a1[18] = a2[3];
  a1[19] = a2[4];
  a1[7] = a2[5];
  a1[8] = a2[6];
  a1[20] = a2[7];
  v7 = a2[8];
  if ( v3 != v5 )
    a1[10] = v3;
  a1[21] = v7;
  v8 = (int **)a2[9];
  v9 = *v8;
  v10 = v8[1];
  if ( *v8 != v10 )
  {
    v11 = (int)(a1 + 9);
    do
    {
      while ( 1 )
      {
        v13 = (_DWORD *)a1[10];
        if ( v13 == (_DWORD *)a1[11] )
          break;
        v12 = *v9++;
        *v13 = v12;
        a1[10] += 4;
        if ( v9 == v10 )
          goto LABEL_8;
      }
      v14 = v9++;
      std::vector<vox::RandomGroupElement *,vox::SAllocator<vox::RandomGroupElement *,(vox::VoxMemHint)0>>::_M_insert_overflow(
        v11,
        (int)v13,
        v14);
    }
    while ( v9 != v10 );
  }
LABEL_8:
  v15 = (_DWORD *)a1[12];
  if ( v15 != a1 + 12 )
  {
    for ( i = (_DWORD *)a1[12]; ; i = v17 )
    {
      v17 = (_DWORD *)*i;
      VoxFree(i);
      if ( v17 == a1 + 12 )
        break;
    }
    v15 = a1 + 12;
  }
  a1[12] = v15;
  a1[13] = v15;
  v18 = (_DWORD *)a2[10];
  for ( j = (_DWORD *)*v18; v18 != j; j = (_DWORD *)*j )
  {
    v20 = VoxAlloc(0xCu, 0);
    v20[2] = j[2];
    v21 = (_DWORD *)a1[13];
    *v20 = v15;
    v20[1] = v21;
    *v21 = v20;
    a1[13] = v20;
  }
}


// ===== 883088 vox::RandomGroup::Reset(int) =====
int __fastcall vox::RandomGroup::Reset(vox::RandomGroup *this, int a2)
{
  char *v3; // r2
  char *v4; // r4
  char *i; // r8
  char *v7; // r3
  int v8; // r3
  int v9; // r12
  _DWORD *v10; // r1
  _DWORD *v11; // r0
  int *v12; // r0
  int *v13; // r2
  int v14; // r3
  int v15; // r3
  int v16; // r12
  int v17; // r1
  int v18; // r0
  int result; // r0
  int v20; // r2
  int v21; // r3
  int v22; // [sp+4h] [bp+0h] BYREF

  v3 = *((char **)this + 12);
  v4 = (char *)this + 48;
  for ( i = (char *)this + 36; v3 != v4; v3 = *((char **)this + 12) )
  {
    v7 = v3;
    do
      v7 = *(char **)v7;
    while ( v4 != v7 );
    v8 = *((_DWORD *)v3 + 2);
    v9 = *((_DWORD *)this + 18);
    v10 = *((_DWORD **)this + 10);
    v22 = v8;
    v11 = *((_DWORD **)this + 11);
    *((_DWORD *)this + 18) = v9 + *(_DWORD *)(v8 + 4);
    if ( v10 == v11 )
    {
      std::vector<vox::RandomGroupElement *,vox::SAllocator<vox::RandomGroupElement *,(vox::VoxMemHint)0>>::_M_insert_overflow(
        (int)i,
        (int)v10,
        &v22);
    }
    else
    {
      *v10 = v8;
      *((_DWORD *)this + 10) += 4;
    }
    v12 = *((int **)this + 12);
    v13 = (int *)v12[1];
    v14 = *v12;
    *v13 = *v12;
    *(_DWORD *)(v14 + 4) = v13;
    VoxFree(v12);
  }
  v15 = *((_DWORD *)this + 17);
  v16 = *((_DWORD *)this + 5);
  v17 = *((_DWORD *)this + 19);
  v18 = *((_DWORD *)this + 3);
  *((_DWORD *)this + 19) = *((_DWORD *)this + 14);
  *((_DWORD *)this + 20) = v15;
  *((_DWORD *)this + 5) = v18;
  *((_DWORD *)this + 7) = v16;
  *((_DWORD *)this + 21) = v17;
  result = vox::RandomGroup::GetActiveElementIndex(this);
  if ( !a2 )
  {
    v20 = *((_DWORD *)this + 6);
    v21 = *((_DWORD *)this + 4);
  }
  *((_DWORD *)this + 17) = result;
  if ( !a2 )
  {
    *((_DWORD *)this + 8) = v20;
    *((_DWORD *)this + 6) = v21;
  }
  return result;
}


// ===== 88317c vox::RandomGroup::RandomGroup(vox::RandomGroup&) =====
vox::RandomGroup *__fastcall vox::RandomGroup::RandomGroup(vox::RandomGroup *this, vox::RandomGroup *a2)
{
  _DWORD **v4; // r5
  _DWORD **i; // r7
  _DWORD *v6; // r0
  _DWORD *v7; // r3
  _DWORD *v8; // r1
  int v9; // r3
  int v10; // r2
  _DWORD *v12; // [sp+4h] [bp-4h] BYREF

  vox::SegmentGroup::SegmentGroup((int)this, a2);
  *((_DWORD *)this + 13) = (char *)this + 48;
  *(_DWORD *)this = off_993830;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = (char *)this + 48;
  v4 = *((_DWORD ***)a2 + 9);
  for ( i = *((_DWORD ***)a2 + 10); v4 != i; ++*((_DWORD *)this + 14) )
  {
    while ( 1 )
    {
      v6 = VoxAlloc(8u, 0);
      *v6 = 0;
      v6[1] = 0;
      v12 = v6;
      v7 = *v4;
      *v6 = **v4;
      v6[1] = v7[1];
      v8 = *((_DWORD **)this + 10);
      if ( v8 == *((_DWORD **)this + 11) )
        break;
      ++v4;
      *v8 = v12;
      *((_DWORD *)this + 10) += 4;
      ++*((_DWORD *)this + 14);
      if ( v4 == i )
        goto LABEL_6;
    }
    std::vector<vox::RandomGroupElement *,vox::SAllocator<vox::RandomGroupElement *,(vox::VoxMemHint)0>>::_M_insert_overflow(
      (int)this + 36,
      (int)v8,
      &v12);
    ++v4;
  }
LABEL_6:
  v9 = *((_DWORD *)this + 14);
  *((_DWORD *)this + 16) = *((_DWORD *)a2 + 16);
  *((_DWORD *)this + 15) = *((_DWORD *)a2 + 15);
  v10 = *((_DWORD *)a2 + 18);
  *((_DWORD *)this + 21) = v9;
  *((_DWORD *)this + 19) = v9;
  *((_DWORD *)this + 18) = v10;
  *((_DWORD *)this + 17) = vox::RandomGroup::GetActiveElementIndex(this);
  *((_DWORD *)this + 20) = -1;
  *((_DWORD *)this + 22) = *((_DWORD *)a2 + 22);
  return this;
}


// ===== 8832c0 vox::RandomGroup::RandomGroup(vox::RandomGroup&) =====
vox::RandomGroup *__fastcall vox::RandomGroup::RandomGroup(vox::RandomGroup *this, vox::RandomGroup *a2)
{
  _DWORD **v4; // r5
  _DWORD **i; // r7
  _DWORD *v6; // r0
  _DWORD *v7; // r3
  _DWORD *v8; // r1
  int v9; // r3
  int v10; // r2
  _DWORD *v12; // [sp+4h] [bp-4h] BYREF

  vox::SegmentGroup::SegmentGroup((int)this, a2);
  *((_DWORD *)this + 13) = (char *)this + 48;
  *(_DWORD *)this = off_993830;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = (char *)this + 48;
  v4 = *((_DWORD ***)a2 + 9);
  for ( i = *((_DWORD ***)a2 + 10); v4 != i; ++*((_DWORD *)this + 14) )
  {
    while ( 1 )
    {
      v6 = VoxAlloc(8u, 0);
      *v6 = 0;
      v6[1] = 0;
      v12 = v6;
      v7 = *v4;
      *v6 = **v4;
      v6[1] = v7[1];
      v8 = *((_DWORD **)this + 10);
      if ( v8 == *((_DWORD **)this + 11) )
        break;
      ++v4;
      *v8 = v12;
      *((_DWORD *)this + 10) += 4;
      ++*((_DWORD *)this + 14);
      if ( v4 == i )
        goto LABEL_6;
    }
    std::vector<vox::RandomGroupElement *,vox::SAllocator<vox::RandomGroupElement *,(vox::VoxMemHint)0>>::_M_insert_overflow(
      (int)this + 36,
      (int)v8,
      &v12);
    ++v4;
  }
LABEL_6:
  v9 = *((_DWORD *)this + 14);
  *((_DWORD *)this + 16) = *((_DWORD *)a2 + 16);
  *((_DWORD *)this + 15) = *((_DWORD *)a2 + 15);
  v10 = *((_DWORD *)a2 + 18);
  *((_DWORD *)this + 21) = v9;
  *((_DWORD *)this + 19) = v9;
  *((_DWORD *)this + 18) = v10;
  *((_DWORD *)this + 17) = vox::RandomGroup::GetActiveElementIndex(this);
  *((_DWORD *)this + 20) = -1;
  *((_DWORD *)this + 22) = *((_DWORD *)a2 + 22);
  return this;
}


// ===== 883404 vox::RandomGroup::SetToPreviousState(void) =====
void __fastcall vox::RandomGroup::SetToPreviousState(vox::RandomGroup *this)
{
  int v2; // r12
  int v3; // r1
  int v4; // r2
  int v5; // r3
  int v6; // r5
  _DWORD *v7; // r1
  int v8; // r2
  int *v9; // r3
  int *v10; // r0
  int v11; // r2
  _DWORD *v12; // r3
  _DWORD *v13; // r0
  _DWORD *v14; // r3

  v2 = *((_DWORD *)this + 15);
  v3 = *((_DWORD *)this + 8);
  v4 = *((_DWORD *)this + 20);
  v5 = *((_DWORD *)this + 21);
  *((_DWORD *)this + 5) = *((_DWORD *)this + 7);
  *((_DWORD *)this + 6) = v3;
  *((_DWORD *)this + 17) = v4;
  *((_DWORD *)this + 19) = v5;
  if ( v2 > 0 )
  {
    v6 = *((_DWORD *)this + 22);
    v7 = *((_DWORD **)this + 10);
    if ( v6 )
    {
      v6 = *--v7;
      *((_DWORD *)this + 10) = v7;
      *((_DWORD *)this + 18) -= *(_DWORD *)(v6 + 4);
    }
    v8 = *((_DWORD *)this + 13);
    if ( *((_DWORD **)this + 11) == v7 )
    {
      std::vector<vox::RandomGroupElement *,vox::SAllocator<vox::RandomGroupElement *,(vox::VoxMemHint)0>>::_M_insert_overflow(
        (int)this + 36,
        (int)v7,
        (_DWORD *)(v8 + 8));
    }
    else
    {
      *v7 = *(_DWORD *)(v8 + 8);
      *((_DWORD *)this + 10) += 4;
    }
    v9 = *((int **)this + 13);
    v10 = v9;
    *((_DWORD *)this + 18) += *(_DWORD *)(v9[2] + 4);
    v11 = *v9;
    v12 = (_DWORD *)v9[1];
    *v12 = v11;
    *(_DWORD *)(v11 + 4) = v12;
    VoxFree(v10);
    if ( v6 )
    {
      v13 = VoxAlloc(0xCu, 0);
      v13[2] = v6;
      v14 = *((_DWORD **)this + 13);
      *v13 = (char *)this + 48;
      v13[1] = v14;
      *v14 = v13;
      *((_DWORD *)this + 13) = v13;
    }
  }
}


// ===== 8834f0 vox::RandomGroup::SetState(vox::RandomGroup&) =====
_DWORD *__fastcall vox::RandomGroup::SetState(vox::RandomGroup *this, vox::RandomGroup **a2)
{
  _DWORD *result; // r0
  _DWORD *v5; // r1
  int v6; // r7
  int v7; // r8
  int v8; // r5
  int v9; // r2
  int i; // r3
  vox::RandomGroup *v11; // r3
  int v12; // r2
  int v13; // r3
  int v14; // r8
  int v15; // r5
  int v16; // r9
  int v17; // r2
  int v18; // r5
  _DWORD *v19; // r3

  result = (_DWORD *)vox::SegmentGroup::SetState((int)this, (vox::SegmentGroup *)a2);
  v5 = *((_DWORD **)this + 10);
  v6 = (a2[10] - a2[9]) >> 2;
  v7 = v6 - (((int)v5 - *((_DWORD *)this + 9)) >> 2);
  if ( v7 > 0 )
  {
    v8 = 0;
    while ( 1 )
    {
      v9 = *((_DWORD *)this + 12);
      if ( v5 == *((_DWORD **)this + 11) )
      {
        ++v8;
        std::vector<vox::RandomGroupElement *,vox::SAllocator<vox::RandomGroupElement *,(vox::VoxMemHint)0>>::_M_insert_overflow(
          (int)this + 36,
          (int)v5,
          (_DWORD *)(v9 + 8));
        if ( v8 == v7 )
          goto LABEL_7;
      }
      else
      {
        ++v8;
        *v5 = *(_DWORD *)(v9 + 8);
        *((_DWORD *)this + 10) += 4;
        if ( v8 == v7 )
          goto LABEL_7;
      }
      v5 = *((_DWORD **)this + 10);
    }
  }
  if ( v6 != ((int)v5 - *((_DWORD *)this + 9)) >> 2 )
  {
    v14 = (((int)v5 - *((_DWORD *)this + 9)) >> 2) - v6;
    v15 = 0;
    do
    {
      v17 = *((_DWORD *)this + 12);
      if ( *((_DWORD **)this + 11) == v5 )
      {
        std::vector<vox::RandomGroupElement *,vox::SAllocator<vox::RandomGroupElement *,(vox::VoxMemHint)0>>::_M_insert_overflow(
          (int)this + 36,
          (int)v5,
          (_DWORD *)(v17 + 8));
        v5 = *((_DWORD **)this + 10);
        v16 = (int)v5;
      }
      else
      {
        *v5 = *(_DWORD *)(v17 + 8);
        v16 = *((_DWORD *)this + 10) + 4;
        *((_DWORD *)this + 10) = v16;
        v5 = (_DWORD *)v16;
      }
      ++v15;
    }
    while ( v14 > v15 );
    v18 = *((_DWORD *)this + 12);
    result = VoxAlloc(0xCu, 0);
    result[2] = *(_DWORD *)(v16 - 4);
    v19 = *(_DWORD **)(v18 + 4);
    *result = v18;
    result[1] = v19;
    *v19 = result;
    *(_DWORD *)(v18 + 4) = result;
  }
LABEL_7:
  if ( v6 > 0 )
  {
    for ( i = 0; i != v6; ++i )
      *(_DWORD *)(*((_DWORD *)this + 9) + 4 * i) = *((_DWORD *)a2[9] + i);
  }
  v11 = a2[12];
  if ( v11 != (vox::RandomGroup *)(a2 + 12) )
  {
    v12 = 0;
    do
    {
      v11 = *(vox::RandomGroup **)v11;
      ++v12;
    }
    while ( a2 + 12 != (vox::RandomGroup **)v11 );
    v13 = 0;
    do
      ++v13;
    while ( v13 != v12 );
  }
  *((_DWORD *)this + 16) = a2[16];
  *((_DWORD *)this + 15) = a2[15];
  *((_DWORD *)this + 18) = a2[18];
  *((_DWORD *)this + 19) = a2[19];
  *((_DWORD *)this + 21) = a2[21];
  *((_DWORD *)this + 17) = a2[17];
  *((_DWORD *)this + 20) = a2[20];
  *((_DWORD *)this + 22) = a2[22];
  return result;
}


// ===== 8836b0 vox::RandomGroup::AddElement(vox::RandomGroupElement *) =====
int __fastcall vox::RandomGroup::AddElement(_DWORD *a1, int *a2)
{
  _DWORD *v4; // r0
  int v5; // r3
  _DWORD *v6; // r1
  int v7; // r1
  int v8; // r3
  int v9; // r2
  int result; // r0
  _DWORD *v11; // [sp+4h] [bp-8h] BYREF

  v4 = VoxAlloc(8u, 0);
  v4[1] = 0;
  *v4 = 0;
  v5 = *a2;
  v11 = v4;
  *v4 = v5;
  v4[1] = a2[1];
  v6 = (_DWORD *)a1[10];
  if ( v6 == (_DWORD *)a1[11] )
  {
    std::vector<vox::RandomGroupElement *,vox::SAllocator<vox::RandomGroupElement *,(vox::VoxMemHint)0>>::_M_insert_overflow(
      (int)(a1 + 9),
      (int)v6,
      &v11);
  }
  else
  {
    *v6 = v11;
    a1[10] += 4;
  }
  v7 = a1[16];
  v8 = a1[14] + 1;
  v9 = v11[1];
  result = a1[18];
  a1[14] = v8;
  if ( v7 == -1 )
    v8 = a1[15];
  a1[18] = result + v9;
  if ( v7 == -1 )
    a1[15] = v8 + 1;
  return result;
}


// ===== 88375c std::vector<vox::PlaylistElement *,vox::SAllocator<vox::PlaylistElement *,(vox::VoxMemHint)0>>::_M_insert_overflow(vox::PlaylistElement **,vox::PlaylistElement * const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<vox::PlaylistElement *,vox::SAllocator<vox::PlaylistElement *,(vox::VoxMemHint)0>>::_M_insert_overflow(
        int a1,
        int a2,
        _DWORD *a3)
{
  unsigned int v6; // r3
  unsigned int v7; // r7
  size_t v8; // r7
  char *v9; // r0
  char *v10; // r5
  size_t v11; // r6
  char *v12; // r6

  v6 = (*(_DWORD *)(a1 + 4) - *(_DWORD *)a1) >> 2;
  if ( v6 )
    v7 = 2 * v6;
  else
    v7 = 1;
  if ( v7 > 0x3FFFFFFF || v6 > v7 )
    v8 = -4;
  else
    v8 = 4 * v7;
  v9 = (char *)VoxAlloc(v8, 0);
  v10 = v9;
  v11 = a2 - *(_DWORD *)a1;
  if ( v11 )
    v12 = (char *)memmove(v9, *(const void **)a1, v11) + v11;
  else
    v12 = v9;
  *(_DWORD *)v12 = *a3;
  VoxFree(*(void **)a1);
  *(_DWORD *)a1 = v10;
  *(_DWORD *)(a1 + 4) = v12 + 4;
  *(_DWORD *)(a1 + 8) = &v10[v8];
}


// ===== 8837ec std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::_M_insert_overflow(int *,int const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::_M_insert_overflow(
        int a1,
        int a2,
        _DWORD *a3)
{
  unsigned int v6; // r3
  unsigned int v7; // r7
  size_t v8; // r7
  char *v9; // r0
  char *v10; // r5
  size_t v11; // r6
  char *v12; // r6

  v6 = (*(_DWORD *)(a1 + 4) - *(_DWORD *)a1) >> 2;
  if ( v6 )
    v7 = 2 * v6;
  else
    v7 = 1;
  if ( v7 > 0x3FFFFFFF || v6 > v7 )
    v8 = -4;
  else
    v8 = 4 * v7;
  v9 = (char *)VoxAlloc(v8, 0);
  v10 = v9;
  v11 = a2 - *(_DWORD *)a1;
  if ( v11 )
    v12 = (char *)memmove(v9, *(const void **)a1, v11) + v11;
  else
    v12 = v9;
  *(_DWORD *)v12 = *a3;
  VoxFree(*(void **)a1);
  *(_DWORD *)a1 = v10;
  *(_DWORD *)(a1 + 4) = v12 + 4;
  *(_DWORD *)(a1 + 8) = &v10[v8];
}


// ===== 88387c vox::SequentialGroup::AddElement(int) =====
void __fastcall vox::SequentialGroup::AddElement(vox::SequentialGroup *this, int a2)
{
  _DWORD *v2; // r3
  _DWORD *v3; // r2
  int v4; // [sp+4h] [bp-8h] BYREF

  v2 = *((_DWORD **)this + 10);
  v3 = *((_DWORD **)this + 11);
  v4 = a2;
  if ( v2 == v3 )
  {
    std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::_M_insert_overflow((int)this + 36, (int)v2, &v4);
  }
  else
  {
    *v2 = a2;
    *((_DWORD *)this + 10) += 4;
  }
}


// ===== 8838c4 vox::NativePlaylist::AddPlaylistElement(vox::PlaylistElementInfos *) =====
_DWORD *__fastcall vox::NativePlaylist::AddPlaylistElement(int a1, int *a2)
{
  _DWORD *v4; // r6
  _DWORD *result; // r0
  _DWORD *v6; // r1
  int v7; // r1
  int v8; // r2
  int v9; // r3
  int v10[2]; // [sp+4h] [bp-Ch] BYREF
  _DWORD *v11; // [sp+Ch] [bp-4h] BYREF

  v4 = VoxAlloc(0x14u, 0);
  result = vox::PlaylistElement::PlaylistElement(v4);
  v11 = v4;
  if ( v4 )
  {
    *v4 = a2[3];
    v11[2] = a2[4];
    v11[3] = a2[5];
    v11[4] = a2[6];
    v6 = *(_DWORD **)(a1 + 52);
    if ( v6 == *(_DWORD **)(a1 + 56) )
    {
      std::vector<vox::PlaylistElement *,vox::SAllocator<vox::PlaylistElement *,(vox::VoxMemHint)0>>::_M_insert_overflow(
        a1 + 48,
        (int)v6,
        &v11);
    }
    else
    {
      *v6 = v11;
      *(_DWORD *)(a1 + 52) += 4;
    }
    if ( vox::SegmentGroup::GetSelectMode(*(vox::SegmentGroup **)(*(_DWORD *)(a1 + 36) + 4 * a2[2])) )
    {
      v7 = a2[7];
      v8 = a2[2];
      v9 = *(_DWORD *)(a1 + 36);
      v10[0] = a2[1];
      v10[1] = v7;
      vox::RandomGroup::AddElement(*(_DWORD **)(v9 + 4 * v8), v10);
    }
    else
    {
      vox::SequentialGroup::AddElement(*(vox::SequentialGroup **)(*(_DWORD *)(a1 + 36) + 4 * a2[2]), a2[1]);
    }
    result = (_DWORD *)vox::SegmentGroup::IsValid(*(vox::SegmentGroup **)(*(_DWORD *)(a1 + 36) + 4 * a2[2]));
    if ( !result )
      *(_BYTE *)a1 = 0;
  }
  else
  {
    *(_BYTE *)a1 = 0;
  }
  return result;
}


// ===== 8839c8 vox::NativePlaylistsManager::AddPlaylistElement(vox::PlaylistElementInfos *) =====
int __fastcall vox::NativePlaylistsManager::AddPlaylistElement(int a1, int *a2)
{
  int result; // r0

  vox::NativePlaylist::AddPlaylistElement(*(_DWORD *)(*(_DWORD *)(a1 + 12) + 4 * *a2), a2);
  result = vox::NativePlaylist::IsValid(*(vox::NativePlaylist **)(*(_DWORD *)(a1 + 12) + 4 * *a2));
  *(_BYTE *)a1 = result;
  return result;
}


// ===== 8839fc vox::SequentialGroup::SequentialGroup(vox::SequentialGroup&) =====
vox::SequentialGroup *__fastcall vox::SequentialGroup::SequentialGroup(
        vox::SequentialGroup *this,
        vox::SequentialGroup *a2)
{
  int v4; // r1
  int *v5; // r6
  int *v6; // r5
  _DWORD *v7; // r3
  int v8; // r2
  int *v9; // r2

  vox::SegmentGroup::SegmentGroup((int)this, a2);
  v4 = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *(_DWORD *)this = off_993800;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = *((_DWORD *)a2 + 12);
  *((_DWORD *)this + 13) = *((_DWORD *)a2 + 13);
  v5 = *((int **)a2 + 10);
  v6 = *((int **)a2 + 9);
  if ( v6 != v5 )
  {
    v7 = nullptr;
    while ( 1 )
    {
      if ( (_DWORD *)v4 == v7 )
      {
        v9 = v6++;
        std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::_M_insert_overflow((int)this + 36, v4, v9);
        if ( v6 == v5 )
          return this;
      }
      else
      {
        v8 = *v6++;
        *v7 = v8;
        *((_DWORD *)this + 10) += 4;
        if ( v6 == v5 )
          return this;
      }
      v7 = *((_DWORD **)this + 10);
      v4 = *((_DWORD *)this + 11);
    }
  }
  return this;
}


// ===== 883ab8 vox::SequentialGroup::SequentialGroup(vox::SequentialGroup&) =====
vox::SequentialGroup *__fastcall vox::SequentialGroup::SequentialGroup(
        vox::SequentialGroup *this,
        vox::SequentialGroup *a2)
{
  int v4; // r1
  int *v5; // r6
  int *v6; // r5
  _DWORD *v7; // r3
  int v8; // r2
  int *v9; // r2

  vox::SegmentGroup::SegmentGroup((int)this, a2);
  v4 = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *(_DWORD *)this = off_993800;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = *((_DWORD *)a2 + 12);
  *((_DWORD *)this + 13) = *((_DWORD *)a2 + 13);
  v5 = *((int **)a2 + 10);
  v6 = *((int **)a2 + 9);
  if ( v6 != v5 )
  {
    v7 = nullptr;
    while ( 1 )
    {
      if ( (_DWORD *)v4 == v7 )
      {
        v9 = v6++;
        std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::_M_insert_overflow((int)this + 36, v4, v9);
        if ( v6 == v5 )
          return this;
      }
      else
      {
        v8 = *v6++;
        *v7 = v8;
        *((_DWORD *)this + 10) += 4;
        if ( v6 == v5 )
          return this;
      }
      v7 = *((_DWORD **)this + 10);
      v4 = *((_DWORD *)this + 11);
    }
  }
  return this;
}


// ===== 883b74 std::vector<vox::SegmentGroup *,vox::SAllocator<vox::SegmentGroup *,(vox::VoxMemHint)0>>::_M_insert_overflow(vox::SegmentGroup **,vox::SegmentGroup * const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<vox::SegmentGroup *,vox::SAllocator<vox::SegmentGroup *,(vox::VoxMemHint)0>>::_M_insert_overflow(
        int a1,
        int a2,
        _DWORD *a3)
{
  unsigned int v6; // r3
  unsigned int v7; // r7
  size_t v8; // r7
  char *v9; // r0
  char *v10; // r5
  size_t v11; // r6
  char *v12; // r6

  v6 = (*(_DWORD *)(a1 + 4) - *(_DWORD *)a1) >> 2;
  if ( v6 )
    v7 = 2 * v6;
  else
    v7 = 1;
  if ( v7 > 0x3FFFFFFF || v6 > v7 )
    v8 = -4;
  else
    v8 = 4 * v7;
  v9 = (char *)VoxAlloc(v8, 0);
  v10 = v9;
  v11 = a2 - *(_DWORD *)a1;
  if ( v11 )
    v12 = (char *)memmove(v9, *(const void **)a1, v11) + v11;
  else
    v12 = v9;
  *(_DWORD *)v12 = *a3;
  VoxFree(*(void **)a1);
  *(_DWORD *)a1 = v10;
  *(_DWORD *)(a1 + 4) = v12 + 4;
  *(_DWORD *)(a1 + 8) = &v10[v8];
}


// ===== 883c04 vox::NativePlaylist::AddGroup(vox::GroupInfos *) =====
void __fastcall vox::NativePlaylist::AddGroup(int a1, _DWORD *a2)
{
  _DWORD *v4; // r5
  _DWORD *v5; // r1
  _DWORD *v6; // [sp+4h] [bp-4h] BYREF

  if ( a2[2] )
  {
    v4 = VoxAlloc(0x5Cu, 0);
    vox::RandomGroup::RandomGroup(v4, a2, *(_DWORD *)(a1 + 4));
  }
  else
  {
    v4 = VoxAlloc(0x38u, 0);
    vox::SequentialGroup::SequentialGroup(v4, a2, *(_DWORD *)(a1 + 4));
  }
  v6 = v4;
  if ( v4 )
  {
    v5 = *(_DWORD **)(a1 + 40);
    if ( v5 == *(_DWORD **)(a1 + 44) )
    {
      std::vector<vox::SegmentGroup *,vox::SAllocator<vox::SegmentGroup *,(vox::VoxMemHint)0>>::_M_insert_overflow(
        a1 + 36,
        (int)v5,
        &v6);
    }
    else
    {
      *v5 = v4;
      *(_DWORD *)(a1 + 40) += 4;
    }
  }
  else
  {
    *(_BYTE *)a1 = 0;
  }
}


// ===== 883ca4 vox::NativePlaylistsManager::AddGroup(vox::GroupInfos *) =====
int __fastcall vox::NativePlaylistsManager::AddGroup(int a1, _DWORD *a2)
{
  int result; // r0

  vox::NativePlaylist::AddGroup(*(_DWORD *)(*(_DWORD *)(a1 + 12) + 4 * *a2), a2);
  result = vox::NativePlaylist::IsValid(*(vox::NativePlaylist **)(*(_DWORD *)(a1 + 12) + 4 * *a2));
  *(_BYTE *)a1 = result;
  return result;
}


// ===== 883cd8 vox::NativePlaylist::NativePlaylist(vox::NativePlaylist&) =====
vox::NativePlaylist *__fastcall vox::NativePlaylist::NativePlaylist(vox::NativePlaylist *this, vox::NativePlaylist *a2)
{
  vox::RandomGroup **v4; // r5
  vox::RandomGroup **v5; // r6
  char *v6; // r10
  vox::RandomGroup *v7; // r9
  vox::SegmentGroup *v8; // r0
  vox::RandomGroup **v9; // r1
  vox::PlaylistElement **v11; // r6
  vox::PlaylistElement **v12; // r5
  _DWORD *v13; // r10
  _DWORD *v14; // r1
  _DWORD *v15; // [sp+0h] [bp-8h] BYREF
  vox::RandomGroup *v16; // [sp+4h] [bp-4h] BYREF

  *((_DWORD *)this + 14) = 0;
  *(_BYTE *)this = 1;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 1) = *((_DWORD *)a2 + 1);
  *((_DWORD *)this + 2) = *((_DWORD *)a2 + 2);
  *((_DWORD *)this + 3) = *((_DWORD *)a2 + 3);
  *((_DWORD *)this + 4) = *((_DWORD *)a2 + 4);
  *((_DWORD *)this + 5) = *((_DWORD *)a2 + 5);
  *((_DWORD *)this + 6) = *((_DWORD *)a2 + 6);
  *((_DWORD *)this + 7) = *((_DWORD *)a2 + 7);
  *((_DWORD *)this + 8) = *((_DWORD *)a2 + 8);
  v4 = *((vox::RandomGroup ***)a2 + 9);
  v5 = *((vox::RandomGroup ***)a2 + 10);
  if ( v4 == v5 )
  {
LABEL_12:
    v11 = *((vox::PlaylistElement ***)a2 + 13);
    v12 = *((vox::PlaylistElement ***)a2 + 12);
    if ( v12 != v11 )
    {
      while ( 1 )
      {
        v13 = VoxAlloc(0x14u, 0);
        vox::PlaylistElement::PlaylistElement(v13, *v12);
        v15 = v13;
        if ( !v13 )
          break;
        v14 = *((_DWORD **)this + 13);
        if ( v14 == *((_DWORD **)this + 14) )
        {
          std::vector<vox::PlaylistElement *,vox::SAllocator<vox::PlaylistElement *,(vox::VoxMemHint)0>>::_M_insert_overflow(
            (int)this + 48,
            (int)v14,
            &v15);
        }
        else
        {
          *v14 = v13;
          *((_DWORD *)this + 13) += 4;
        }
        if ( ++v12 == v11 )
          return this;
      }
      *(_BYTE *)this = 0;
    }
  }
  else
  {
    v6 = (char *)this + 36;
    while ( 1 )
    {
      if ( vox::SegmentGroup::GetSelectMode(*v4) )
      {
        v7 = (vox::RandomGroup *)VoxAlloc(0x5Cu, 0);
        vox::RandomGroup::RandomGroup(v7, *v4);
        v8 = v7;
        v16 = v7;
        if ( !v7 )
        {
LABEL_9:
          *(_BYTE *)this = (_BYTE)v7;
          return this;
        }
      }
      else
      {
        v7 = (vox::RandomGroup *)VoxAlloc(0x38u, 0);
        vox::SequentialGroup::SequentialGroup(v7, *v4);
        v8 = v7;
        v16 = v7;
        if ( !v7 )
          goto LABEL_9;
      }
      if ( !vox::SegmentGroup::IsValid(v8) )
        break;
      v9 = *((vox::RandomGroup ***)this + 10);
      if ( v9 == *((vox::RandomGroup ***)this + 11) )
      {
        ++v4;
        std::vector<vox::SegmentGroup *,vox::SAllocator<vox::SegmentGroup *,(vox::VoxMemHint)0>>::_M_insert_overflow(
          (int)v6,
          (int)v9,
          &v16);
        if ( v4 == v5 )
          goto LABEL_12;
      }
      else
      {
        ++v4;
        *v9 = v16;
        *((_DWORD *)this + 10) += 4;
        if ( v4 == v5 )
          goto LABEL_12;
      }
    }
    *(_BYTE *)this = 0;
  }
  return this;
}


// ===== 883eac vox::NativePlaylistsManager::NativePlaylistsManager(vox::NativePlaylistsManager&) =====
vox::NativePlaylistsManager *__fastcall vox::NativePlaylistsManager::NativePlaylistsManager(
        vox::NativePlaylistsManager *this,
        vox::NativePlaylistsManager *a2)
{
  int v2; // r4
  void *IsValid; // r0
  vox::NativePlaylist *v6; // r7
  int v7; // r3

  *(_BYTE *)this = 1;
  v2 = 0;
  *((_DWORD *)this + 1) = *((_DWORD *)a2 + 1);
  *((_DWORD *)this + 2) = 0;
  IsValid = VoxAlloc(4 * *((_DWORD *)a2 + 2));
  *((_DWORD *)this + 3) = IsValid;
  if ( IsValid )
  {
    while ( 1 )
    {
      if ( *((_DWORD *)a2 + 2) <= v2 )
        return this;
      v6 = (vox::NativePlaylist *)VoxAlloc(0x3Cu, 0);
      vox::NativePlaylist::NativePlaylist(v6, *(vox::NativePlaylist **)(*((_DWORD *)a2 + 3) + 4 * v2));
      *(_DWORD *)(*((_DWORD *)this + 3) + 4 * v2) = v6;
      v7 = *((_DWORD *)this + 3);
      if ( !*(_DWORD *)(v7 + 4 * v2) )
        break;
      ++*((_DWORD *)this + 2);
      IsValid = (void *)vox::NativePlaylist::IsValid(*(vox::NativePlaylist **)(v7 + 4 * v2++));
      if ( !IsValid )
        goto LABEL_7;
    }
    *(_BYTE *)this = 0;
    return this;
  }
  else
  {
LABEL_7:
    *(_BYTE *)this = (_BYTE)IsValid;
    return this;
  }
}


// ===== 883f68 vox::NativePlaylistsManager::NativePlaylistsManager(vox::NativePlaylistsManager&) =====
vox::NativePlaylistsManager *__fastcall vox::NativePlaylistsManager::NativePlaylistsManager(
        vox::NativePlaylistsManager *this,
        vox::NativePlaylistsManager *a2)
{
  int v2; // r4
  void *IsValid; // r0
  vox::NativePlaylist *v6; // r7
  int v7; // r3

  *(_BYTE *)this = 1;
  v2 = 0;
  *((_DWORD *)this + 1) = *((_DWORD *)a2 + 1);
  *((_DWORD *)this + 2) = 0;
  IsValid = VoxAlloc(4 * *((_DWORD *)a2 + 2));
  *((_DWORD *)this + 3) = IsValid;
  if ( IsValid )
  {
    while ( 1 )
    {
      if ( *((_DWORD *)a2 + 2) <= v2 )
        return this;
      v6 = (vox::NativePlaylist *)VoxAlloc(0x3Cu, 0);
      vox::NativePlaylist::NativePlaylist(v6, *(vox::NativePlaylist **)(*((_DWORD *)a2 + 3) + 4 * v2));
      *(_DWORD *)(*((_DWORD *)this + 3) + 4 * v2) = v6;
      v7 = *((_DWORD *)this + 3);
      if ( !*(_DWORD *)(v7 + 4 * v2) )
        break;
      ++*((_DWORD *)this + 2);
      IsValid = (void *)vox::NativePlaylist::IsValid(*(vox::NativePlaylist **)(v7 + 4 * v2++));
      if ( !IsValid )
        goto LABEL_7;
    }
    *(_BYTE *)this = 0;
    return this;
  }
  else
  {
LABEL_7:
    *(_BYTE *)this = (_BYTE)IsValid;
    return this;
  }
}


// ===== 884024 vox::NativePlaylist::NativePlaylist(vox::NativePlaylist&) =====
vox::NativePlaylist *__fastcall vox::NativePlaylist::NativePlaylist(vox::NativePlaylist *this, vox::NativePlaylist *a2)
{
  vox::RandomGroup **v4; // r5
  vox::RandomGroup **v5; // r6
  char *v6; // r10
  vox::RandomGroup *v7; // r9
  vox::SegmentGroup *v8; // r0
  vox::RandomGroup **v9; // r1
  vox::PlaylistElement **v11; // r6
  vox::PlaylistElement **v12; // r5
  _DWORD *v13; // r10
  _DWORD *v14; // r1
  _DWORD *v15; // [sp+0h] [bp-8h] BYREF
  vox::RandomGroup *v16; // [sp+4h] [bp-4h] BYREF

  *((_DWORD *)this + 14) = 0;
  *(_BYTE *)this = 1;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 1) = *((_DWORD *)a2 + 1);
  *((_DWORD *)this + 2) = *((_DWORD *)a2 + 2);
  *((_DWORD *)this + 3) = *((_DWORD *)a2 + 3);
  *((_DWORD *)this + 4) = *((_DWORD *)a2 + 4);
  *((_DWORD *)this + 5) = *((_DWORD *)a2 + 5);
  *((_DWORD *)this + 6) = *((_DWORD *)a2 + 6);
  *((_DWORD *)this + 7) = *((_DWORD *)a2 + 7);
  *((_DWORD *)this + 8) = *((_DWORD *)a2 + 8);
  v4 = *((vox::RandomGroup ***)a2 + 9);
  v5 = *((vox::RandomGroup ***)a2 + 10);
  if ( v4 == v5 )
  {
LABEL_12:
    v11 = *((vox::PlaylistElement ***)a2 + 13);
    v12 = *((vox::PlaylistElement ***)a2 + 12);
    if ( v12 != v11 )
    {
      while ( 1 )
      {
        v13 = VoxAlloc(0x14u, 0);
        vox::PlaylistElement::PlaylistElement(v13, *v12);
        v15 = v13;
        if ( !v13 )
          break;
        v14 = *((_DWORD **)this + 13);
        if ( v14 == *((_DWORD **)this + 14) )
        {
          std::vector<vox::PlaylistElement *,vox::SAllocator<vox::PlaylistElement *,(vox::VoxMemHint)0>>::_M_insert_overflow(
            (int)this + 48,
            (int)v14,
            &v15);
        }
        else
        {
          *v14 = v13;
          *((_DWORD *)this + 13) += 4;
        }
        if ( ++v12 == v11 )
          return this;
      }
      *(_BYTE *)this = 0;
    }
  }
  else
  {
    v6 = (char *)this + 36;
    while ( 1 )
    {
      if ( vox::SegmentGroup::GetSelectMode(*v4) )
      {
        v7 = (vox::RandomGroup *)VoxAlloc(0x5Cu, 0);
        vox::RandomGroup::RandomGroup(v7, *v4);
        v8 = v7;
        v16 = v7;
        if ( !v7 )
        {
LABEL_9:
          *(_BYTE *)this = (_BYTE)v7;
          return this;
        }
      }
      else
      {
        v7 = (vox::RandomGroup *)VoxAlloc(0x38u, 0);
        vox::SequentialGroup::SequentialGroup(v7, *v4);
        v8 = v7;
        v16 = v7;
        if ( !v7 )
          goto LABEL_9;
      }
      if ( !vox::SegmentGroup::IsValid(v8) )
        break;
      v9 = *((vox::RandomGroup ***)this + 10);
      if ( v9 == *((vox::RandomGroup ***)this + 11) )
      {
        ++v4;
        std::vector<vox::SegmentGroup *,vox::SAllocator<vox::SegmentGroup *,(vox::VoxMemHint)0>>::_M_insert_overflow(
          (int)v6,
          (int)v9,
          &v16);
        if ( v4 == v5 )
          goto LABEL_12;
      }
      else
      {
        ++v4;
        *v9 = v16;
        *((_DWORD *)this + 10) += 4;
        if ( v4 == v5 )
          goto LABEL_12;
      }
    }
    *(_BYTE *)this = 0;
  }
  return this;
}


// ===== 8841f8 vox::VoxNativeSubDecoder::~VoxNativeSubDecoder() =====
void __fastcall vox::VoxNativeSubDecoder::~VoxNativeSubDecoder(vox::VoxNativeSubDecoder *this)
{
  ;
}


// ===== 8841fc vox::VoxNativeSubDecoder::EmulateMixSegmentInBuffer(int,vox::SegmentState *) =====
int __fastcall vox::VoxNativeSubDecoder::EmulateMixSegmentInBuffer(int a1, int a2, _DWORD *a3)
{
  int v3; // r7
  int v4; // r6
  int v5; // r8
  int v6; // r3
  int result; // r0
  int v8; // r5
  int v9; // r7
  int v10; // r6

  v3 = a3[10];
  v4 = a2 / (*(__int16 *)(a1 + 10) * (*(__int16 *)(a1 + 18) >> 3));
  v5 = a3[14];
  v6 = v3 - v4;
  a3[10] = v3 - v4;
  if ( v3 - v4 < 0 )
  {
    v6 = 0;
    a3[10] = 0;
  }
  result = a3[13];
  v8 = a3[12];
  if ( v3 > 0 )
  {
    if ( v4 < v3 )
      v3 = v4;
    v4 -= v3;
  }
  if ( v8 > 0 )
  {
    if ( v4 < v8 )
    {
      v9 = a3[1];
      if ( v9 == 3 )
        result = -v5 / v4;
    }
    else
    {
      v9 = a3[1];
      v4 = a3[12];
    }
    v8 -= v4;
    v10 = v5 + v4 * result;
    a3[12] = v8;
    if ( v8 < 0 )
    {
      v8 = 0;
      a3[12] = 0;
    }
    a3[14] = v10;
  }
  else
  {
    v9 = a3[1];
  }
  if ( !v8 )
  {
    if ( result < 0 )
      v6 = 1;
    a3[14] = 0;
    a3[10] = 0;
    a3[11] = 0;
    a3[12] = 0;
    a3[13] = 0;
    if ( result < 0 )
      a3[9] = v6;
  }
  if ( v9 == 3 )
    a3[9] = 1;
  return result;
}


// ===== 8842e8 vox::VoxNativeSubDecoder::EmulateMixMultipleSegments(int) =====
int __fastcall vox::VoxNativeSubDecoder::EmulateMixMultipleSegments(vox::VoxNativeSubDecoder *this, int a2)
{
  int v4; // r6
  int v5; // r5
  _DWORD *v7; // r7
  int v8; // r3

  if ( *((int *)this + 47) > 2 )
  {
    v7 = (_DWORD *)((char *)this + 152);
    v4 = (*(int (__fastcall **)(vox::VoxNativeSubDecoder *, int, char *))(*(_DWORD *)this + 52))(
           this,
           a2,
           (char *)this + 152);
    vox::VoxNativeSubDecoder::EmulateMixSegmentInBuffer((int)this, v4, v7);
    if ( *((int *)this + 64) <= 2 )
      goto LABEL_5;
  }
  else
  {
    v4 = 0;
    if ( *((int *)this + 64) <= 2 )
      goto LABEL_5;
  }
  v8 = (*(int (__fastcall **)(vox::VoxNativeSubDecoder *, int, char *))(*(_DWORD *)this + 52))(
         this,
         a2,
         (char *)this + 220);
  if ( v4 < v8 )
    v4 = v8;
  vox::VoxNativeSubDecoder::EmulateMixSegmentInBuffer((int)this, v8, (_DWORD *)this + 55);
LABEL_5:
  v5 = (*(int (__fastcall **)(vox::VoxNativeSubDecoder *, int))(*(_DWORD *)this + 48))(this, a2);
  vox::VoxNativeSubDecoder::EmulateMixSegmentInBuffer((int)this, v5, (_DWORD *)this + 72);
  if ( v5 < v4 )
    return v4;
  else
    return v5;
}


// ===== 8843b8 vox::VoxNativeSubDecoder::GetNextDyingSegmentLifeState(void) =====
int __fastcall vox::VoxNativeSubDecoder::GetNextDyingSegmentLifeState(vox::VoxNativeSubDecoder *this)
{
  if ( *((int *)this + 37) <= 1 )
    return 2;
  if ( *((_DWORD *)this + 26) == 1 )
  {
    if ( *((_DWORD *)this + 15) != *((_DWORD *)this + 14) && *((_DWORD *)this + 86) < *((_DWORD *)this + 69) )
      return 1;
    return 2;
  }
  if ( *((_DWORD *)this + 27) != 1
    || *((_DWORD *)this + 75) >= *(_DWORD *)(*(_DWORD *)(**((_DWORD **)this + 11) + 12 * *((_DWORD *)this + 72)) + 4) )
  {
    return 2;
  }
  return 1;
}


// ===== 884438 vox::VoxNativeSubDecoder::GetTrackParams(void) =====
_DWORD *__fastcall vox::VoxNativeSubDecoder::GetTrackParams(_DWORD *this, int a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = *(__int16 *)(a2 + 10);
  *(this + 1) = *(_DWORD *)(a2 + 12);
  *(this + 2) = *(__int16 *)(a2 + 18);
  return this;
}


// ===== 884468 vox::VoxNativeSubDecoder::HasData(void) =====
int __fastcall vox::VoxNativeSubDecoder::HasData(vox::VoxNativeSubDecoder *this)
{
  return *((unsigned __int8 *)this + 364);
}


// ===== 884470 vox::VoxNativeSubDecoder::IsExtraSegmentNeeded(vox::TransitionRule *) =====
int __fastcall vox::VoxNativeSubDecoder::IsExtraSegmentNeeded(_DWORD *a1, int a2)
{
  int v2; // r3

  v2 = a1[37];
  if ( v2 <= 0 )
    return v2 == 0;
  if ( a2 )
  {
    if ( !*(_DWORD *)(a2 + 4) )
      return *(float *)(a2 + 24) > 0.0;
    return 1;
  }
  if ( a1[28] == 1 )
    return 1;
  return a1[32] == 1;
}


// ===== 8844e8 vox::VoxNativeSubDecoder::MixSegmentInBuffer(short *,int,vox::SegmentState *) =====
int __fastcall vox::VoxNativeSubDecoder::MixSegmentInBuffer(int a1, int a2, int a3, _DWORD *a4)
{
  int v4; // r4
  int v7; // r7
  int v8; // r1
  int v9; // r8
  int v10; // r3
  int v11; // r10
  int v12; // r0
  int v13; // r2
  int v14; // r0
  int result; // r0
  int v16; // r11
  int v17; // r2
  int v18; // r6
  int v19; // r8
  int v20; // r3
  int v21; // r1
  int v22; // r2
  int v23; // r3
  int v24; // r1
  int v25; // r8
  int v26; // r0
  int v27; // r12
  int v28; // [sp+4h] [bp-10h]
  int v29; // [sp+8h] [bp-Ch]
  int v30; // [sp+8h] [bp-Ch]
  int v31; // [sp+Ch] [bp-8h]
  int v32; // [sp+Ch] [bp-8h]

  v4 = *(__int16 *)(a1 + 10);
  v7 = vox::VoxNativeSubDecoder::s_pMixingBuffer;
  v9 = a4[10];
  v10 = a3 / (v4 * (*(__int16 *)(a1 + 18) >> 3));
  v11 = a4[14];
  v12 = a4[13];
  if ( v9 - v10 < 0 )
    v8 = 0;
  a4[10] = v9 - v10;
  v13 = a4[12];
  v28 = v12;
  if ( v9 - v10 < 0 )
    a4[10] = v8;
  if ( v9 > 0 )
  {
    if ( v9 >= v10 )
      v9 = v10;
    v14 = v4 * v9;
    v31 = v9;
    v29 = v4 * v9;
    if ( v28 < 0 )
    {
      if ( v14 > 0 )
      {
        v24 = 0;
        v25 = 2 * v14;
        v26 = 0;
        do
        {
          v27 = *(__int16 *)(a2 + v24);
          v24 += 2;
          *(_DWORD *)(v7 + v26) += v27;
          v26 += 4;
        }
        while ( v24 != v25 );
        a2 += v24;
        v7 += 4 * v29;
      }
    }
    else
    {
      a2 += 2 * v29;
      v7 = vox::VoxNativeSubDecoder::s_pMixingBuffer + 4 * v29;
    }
    v10 -= v31;
  }
  result = v4 * v10;
  v30 = v4 * v10;
  v16 = v13 * v4;
  if ( v13 > 0 )
  {
    if ( v10 < v13 )
    {
      v32 = v10;
      if ( a4[1] == 3 )
      {
        result = -v11 / v10;
        v16 = v4 * v10;
        v28 = result;
      }
      else
      {
        v16 = v4 * v10;
      }
    }
    else
    {
      v32 = v13;
    }
    if ( v16 > 0 )
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = *(__int16 *)(a2 + 2 * v19++) * (v11 >> 15);
        *(_DWORD *)(v7 + v18) += v20 >> 15;
        v21 = v19 % v4;
        result = v19 / v4;
        if ( !(v19 % v4) )
          v21 = v28;
        v18 += 4;
        if ( !(v19 % v4) )
          v11 += v21;
      }
      while ( v19 != v16 );
      v7 += 4 * v16;
      a2 += 2 * v16;
    }
    v10 = v32;
    v22 = a4[12];
    a4[14] = v11;
    v17 = v22 - v32;
    a4[12] = v17;
    if ( v17 < 0 )
    {
      v17 = 0;
      a4[12] = 0;
    }
  }
  else
  {
    v17 = a4[12];
  }
  if ( !v17 )
  {
    result = v28;
    a4[10] = 0;
    a4[11] = 0;
    if ( v28 < 0 )
      v10 = 1;
    a4[12] = 0;
    a4[13] = 0;
    a4[14] = 0;
    if ( v28 >= 0 )
    {
      if ( v16 < v30 )
      {
        v23 = 0;
        do
        {
          result = *(_DWORD *)(v7 + v23);
          ++v16;
          *(_DWORD *)(v7 + v23) = result + *(__int16 *)(a2 + v17);
          v17 += 2;
          v23 += 4;
        }
        while ( v16 != v30 );
      }
    }
    else
    {
      a4[9] = v10;
    }
  }
  if ( a4[1] == 3 )
    a4[9] = 1;
  return result;
}


// ===== 884734 vox::VoxNativeSubDecoder::StopSegment(vox::SegmentState *) =====
_WORD *__fastcall vox::VoxNativeSubDecoder::StopSegment(_WORD *result, _DWORD *a2)
{
  _WORD *v2; // r5

  v2 = result;
  if ( result[4] == 17 )
    result = (_WORD *)(*(int (__fastcall **)(_WORD *, _DWORD))(*(_DWORD *)result + 36))(result, a2[15]);
  if ( a2[9] == 1 )
    --*((_DWORD *)v2 + 37);
  if ( a2[1] == 1 )
    *((_BYTE *)v2 + 364) = 0;
  *a2 = -1;
  a2[14] = 0;
  a2[7] = 1;
  a2[9] = 2;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  a2[6] = 1;
  a2[8] = 0;
  a2[10] = 0;
  a2[11] = 0;
  a2[12] = 0;
  a2[13] = 0;
  return result;
}


// ===== 8847d4 vox::VoxNativeSubDecoder::~VoxNativeSubDecoder() =====
void __fastcall vox::VoxNativeSubDecoder::~VoxNativeSubDecoder(vox::VoxNativeSubDecoder *this)
{
  LC_API_FREE_0(this);
}


// ===== 8847e8 vox::VoxNativeSubDecoder::UpdateOldSegmentState(vox::TransitionRule *) =====
void __fastcall vox::VoxNativeSubDecoder::UpdateOldSegmentState(int a1, int a2)
{
  int v4; // r0
  int v5; // r10
  float v6; // r6
  int v7; // r0
  int v8; // r7
  int v9; // r0
  void *v10; // r6
  int v11; // r3
  int v12; // r1
  int v13; // r8
  int v14; // r3
  int v15; // r7
  int v16; // r2
  int v17; // r3
  int v18; // r0
  int v19; // r2
  int v20; // r2
  _DWORD v21[4]; // [sp+4h] [bp-10h] BYREF

  memcpy((void *)(a1 + 220), (const void *)(a1 + 288), 0x41u);
  *(_DWORD *)(a1 + 224) = 2;
  if ( !a2 )
  {
    *(_DWORD *)(a1 + 276) = 0;
    *(_DWORD *)(a1 + 260) = 0;
    *(_DWORD *)(a1 + 264) = 0;
    *(_DWORD *)(a1 + 268) = 0;
    *(_DWORD *)(a1 + 272) = 0;
    goto LABEL_30;
  }
  v4 = *(_DWORD *)(a1 + 12);
  v5 = *(_DWORD *)(a1 + 264);
  *(_DWORD *)(a1 + 252) = *(_DWORD *)(a2 + 12);
  v6 = (float)v4;
  v7 = (int)(float)((float)v4 * *(float *)(a2 + 24));
  *(_DWORD *)(a1 + 264) = v7;
  if ( v7 <= 0 )
  {
    *(_DWORD *)(a1 + 276) = 0;
    *(_DWORD *)(a1 + 260) = 0;
    *(_DWORD *)(a1 + 264) = 0;
    *(_DWORD *)(a1 + 268) = 0;
    *(_DWORD *)(a1 + 272) = 0;
LABEL_30:
    *(_DWORD *)(a1 + 248) = 1;
    *(_DWORD *)(a1 + 256) = 4;
    *(_DWORD *)(a1 + 244) = 1;
    return;
  }
  v8 = (int)(float)(v6 * *(float *)(a2 + 28));
  v9 = (int)std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::vector(
              v21,
              **(_DWORD **)(a1 + 44) + 12 * *(_DWORD *)(a1 + 220));
  v10 = (void *)v21[0];
  v11 = *(_DWORD *)(a2 + 4);
  v12 = (v21[1] - v21[0]) >> 2;
  if ( v11 )
  {
    switch ( v11 )
    {
      case 5:
        v18 = *(_DWORD *)(a1 + 232);
        if ( v12 > 3 )
        {
          v14 = *(_DWORD *)(v21[0] + 12);
          if ( v18 < v14 )
            goto LABEL_36;
          v19 = 3;
          while ( ++v19 != v12 )
          {
            v14 = *(_DWORD *)(v21[0] + 4 * v19);
            if ( v14 > v18 )
              goto LABEL_36;
          }
        }
        break;
      case 6:
        v18 = *(_DWORD *)(a1 + 232);
        v14 = *(_DWORD *)(*(_DWORD *)(**(_DWORD **)(a1 + 44) + 12 * *(_DWORD *)(a1 + 220)) + 8);
        goto LABEL_36;
      case 4:
        v18 = *(_DWORD *)(a1 + 232);
        if ( v12 > 0 )
        {
          v14 = *(_DWORD *)v21[0];
          if ( *(_DWORD *)v21[0] <= v18 )
          {
            v20 = 0;
            while ( ++v20 != v12 )
            {
              v14 = *(_DWORD *)(v21[0] + 4 * v20);
              if ( v14 > v18 )
                goto LABEL_36;
            }
            v14 = 0;
          }
LABEL_36:
          v9 = v14 - v18;
          v8 += v9;
          *(_DWORD *)(a1 + 260) = v8;
          v13 = 1;
          if ( v8 >= 0 )
          {
            v15 = *(_DWORD *)(a1 + 264);
            goto LABEL_9;
          }
          goto LABEL_38;
        }
        break;
      default:
        v18 = *(_DWORD *)(a1 + 232);
        v14 = 0;
        goto LABEL_36;
    }
    v14 = 0;
    goto LABEL_36;
  }
  v13 = *(_DWORD *)(a1 + 248);
  *(_DWORD *)(a1 + 260) = v8;
  v14 = *(_DWORD *)(a1 + 232);
  if ( v13 != 1 )
    v13 = 0;
  if ( v8 >= 0 )
  {
    v15 = *(_DWORD *)(a1 + 264);
    goto LABEL_9;
  }
LABEL_38:
  v9 = *(_DWORD *)(a1 + 264);
  *(_DWORD *)(a1 + 260) = 0;
  v15 = v8 + v9;
  *(_DWORD *)(a1 + 264) = v15;
  if ( v15 < 0 )
  {
    *(_DWORD *)(a1 + 264) = 0;
    v15 = 0;
  }
LABEL_9:
  if ( v13
    && (*(_DWORD *)(a2 + 12) == 1
      ? (v9 = **(_DWORD **)(a1 + 44), v16 = *(_DWORD *)(*(_DWORD *)(v9 + 12 * *(_DWORD *)(a1 + 220)) + 4 * (v12 - 1)))
      : (v9 = 12, v16 = *(_DWORD *)(*(_DWORD *)(**(_DWORD **)(a1 + 44) + 12 * *(_DWORD *)(a1 + 220)) + 8)),
        v17 = 1 - v14 + v16,
        v17 < v15) )
  {
    *(_DWORD *)(a1 + 264) = v17;
  }
  else
  {
    v17 = v15;
  }
  if ( v5 > 0 )
    v9 = *(_DWORD *)(a1 + 344);
  *(_DWORD *)(a1 + 268) = v17;
  if ( v5 > 0 )
    *(_DWORD *)(a1 + 276) = v9;
  else
    v17 = 0x40000000;
  if ( v5 > 0 )
    v9 = -v9;
  else
    *(_DWORD *)(a1 + 276) = v17;
  if ( v5 <= 0 )
    v9 = -1073741824;
  *(_DWORD *)(a1 + 272) = v9 / *(_DWORD *)(a1 + 264);
  if ( v10 )
    VoxFree(v10);
  if ( v13 )
    goto LABEL_30;
}


// ===== 884ab4 vox::VoxNativeSubDecoder::UpdateDyingSegmentState(vox::TransitionRule *) =====
void __fastcall vox::VoxNativeSubDecoder::UpdateDyingSegmentState(int *a1, int a2)
{
  _DWORD *v4; // r3
  void *v5; // r6
  int v6; // r7
  int v7; // r0
  int v8; // r3
  bool v9; // zf
  int v10; // r3
  int v11; // r2
  int v12; // r3
  int v13; // r1
  _DWORD v14[4]; // [sp+4h] [bp-10h] BYREF

  memcpy(a1 + 38, a1 + 55, 0x41u);
  v4 = (_DWORD *)a1[11];
  a1[39] = 3;
  a1[47] = 4;
  std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::vector(v14, *v4 + 12 * a1[38]);
  v5 = (void *)v14[0];
  v6 = v14[1];
  if ( a1[66] )
  {
    v7 = a1[50];
  }
  else
  {
    a1[52] = 0x40000000;
    v7 = 256;
  }
  if ( a2 )
    v7 = (int)(float)((float)a1[3] * *(float *)(a2 + 24));
  v8 = a1[46];
  v9 = v8 == 1;
  if ( v8 == 1 )
    v6 = (v6 - (int)v5) >> 2;
  v10 = *(_DWORD *)(*(_DWORD *)a1[11] + 12 * a1[55]);
  if ( v9 )
    v11 = *(_DWORD *)(v10 + 4 * (v6 - 1));
  else
    v11 = *(_DWORD *)(v10 + 8);
  v12 = 1 - a1[41] + v11;
  if ( v7 <= v12 )
    a1[49] = v7;
  else
    a1[49] = v12;
  v13 = a1[49];
  if ( v7 <= v12 )
    v12 = v7;
  a1[50] = v12;
  if ( v13 > 0 )
    a1[51] = -a1[52] / v13;
  if ( v5 )
    VoxFree(v5);
}


// ===== 884bc4 vox::VoxNativeSubDecoder::UpdateCurrentSegmentState(vox::TransitionRule *,bool) =====
int __fastcall vox::VoxNativeSubDecoder::UpdateCurrentSegmentState(int result, int a2, int a3)
{
  int v3; // r6
  int v4; // r4
  int *v7; // r0
  int v8; // r12
  int v9; // r1
  int v10; // r3
  int v11; // lr
  int v12; // r0
  int v13; // r2
  int v14; // r3
  float v15; // r8
  int v16; // r7
  int v17; // r3
  int v18; // r0
  int v19; // r6
  int v20; // r1
  int v21; // r3
  int v22; // r2
  int v23; // r2
  int v24; // r0
  void *v25; // r0
  int v26; // r2
  int v27; // r6
  int v28; // r0
  int v29; // r3
  int v30; // r0
  _DWORD v31[4]; // [sp+4h] [bp-10h] BYREF

  v3 = *(_DWORD *)(result + 120);
  v4 = result;
  if ( v3 != -1 )
  {
    if ( *(_DWORD *)(result + 124) == 1 )
    {
      *(_DWORD *)(result + 288) = v3;
      result = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)result + 28))(result, *(_DWORD *)(result + 300));
      *(_DWORD *)(v4 + 296) = result;
    }
    else
    {
      v7 = *(int **)(result + 44);
      *(_DWORD *)(v4 + 288) = v3;
      v8 = *(_DWORD *)(v4 + 360);
      v9 = *(_DWORD *)(*(_DWORD *)(*v7 + 12 * v3) + 4 * (*(_DWORD *)(v4 + 128) != 1));
      v10 = *(_DWORD *)(v4 + 136);
      v11 = *(_DWORD *)(v4 + 132);
      *(_DWORD *)(v4 + 304) = v9;
      v12 = *v7;
      if ( v8 < 0 )
        v9 = -v8;
      v13 = *(_DWORD *)(*(_DWORD *)(v12 + 12 * v3) + 8);
      *(_DWORD *)(v4 + 316) = v10;
      *(_DWORD *)(v4 + 312) = v10;
      *(_DWORD *)(v4 + 320) = v11;
      v14 = *(_DWORD *)v4;
      *(_DWORD *)(v4 + 308) = v13;
      *(_DWORD *)(v4 + 300) = v9;
      result = (*(int (__fastcall **)(int))(v14 + 28))(v4);
      *(_DWORD *)(v4 + 296) = result;
      *(_DWORD *)(v4 + 324) = 3;
    }
    if ( *(_WORD *)(v4 + 8) == 17 && a3 )
    {
      result = (*(int (__fastcall **)(int))(*(_DWORD *)v4 + 32))(v4);
      *(_DWORD *)(v4 + 348) = result;
      *(_BYTE *)(v4 + 352) = 0;
    }
    if ( a2 )
      goto LABEL_8;
LABEL_33:
    *(_DWORD *)(v4 + 344) = a2;
    *(_DWORD *)(v4 + 328) = a2;
    *(_DWORD *)(v4 + 332) = a2;
    *(_DWORD *)(v4 + 336) = a2;
    *(_DWORD *)(v4 + 340) = a2;
    return result;
  }
  *(_DWORD *)(result + 316) = 1;
  *(_DWORD *)(result + 324) = 4;
  *(_DWORD *)(result + 312) = 1;
  *(_DWORD *)(result + 356) = -1;
  if ( !a2 )
    goto LABEL_33;
LABEL_8:
  v15 = (float)*(int *)(v4 + 12);
  result = (int)(float)(v15 * *(float *)(a2 + 16));
  v16 = result;
  *(_DWORD *)(v4 + 332) = result;
  if ( result > 0 )
  {
    v17 = *(_DWORD *)(a2 + 4);
    if ( v17 )
    {
      if ( v17 != 6 || *(_DWORD *)(v4 + 124) )
      {
        v18 = *(_DWORD *)(v4 + 328);
        v19 = 0;
      }
      else
      {
        v19 = *(_DWORD *)(*(_DWORD *)(**(_DWORD **)(v4 + 44) + 12 * v3) + 4);
        v28 = (int)(float)(v15 * *(float *)(a2 + 20));
        v29 = *(_DWORD *)(v4 + 128);
        if ( v29 == 1 )
          v30 = v28 + v19 - v16;
        else
          v30 = v28 - v16;
        v18 = v30 + *(_DWORD *)(v4 + 360);
        if ( v29 == 1 )
          v19 = *(_DWORD *)(v4 + 124);
        *(_DWORD *)(v4 + 328) = v18;
      }
    }
    else
    {
      v18 = (int)(float)(v15 * (float)(*(float *)(a2 + 20) - *(float *)(a2 + 16)));
      v21 = *(_DWORD *)(v4 + 124);
      *(_DWORD *)(v4 + 328) = v18;
      if ( !v21 )
      {
        v22 = *(_DWORD *)(v4 + 128);
        if ( v22 )
        {
          v19 = 0;
        }
        else
        {
          v19 = 12 * v3;
          v21 = **(_DWORD **)(v4 + 44);
        }
        if ( !v22 )
          v19 = *(_DWORD *)(*(_DWORD *)(v21 + v19) + 4);
        if ( v18 >= 0 )
        {
LABEL_13:
          if ( *(_DWORD *)(v4 + 316) != 1 )
          {
LABEL_14:
            v20 = *(_DWORD *)(v4 + 332);
            *(_DWORD *)(v4 + 336) = v20;
            *(_DWORD *)(v4 + 344) = 0;
            *(_DWORD *)(v4 + 340) = 0x40000000 / v20;
            return 0x40000000 / v20;
          }
LABEL_26:
          std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::vector(
            v31,
            **(_DWORD **)(v4 + 44) + 12 * *(_DWORD *)(v4 + 288));
          v25 = (void *)v31[0];
          if ( *(_DWORD *)(a2 + 12) == 1 )
            v26 = *(_DWORD *)(*(_DWORD *)(**(_DWORD **)(v4 + 44) + 12 * *(_DWORD *)(v4 + 288))
                            + 4 * (((v31[1] - v31[0]) >> 2) - 1));
          else
            v26 = *(_DWORD *)(*(_DWORD *)(**(_DWORD **)(v4 + 44) + 12 * *(_DWORD *)(v4 + 288)) + 8);
          v27 = 1 - v19 + v26;
          if ( v27 < *(_DWORD *)(v4 + 332) )
            *(_DWORD *)(v4 + 332) = v27;
          if ( v25 )
            VoxFree(v25);
          goto LABEL_14;
        }
LABEL_23:
        v23 = *(_DWORD *)(v4 + 332);
        *(_DWORD *)(v4 + 328) = 0;
        v24 = v18 + v23;
        *(_DWORD *)(v4 + 332) = v24;
        if ( v24 < 0 )
          *(_DWORD *)(v4 + 332) = 0;
        if ( *(_DWORD *)(v4 + 316) != 1 )
          goto LABEL_14;
        goto LABEL_26;
      }
      v19 = *(_DWORD *)(v4 + 300);
    }
    if ( v18 >= 0 )
      goto LABEL_13;
    goto LABEL_23;
  }
  *(_DWORD *)(v4 + 344) = 0;
  *(_DWORD *)(v4 + 328) = 0;
  *(_DWORD *)(v4 + 332) = 0;
  *(_DWORD *)(v4 + 336) = 0;
  *(_DWORD *)(v4 + 340) = 0;
  return result;
}


// ===== 884f04 vox::VoxNativeSubDecoder::Clean(void) =====
void __fastcall vox::VoxNativeSubDecoder::Clean(vox::VoxNativeSubDecoder *this)
{
  if ( vox::VoxNativeSubDecoder::s_pMixingBuffer )
  {
    VoxFree((void *)vox::VoxNativeSubDecoder::s_pMixingBuffer);
    vox::VoxNativeSubDecoder::s_pMixingBuffer = 0;
  }
}


// ===== 884f3c vox::VoxNativeSubDecoder::SetState(vox::NativeSubDecoderState *) =====
void *__fastcall vox::VoxNativeSubDecoder::SetState(int a1, int a2)
{
  void *result; // r0

  vox::NativePlaylistsManager::SetState(*(_DWORD *)(a1 + 48), *(vox::NativePlaylistsManager **)(a2 + 4));
  *(_DWORD *)(a1 + 52) = *(_DWORD *)(a2 + 8);
  *(_DWORD *)(a1 + 56) = *(_DWORD *)(a2 + 12);
  *(_DWORD *)(a1 + 60) = *(_DWORD *)(a2 + 16);
  *(_DWORD *)(a1 + 64) = *(_DWORD *)(a2 + 20);
  *(_DWORD *)(a1 + 68) = *(_DWORD *)(a2 + 24);
  *(_DWORD *)(a1 + 72) = *(_DWORD *)(a2 + 28);
  *(_BYTE *)(a1 + 76) = *(_BYTE *)(a2 + 32);
  *(_DWORD *)(a1 + 80) = *(_DWORD *)(a2 + 36);
  *(_DWORD *)(a1 + 84) = *(_DWORD *)(a2 + 40);
  *(_DWORD *)(a1 + 88) = *(_DWORD *)(a2 + 44);
  *(_DWORD *)(a1 + 92) = *(_DWORD *)(a2 + 48);
  *(_DWORD *)(a1 + 96) = *(_DWORD *)(a2 + 52);
  *(_DWORD *)(a1 + 100) = *(_DWORD *)(a2 + 56);
  *(_DWORD *)(a1 + 104) = *(_DWORD *)(a2 + 60);
  *(_DWORD *)(a1 + 108) = *(_DWORD *)(a2 + 64);
  *(_DWORD *)(a1 + 112) = *(_DWORD *)(a2 + 68);
  *(_DWORD *)(a1 + 116) = *(_DWORD *)(a2 + 72);
  *(_DWORD *)(a1 + 120) = *(_DWORD *)(a2 + 76);
  *(_DWORD *)(a1 + 124) = *(_DWORD *)(a2 + 80);
  *(_DWORD *)(a1 + 128) = *(_DWORD *)(a2 + 84);
  *(_DWORD *)(a1 + 132) = *(_DWORD *)(a2 + 88);
  *(_DWORD *)(a1 + 136) = *(_DWORD *)(a2 + 92);
  *(_DWORD *)(a1 + 140) = *(_DWORD *)(a2 + 96);
  *(_DWORD *)(a1 + 144) = *(_DWORD *)(a2 + 100);
  *(_DWORD *)(a1 + 148) = *(_DWORD *)(a2 + 104);
  memcpy((void *)(a1 + 152), (const void *)(a2 + 108), 0x41u);
  memcpy((void *)(a1 + 220), (const void *)(a2 + 176), 0x41u);
  result = memcpy((void *)(a1 + 288), (const void *)(a2 + 244), 0x41u);
  *(_DWORD *)(a1 + 356) = *(_DWORD *)(a2 + 312);
  *(_DWORD *)(a1 + 360) = *(_DWORD *)(a2 + 316);
  *(_BYTE *)(a1 + 364) = *(_BYTE *)(a2 + 320);
  return result;
}


// ===== 88506c vox::VoxNativeSubDecoder::GetState(vox::NativeSubDecoderState *) =====
void *__fastcall vox::VoxNativeSubDecoder::GetState(int a1, int a2)
{
  void *result; // r0

  vox::NativePlaylistsManager::SetState(*(_DWORD *)(a2 + 4), *(vox::NativePlaylistsManager **)(a1 + 48));
  *(_DWORD *)(a2 + 8) = *(_DWORD *)(a1 + 52);
  *(_DWORD *)(a2 + 12) = *(_DWORD *)(a1 + 56);
  *(_DWORD *)(a2 + 16) = *(_DWORD *)(a1 + 60);
  *(_DWORD *)(a2 + 20) = *(_DWORD *)(a1 + 64);
  *(_DWORD *)(a2 + 24) = *(_DWORD *)(a1 + 68);
  *(_DWORD *)(a2 + 28) = *(_DWORD *)(a1 + 72);
  *(_BYTE *)(a2 + 32) = *(_BYTE *)(a1 + 76);
  *(_DWORD *)(a2 + 36) = *(_DWORD *)(a1 + 80);
  *(_DWORD *)(a2 + 40) = *(_DWORD *)(a1 + 84);
  *(_DWORD *)(a2 + 44) = *(_DWORD *)(a1 + 88);
  *(_DWORD *)(a2 + 48) = *(_DWORD *)(a1 + 92);
  *(_DWORD *)(a2 + 52) = *(_DWORD *)(a1 + 96);
  *(_DWORD *)(a2 + 56) = *(_DWORD *)(a1 + 100);
  *(_DWORD *)(a2 + 60) = *(_DWORD *)(a1 + 104);
  *(_DWORD *)(a2 + 64) = *(_DWORD *)(a1 + 108);
  *(_DWORD *)(a2 + 68) = *(_DWORD *)(a1 + 112);
  *(_DWORD *)(a2 + 72) = *(_DWORD *)(a1 + 116);
  *(_DWORD *)(a2 + 76) = *(_DWORD *)(a1 + 120);
  *(_DWORD *)(a2 + 80) = *(_DWORD *)(a1 + 124);
  *(_DWORD *)(a2 + 84) = *(_DWORD *)(a1 + 128);
  *(_DWORD *)(a2 + 88) = *(_DWORD *)(a1 + 132);
  *(_DWORD *)(a2 + 92) = *(_DWORD *)(a1 + 136);
  *(_DWORD *)(a2 + 96) = *(_DWORD *)(a1 + 140);
  *(_DWORD *)(a2 + 100) = *(_DWORD *)(a1 + 144);
  *(_DWORD *)(a2 + 104) = *(_DWORD *)(a1 + 148);
  memcpy((void *)(a2 + 108), (const void *)(a1 + 152), 0x41u);
  memcpy((void *)(a2 + 176), (const void *)(a1 + 220), 0x41u);
  result = memcpy((void *)(a2 + 244), (const void *)(a1 + 288), 0x41u);
  *(_DWORD *)(a2 + 312) = *(_DWORD *)(a1 + 356);
  *(_DWORD *)(a2 + 316) = *(_DWORD *)(a1 + 360);
  *(_BYTE *)(a2 + 320) = *(_BYTE *)(a1 + 364);
  return result;
}


// ===== 88519c vox::VoxNativeSubDecoder::Reset(void) =====
_DWORD *__fastcall vox::VoxNativeSubDecoder::Reset(vox::NativePlaylistsManager **this)
{
  int NbPlaylists; // r6
  int v3; // r4
  int v4; // r1

  NbPlaylists = vox::NativePlaylistsManager::GetNbPlaylists(*(this + 12));
  if ( NbPlaylists > 0 )
  {
    v3 = 0;
    do
    {
      v4 = v3++;
      vox::NativePlaylistsManager::ResetPlaylist((int)*(this + 12), v4);
    }
    while ( v3 != NbPlaylists );
  }
  *(this + 56) = (vox::NativePlaylistsManager *)(&dword_0 + 2);
  *(this + 73) = (vox::NativePlaylistsManager *)(&dword_0 + 1);
  *(this + 38) = (vox::NativePlaylistsManager *)-1;
  *(this + 39) = (vox::NativePlaylistsManager *)(&dword_0 + 3);
  *(this + 40) = nullptr;
  *((_BYTE *)this + 364) = 1;
  *(this + 37) = nullptr;
  *(this + 89) = (vox::NativePlaylistsManager *)-1;
  *(this + 90) = nullptr;
  *(this + 35) = (vox::NativePlaylistsManager *)-1;
  *(this + 36) = (vox::NativePlaylistsManager *)-1;
  *(this + 16) = (vox::NativePlaylistsManager *)-1;
  *(this + 17) = (vox::NativePlaylistsManager *)-1;
  *(this + 18) = (vox::NativePlaylistsManager *)-1;
  *((_BYTE *)this + 76) = 1;
  *(this + 13) = (vox::NativePlaylistsManager *)-1;
  *(this + 14) = (vox::NativePlaylistsManager *)-1;
  *(this + 15) = (vox::NativePlaylistsManager *)-1;
  *(this + 72) = (vox::NativePlaylistsManager *)-1;
  *(this + 74) = nullptr;
  *(this + 55) = (vox::NativePlaylistsManager *)-1;
  *(this + 57) = nullptr;
  vox::PlaylistElement::Reset(this + 20);
  vox::PlaylistElement::Reset(this + 25);
  return vox::PlaylistElement::Reset(this + 30);
}


// ===== 885258 vox::VoxNativeSubDecoder::MixMultipleSegments(short *,int) =====
int __fastcall vox::VoxNativeSubDecoder::MixMultipleSegments(vox::VoxNativeSubDecoder *this, __int16 *a2, int a3)
{
  int v6; // r9
  void *v7; // r0
  int v8; // r10
  int v9; // r7
  int v10; // r9
  int v11; // r0
  int v12; // r9
  unsigned int v13; // r3
  int v14; // r2
  __int16 v15; // r2
  int v17; // r0

  v6 = a3 / (*((__int16 *)this + 5) * (*((__int16 *)this + 9) >> 3));
  if ( v6 > vox::VoxNativeSubDecoder::s_nbSamplesMixingBuffer )
  {
    if ( vox::VoxNativeSubDecoder::s_pMixingBuffer )
      VoxFree((void *)vox::VoxNativeSubDecoder::s_pMixingBuffer);
    v7 = VoxAlloc(2 * a3);
    vox::VoxNativeSubDecoder::s_pMixingBuffer = (int)v7;
    if ( !v7 )
    {
      v9 = 0;
      vox::VoxNativeSubDecoder::s_nbSamplesMixingBuffer = 0;
      *((_DWORD *)this + 81) = 1;
      *((_DWORD *)this + 47) = 1;
      *((_DWORD *)this + 64) = 1;
      return v9;
    }
    vox::VoxNativeSubDecoder::s_nbSamplesMixingBuffer = v6;
    LC_API_MEMSET_0(v7, 0, 2 * a3);
    if ( *((int *)this + 47) <= 2 )
    {
      v8 = 0;
      goto LABEL_8;
    }
LABEL_23:
    v8 = (*(int (__fastcall **)(vox::VoxNativeSubDecoder *, __int16 *, int, char *))(*(_DWORD *)this + 24))(
           this,
           a2,
           a3,
           (char *)this + 152);
    vox::VoxNativeSubDecoder::MixSegmentInBuffer((int)this, (int)a2, v8, (_DWORD *)this + 38);
    if ( *((int *)this + 64) <= 2 )
      goto LABEL_9;
LABEL_24:
    v17 = (*(int (__fastcall **)(vox::VoxNativeSubDecoder *, __int16 *, int, char *))(*(_DWORD *)this + 24))(
            this,
            a2,
            a3,
            (char *)this + 220);
    if ( v8 < v17 )
      v8 = v17;
    vox::VoxNativeSubDecoder::MixSegmentInBuffer((int)this, (int)a2, v17, (_DWORD *)this + 55);
    goto LABEL_9;
  }
  LC_API_MEMSET_0((void *)vox::VoxNativeSubDecoder::s_pMixingBuffer, 0, 2 * a3);
  if ( *((int *)this + 47) > 2 )
    goto LABEL_23;
  v8 = 0;
LABEL_8:
  if ( *((int *)this + 64) > 2 )
    goto LABEL_24;
LABEL_9:
  v9 = (*(int (__fastcall **)(vox::VoxNativeSubDecoder *, __int16 *, int))(*(_DWORD *)this + 20))(this, a2, a3);
  vox::VoxNativeSubDecoder::MixSegmentInBuffer((int)this, (int)a2, v9, (_DWORD *)this + 72);
  if ( v9 < v8 )
    v9 = v8;
  v10 = *((__int16 *)this + 5) * v6;
  v11 = vox::VoxNativeSubDecoder::s_pMixingBuffer;
  if ( v10 > 0 )
  {
    v12 = 2 * v10;
    v13 = 0;
    do
    {
      v14 = *(_DWORD *)(v11 + 2 * v13);
      if ( (unsigned int)(v14 + 0x8000) > 0xFFFF )
      {
        if ( v14 < 0 )
          v15 = 0x8000;
        else
          v15 = 0x7FFF;
        a2[v13 / 2] = v15;
      }
      else
      {
        a2[v13 / 2] = v14;
      }
      v13 += 2;
    }
    while ( v13 != v12 );
  }
  return v9;
}


// ===== 88547c vox::NativeSubDecoderState::~NativeSubDecoderState() =====
void __fastcall vox::NativeSubDecoderState::~NativeSubDecoderState(vox::NativeSubDecoderState *this)
{
  vox::NativePlaylistsManager *v2; // r0

  v2 = *((vox::NativePlaylistsManager **)this + 1);
  *(_DWORD *)this = off_9938C8;
  if ( v2 )
  {
    vox::NativePlaylistsManager::~NativePlaylistsManager(v2);
    VoxFree(*((void **)this + 1));
    *((_DWORD *)this + 1) = 0;
  }
}


// ===== 8854cc vox::NativeSubDecoderState::~NativeSubDecoderState() =====
void __fastcall vox::NativeSubDecoderState::~NativeSubDecoderState(vox::NativeSubDecoderState *this)
{
  vox::NativeSubDecoderState::~NativeSubDecoderState(this);
  LC_API_FREE_0(this);
}


// ===== 8854e8 vox::NativeSubDecoderState::~NativeSubDecoderState() =====
void __fastcall vox::NativeSubDecoderState::~NativeSubDecoderState(vox::NativeSubDecoderState *this)
{
  vox::NativePlaylistsManager *v2; // r0

  v2 = *((vox::NativePlaylistsManager **)this + 1);
  *(_DWORD *)this = off_9938C8;
  if ( v2 )
  {
    vox::NativePlaylistsManager::~NativePlaylistsManager(v2);
    VoxFree(*((void **)this + 1));
    *((_DWORD *)this + 1) = 0;
  }
}


// ===== 885538 vox::VoxNativeSubDecoder::SwapOldAndCurrentSegments(void) =====
void *__fastcall vox::VoxNativeSubDecoder::SwapOldAndCurrentSegments(vox::VoxNativeSubDecoder *this)
{
  char *v1; // r10
  char *v3; // r8
  void *result; // r0
  _DWORD v5[17]; // [sp+4h] [bp+0h] BYREF

  v1 = (char *)this + 288;
  v3 = (char *)this + 220;
  v5[15] = -1;
  LOBYTE(v5[16]) = 0;
  v5[0] = -1;
  memset(&v5[1], 0, 20);
  v5[8] = 0;
  memset(&v5[10], 0, 20);
  v5[6] = 1;
  v5[7] = 1;
  v5[9] = 2;
  memcpy(v5, (char *)this + 288, 0x41u);
  memcpy(v1, v3, 0x41u);
  *((_DWORD *)this + 73) = 1;
  result = memcpy(v3, v5, 0x41u);
  *((_DWORD *)this + 56) = 2;
  return result;
}


// ===== 8855e8 vox::VoxNativeSubDecoder::ApplyTransitionRule(vox::TransitionRule *) =====
int __fastcall vox::VoxNativeSubDecoder::ApplyTransitionRule(int a1, int a2)
{
  int NextDyingSegmentLifeState; // r0
  int result; // r0
  int *PlaylistElement; // r6
  int v7; // r1
  int v8; // r2
  int v9; // r3
  int v10; // r1
  int v11; // r3
  int v12; // r3

  NextDyingSegmentLifeState = vox::VoxNativeSubDecoder::GetNextDyingSegmentLifeState((vox::VoxNativeSubDecoder *)a1);
  if ( *(_DWORD *)a2 == 1 )
  {
    if ( NextDyingSegmentLifeState == 2 )
    {
      vox::NativePlaylistsManager::TransposePlaylistParameters(
        *(_DWORD **)(a1 + 48),
        *(_DWORD *)(a1 + 68),
        *(_DWORD *)(a1 + 72));
    }
    else
    {
      v10 = *(_DWORD *)(a1 + 64);
      if ( *(_DWORD *)(a1 + 68) == v10 )
      {
        vox::NativePlaylistsManager::SetPlaylistToPreviousState(*(vox::NativePlaylistsManager **)(a1 + 48), v10);
        v10 = *(_DWORD *)(a1 + 64);
      }
      vox::NativePlaylistsManager::TransposePlaylistParameters(*(_DWORD **)(a1 + 48), v10, *(_DWORD *)(a1 + 72));
      vox::VoxNativeSubDecoder::SwapOldAndCurrentSegments((vox::VoxNativeSubDecoder *)a1);
    }
    PlaylistElement = (int *)vox::NativePlaylistsManager::GetPlaylistElement(
                               *(vox::NativePlaylistsManager **)(a1 + 48),
                               *(_DWORD *)(a1 + 72),
                               1,
                               -1);
    result = (int)(float)((float)*(int *)(a1 + 12) * *(float *)(a2 + 24));
    if ( result <= 0 )
    {
      if ( *(int *)(a1 + 256) > 2 )
      {
        v11 = *(_DWORD *)(a1 + 148);
        *(_DWORD *)(a1 + 256) = 0;
        *(_DWORD *)(a1 + 148) = v11 - 1;
      }
      if ( *(int *)(a1 + 188) > 2 )
      {
        v12 = *(_DWORD *)(a1 + 148);
        *(_DWORD *)(a1 + 188) = 0;
        *(_DWORD *)(a1 + 148) = v12 - 1;
      }
    }
  }
  else
  {
    if ( *(_BYTE *)(a1 + 76) )
    {
      vox::NativePlaylistsManager::ResetPlaylist(*(_DWORD *)(a1 + 48), *(_DWORD *)(a1 + 72));
      *(_BYTE *)(a1 + 76) = 0;
    }
    result = vox::NativePlaylistsManager::GetPlaylistElement(
               *(vox::NativePlaylistsManager **)(a1 + 48),
               *(_DWORD *)(a1 + 72),
               0,
               -1);
    PlaylistElement = (int *)result;
  }
  if ( PlaylistElement )
  {
    result = *PlaylistElement;
    v7 = PlaylistElement[1];
    v8 = PlaylistElement[2];
    v9 = PlaylistElement[3];
    *(_DWORD *)(a1 + 120) = *PlaylistElement;
    *(_DWORD *)(a1 + 124) = v7;
    *(_DWORD *)(a1 + 128) = v8;
    *(_DWORD *)(a1 + 132) = v9;
    *(_DWORD *)(a1 + 136) = PlaylistElement[4];
    *(_DWORD *)(a1 + 124) = *(_DWORD *)a2;
    *(_DWORD *)(a1 + 128) = *(_DWORD *)(a2 + 8);
  }
  else
  {
    *(_DWORD *)(a1 + 120) = -1;
  }
  return result;
}


// ===== 885740 vox::VoxNativeSubDecoder::UpdateSegmentsStates(void) =====
int __fastcall vox::VoxNativeSubDecoder::UpdateSegmentsStates(vox::VoxNativeSubDecoder *this)
{
  int v1; // r3
  int v2; // r2
  int v4; // r5
  int *v5; // r7
  int v6; // r6
  int v7; // r3
  _DWORD *PlaylistElement; // r0
  int v9; // r1
  int v10; // r2
  int v11; // r3
  int IsExtraSegmentNeeded; // r8
  int v13; // r3
  int v14; // r3
  int v15; // r2
  int v16; // r1
  int v17; // r3
  int v18; // r1
  int v19; // r2
  int v20; // r3
  int result; // r0
  int v22; // r1
  int v23; // r2
  int v24; // r3
  _DWORD *v25; // r0

  v1 = *((_DWORD *)this + 15);
  v2 = *((_DWORD *)this + 14);
  v4 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 8) + 4) + 4 * v1);
  if ( v1 == v2 || v2 < 0 )
  {
    PlaylistElement = (_DWORD *)vox::NativePlaylistsManager::GetPlaylistElement(
                                  *((vox::NativePlaylistsManager **)this + 12),
                                  v4,
                                  0,
                                  -1);
    if ( !PlaylistElement )
    {
      *((_DWORD *)this + 30) = -1;
      v5 = (int *)((char *)this + 120);
      v6 = 0;
LABEL_22:
      vox::VoxNativeSubDecoder::UpdateCurrentSegmentState((int)this, v6, 0);
      goto LABEL_19;
    }
    v5 = (int *)((char *)this + 120);
    v9 = PlaylistElement[1];
    v10 = PlaylistElement[2];
    v11 = PlaylistElement[3];
    *((_DWORD *)this + 30) = *PlaylistElement;
    *((_DWORD *)this + 31) = v9;
    *((_DWORD *)this + 32) = v10;
    *((_DWORD *)this + 33) = v11;
    v6 = 0;
    *((_DWORD *)this + 34) = PlaylistElement[4];
    v7 = *((_DWORD *)this + 30);
    if ( v7 < 0 )
      goto LABEL_4;
LABEL_8:
    IsExtraSegmentNeeded = vox::VoxNativeSubDecoder::IsExtraSegmentNeeded(this, v6);
    if ( IsExtraSegmentNeeded )
    {
      v14 = *((_DWORD *)this + 37);
      if ( v14 > 2 )
        goto LABEL_20;
      v13 = v14 + 1;
      *((_DWORD *)this + 37) = v13;
    }
    else
    {
      v13 = *((_DWORD *)this + 37);
    }
    if ( v13 <= 2 )
    {
      if ( v13 == 2 )
        vox::VoxNativeSubDecoder::UpdateOldSegmentState((int)this, v6);
      goto LABEL_15;
    }
LABEL_20:
    vox::VoxNativeSubDecoder::UpdateDyingSegmentState((int *)this, v6);
    vox::VoxNativeSubDecoder::UpdateOldSegmentState((int)this, v6);
LABEL_15:
    vox::VoxNativeSubDecoder::UpdateCurrentSegmentState((int)this, v6, IsExtraSegmentNeeded);
    if ( *((_DWORD *)this + 75) )
      *((_BYTE *)this + 352) = 1;
    if ( *((_DWORD *)this + 79) == 1
      && (v25 = (_DWORD *)vox::NativePlaylistsManager::PeekAtNextPlaylistElement(
                            *((vox::NativePlaylistsManager **)this + 12),
                            v4)) != nullptr )
    {
      if ( v25[2] == 1 )
      {
        *((_DWORD *)this + 89) = *(_DWORD *)(*(_DWORD *)(**((_DWORD **)this + 11) + 12 * *((_DWORD *)this + 72)) + 8)
                               - *(_DWORD *)(*(_DWORD *)(**((_DWORD **)this + 11) + 12 * *v25) + 4);
      }
      else if ( *((_DWORD *)this + 33) == 1 )
      {
        *((_DWORD *)this + 89) = *(_DWORD *)(*(_DWORD *)(**((_DWORD **)this + 11) + 12 * *((_DWORD *)this + 72)) + 8);
      }
    }
    else
    {
      *((_DWORD *)this + 89) = -1;
    }
    goto LABEL_19;
  }
  v5 = (int *)((char *)this + 120);
  v6 = *(_DWORD *)(*((_DWORD *)this + 7) + 4) + 36 * *((_DWORD *)this + 36);
  vox::VoxNativeSubDecoder::ApplyTransitionRule((int)this, v6);
  v7 = *((_DWORD *)this + 30);
  if ( v7 >= 0 )
    goto LABEL_8;
LABEL_4:
  if ( v7 == -1 )
    goto LABEL_22;
LABEL_19:
  v15 = *((_DWORD *)this + 17);
  v16 = *((_DWORD *)this + 15);
  v17 = *((_DWORD *)this + 18);
  *((_DWORD *)this + 13) = *((_DWORD *)this + 14);
  *((_DWORD *)this + 14) = v16;
  *((_DWORD *)this + 16) = v15;
  *((_DWORD *)this + 17) = v17;
  v18 = *((_DWORD *)this + 26);
  v19 = *((_DWORD *)this + 27);
  v20 = *((_DWORD *)this + 28);
  *((_DWORD *)this + 20) = *((_DWORD *)this + 25);
  *((_DWORD *)this + 21) = v18;
  *((_DWORD *)this + 22) = v19;
  *((_DWORD *)this + 23) = v20;
  *((_DWORD *)this + 24) = *((_DWORD *)this + 29);
  result = *v5;
  v22 = v5[1];
  v23 = v5[2];
  v24 = v5[3];
  *((_DWORD *)this + 25) = *v5;
  *((_DWORD *)this + 26) = v22;
  *((_DWORD *)this + 27) = v23;
  *((_DWORD *)this + 28) = v24;
  *((_DWORD *)this + 29) = v5[4];
  *((_DWORD *)this + 35) = *((_DWORD *)this + 36);
  return result;
}


// ===== 885984 vox::VoxNativeSubDecoder::InterpretTransitionRule(int) =====
int __fastcall vox::VoxNativeSubDecoder::InterpretTransitionRule(vox::NativePlaylistsManager **this, int a2)
{
  vox::VoxNativeSubDecoder *v2; // r4
  int result; // r0
  int v4; // r1

  v2 = (vox::VoxNativeSubDecoder *)this;
  if ( !*(_DWORD *)(*((_DWORD *)*(this + 7) + 1) + 36 * a2 + 4) )
    return vox::VoxNativeSubDecoder::UpdateSegmentsStates((vox::VoxNativeSubDecoder *)this);
  result = vox::NativePlaylistsManager::PeekAtNextPlaylistElement(
             *(this + 12),
             *(_DWORD *)(*((_DWORD *)*(this + 8) + 1) + 4 * (_DWORD)*(this + 15)));
  if ( !result )
  {
    this = (vox::NativePlaylistsManager **)v2;
    return vox::VoxNativeSubDecoder::UpdateSegmentsStates((vox::VoxNativeSubDecoder *)this);
  }
  if ( *(_DWORD *)(result + 8) == 1 )
  {
    v4 = *(_DWORD *)result;
    result = *((_DWORD *)v2 + 72);
    *((_DWORD *)v2 + 89) = *(_DWORD *)(*(_DWORD *)(**((_DWORD **)v2 + 11) + 12 * result) + 8)
                         - *(_DWORD *)(*(_DWORD *)(**((_DWORD **)v2 + 11) + 12 * v4) + 4);
  }
  else
  {
    *((_DWORD *)v2 + 89) = *(_DWORD *)(*(_DWORD *)(**((_DWORD **)v2 + 11) + 12 * *((_DWORD *)v2 + 72)) + 8);
  }
  return result;
}


// ===== 885a3c vox::VoxNativeSubDecoder::SetState(int) =====
int __fastcall vox::VoxNativeSubDecoder::SetState(int this, int a2)
{
  int v2; // r3
  _DWORD *v3; // r12
  int v4; // r2

  v2 = *(_DWORD *)(this + 56);
  *(_DWORD *)(this + 60) = a2;
  if ( v2 >= 0 )
  {
    v3 = *(_DWORD **)(this + 36);
    *(_DWORD *)(this + 144) = *(_DWORD *)(*(_DWORD *)(*v3 + 12 * v2) + 8 * a2);
    *(_BYTE *)(this + 76) = *(_BYTE *)(*(_DWORD *)(*v3 + 12 * v2) + 8 * a2 + 4);
  }
  v4 = *(_DWORD *)(this + 144);
  *(_DWORD *)(this + 72) = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(this + 32) + 4) + 4 * a2);
  if ( v4 >= 0 )
    return vox::VoxNativeSubDecoder::InterpretTransitionRule((vox::NativePlaylistsManager **)this, v4);
  if ( v2 == -1 )
    return vox::VoxNativeSubDecoder::UpdateSegmentsStates((vox::VoxNativeSubDecoder *)this);
  return this;
}


// ===== 885ac0 vox::VoxNativeSubDecoder::EmulateDecode(int) =====
int __fastcall vox::VoxNativeSubDecoder::EmulateDecode(vox::VoxNativeSubDecoder *this, int a2)
{
  int v2; // r10
  int v4; // r7
  int v5; // r6
  int v6; // r8
  int v7; // r5
  int v8; // r3
  int v9; // r3

  v4 = *((__int16 *)this + 5) * (*((__int16 *)this + 9) >> 3);
  v5 = *((_DWORD *)this + 89);
  v6 = a2 - a2 % v4;
  v7 = *((unsigned __int16 *)this + 4);
  if ( v5 >= 0 )
  {
    v8 = *((_DWORD *)this + 75);
    if ( v5 <= v6 / v4 + v8 )
    {
      *((_DWORD *)this + 90) = v5 - v8;
      vox::VoxNativeSubDecoder::UpdateSegmentsStates(this);
    }
  }
  v9 = *((_DWORD *)this + 37);
  if ( v9 != 1 )
  {
    if ( v9 <= 1 )
      goto LABEL_7;
    goto LABEL_6;
  }
  if ( *((int *)this + 84) > 0 )
  {
LABEL_6:
    v2 = vox::VoxNativeSubDecoder::EmulateMixMultipleSegments(this, v6);
    goto LABEL_7;
  }
  v2 = (*(int (__fastcall **)(vox::VoxNativeSubDecoder *, int, char *))(*(_DWORD *)this + 52))(
         this,
         v6,
         (char *)this + 288);
LABEL_7:
  if ( *((int *)this + 47) > 1 )
  {
    if ( *((int *)this + 64) > 1 )
      goto LABEL_9;
LABEL_21:
    vox::VoxNativeSubDecoder::StopSegment(this, (_DWORD *)this + 55);
    if ( *((int *)this + 81) > 1 )
      goto LABEL_10;
    goto LABEL_22;
  }
  vox::VoxNativeSubDecoder::StopSegment(this, (_DWORD *)this + 38);
  if ( *((int *)this + 64) <= 1 )
    goto LABEL_21;
LABEL_9:
  if ( *((int *)this + 81) > 1 )
    goto LABEL_10;
LABEL_22:
  vox::VoxNativeSubDecoder::StopSegment(this, (_DWORD *)this + 72);
LABEL_10:
  if ( v7 == 17 )
  {
    if ( *((_DWORD *)this + 47) == 3 )
      *((_BYTE *)this + 216) = 1;
    if ( *((_DWORD *)this + 64) == 3 )
      *((_BYTE *)this + 284) = 1;
    if ( *((_DWORD *)this + 81) == 3 )
      *((_BYTE *)this + 352) = 1;
  }
  return v2;
}


// ===== 885c1c vox::VoxNativeSubDecoder::Decode(void *,int) =====
int __fastcall vox::VoxNativeSubDecoder::Decode(vox::VoxNativeSubDecoder *this, __int16 *a2, int a3)
{
  int v3; // r5
  int v5; // r8
  int v7; // r7
  int v8; // r6
  int v9; // r3
  int v10; // r3

  v5 = *((__int16 *)this + 5) * (*((__int16 *)this + 9) >> 3);
  v7 = *((_DWORD *)this + 89);
  v8 = a3 - a3 % v5;
  if ( v7 >= 0 )
  {
    v9 = *((_DWORD *)this + 75);
    if ( v7 <= v8 / v5 + v9 )
    {
      *((_DWORD *)this + 90) = v7 - v9;
      vox::VoxNativeSubDecoder::UpdateSegmentsStates(this);
    }
  }
  v10 = *((_DWORD *)this + 37);
  if ( v10 > 1 )
    goto LABEL_5;
  if ( v10 == 1 )
  {
    if ( *((int *)this + 84) > 0 )
    {
LABEL_5:
      v3 = vox::VoxNativeSubDecoder::MixMultipleSegments(this, a2, v8);
      goto LABEL_6;
    }
    v3 = (*(int (__fastcall **)(vox::VoxNativeSubDecoder *, __int16 *, int, char *))(*(_DWORD *)this + 24))(
           this,
           a2,
           v8,
           (char *)this + 288);
  }
LABEL_6:
  if ( *((int *)this + 47) <= 1 )
  {
    vox::VoxNativeSubDecoder::StopSegment(this, (_DWORD *)this + 38);
    if ( *((int *)this + 64) > 1 )
      goto LABEL_8;
  }
  else if ( *((int *)this + 64) > 1 )
  {
    goto LABEL_8;
  }
  vox::VoxNativeSubDecoder::StopSegment(this, (_DWORD *)this + 55);
LABEL_8:
  if ( *((int *)this + 81) <= 1 )
    vox::VoxNativeSubDecoder::StopSegment(this, (_DWORD *)this + 72);
  return v3;
}


// ===== 885d44 vox::VoxNativeSubDecoder::VoxNativeSubDecoder(vox::StreamCursorInterface *,vox::NativeChunks *,vox::States *,vox::AudioSegments *,std::vector<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>> *,vox::TransitionRules *,std::vector*<std::vector<vox::TransitionParams,vox::SAllocator<std::vector*,(vox::VoxMemHint)0>>,vox::SAllocator<vox::SAllocator<std::vector*,(vox::VoxMemHint)0>,(vox::VoxMemHint)0>>,std::map<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,int,vox::StringCompare,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>> *,vox::NativePlaylistsManager *) =====
int __fastcall vox::VoxNativeSubDecoder::VoxNativeSubDecoder(
        int a1,
        int a2,
        _DWORD *a3,
        int a4,
        int a5,
        int a6,
        int a7,
        int a8,
        int a9,
        int a10)
{
  *(_DWORD *)(a1 + 4) = a2;
  *(_DWORD *)(a1 + 32) = a4;
  *(_DWORD *)a1 = off_993888;
  *(_DWORD *)(a1 + 24) = a5;
  *(_DWORD *)(a1 + 28) = a7;
  *(_DWORD *)(a1 + 36) = a8;
  *(_DWORD *)(a1 + 40) = a9;
  *(_DWORD *)(a1 + 44) = a6;
  *(_WORD *)(a1 + 8) = 0;
  *(_WORD *)(a1 + 10) = 0;
  *(_DWORD *)(a1 + 48) = a10;
  *(_DWORD *)(a1 + 12) = 0;
  *(_WORD *)(a1 + 16) = 0;
  *(_WORD *)(a1 + 18) = 0;
  *(_DWORD *)(a1 + 52) = -1;
  *(_DWORD *)(a1 + 56) = -1;
  *(_DWORD *)(a1 + 60) = -1;
  *(_DWORD *)(a1 + 64) = -1;
  *(_DWORD *)(a1 + 68) = -1;
  *(_DWORD *)(a1 + 72) = -1;
  *(_BYTE *)(a1 + 76) = 1;
  vox::PlaylistElement::PlaylistElement((_DWORD *)(a1 + 80));
  vox::PlaylistElement::PlaylistElement((_DWORD *)(a1 + 100));
  vox::PlaylistElement::PlaylistElement((_DWORD *)(a1 + 120));
  *(_DWORD *)(a1 + 188) = 2;
  *(_DWORD *)(a1 + 256) = 2;
  *(_DWORD *)(a1 + 140) = -1;
  *(_DWORD *)(a1 + 144) = -1;
  *(_DWORD *)(a1 + 148) = 0;
  *(_DWORD *)(a1 + 152) = -1;
  *(_DWORD *)(a1 + 160) = 0;
  *(_DWORD *)(a1 + 164) = 0;
  *(_DWORD *)(a1 + 168) = 0;
  *(_DWORD *)(a1 + 172) = 0;
  *(_DWORD *)(a1 + 176) = 1;
  *(_DWORD *)(a1 + 180) = 1;
  *(_DWORD *)(a1 + 184) = 0;
  *(_DWORD *)(a1 + 192) = 0;
  *(_DWORD *)(a1 + 196) = 0;
  *(_DWORD *)(a1 + 200) = 0;
  *(_DWORD *)(a1 + 204) = 0;
  *(_DWORD *)(a1 + 208) = 0;
  *(_DWORD *)(a1 + 212) = -1;
  *(_BYTE *)(a1 + 216) = 0;
  *(_DWORD *)(a1 + 220) = -1;
  *(_DWORD *)(a1 + 228) = 0;
  *(_DWORD *)(a1 + 232) = 0;
  *(_DWORD *)(a1 + 236) = 0;
  *(_DWORD *)(a1 + 240) = 0;
  *(_DWORD *)(a1 + 244) = 1;
  *(_DWORD *)(a1 + 248) = 1;
  *(_DWORD *)(a1 + 252) = 0;
  *(_DWORD *)(a1 + 260) = 0;
  *(_DWORD *)(a1 + 264) = 0;
  *(_DWORD *)(a1 + 268) = 0;
  *(_DWORD *)(a1 + 272) = 0;
  *(_DWORD *)(a1 + 276) = 0;
  *(_DWORD *)(a1 + 280) = -1;
  *(_BYTE *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 356) = -1;
  *(_DWORD *)(a1 + 360) = 0;
  *(_DWORD *)(a1 + 292) = 1;
  *(_DWORD *)(a1 + 224) = 2;
  *(_DWORD *)(a1 + 156) = 3;
  *(_BYTE *)(a1 + 284) = 0;
  *(_DWORD *)(a1 + 288) = -1;
  *(_DWORD *)(a1 + 296) = 0;
  *(_DWORD *)(a1 + 300) = 0;
  *(_DWORD *)(a1 + 304) = 0;
  *(_DWORD *)(a1 + 308) = 0;
  *(_DWORD *)(a1 + 312) = 1;
  *(_DWORD *)(a1 + 316) = 1;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 2;
  *(_DWORD *)(a1 + 328) = 0;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 336) = 0;
  *(_DWORD *)(a1 + 340) = 0;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 348) = -1;
  *(_BYTE *)(a1 + 364) = 1;
  *(_DWORD *)(a1 + 8) = a3[8];
  *(_DWORD *)(a1 + 12) = a3[9];
  *(_DWORD *)(a1 + 16) = a3[10];
  *(_DWORD *)(a1 + 20) = a3[5];
  return a1;
}


// ===== 885f10 vox::VoxNativeSubDecoder::VoxNativeSubDecoder(vox::StreamCursorInterface *,vox::NativeChunks *,vox::States *,vox::AudioSegments *,std::vector<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>> *,vox::TransitionRules *,std::vector*<std::vector<vox::TransitionParams,vox::SAllocator<std::vector*,(vox::VoxMemHint)0>>,vox::SAllocator<vox::SAllocator<std::vector*,(vox::VoxMemHint)0>,(vox::VoxMemHint)0>>,std::map<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,int,vox::StringCompare,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>> *,vox::NativePlaylistsManager *) =====
int __fastcall vox::VoxNativeSubDecoder::VoxNativeSubDecoder(
        int a1,
        int a2,
        _DWORD *a3,
        int a4,
        int a5,
        int a6,
        int a7,
        int a8,
        int a9,
        int a10)
{
  *(_DWORD *)(a1 + 4) = a2;
  *(_DWORD *)(a1 + 32) = a4;
  *(_DWORD *)a1 = off_993888;
  *(_DWORD *)(a1 + 24) = a5;
  *(_DWORD *)(a1 + 28) = a7;
  *(_DWORD *)(a1 + 36) = a8;
  *(_DWORD *)(a1 + 40) = a9;
  *(_DWORD *)(a1 + 44) = a6;
  *(_WORD *)(a1 + 8) = 0;
  *(_WORD *)(a1 + 10) = 0;
  *(_DWORD *)(a1 + 48) = a10;
  *(_DWORD *)(a1 + 12) = 0;
  *(_WORD *)(a1 + 16) = 0;
  *(_WORD *)(a1 + 18) = 0;
  *(_DWORD *)(a1 + 52) = -1;
  *(_DWORD *)(a1 + 56) = -1;
  *(_DWORD *)(a1 + 60) = -1;
  *(_DWORD *)(a1 + 64) = -1;
  *(_DWORD *)(a1 + 68) = -1;
  *(_DWORD *)(a1 + 72) = -1;
  *(_BYTE *)(a1 + 76) = 1;
  vox::PlaylistElement::PlaylistElement((_DWORD *)(a1 + 80));
  vox::PlaylistElement::PlaylistElement((_DWORD *)(a1 + 100));
  vox::PlaylistElement::PlaylistElement((_DWORD *)(a1 + 120));
  *(_DWORD *)(a1 + 188) = 2;
  *(_DWORD *)(a1 + 256) = 2;
  *(_DWORD *)(a1 + 140) = -1;
  *(_DWORD *)(a1 + 144) = -1;
  *(_DWORD *)(a1 + 148) = 0;
  *(_DWORD *)(a1 + 152) = -1;
  *(_DWORD *)(a1 + 160) = 0;
  *(_DWORD *)(a1 + 164) = 0;
  *(_DWORD *)(a1 + 168) = 0;
  *(_DWORD *)(a1 + 172) = 0;
  *(_DWORD *)(a1 + 176) = 1;
  *(_DWORD *)(a1 + 180) = 1;
  *(_DWORD *)(a1 + 184) = 0;
  *(_DWORD *)(a1 + 192) = 0;
  *(_DWORD *)(a1 + 196) = 0;
  *(_DWORD *)(a1 + 200) = 0;
  *(_DWORD *)(a1 + 204) = 0;
  *(_DWORD *)(a1 + 208) = 0;
  *(_DWORD *)(a1 + 212) = -1;
  *(_BYTE *)(a1 + 216) = 0;
  *(_DWORD *)(a1 + 220) = -1;
  *(_DWORD *)(a1 + 228) = 0;
  *(_DWORD *)(a1 + 232) = 0;
  *(_DWORD *)(a1 + 236) = 0;
  *(_DWORD *)(a1 + 240) = 0;
  *(_DWORD *)(a1 + 244) = 1;
  *(_DWORD *)(a1 + 248) = 1;
  *(_DWORD *)(a1 + 252) = 0;
  *(_DWORD *)(a1 + 260) = 0;
  *(_DWORD *)(a1 + 264) = 0;
  *(_DWORD *)(a1 + 268) = 0;
  *(_DWORD *)(a1 + 272) = 0;
  *(_DWORD *)(a1 + 276) = 0;
  *(_DWORD *)(a1 + 280) = -1;
  *(_BYTE *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 356) = -1;
  *(_DWORD *)(a1 + 360) = 0;
  *(_DWORD *)(a1 + 292) = 1;
  *(_DWORD *)(a1 + 224) = 2;
  *(_DWORD *)(a1 + 156) = 3;
  *(_BYTE *)(a1 + 284) = 0;
  *(_DWORD *)(a1 + 288) = -1;
  *(_DWORD *)(a1 + 296) = 0;
  *(_DWORD *)(a1 + 300) = 0;
  *(_DWORD *)(a1 + 304) = 0;
  *(_DWORD *)(a1 + 308) = 0;
  *(_DWORD *)(a1 + 312) = 1;
  *(_DWORD *)(a1 + 316) = 1;
  *(_DWORD *)(a1 + 320) = 0;
  *(_DWORD *)(a1 + 324) = 2;
  *(_DWORD *)(a1 + 328) = 0;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 336) = 0;
  *(_DWORD *)(a1 + 340) = 0;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 348) = -1;
  *(_BYTE *)(a1 + 364) = 1;
  *(_DWORD *)(a1 + 8) = a3[8];
  *(_DWORD *)(a1 + 12) = a3[9];
  *(_DWORD *)(a1 + 16) = a3[10];
  *(_DWORD *)(a1 + 20) = a3[5];
  return a1;
}


// ===== 8860dc vox::NativeSubDecoderState::NativeSubDecoderState(vox::NativePlaylistsManager *) =====
vox::NativeSubDecoderState *__fastcall vox::NativeSubDecoderState::NativeSubDecoderState(
        vox::NativeSubDecoderState *this,
        vox::NativePlaylistsManager *a2)
{
  vox::NativePlaylistsManager *v4; // r5

  *(_DWORD *)this = off_9938C8;
  vox::PlaylistElement::PlaylistElement((_DWORD *)this + 9);
  vox::PlaylistElement::PlaylistElement((_DWORD *)this + 14);
  vox::PlaylistElement::PlaylistElement((_DWORD *)this + 19);
  *((_DWORD *)this + 33) = 1;
  *((_DWORD *)this + 34) = 1;
  *((_DWORD *)this + 36) = 2;
  *((_DWORD *)this + 50) = 1;
  *((_DWORD *)this + 51) = 1;
  *((_DWORD *)this + 53) = 2;
  *((_DWORD *)this + 27) = -1;
  *((_DWORD *)this + 28) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 31) = 0;
  *((_DWORD *)this + 32) = 0;
  *((_DWORD *)this + 35) = 0;
  *((_DWORD *)this + 37) = 0;
  *((_DWORD *)this + 38) = 0;
  *((_DWORD *)this + 39) = 0;
  *((_DWORD *)this + 40) = 0;
  *((_DWORD *)this + 41) = 0;
  *((_DWORD *)this + 42) = -1;
  *((_BYTE *)this + 172) = 0;
  *((_DWORD *)this + 44) = -1;
  *((_DWORD *)this + 45) = 0;
  *((_DWORD *)this + 46) = 0;
  *((_DWORD *)this + 47) = 0;
  *((_DWORD *)this + 48) = 0;
  *((_DWORD *)this + 49) = 0;
  *((_DWORD *)this + 52) = 0;
  *((_DWORD *)this + 54) = 0;
  *((_DWORD *)this + 55) = 0;
  *((_DWORD *)this + 56) = 0;
  *((_DWORD *)this + 57) = 0;
  *((_DWORD *)this + 58) = 0;
  *((_DWORD *)this + 59) = -1;
  *((_BYTE *)this + 240) = 0;
  *((_DWORD *)this + 68) = 1;
  *((_DWORD *)this + 70) = 2;
  *((_DWORD *)this + 76) = -1;
  *((_DWORD *)this + 61) = -1;
  *((_DWORD *)this + 67) = 1;
  *((_DWORD *)this + 62) = 0;
  *((_DWORD *)this + 63) = 0;
  *((_DWORD *)this + 64) = 0;
  *((_DWORD *)this + 65) = 0;
  *((_DWORD *)this + 66) = 0;
  *((_DWORD *)this + 69) = 0;
  *((_DWORD *)this + 71) = 0;
  *((_DWORD *)this + 72) = 0;
  *((_DWORD *)this + 73) = 0;
  *((_DWORD *)this + 74) = 0;
  *((_DWORD *)this + 75) = 0;
  *((_BYTE *)this + 308) = 0;
  v4 = (vox::NativePlaylistsManager *)VoxAlloc(0x10u, 0);
  vox::NativePlaylistsManager::NativePlaylistsManager(v4, a2);
  *((_DWORD *)this + 1) = v4;
  return this;
}


// ===== 88621c vox::NativeSubDecoderState::NativeSubDecoderState(vox::NativePlaylistsManager *) =====
vox::NativeSubDecoderState *__fastcall vox::NativeSubDecoderState::NativeSubDecoderState(
        vox::NativeSubDecoderState *this,
        vox::NativePlaylistsManager *a2)
{
  vox::NativePlaylistsManager *v4; // r5

  *(_DWORD *)this = off_9938C8;
  vox::PlaylistElement::PlaylistElement((_DWORD *)this + 9);
  vox::PlaylistElement::PlaylistElement((_DWORD *)this + 14);
  vox::PlaylistElement::PlaylistElement((_DWORD *)this + 19);
  *((_DWORD *)this + 33) = 1;
  *((_DWORD *)this + 34) = 1;
  *((_DWORD *)this + 36) = 2;
  *((_DWORD *)this + 50) = 1;
  *((_DWORD *)this + 51) = 1;
  *((_DWORD *)this + 53) = 2;
  *((_DWORD *)this + 27) = -1;
  *((_DWORD *)this + 28) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 31) = 0;
  *((_DWORD *)this + 32) = 0;
  *((_DWORD *)this + 35) = 0;
  *((_DWORD *)this + 37) = 0;
  *((_DWORD *)this + 38) = 0;
  *((_DWORD *)this + 39) = 0;
  *((_DWORD *)this + 40) = 0;
  *((_DWORD *)this + 41) = 0;
  *((_DWORD *)this + 42) = -1;
  *((_BYTE *)this + 172) = 0;
  *((_DWORD *)this + 44) = -1;
  *((_DWORD *)this + 45) = 0;
  *((_DWORD *)this + 46) = 0;
  *((_DWORD *)this + 47) = 0;
  *((_DWORD *)this + 48) = 0;
  *((_DWORD *)this + 49) = 0;
  *((_DWORD *)this + 52) = 0;
  *((_DWORD *)this + 54) = 0;
  *((_DWORD *)this + 55) = 0;
  *((_DWORD *)this + 56) = 0;
  *((_DWORD *)this + 57) = 0;
  *((_DWORD *)this + 58) = 0;
  *((_DWORD *)this + 59) = -1;
  *((_BYTE *)this + 240) = 0;
  *((_DWORD *)this + 68) = 1;
  *((_DWORD *)this + 70) = 2;
  *((_DWORD *)this + 76) = -1;
  *((_DWORD *)this + 61) = -1;
  *((_DWORD *)this + 67) = 1;
  *((_DWORD *)this + 62) = 0;
  *((_DWORD *)this + 63) = 0;
  *((_DWORD *)this + 64) = 0;
  *((_DWORD *)this + 65) = 0;
  *((_DWORD *)this + 66) = 0;
  *((_DWORD *)this + 69) = 0;
  *((_DWORD *)this + 71) = 0;
  *((_DWORD *)this + 72) = 0;
  *((_DWORD *)this + 73) = 0;
  *((_DWORD *)this + 74) = 0;
  *((_DWORD *)this + 75) = 0;
  *((_BYTE *)this + 308) = 0;
  v4 = (vox::NativePlaylistsManager *)VoxAlloc(0x10u, 0);
  vox::NativePlaylistsManager::NativePlaylistsManager(v4, a2);
  *((_DWORD *)this + 1) = v4;
  return this;
}


// ===== 88635c vox::VoxNativeSubDecoderIMAADPCM::Seek(uint) =====
int __fastcall vox::VoxNativeSubDecoderIMAADPCM::Seek(vox::VoxNativeSubDecoderIMAADPCM *this, unsigned int a2)
{
  return 0;
}


// ===== 886364 vox::VoxNativeSubDecoderIMAADPCM::EmulateDecodeBlock(vox::SegmentState *) =====
int __fastcall vox::VoxNativeSubDecoderIMAADPCM::EmulateDecodeBlock(int a1, int *a2)
{
  int v2; // r3
  __int16 v4; // r1
  int v5; // r3
  int v6; // r2
  unsigned int v7; // r0
  unsigned int v8; // r12
  int v9; // r1
  unsigned int v10; // r5
  int v11; // r3
  int result; // r0

  v2 = *a2;
  v4 = *(_WORD *)(a1 + 10);
  v5 = *(_DWORD *)(*(_DWORD *)(a1 + 24) + 4) + 24 * v2;
  v6 = a2[2];
  v7 = *(__int16 *)(a1 + 16);
  v8 = *(_DWORD *)(v5 + 4) - v6;
  v9 = 4 * v4;
  if ( v7 < v8 )
    v8 = v7;
  v10 = *(_DWORD *)(v5 + 8);
  a2[2] = v8 + v6;
  v11 = a2[3];
  result = 8 * ((int)(v8 - 1) / v9) + 1;
  if ( v10 < result + v11 )
    return v10 - v11;
  return result;
}


// ===== 8863dc vox::VoxNativeSubDecoderIMAADPCM::EmulateSetDecodingBufferToSegmentPosition(vox::SegmentState *) =====
int __fastcall vox::VoxNativeSubDecoderIMAADPCM::EmulateSetDecodingBufferToSegmentPosition(int a1, int *a2)
{
  unsigned int v2; // r6
  int v4; // r7
  int result; // r0

  v2 = a2[3];
  v4 = a2[15];
  a2[3] = *(_DWORD *)(a1 + 368) * (v2 / *(_DWORD *)(a1 + 368));
  result = vox::VoxNativeSubDecoderIMAADPCM::EmulateDecodeBlock(a1, a2);
  *(_DWORD *)(a1 + 4 * (v4 + 94)) = result;
  *(_DWORD *)(a1 + 4 * v4 + 388) = v2 - a2[3];
  a2[3] = v2;
  return result;
}


// ===== 886434 vox::VoxNativeSubDecoderIMAADPCM::GetBytePositionFromSampleOffset(uint) =====
unsigned int __fastcall vox::VoxNativeSubDecoderIMAADPCM::GetBytePositionFromSampleOffset(
        vox::VoxNativeSubDecoderIMAADPCM *this,
        unsigned int a2)
{
  return *((__int16 *)this + 8) * (a2 / *((_DWORD *)this + 92));
}


// ===== 886454 vox::VoxNativeSubDecoderIMAADPCM::GetDecodingBuffer(void) =====
int __fastcall vox::VoxNativeSubDecoderIMAADPCM::GetDecodingBuffer(int this)
{
  int v1; // r3

  if ( *(_DWORD *)(this + 400) )
  {
    if ( *(_DWORD *)(this + 404) )
    {
      v1 = *(_DWORD *)(this + 408);
      if ( v1 )
        this = -1;
      else
        *(_DWORD *)(this + 408) = 1;
      if ( !v1 )
        return 2;
    }
    else
    {
      *(_DWORD *)(this + 404) = 1;
      return 1;
    }
  }
  else
  {
    *(_DWORD *)(this + 400) = 1;
    return 0;
  }
  return this;
}


// ===== 8864a0 vox::VoxNativeSubDecoderIMAADPCM::ReleaseDecodingBuffer(int) =====
int __fastcall vox::VoxNativeSubDecoderIMAADPCM::ReleaseDecodingBuffer(int this, int a2)
{
  if ( a2 >= 0 )
  {
    *(_DWORD *)(this + 4 * (a2 + 100)) = 0;
    *(_DWORD *)(this + 4 * (a2 + 94)) = 0;
    *(_DWORD *)(this + 4 * (a2 + 96) + 4) = 0;
  }
  return this;
}


// ===== 8864cc vox::VoxNativeSubDecoderIMAADPCM::Reset(void) =====
_DWORD *__fastcall vox::VoxNativeSubDecoderIMAADPCM::Reset(vox::NativePlaylistsManager **this)
{
  *(this + 102) = nullptr;
  *(this + 94) = nullptr;
  *(this + 95) = nullptr;
  *(this + 96) = nullptr;
  *(this + 97) = nullptr;
  *(this + 98) = nullptr;
  *(this + 99) = nullptr;
  *(this + 100) = nullptr;
  *(this + 101) = nullptr;
  return vox::VoxNativeSubDecoder::Reset(this);
}


// ===== 8864f8 vox::VoxNativeSubDecoderIMAADPCM::SetState(vox::NativeSubDecoderIMAADPCMState *) =====
void *__fastcall vox::VoxNativeSubDecoderIMAADPCM::SetState(int a1, _DWORD *a2)
{
  void *result; // r0
  int v5; // r2

  result = vox::VoxNativeSubDecoder::SetState(a1, (int)a2);
  v5 = *(_DWORD *)(a1 + 188);
  *(_DWORD *)(a1 + 400) = a2[81];
  *(_DWORD *)(a1 + 404) = a2[82];
  *(_DWORD *)(a1 + 408) = a2[83];
  if ( v5 == 3 )
    *(_BYTE *)(a1 + 216) = 1;
  if ( *(_DWORD *)(a1 + 256) == 3 )
    *(_BYTE *)(a1 + 284) = 1;
  if ( *(_DWORD *)(a1 + 324) == 3 )
    *(_BYTE *)(a1 + 352) = 1;
  return result;
}


// ===== 886554 vox::VoxNativeSubDecoderIMAADPCM::GetState(vox::NativeSubDecoderIMAADPCMState *) =====
void *__fastcall vox::VoxNativeSubDecoderIMAADPCM::GetState(_DWORD *a1, _DWORD *a2)
{
  void *result; // r0

  result = vox::VoxNativeSubDecoder::GetState((int)a1, (int)a2);
  a2[81] = a1[100];
  a2[82] = a1[101];
  a2[83] = a1[102];
  return result;
}


// ===== 886580 vox::VoxNativeSubDecoderIMAADPCM::EmulateDecodeSegment(int,vox::SegmentState *) =====
int __fastcall vox::VoxNativeSubDecoderIMAADPCM::EmulateDecodeSegment(__int16 *a1, int a2, int a3)
{
  int v3; // r11
  int v6; // r0
  int v7; // r8
  int v8; // r0
  __int16 *v9; // r6
  int v10; // r5
  int v11; // r8
  int v12; // r0
  int v13; // r3
  int v14; // r2
  int v15; // r0
  unsigned int v16; // r3
  unsigned int v17; // r2
  unsigned int v18; // r2
  int v19; // r3
  int v20; // r3
  int v21; // r3
  int v23; // [sp+4h] [bp-8h]

  v3 = a1[5];
  v6 = a2 / (v3 * (a1[9] >> 3));
  v23 = v6;
  v7 = *(_DWORD *)(a3 + 60);
  if ( v6 <= 0 )
  {
    v8 = 0;
    goto LABEL_25;
  }
  v9 = &a1[2 * v7 + 194];
  v10 = v6;
  v11 = v7 + 94;
  do
  {
    while ( 1 )
    {
      if ( *(_BYTE *)(a3 + 64) )
      {
        (*(void (__fastcall **)(__int16 *, int))(*(_DWORD *)a1 + 56))(a1, a3);
        *(_BYTE *)(a3 + 64) = 0;
        v12 = *(_DWORD *)&a1[2 * v11];
        if ( *(_DWORD *)v9 != v12 )
        {
LABEL_5:
          if ( !v12 )
            goto LABEL_24;
          goto LABEL_6;
        }
      }
      else
      {
        v12 = *(_DWORD *)&a1[2 * v11];
        if ( *(_DWORD *)v9 != v12 )
          goto LABEL_5;
      }
      v12 = vox::VoxNativeSubDecoderIMAADPCM::EmulateDecodeBlock((int)a1, (int *)a3);
      *(_DWORD *)&a1[2 * v11] = v12;
      *(_DWORD *)v9 = 0;
      if ( !v12 )
        goto LABEL_24;
LABEL_6:
      v13 = *(_DWORD *)v9;
      v14 = *(_DWORD *)(a3 + 20) + 1 - *(_DWORD *)(a3 + 12);
      if ( v10 < v14 )
        v14 = v10;
      v15 = v12 - v13;
      if ( v14 >= v15 )
        v14 = v15;
      *(_DWORD *)v9 = v14 + v13;
      v16 = *(_DWORD *)(a3 + 20);
      v10 -= v14;
      v17 = v14 + *(_DWORD *)(a3 + 12);
      *(_DWORD *)(a3 + 12) = v17;
      if ( v17 <= v16 )
        goto LABEL_20;
      v18 = *(_DWORD *)(a3 + 24);
      if ( v18 >> 1 )
      {
        v19 = *(_DWORD *)(a3 + 28);
        if ( v18 == v19 )
          *(_DWORD *)(a3 + 16) = *(_DWORD *)(*(_DWORD *)(**((_DWORD **)a1 + 11) + 12 * *(_DWORD *)a3) + 4);
      }
      else
      {
        v19 = *(_DWORD *)(a3 + 28);
      }
      v20 = v19 - 1;
      *(_DWORD *)(a3 + 28) = v20;
      if ( !v20 )
      {
        if ( *(_DWORD *)(a3 + 32) == 1 )
        {
          *(_DWORD *)(a3 + 20) = *(_DWORD *)(*(_DWORD *)(**((_DWORD **)a1 + 11) + 12 * *(_DWORD *)a3)
                                           + 4
                                           * (((*(_DWORD *)(**((_DWORD **)a1 + 11) + 12 * *(_DWORD *)a3 + 4)
                                              - *(_DWORD *)(**((_DWORD **)a1 + 11) + 12 * *(_DWORD *)a3)) >> 2)
                                            - 1));
          if ( *(_DWORD *)(a3 + 4) != 1 )
            goto LABEL_18;
        }
        else if ( *(_DWORD *)(a3 + 4) != 1 )
        {
          goto LABEL_18;
        }
        vox::VoxNativeSubDecoder::UpdateSegmentsStates((vox::VoxNativeSubDecoder *)a1);
      }
LABEL_18:
      v21 = *(_DWORD *)(a3 + 36);
      if ( v21 == 3 )
        break;
      if ( v21 == 4 && *(_DWORD *)(a3 + 12) > *(_DWORD *)(a3 + 20) )
      {
LABEL_24:
        *(_DWORD *)(a3 + 36) = 1;
        v8 = v23 - v10;
        goto LABEL_25;
      }
LABEL_20:
      if ( v10 <= 0 )
        goto LABEL_30;
    }
    if ( !*(_DWORD *)(a3 + 28) )
      goto LABEL_20;
    (*(void (__fastcall **)(__int16 *, int, int))(*(_DWORD *)a1 + 40))(a1, -1, a3);
  }
  while ( v10 > 0 );
LABEL_30:
  v8 = v23 - v10;
LABEL_25:
  if ( *(_DWORD *)(a3 + 4) == 3 )
    *(_DWORD *)(a3 + 36) = 1;
  return v8 * v3 * (a1[9] >> 3);
}


// ===== 8867dc vox::VoxNativeSubDecoderIMAADPCM::EmulateDecodeCurrentSegmentWithOffset(int) =====
int __fastcall vox::VoxNativeSubDecoderIMAADPCM::EmulateDecodeCurrentSegmentWithOffset(
        vox::VoxNativeSubDecoderIMAADPCM *this,
        int a2,
        int a3,
        int a4)
{
  int v4; // r6
  int v5; // r11
  int v7; // r5
  int v8; // r7
  bool v9; // cc
  int *v10; // r6
  int v11; // r7
  int v12; // r0
  int v13; // r3
  int v14; // r2
  int v15; // r0
  unsigned int v16; // r3
  unsigned int v17; // r2
  unsigned int v18; // r2
  int v19; // r3
  int v20; // r3
  int v21; // r3
  _DWORD *v23; // r1
  int v24; // [sp+4h] [bp-8h]

  v4 = *((__int16 *)this + 9);
  v5 = *((__int16 *)this + 5);
  v24 = a2 / (v5 * (v4 >> 3));
  v7 = *((_DWORD *)this + 90);
  v8 = *((_DWORD *)this + 87);
  v9 = v7 <= 0;
  if ( v7 <= 0 )
  {
    v7 = a2 / (v5 * (v4 >> 3));
  }
  else
  {
    *((_DWORD *)this + 90) = 0;
    a4 = a2 / (v5 * (v4 >> 3));
  }
  if ( !v9 )
    v7 = a4 - v7;
  if ( v7 > 0 )
  {
    v10 = (int *)((char *)this + 4 * v8 + 388);
    v11 = v8 + 94;
    while ( 1 )
    {
      if ( *((_BYTE *)this + 352) )
      {
        (*(void (__fastcall **)(vox::VoxNativeSubDecoderIMAADPCM *, char *))(*(_DWORD *)this + 56))(
          this,
          (char *)this + 288);
        *((_BYTE *)this + 352) = 0;
        v12 = *((_DWORD *)this + v11);
        if ( *v10 == v12 )
        {
LABEL_28:
          v12 = vox::VoxNativeSubDecoderIMAADPCM::EmulateDecodeBlock((int)this, (int *)this + 72);
          *((_DWORD *)this + v11) = v12;
          *v10 = 0;
          if ( !v12 )
            goto LABEL_29;
          goto LABEL_10;
        }
      }
      else
      {
        v12 = *((_DWORD *)this + v11);
        if ( *v10 == v12 )
          goto LABEL_28;
      }
      if ( !v12 )
        goto LABEL_29;
LABEL_10:
      v13 = *v10;
      v14 = *((_DWORD *)this + 77) + 1 - *((_DWORD *)this + 75);
      if ( v7 < v14 )
        v14 = v7;
      v15 = v12 - v13;
      if ( v14 >= v15 )
        v14 = v15;
      *v10 = v14 + v13;
      v16 = *((_DWORD *)this + 77);
      v7 -= v14;
      v17 = v14 + *((_DWORD *)this + 75);
      *((_DWORD *)this + 75) = v17;
      if ( v17 <= v16 )
        goto LABEL_25;
      v18 = *((_DWORD *)this + 78);
      if ( v18 >> 1 )
      {
        v19 = *((_DWORD *)this + 79);
        if ( v18 == v19 )
          *((_DWORD *)this + 76) = *(_DWORD *)(*(_DWORD *)(**((_DWORD **)this + 11) + 12 * *((_DWORD *)this + 72)) + 4);
      }
      else
      {
        v19 = *((_DWORD *)this + 79);
      }
      v20 = v19 - 1;
      *((_DWORD *)this + 79) = v20;
      if ( !v20 )
      {
        if ( *((_DWORD *)this + 80) == 1 )
        {
          v23 = (_DWORD *)(**((_DWORD **)this + 11) + 12 * *((_DWORD *)this + 72));
          *((_DWORD *)this + 77) = *(_DWORD *)(*v23 + 4 * (((v23[1] - *v23) >> 2) - 1));
        }
        vox::VoxNativeSubDecoder::UpdateSegmentsStates(this);
      }
      v21 = *((_DWORD *)this + 81);
      if ( v21 == 3 )
      {
        if ( !*((_DWORD *)this + 79) )
          goto LABEL_25;
        (*(void (__fastcall **)(vox::VoxNativeSubDecoderIMAADPCM *, int, char *))(*(_DWORD *)this + 40))(
          this,
          -1,
          (char *)this + 288);
        if ( v7 <= 0 )
        {
LABEL_33:
          v4 = *((__int16 *)this + 9);
          return (v24 - v7) * v5 * (v4 >> 3);
        }
      }
      else
      {
        if ( v21 == 4 && *((_DWORD *)this + 75) > *((_DWORD *)this + 77) )
        {
LABEL_29:
          v4 = *((__int16 *)this + 9);
          *((_DWORD *)this + 81) = 1;
          return (v24 - v7) * v5 * (v4 >> 3);
        }
LABEL_25:
        if ( v7 <= 0 )
          goto LABEL_33;
      }
    }
  }
  return (v24 - v7) * v5 * (v4 >> 3);
}


// ===== 886a20 vox::VoxNativeSubDecoderIMAADPCM::~VoxNativeSubDecoderIMAADPCM() =====
void __fastcall vox::VoxNativeSubDecoderIMAADPCM::~VoxNativeSubDecoderIMAADPCM(vox::VoxNativeSubDecoderIMAADPCM *this)
{
  int v1; // r1
  void *v3; // r0
  void *v4; // r0
  void *v5; // r0
  AdpcmState *v6; // r4

  v1 = *((_DWORD *)this + 93);
  *(_DWORD *)this = off_9938D8;
  if ( v1 )
  {
    if ( *(_DWORD *)v1 )
    {
      VoxFree(*(void **)v1);
      **((_DWORD **)this + 93) = 0;
      v1 = *((_DWORD *)this + 93);
    }
    v3 = *(void **)(v1 + 4);
    if ( v3 )
    {
      VoxFree(v3);
      *(_DWORD *)(*((_DWORD *)this + 93) + 4) = 0;
      v1 = *((_DWORD *)this + 93);
    }
    v4 = *(void **)(v1 + 8);
    if ( v4 )
    {
      VoxFree(v4);
      *(_DWORD *)(*((_DWORD *)this + 93) + 8) = 0;
      v1 = *((_DWORD *)this + 93);
    }
    VoxFree((void *)v1);
    *((_DWORD *)this + 93) = 0;
  }
  v5 = *((void **)this + 103);
  if ( v5 )
  {
    VoxFree(v5);
    *((_DWORD *)this + 103) = 0;
  }
  v6 = (vox::VoxNativeSubDecoderIMAADPCM *)((char *)this + 448);
  do
  {
    v6 = (AdpcmState *)((char *)v6 - 4);
    AdpcmState::~AdpcmState(v6);
  }
  while ( v6 != (vox::VoxNativeSubDecoderIMAADPCM *)((char *)this + 416) );
}


// ===== 886b00 vox::VoxNativeSubDecoderIMAADPCM::~VoxNativeSubDecoderIMAADPCM() =====
void __fastcall vox::VoxNativeSubDecoderIMAADPCM::~VoxNativeSubDecoderIMAADPCM(vox::VoxNativeSubDecoderIMAADPCM *this)
{
  vox::VoxNativeSubDecoderIMAADPCM::~VoxNativeSubDecoderIMAADPCM(this);
  LC_API_FREE_0(this);
}


// ===== 886b1c vox::VoxNativeSubDecoderIMAADPCM::~VoxNativeSubDecoderIMAADPCM() =====
void __fastcall vox::VoxNativeSubDecoderIMAADPCM::~VoxNativeSubDecoderIMAADPCM(vox::VoxNativeSubDecoderIMAADPCM *this)
{
  int v1; // r1
  void *v3; // r0
  void *v4; // r0
  void *v5; // r0
  AdpcmState *v6; // r4

  v1 = *((_DWORD *)this + 93);
  *(_DWORD *)this = off_9938D8;
  if ( v1 )
  {
    if ( *(_DWORD *)v1 )
    {
      VoxFree(*(void **)v1);
      **((_DWORD **)this + 93) = 0;
      v1 = *((_DWORD *)this + 93);
    }
    v3 = *(void **)(v1 + 4);
    if ( v3 )
    {
      VoxFree(v3);
      *(_DWORD *)(*((_DWORD *)this + 93) + 4) = 0;
      v1 = *((_DWORD *)this + 93);
    }
    v4 = *(void **)(v1 + 8);
    if ( v4 )
    {
      VoxFree(v4);
      *(_DWORD *)(*((_DWORD *)this + 93) + 8) = 0;
      v1 = *((_DWORD *)this + 93);
    }
    VoxFree((void *)v1);
    *((_DWORD *)this + 93) = 0;
  }
  v5 = *((void **)this + 103);
  if ( v5 )
  {
    VoxFree(v5);
    *((_DWORD *)this + 103) = 0;
  }
  v6 = (vox::VoxNativeSubDecoderIMAADPCM *)((char *)this + 448);
  do
  {
    v6 = (AdpcmState *)((char *)v6 - 4);
    AdpcmState::~AdpcmState(v6);
  }
  while ( v6 != (vox::VoxNativeSubDecoderIMAADPCM *)((char *)this + 416) );
}


// ===== 886bfc vox::VoxNativeSubDecoderIMAADPCM::VoxNativeSubDecoderIMAADPCM(vox::StreamCursorInterface *,vox::NativeChunks *,vox::States *,vox::AudioSegments *,std::vector<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>> *,vox::TransitionRules *,std::vector*<std::vector<vox::TransitionParams,vox::SAllocator<std::vector*,(vox::VoxMemHint)0>>,vox::SAllocator<vox::SAllocator<std::vector*,(vox::VoxMemHint)0>,(vox::VoxMemHint)0>>,std::map<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,int,vox::StringCompare,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>> *,vox::NativePlaylistsManager *) =====
int __fastcall vox::VoxNativeSubDecoderIMAADPCM::VoxNativeSubDecoderIMAADPCM(
        int a1,
        int a2,
        _DWORD *a3,
        int a4,
        int a5,
        int a6,
        int a7,
        int a8,
        int a9,
        int a10)
{
  int v12; // r7
  int v13; // r8
  AdpcmState *v14; // r0
  int v15; // r6
  void *v16; // r0
  void **v17; // r7
  int v18; // r7
  int v19; // r5
  _DWORD *v20; // r3
  int v21; // r3
  int v22; // r0
  int v23; // r3

  v12 = 0;
  v13 = a1 + 416;
  vox::VoxNativeSubDecoder::VoxNativeSubDecoder(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  *(_DWORD *)(a1 + 372) = 0;
  *(_DWORD *)(a1 + 412) = 0;
  *(_DWORD *)a1 = off_9938D8;
  do
  {
    v14 = (AdpcmState *)(v13 + v12);
    v12 += 4;
    AdpcmState::AdpcmState(v14);
  }
  while ( v12 != 32 );
  *(_DWORD *)(a1 + 8) = a3[8];
  *(_DWORD *)(a1 + 12) = a3[9];
  v15 = a3[10];
  *(_DWORD *)(a1 + 16) = v15;
  *(_DWORD *)(a1 + 372) = VoxAlloc(0xCu);
  v16 = VoxAlloc((__int16)v15);
  v17 = *(void ***)(a1 + 372);
  *(_DWORD *)(a1 + 412) = v16;
  if ( !v17
    || !v16
    || (*v17 = VoxAlloc(4 * (__int16)v15),
        v18 = *(_DWORD *)(a1 + 372),
        *(_DWORD *)(v18 + 4) = VoxAlloc(4 * (__int16)v15),
        v19 = *(_DWORD *)(a1 + 372),
        *(_DWORD *)(v19 + 8) = VoxAlloc(4 * (__int16)v15),
        v20 = *(_DWORD **)(a1 + 372),
        !*v20)
    || !v20[1]
    || !v20[2] )
  {
    v21 = 0;
    goto LABEL_12;
  }
  v21 = *(unsigned __int16 *)(a1 + 10);
  *(_DWORD *)(a1 + 376) = 0;
  *(_DWORD *)(a1 + 380) = 0;
  *(_DWORD *)(a1 + 384) = 0;
  *(_DWORD *)(a1 + 388) = 0;
  *(_DWORD *)(a1 + 392) = 0;
  *(_DWORD *)(a1 + 396) = 0;
  *(_DWORD *)(a1 + 400) = 0;
  *(_DWORD *)(a1 + 404) = 0;
  *(_DWORD *)(a1 + 408) = 0;
  if ( !v21 )
  {
LABEL_12:
    *(_WORD *)(a1 + 18) = v21;
    *(_WORD *)(a1 + 8) = v21;
    *(_WORD *)(a1 + 10) = v21;
    *(_DWORD *)(a1 + 12) = v21;
    *(_WORD *)(a1 + 16) = v21;
    return a1;
  }
  v22 = 2 * ((__int16)v15 - 4 * (__int16)v21) / (__int16)v21;
  v23 = *(__int16 *)(a1 + 10);
  *(_DWORD *)(a1 + 368) = v22 + 1;
  if ( v23 > 8 )
  {
    *(_WORD *)(a1 + 18) = 0;
    *(_WORD *)(a1 + 8) = 0;
    *(_WORD *)(a1 + 10) = 0;
    *(_DWORD *)(a1 + 12) = 0;
    *(_WORD *)(a1 + 16) = 0;
  }
  return a1;
}


// ===== 886dbc vox::VoxNativeSubDecoderIMAADPCM::VoxNativeSubDecoderIMAADPCM(vox::StreamCursorInterface *,vox::NativeChunks *,vox::States *,vox::AudioSegments *,std::vector<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>> *,vox::TransitionRules *,std::vector*<std::vector<vox::TransitionParams,vox::SAllocator<std::vector*,(vox::VoxMemHint)0>>,vox::SAllocator<vox::SAllocator<std::vector*,(vox::VoxMemHint)0>,(vox::VoxMemHint)0>>,std::map<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,int,vox::StringCompare,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>> *,vox::NativePlaylistsManager *) =====
int __fastcall vox::VoxNativeSubDecoderIMAADPCM::VoxNativeSubDecoderIMAADPCM(
        int a1,
        int a2,
        _DWORD *a3,
        int a4,
        int a5,
        int a6,
        int a7,
        int a8,
        int a9,
        int a10)
{
  int v12; // r7
  int v13; // r8
  AdpcmState *v14; // r0
  int v15; // r6
  void *v16; // r0
  void **v17; // r7
  int v18; // r7
  int v19; // r5
  _DWORD *v20; // r3
  int v21; // r3
  int v22; // r0
  int v23; // r3

  v12 = 0;
  v13 = a1 + 416;
  vox::VoxNativeSubDecoder::VoxNativeSubDecoder(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  *(_DWORD *)(a1 + 372) = 0;
  *(_DWORD *)(a1 + 412) = 0;
  *(_DWORD *)a1 = off_9938D8;
  do
  {
    v14 = (AdpcmState *)(v13 + v12);
    v12 += 4;
    AdpcmState::AdpcmState(v14);
  }
  while ( v12 != 32 );
  *(_DWORD *)(a1 + 8) = a3[8];
  *(_DWORD *)(a1 + 12) = a3[9];
  v15 = a3[10];
  *(_DWORD *)(a1 + 16) = v15;
  *(_DWORD *)(a1 + 372) = VoxAlloc(0xCu);
  v16 = VoxAlloc((__int16)v15);
  v17 = *(void ***)(a1 + 372);
  *(_DWORD *)(a1 + 412) = v16;
  if ( !v17
    || !v16
    || (*v17 = VoxAlloc(4 * (__int16)v15),
        v18 = *(_DWORD *)(a1 + 372),
        *(_DWORD *)(v18 + 4) = VoxAlloc(4 * (__int16)v15),
        v19 = *(_DWORD *)(a1 + 372),
        *(_DWORD *)(v19 + 8) = VoxAlloc(4 * (__int16)v15),
        v20 = *(_DWORD **)(a1 + 372),
        !*v20)
    || !v20[1]
    || !v20[2] )
  {
    v21 = 0;
    goto LABEL_12;
  }
  v21 = *(unsigned __int16 *)(a1 + 10);
  *(_DWORD *)(a1 + 376) = 0;
  *(_DWORD *)(a1 + 380) = 0;
  *(_DWORD *)(a1 + 384) = 0;
  *(_DWORD *)(a1 + 388) = 0;
  *(_DWORD *)(a1 + 392) = 0;
  *(_DWORD *)(a1 + 396) = 0;
  *(_DWORD *)(a1 + 400) = 0;
  *(_DWORD *)(a1 + 404) = 0;
  *(_DWORD *)(a1 + 408) = 0;
  if ( !v21 )
  {
LABEL_12:
    *(_WORD *)(a1 + 18) = v21;
    *(_WORD *)(a1 + 8) = v21;
    *(_WORD *)(a1 + 10) = v21;
    *(_DWORD *)(a1 + 12) = v21;
    *(_WORD *)(a1 + 16) = v21;
    return a1;
  }
  v22 = 2 * ((__int16)v15 - 4 * (__int16)v21) / (__int16)v21;
  v23 = *(__int16 *)(a1 + 10);
  *(_DWORD *)(a1 + 368) = v22 + 1;
  if ( v23 > 8 )
  {
    *(_WORD *)(a1 + 18) = 0;
    *(_WORD *)(a1 + 8) = 0;
    *(_WORD *)(a1 + 10) = 0;
    *(_DWORD *)(a1 + 12) = 0;
    *(_WORD *)(a1 + 16) = 0;
  }
  return a1;
}


// ===== 886f7c vox::NativeSubDecoderIMAADPCMState::~NativeSubDecoderIMAADPCMState() =====
void __fastcall vox::NativeSubDecoderIMAADPCMState::~NativeSubDecoderIMAADPCMState(
        vox::NativeSubDecoderIMAADPCMState *this)
{
  *(_DWORD *)this = off_993920;
  vox::NativeSubDecoderState::~NativeSubDecoderState(this);
}


// ===== 886fb0 vox::NativeSubDecoderIMAADPCMState::~NativeSubDecoderIMAADPCMState() =====
void __fastcall vox::NativeSubDecoderIMAADPCMState::~NativeSubDecoderIMAADPCMState(
        vox::NativeSubDecoderIMAADPCMState *this)
{
  vox::NativeSubDecoderIMAADPCMState::~NativeSubDecoderIMAADPCMState(this);
  LC_API_FREE_0(this);
}


// ===== 886fcc vox::NativeSubDecoderIMAADPCMState::~NativeSubDecoderIMAADPCMState() =====
void __fastcall vox::NativeSubDecoderIMAADPCMState::~NativeSubDecoderIMAADPCMState(
        vox::NativeSubDecoderIMAADPCMState *this)
{
  *(_DWORD *)this = off_993920;
  vox::NativeSubDecoderState::~NativeSubDecoderState(this);
}


// ===== 887000 vox::NativeSubDecoderIMAADPCMState::NativeSubDecoderIMAADPCMState(vox::NativePlaylistsManager *) =====
vox::NativeSubDecoderIMAADPCMState *__fastcall vox::NativeSubDecoderIMAADPCMState::NativeSubDecoderIMAADPCMState(
        vox::NativeSubDecoderIMAADPCMState *this,
        vox::NativePlaylistsManager *a2)
{
  vox::NativeSubDecoderState::NativeSubDecoderState(this, a2);
  *(_DWORD *)this = off_993920;
  return this;
}


// ===== 887034 vox::NativeSubDecoderIMAADPCMState::NativeSubDecoderIMAADPCMState(vox::NativePlaylistsManager *) =====
vox::NativeSubDecoderIMAADPCMState *__fastcall vox::NativeSubDecoderIMAADPCMState::NativeSubDecoderIMAADPCMState(
        vox::NativeSubDecoderIMAADPCMState *this,
        vox::NativePlaylistsManager *a2)
{
  vox::NativeSubDecoderState::NativeSubDecoderState(this, a2);
  *(_DWORD *)this = off_993920;
  return this;
}


// ===== 887068 vox::VoxNativeSubDecoderIMAADPCM::DecodeBlock(void *,vox::SegmentState *) =====
int __fastcall vox::VoxNativeSubDecoderIMAADPCM::DecodeBlock(int a1, int a2, _DWORD *a3)
{
  int v4; // r12
  int v5; // r2
  int v6; // r4
  int v7; // r2
  int v8; // lr
  int *v9; // r0
  int v10; // r4
  int v11; // r3
  int v12; // r4
  __int16 v14; // r6
  int v15; // r5
  unsigned int v16; // r2
  _WORD *v17; // r4
  unsigned int v18; // r5
  int v19; // r0
  int v20; // r3
  int v21; // r6
  int v22; // r2
  _WORD *v23; // r3
  __int16 v24; // r8
  char *v25; // r6
  int v26; // r2
  char *i; // r3
  int v28; // r12
  _WORD *v29; // r2
  int v30; // r0
  unsigned __int8 *v31; // r9
  __int16 *v32; // r11
  int v33; // r6
  int v34; // r4
  unsigned int v35; // r0
  int v36; // r3
  _WORD *v37; // r5
  int v38; // r12
  int v39; // r1
  int v40; // r2
  int v41; // r3
  int v43; // [sp+0h] [bp-64h]
  _WORD *v44; // [sp+8h] [bp-5Ch]
  unsigned __int8 *v45; // [sp+10h] [bp-54h]
  int v46; // [sp+1Ch] [bp-48h]
  int v47; // [sp+20h] [bp-44h]
  int v48; // [sp+24h] [bp-40h]
  int v50; // [sp+30h] [bp-34h]
  _DWORD *v51; // [sp+38h] [bp-2Ch] BYREF
  unsigned int v52; // [sp+3Ch] [bp-28h]
  _DWORD v53[8]; // [sp+40h] [bp-24h] BYREF

  v51 = a3;
  v4 = *(_DWORD *)(*(_DWORD *)(a1 + 24) + 4);
  v5 = 24 * *a3;
  v6 = *(_DWORD *)(v4 + v5);
  v7 = v4 + v5;
  v8 = *(_DWORD *)(a1 + 20);
  v9 = *(int **)(a1 + 4);
  v10 = v51[2] + v6;
  v11 = *v9;
  v52 = *(_DWORD *)(v7 + 8);
  v12 = v10 + v8;
  v14 = *(_WORD *)(a1 + 10);
  v15 = *(_DWORD *)(v7 + 4);
  if ( v12 != (*(int (__fastcall **)(int *))(v11 + 24))(v9) )
    (*(void (__fastcall **)(_DWORD, int, _DWORD))(**(_DWORD **)(a1 + 4) + 16))(*(_DWORD *)(a1 + 4), v12, 0);
  v16 = *(__int16 *)(a1 + 16);
  v17 = *(_WORD **)(a1 + 412);
  v18 = v15 - v51[2];
  if ( v16 >= v18 )
    v16 = v18;
  v19 = (*(int (__fastcall **)(_DWORD, _DWORD, unsigned int))(**(_DWORD **)(a1 + 4) + 28))(
          *(_DWORD *)(a1 + 4),
          *(_DWORD *)(a1 + 412),
          v16);
  v47 = v14;
  v51[2] += v19;
  *(_WORD *)(a1 + 416) = *v17;
  v20 = 418;
  *(_WORD *)(a1 + 418) = v17[1];
  if ( v14 <= 1 )
  {
    v53[0] = a2;
    if ( v14 <= 0 )
    {
      v28 = 4 * v14;
      goto LABEL_13;
    }
  }
  else
  {
    v21 = 4 * v14;
    v22 = a1;
    v23 = v17;
    do
    {
      *(_WORD *)(v22 + 420) = v23[2];
      v24 = v23[3];
      v23 += 2;
      *(_WORD *)(v22 + 422) = v24;
      v22 += 4;
    }
    while ( v23 != &v17[v21 / 2u - 2] );
    v53[0] = a2;
    v25 = (char *)&(&v51)[v21 / 4u];
    v26 = a2;
    for ( i = (char *)v53; ; i += 4 )
    {
      v26 += 2;
      *((_DWORD *)i + 1) = v26;
      if ( i == v25 )
        break;
    }
  }
  v20 = 0;
  v28 = 4 * v47;
  do
  {
    v29 = *(_WORD **)((char *)v53 + v20);
    *v29 = *(_WORD *)(a1 + v20 + 416);
    *(_DWORD *)((char *)v53 + v20) = &v29[v47];
    v20 += 4;
  }
  while ( v20 != v28 );
LABEL_13:
  v30 = v19 - v28;
  if ( v30 <= 0 )
    v20 = 1;
  v50 = v30;
  if ( v30 > 0 )
  {
    v45 = (unsigned __int8 *)&v17[v28 / 2u];
    v48 = 1;
    v46 = 0;
    do
    {
      if ( v47 > 0 )
      {
        v31 = v45;
        v32 = (__int16 *)(a1 + 416);
        v43 = 0;
        do
        {
          v33 = (v31[2] << 16) + (v31[1] << 8) + v45[v43 * 4] + (v31[3] << 24);
          v44 = (_WORD *)v53[v43];
          v34 = *v32;
          v35 = *((unsigned __int8 *)v32 + 2);
          v36 = v45[v43 * 4] & 0xF;
          v37 = v44;
          v38 = 0;
          while ( 1 )
          {
            v39 = AdpcmDecoder::cAdpcmStepSizeTable[v35];
            v40 = v39 >> 3;
            if ( (v36 & 4) != 0 )
              v40 += v39;
            if ( (v36 & 2) != 0 )
              v40 += v39 >> 1;
            if ( (v36 & 1) != 0 )
              v40 += v39 >> 2;
            if ( (v36 & 8) != 0 )
            {
              v34 -= v40;
              if ( v34 < -32768 )
                v34 = -32768;
            }
            else
            {
              v34 += v40;
              if ( v34 >= 0x7FFF )
                v34 = 0x7FFF;
            }
            v35 = (unsigned __int8)(v35 + AdpcmDecoder::cAdpcmIndexTable[v36]);
            if ( (v35 & 0x80) != 0 )
            {
              v35 = 0;
            }
            else if ( v35 >= 0x58 )
            {
              v35 = 88;
            }
            ++v38;
            *v37 = v34;
            if ( v38 == 8 )
              break;
            v33 >>= 4;
            v37 += v47;
            v36 = v33 & 0xF;
          }
          v31 += 4;
          *v32 = v34;
          *((_BYTE *)v32 + 2) = v35;
          v32 += 2;
          v53[v43++] = &v44[8 * v47];
        }
        while ( v31 != &v45[4 * v47] );
        v45 = v31;
        v46 += 4 * v47;
      }
      v48 += 8;
    }
    while ( v46 < v50 );
  }
  else
  {
    v48 = v20;
  }
  v41 = v51[3];
  if ( v52 < v48 + v41 )
    return v52 - v41;
  return v48;
}


// ===== 887464 vox::VoxNativeSubDecoderIMAADPCM::Seek(int,vox::SegmentState *) =====
int __fastcall vox::VoxNativeSubDecoderIMAADPCM::Seek(int a1, int a2, int *a3)
{
  int v3; // r7
  int v5; // r6
  int v7; // r8
  int v8; // r7
  int v10; // r0
  int v11; // r12
  int v12; // r10
  int v13; // r0
  int v14; // r10
  int v15; // r6

  v3 = *a3;
  v5 = a2;
  if ( a2 < 0 )
    v5 = a3[4];
  v7 = a3[15];
  if ( v5 > *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 24) + 4) + 24 * v3 + 8) )
    return -1;
  v10 = (unsigned int)v5 / *(_DWORD *)(a1 + 368);
  v11 = *(__int16 *)(a1 + 16) * v10;
  v12 = v10;
  a3[2] = v11;
  v13 = (*(int (__fastcall **)(_DWORD, int, _DWORD))(**(_DWORD **)(a1 + 4) + 16))(
          *(_DWORD *)(a1 + 4),
          *(_DWORD *)(a1 + 20) + *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 24) + 4) + 24 * v3) + v11,
          0);
  v8 = v13;
  if ( v13 )
    return v8;
  v14 = *(_DWORD *)(a1 + 368) * v12;
  v15 = v5 - v14;
  *(_DWORD *)(a1 + 4 * v7 + 388) = v15;
  a3[3] = v15 + v14;
  *(_DWORD *)(a1 + 4 * (v7 + 94)) = vox::VoxNativeSubDecoderIMAADPCM::DecodeBlock(
                                      a1,
                                      *(_DWORD *)(*(_DWORD *)(a1 + 372) + 4 * v7),
                                      a3);
  return 0;
}


// ===== 887544 vox::VoxNativeSubDecoderIMAADPCM::SetDecodingBufferToSegmentPosition(vox::SegmentState *) =====
int __fastcall vox::VoxNativeSubDecoderIMAADPCM::SetDecodingBufferToSegmentPosition(int a1, _DWORD *a2)
{
  unsigned int v2; // r6
  int v4; // r7
  unsigned int v6; // r0
  int result; // r0

  v2 = a2[3];
  v4 = a2[15];
  v6 = *(_DWORD *)(a1 + 368) * (v2 / *(_DWORD *)(a1 + 368));
  a2[3] = v6;
  a2[2] = *(__int16 *)(a1 + 16) * (v6 / *(_DWORD *)(a1 + 368));
  result = vox::VoxNativeSubDecoderIMAADPCM::DecodeBlock(a1, *(_DWORD *)(*(_DWORD *)(a1 + 372) + 4 * v4), a2);
  *(_DWORD *)(a1 + 4 * (v4 + 94)) = result;
  *(_DWORD *)(a1 + 4 * v4 + 388) = v2 - a2[3];
  a2[3] = v2;
  return result;
}


// ===== 8875b8 vox::VoxNativeSubDecoderIMAADPCM::DecodeSegment(void *,int,vox::SegmentState *) =====
int __fastcall vox::VoxNativeSubDecoderIMAADPCM::DecodeSegment(__int16 *a1, int a2, int a3, int a4)
{
  int v5; // r5
  int v7; // r9
  int v8; // r0
  int v9; // r11
  __int16 *v10; // r10
  int v11; // r8
  int v12; // r9
  int v13; // r0
  int v14; // r7
  int v15; // r0
  unsigned int v16; // r3
  unsigned int v17; // r7
  unsigned int v18; // r2
  int v19; // r3
  int v20; // r3
  int v21; // r3
  int v23; // [sp+0h] [bp-Ch]

  v5 = a1[5];
  v23 = a3 / (v5 * (a1[9] >> 3));
  v7 = *(_DWORD *)(a4 + 60);
  if ( v23 <= 0 )
  {
    v8 = 0;
    goto LABEL_25;
  }
  v9 = 4 * v7;
  v10 = &a1[2 * v7 + 194];
  v11 = a3 / (v5 * (a1[9] >> 3));
  v12 = v7 + 94;
  do
  {
    while ( 1 )
    {
      if ( *(_BYTE *)(a4 + 64) )
      {
        (*(void (__fastcall **)(__int16 *, int))(*(_DWORD *)a1 + 44))(a1, a4);
        *(_BYTE *)(a4 + 64) = 0;
        v13 = *(_DWORD *)&a1[2 * v12];
        if ( *(_DWORD *)v10 != v13 )
        {
LABEL_5:
          if ( !v13 )
            goto LABEL_24;
          goto LABEL_6;
        }
      }
      else
      {
        v13 = *(_DWORD *)&a1[2 * v12];
        if ( *(_DWORD *)v10 != v13 )
          goto LABEL_5;
      }
      v13 = vox::VoxNativeSubDecoderIMAADPCM::DecodeBlock((int)a1, *(_DWORD *)(*((_DWORD *)a1 + 93) + v9), (_DWORD *)a4);
      *(_DWORD *)&a1[2 * v12] = v13;
      *(_DWORD *)v10 = 0;
      if ( !v13 )
        goto LABEL_24;
LABEL_6:
      v14 = *(_DWORD *)(a4 + 20) + 1 - *(_DWORD *)(a4 + 12);
      v15 = v13 - *(_DWORD *)v10;
      if ( v11 < v14 )
        v14 = v11;
      if ( v14 >= v15 )
        v14 = v15;
      memcpy(
        (void *)(a2 + 2 * v5 * (v23 - v11)),
        (const void *)(*(_DWORD *)(*((_DWORD *)a1 + 93) + v9) + 2 * v5 * *(_DWORD *)v10),
        2 * v5 * v14);
      v11 -= v14;
      *(_DWORD *)v10 += v14;
      v16 = *(_DWORD *)(a4 + 20);
      v17 = v14 + *(_DWORD *)(a4 + 12);
      *(_DWORD *)(a4 + 12) = v17;
      if ( v17 <= v16 )
        goto LABEL_20;
      v18 = *(_DWORD *)(a4 + 24);
      if ( v18 >> 1 )
      {
        v19 = *(_DWORD *)(a4 + 28);
        if ( v18 == v19 )
          *(_DWORD *)(a4 + 16) = *(_DWORD *)(*(_DWORD *)(**((_DWORD **)a1 + 11) + 12 * *(_DWORD *)a4) + 4);
      }
      else
      {
        v19 = *(_DWORD *)(a4 + 28);
      }
      v20 = v19 - 1;
      *(_DWORD *)(a4 + 28) = v20;
      if ( !v20 )
      {
        if ( *(_DWORD *)(a4 + 32) == 1 )
        {
          *(_DWORD *)(a4 + 20) = *(_DWORD *)(*(_DWORD *)(**((_DWORD **)a1 + 11) + 12 * *(_DWORD *)a4)
                                           + 4
                                           * (((*(_DWORD *)(**((_DWORD **)a1 + 11) + 12 * *(_DWORD *)a4 + 4)
                                              - *(_DWORD *)(**((_DWORD **)a1 + 11) + 12 * *(_DWORD *)a4)) >> 2)
                                            - 1));
          if ( *(_DWORD *)(a4 + 4) != 1 )
            goto LABEL_18;
        }
        else if ( *(_DWORD *)(a4 + 4) != 1 )
        {
          goto LABEL_18;
        }
        vox::VoxNativeSubDecoder::UpdateSegmentsStates((vox::VoxNativeSubDecoder *)a1);
      }
LABEL_18:
      v21 = *(_DWORD *)(a4 + 36);
      if ( v21 == 3 )
        break;
      if ( v21 == 4 && *(_DWORD *)(a4 + 12) > *(_DWORD *)(a4 + 20) )
      {
LABEL_24:
        *(_DWORD *)(a4 + 36) = 1;
        v8 = v23 - v11;
        goto LABEL_25;
      }
LABEL_20:
      if ( v11 <= 0 )
        goto LABEL_30;
    }
    if ( !*(_DWORD *)(a4 + 28) )
      goto LABEL_20;
    (*(void (__fastcall **)(__int16 *, int, int))(*(_DWORD *)a1 + 40))(a1, -1, a4);
  }
  while ( v11 > 0 );
LABEL_30:
  v8 = v23 - v11;
LABEL_25:
  if ( *(_DWORD *)(a4 + 4) == 3 )
    *(_DWORD *)(a4 + 36) = 1;
  return v8 * v5 * (a1[9] >> 3);
}


// ===== 887860 vox::VoxNativeSubDecoderIMAADPCM::DecodeCurrentSegmentWithOffset(void *,int) =====
int __fastcall vox::VoxNativeSubDecoderIMAADPCM::DecodeCurrentSegmentWithOffset(
        vox::VoxNativeSubDecoderIMAADPCM *this,
        char *a2,
        int a3)
{
  int v3; // r8
  int v4; // r5
  int v6; // r3
  int v7; // r9
  int v8; // r10
  int v9; // r6
  int v10; // r3
  int v11; // r6
  int v12; // r11
  _DWORD *v13; // r7
  int v14; // r10
  int v15; // r0
  int v16; // r5
  int v17; // r0
  int v18; // r0
  unsigned int v19; // r3
  unsigned int v20; // r5
  unsigned int v21; // r2
  int v22; // r3
  int v23; // r3
  int v24; // r3
  _DWORD *v26; // r1
  _DWORD *v28; // [sp+4h] [bp-8h]

  v3 = *((__int16 *)this + 5);
  v4 = *((__int16 *)this + 9) >> 3;
  v6 = *((_DWORD *)this + 90);
  v7 = a3 / (v3 * v4);
  v8 = *((_DWORD *)this + 87);
  if ( v6 > 0 )
  {
    LC_API_MEMSET_0(a2, 0, v4 * v6 * v3);
    v11 = *((_DWORD *)this + 90);
    *((_DWORD *)this + 90) = 0;
    v9 = v7 - v11;
    v10 = v7 - v9;
  }
  else
  {
    v9 = a3 / (v3 * v4);
    v10 = 0;
  }
  if ( v9 > 0 )
  {
    v12 = 4 * v8;
    v13 = (_DWORD *)((char *)this + 4 * v8 + 388);
    v28 = (_DWORD *)((char *)this + 288);
    v14 = v8 + 94;
    while ( 1 )
    {
      if ( *((_BYTE *)this + 352) )
      {
        (*(void (__fastcall **)(vox::VoxNativeSubDecoderIMAADPCM *, _DWORD *))(*(_DWORD *)this + 44))(this, v28);
        *((_BYTE *)this + 352) = 0;
        v15 = *((_DWORD *)this + v14);
        if ( *v13 == v15 )
        {
LABEL_26:
          v15 = vox::VoxNativeSubDecoderIMAADPCM::DecodeBlock((int)this, *(_DWORD *)(*((_DWORD *)this + 93) + v12), v28);
          *((_DWORD *)this + v14) = v15;
          *v13 = 0;
          if ( !v15 )
            goto LABEL_27;
          goto LABEL_8;
        }
      }
      else
      {
        v15 = *((_DWORD *)this + v14);
        if ( *v13 == v15 )
          goto LABEL_26;
      }
      if ( !v15 )
        goto LABEL_27;
LABEL_8:
      v16 = *((_DWORD *)this + 77) + 1 - *((_DWORD *)this + 75);
      v17 = v15 - *v13;
      if ( v9 < v16 )
        v16 = v9;
      if ( v16 >= v17 )
        v16 = v17;
      v18 = v3 * (v7 - v9);
      v9 -= v16;
      memcpy(&a2[2 * v18], (const void *)(*(_DWORD *)(*((_DWORD *)this + 93) + v12) + 2 * v3 * *v13), 2 * v3 * v16);
      *v13 += v16;
      v19 = *((_DWORD *)this + 77);
      v20 = v16 + *((_DWORD *)this + 75);
      *((_DWORD *)this + 75) = v20;
      if ( v20 <= v19 )
        goto LABEL_23;
      v21 = *((_DWORD *)this + 78);
      if ( v21 >> 1 )
      {
        v22 = *((_DWORD *)this + 79);
        if ( v21 == v22 )
          *((_DWORD *)this + 76) = *(_DWORD *)(*(_DWORD *)(**((_DWORD **)this + 11) + 12 * *((_DWORD *)this + 72)) + 4);
      }
      else
      {
        v22 = *((_DWORD *)this + 79);
      }
      v23 = v22 - 1;
      *((_DWORD *)this + 79) = v23;
      if ( !v23 )
      {
        if ( *((_DWORD *)this + 80) == 1 )
        {
          v26 = (_DWORD *)(**((_DWORD **)this + 11) + 12 * *((_DWORD *)this + 72));
          *((_DWORD *)this + 77) = *(_DWORD *)(*v26 + 4 * (((v26[1] - *v26) >> 2) - 1));
        }
        vox::VoxNativeSubDecoder::UpdateSegmentsStates(this);
      }
      v24 = *((_DWORD *)this + 81);
      if ( v24 == 3 )
      {
        if ( !*((_DWORD *)this + 79) )
          goto LABEL_23;
        (*(void (__fastcall **)(vox::VoxNativeSubDecoderIMAADPCM *, int, _DWORD *))(*(_DWORD *)this + 40))(
          this,
          -1,
          v28);
        if ( v9 <= 0 )
        {
LABEL_31:
          v10 = v7 - v9;
          return v10 * v3 * (*((__int16 *)this + 9) >> 3);
        }
      }
      else
      {
        if ( v24 == 4 && *((_DWORD *)this + 75) > *((_DWORD *)this + 77) )
        {
LABEL_27:
          *((_DWORD *)this + 81) = 1;
          v10 = v7 - v9;
          return v10 * v3 * (*((__int16 *)this + 9) >> 3);
        }
LABEL_23:
        if ( v9 <= 0 )
          goto LABEL_31;
      }
    }
  }
  return v10 * v3 * (*((__int16 *)this + 9) >> 3);
}


// ===== 887b0c vox::VoxNativeSubDecoderPCM::Seek(uint) =====
int __fastcall vox::VoxNativeSubDecoderPCM::Seek(vox::VoxNativeSubDecoderPCM *this, unsigned int a2)
{
  return 0;
}


// ===== 887b14 vox::VoxNativeSubDecoderPCM::GetDecodingBuffer(void) =====
int __fastcall vox::VoxNativeSubDecoderPCM::GetDecodingBuffer(vox::VoxNativeSubDecoderPCM *this)
{
  return -1;
}


// ===== 887b1c vox::VoxNativeSubDecoderPCM::ReleaseDecodingBuffer(int) =====
void __fastcall vox::VoxNativeSubDecoderPCM::ReleaseDecodingBuffer(vox::VoxNativeSubDecoderPCM *this, int a2)
{
  ;
}


// ===== 887b20 vox::VoxNativeSubDecoderPCM::SetDecodingBufferToSegmentPosition(vox::SegmentState *) =====
void vox::VoxNativeSubDecoderPCM::SetDecodingBufferToSegmentPosition()
{
  ;
}


// ===== 887b24 vox::VoxNativeSubDecoderPCM::~VoxNativeSubDecoderPCM() =====
void __fastcall vox::VoxNativeSubDecoderPCM::~VoxNativeSubDecoderPCM(vox::VoxNativeSubDecoderPCM *this)
{
  ;
}


// ===== 887b28 vox::VoxNativeSubDecoderPCM::~VoxNativeSubDecoderPCM() =====
void __fastcall vox::VoxNativeSubDecoderPCM::~VoxNativeSubDecoderPCM(vox::VoxNativeSubDecoderPCM *this)
{
  ;
}


// ===== 887b2c vox::VoxNativeSubDecoderPCM::GetBytePositionFromSampleOffset(uint) =====
unsigned int __fastcall vox::VoxNativeSubDecoderPCM::GetBytePositionFromSampleOffset(
        vox::VoxNativeSubDecoderPCM *this,
        unsigned int a2)
{
  return *((__int16 *)this + 8) * a2;
}


// ===== 887b38 vox::VoxNativeSubDecoderPCM::Seek(int,vox::SegmentState *) =====
int __fastcall vox::VoxNativeSubDecoderPCM::Seek(int a1, int a2, _DWORD *a3)
{
  int v3; // r4
  int v5; // r3
  int v6; // r2
  int result; // r0
  int v8; // r6

  v3 = a2;
  if ( a2 < 0 )
    v3 = a3[4];
  v5 = 24 * *a3;
  v6 = *(_DWORD *)(*(_DWORD *)(a1 + 24) + 4);
  if ( v3 > *(_DWORD *)(v6 + v5 + 8) )
    return -1;
  v8 = *(__int16 *)(a1 + 16) * v3;
  result = (*(int (__fastcall **)(_DWORD, int, _DWORD))(**(_DWORD **)(a1 + 4) + 16))(
             *(_DWORD *)(a1 + 4),
             *(_DWORD *)(a1 + 20) + *(_DWORD *)(v6 + v5) + v8,
             0);
  if ( !result )
  {
    a3[3] = v3;
    a3[2] = v8;
  }
  return result;
}


// ===== 887bb8 vox::VoxNativeSubDecoderPCM::Reset(void) =====
// attributes: thunk
_DWORD *__fastcall vox::VoxNativeSubDecoderPCM::Reset(vox::NativePlaylistsManager **this)
{
  return vox::VoxNativeSubDecoder::Reset(this);
}


// ===== 887bbc vox::VoxNativeSubDecoderPCM::SetState(vox::NativeSubDecoderPCMState *) =====
// attributes: thunk
void *__fastcall vox::VoxNativeSubDecoderPCM::SetState(int this, int a2)
{
  return vox::VoxNativeSubDecoder::SetState(this, a2);
}


// ===== 887bc0 vox::VoxNativeSubDecoderPCM::GetState(vox::NativeSubDecoderPCMState *) =====
// attributes: thunk
void *__fastcall vox::VoxNativeSubDecoderPCM::GetState(int this, int a2)
{
  return vox::VoxNativeSubDecoder::GetState(this, a2);
}


// ===== 887bc4 vox::VoxNativeSubDecoderPCM::EmulateDecodeSegment(int,vox::SegmentState *) =====
int __fastcall vox::VoxNativeSubDecoderPCM::EmulateDecodeSegment(int a1, int a2, _DWORD *a3)
{
  int v5; // r5
  int v7; // r9
  int v8; // r7
  int v9; // r6
  unsigned int v10; // r7
  unsigned int v11; // r0
  unsigned int v12; // r3
  unsigned int v13; // r2
  int v14; // r3
  int v15; // r3
  int v16; // r3
  int v17; // r2
  int v18; // r5
  int result; // r0
  _DWORD *v20; // r1
  int v21; // r3

  v5 = a3[2] + *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 24) + 4) + 24 * *a3) + *(_DWORD *)(a1 + 20);
  LOWORD(v7) = *(_WORD *)(a1 + 16);
  v8 = a3[5];
  if ( v5 != (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 4) + 24))(*(_DWORD *)(a1 + 4)) )
    (*(void (__fastcall **)(_DWORD, int, _DWORD))(**(_DWORD **)(a1 + 4) + 16))(*(_DWORD *)(a1 + 4), v5, 0);
  if ( a2 <= 0 )
  {
    v9 = 0;
    goto LABEL_21;
  }
  v7 = (__int16)v7;
  v10 = v7 + v8 * v7;
  v9 = 0;
  while ( 1 )
  {
    v17 = a3[2];
    v18 = a2 - v9;
    if ( a2 - v9 + v17 <= v10 )
    {
      (*(void (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(a1 + 4) + 16))(*(_DWORD *)(a1 + 4), a2 - v9, 1);
      a3[2] += v18;
      if ( !v18 )
        break;
    }
    else
    {
      v18 = v10 - v17;
      (*(void (__fastcall **)(_DWORD, unsigned int, int))(**(_DWORD **)(a1 + 4) + 16))(
        *(_DWORD *)(a1 + 4),
        v10 - v17,
        1);
      a3[2] = v10;
      if ( !v18 )
        break;
    }
    v11 = a3[2] / (unsigned int)(__int16)v7;
    v12 = a3[5];
    v9 += v18;
    a3[3] = v11;
    if ( v11 <= v12 )
      goto LABEL_17;
    v13 = a3[6];
    if ( v13 >> 1 )
    {
      v14 = a3[7];
      if ( v13 == v14 )
        a3[4] = *(_DWORD *)(*(_DWORD *)(**(_DWORD **)(a1 + 44) + 12 * *a3) + 4);
    }
    else
    {
      v14 = a3[7];
    }
    v15 = v14 - 1;
    a3[7] = v15;
    if ( !v15 )
    {
      if ( a3[8] == 1 )
      {
        v20 = (_DWORD *)(**(_DWORD **)(a1 + 44) + 12 * *a3);
        v21 = *(_DWORD *)(*v20 + 4 * (((v20[1] - *v20) >> 2) - 1));
        v10 = (__int16)v7 + v21 * (__int16)v7;
        a3[5] = v21;
        if ( a3[1] != 1 )
          goto LABEL_15;
      }
      else if ( a3[1] != 1 )
      {
        goto LABEL_15;
      }
      vox::VoxNativeSubDecoder::UpdateSegmentsStates((vox::VoxNativeSubDecoder *)a1);
      v10 = (__int16)v7 + a3[5] * (__int16)v7;
    }
LABEL_15:
    v16 = a3[9];
    if ( v16 == 3 )
    {
      if ( a3[7] )
        (*(void (__fastcall **)(int, int, _DWORD *))(*(_DWORD *)a1 + 40))(a1, -1, a3);
      goto LABEL_17;
    }
    if ( v16 == 4 && a3[3] > a3[5] )
      break;
LABEL_17:
    if ( a2 <= v9 )
      goto LABEL_21;
  }
  a3[9] = 1;
LABEL_21:
  result = v9;
  if ( a3[1] == 3 )
    a3[9] = 1;
  return result;
}


// ===== 887e1c vox::VoxNativeSubDecoderPCM::EmulateDecodeCurrentSegmentWithOffset(int) =====
int __fastcall vox::VoxNativeSubDecoderPCM::EmulateDecodeCurrentSegmentWithOffset(
        vox::VoxNativeSubDecoderPCM *this,
        int a2)
{
  int v3; // r6
  int v5; // r5
  unsigned int v6; // r10
  int v7; // r2
  int v8; // r0
  int v9; // r5
  int v10; // r6
  int v11; // r5
  int v12; // r7
  unsigned int v13; // r7
  unsigned int v14; // r0
  unsigned int v15; // r3
  unsigned int v16; // r1
  int v17; // r2
  int v18; // r2
  int v19; // r2
  int v20; // r2
  int v21; // r5
  _DWORD *v23; // r1

  v3 = *((_DWORD *)this + 90);
  v5 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 6) + 4) + 24 * *((_DWORD *)this + 72));
  if ( v3 > 0 )
    *((_DWORD *)this + 90) = 0;
  v6 = *((__int16 *)this + 8);
  v7 = *((_DWORD *)this + 5);
  v8 = *((_DWORD *)this + 1);
  v9 = v5 + *((_DWORD *)this + 74);
  if ( v3 > 0 )
    v10 = v3 * v6;
  else
    v10 = 0;
  v11 = v9 + v7;
  v12 = *((_DWORD *)this + 77);
  if ( v11 != (*(int (__fastcall **)(int))(*(_DWORD *)v8 + 24))(v8) )
    (*(void (__fastcall **)(_DWORD, int, _DWORD))(**((_DWORD **)this + 1) + 16))(*((_DWORD *)this + 1), v11, 0);
  if ( v10 < a2 )
  {
    v13 = v6 + v12 * v6;
    do
    {
      v20 = *((_DWORD *)this + 74);
      v21 = a2 - v10;
      if ( a2 - v10 + v20 <= v13 )
      {
        (*(void (__fastcall **)(_DWORD, int, int))(**((_DWORD **)this + 1) + 16))(*((_DWORD *)this + 1), a2 - v10, 1);
        *((_DWORD *)this + 74) += v21;
        if ( !v21 )
          goto LABEL_25;
      }
      else
      {
        v21 = v13 - v20;
        (*(void (__fastcall **)(_DWORD, unsigned int, int))(**((_DWORD **)this + 1) + 16))(
          *((_DWORD *)this + 1),
          v13 - v20,
          1);
        *((_DWORD *)this + 74) = v13;
        if ( !v21 )
          goto LABEL_25;
      }
      v14 = *((_DWORD *)this + 74) / v6;
      v15 = *((_DWORD *)this + 77);
      v10 += v21;
      *((_DWORD *)this + 75) = v14;
      if ( v14 > v15 )
      {
        v16 = *((_DWORD *)this + 78);
        if ( v16 >> 1 )
        {
          v17 = *((_DWORD *)this + 79);
          if ( v16 == v17 )
            *((_DWORD *)this + 76) = *(_DWORD *)(*(_DWORD *)(**((_DWORD **)this + 11) + 12 * *((_DWORD *)this + 72)) + 4);
        }
        else
        {
          v17 = *((_DWORD *)this + 79);
        }
        v18 = v17 - 1;
        *((_DWORD *)this + 79) = v18;
        if ( !v18 )
        {
          if ( *((_DWORD *)this + 80) == 1 )
          {
            v23 = (_DWORD *)(**((_DWORD **)this + 11) + 12 * *((_DWORD *)this + 72));
            *((_DWORD *)this + 77) = *(_DWORD *)(*v23 + 4 * (((v23[1] - *v23) >> 2) - 1));
          }
          vox::VoxNativeSubDecoder::UpdateSegmentsStates(this);
          v15 = *((_DWORD *)this + 77);
          v13 = v6 + v15 * v6;
        }
        v19 = *((_DWORD *)this + 81);
        if ( v19 == 3 )
        {
          if ( *((_DWORD *)this + 79) )
            (*(void (__fastcall **)(vox::VoxNativeSubDecoderPCM *, int, char *))(*(_DWORD *)this + 40))(
              this,
              -1,
              (char *)this + 288);
        }
        else if ( v19 == 4 && *((_DWORD *)this + 75) > v15 )
        {
LABEL_25:
          *((_DWORD *)this + 81) = 1;
          return v10;
        }
      }
    }
    while ( a2 > v10 );
  }
  return v10;
}


// ===== 888050 vox::VoxNativeSubDecoderPCM::DecodeSegment(void *,int,vox::SegmentState *) =====
int __fastcall vox::VoxNativeSubDecoderPCM::DecodeSegment(int a1, int a2, int a3, _DWORD *a4)
{
  int v6; // r6
  int v9; // r10
  int v10; // r7
  int v11; // r6
  unsigned int v12; // r7
  int v13; // r3
  unsigned int v14; // r0
  unsigned int v15; // r3
  unsigned int v16; // r2
  int v17; // r3
  int v18; // r3
  int v19; // r3
  int v20; // r1
  int result; // r0
  _DWORD *v22; // r1
  int v23; // r3

  v6 = a4[2] + *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 24) + 4) + 24 * *a4) + *(_DWORD *)(a1 + 20);
  LOWORD(v9) = *(_WORD *)(a1 + 16);
  v10 = a4[5];
  if ( v6 != (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 4) + 24))(*(_DWORD *)(a1 + 4)) )
    (*(void (__fastcall **)(_DWORD, int, _DWORD))(**(_DWORD **)(a1 + 4) + 16))(*(_DWORD *)(a1 + 4), v6, 0);
  if ( a3 <= 0 )
  {
    v11 = 0;
    goto LABEL_21;
  }
  v9 = (__int16)v9;
  v12 = v9 + v10 * v9;
  v11 = 0;
  while ( 1 )
  {
    v20 = a4[2];
    if ( a3 - v11 + v20 <= v12 )
    {
      v13 = (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 4) + 28))(*(_DWORD *)(a1 + 4), a2 + v11);
      a4[2] += v13;
      if ( !v13 )
        break;
    }
    else
    {
      v13 = (*(int (__fastcall **)(_DWORD, int, unsigned int))(**(_DWORD **)(a1 + 4) + 28))(
              *(_DWORD *)(a1 + 4),
              a2 + v11,
              v12 - v20);
      a4[2] = v12;
      if ( !v13 )
        break;
    }
    v11 += v13;
    v14 = a4[2] / (unsigned int)(__int16)v9;
    v15 = a4[5];
    a4[3] = v14;
    if ( v14 <= v15 )
      goto LABEL_17;
    v16 = a4[6];
    if ( v16 >> 1 )
    {
      v17 = a4[7];
      if ( v16 == v17 )
        a4[4] = *(_DWORD *)(*(_DWORD *)(**(_DWORD **)(a1 + 44) + 12 * *a4) + 4);
    }
    else
    {
      v17 = a4[7];
    }
    v18 = v17 - 1;
    a4[7] = v18;
    if ( !v18 )
    {
      if ( a4[8] == 1 )
      {
        v22 = (_DWORD *)(**(_DWORD **)(a1 + 44) + 12 * *a4);
        v23 = *(_DWORD *)(*v22 + 4 * (((v22[1] - *v22) >> 2) - 1));
        v12 = (__int16)v9 + v23 * (__int16)v9;
        a4[5] = v23;
        if ( a4[1] != 1 )
          goto LABEL_15;
      }
      else if ( a4[1] != 1 )
      {
        goto LABEL_15;
      }
      vox::VoxNativeSubDecoder::UpdateSegmentsStates((vox::VoxNativeSubDecoder *)a1);
      v12 = (__int16)v9 + a4[5] * (__int16)v9;
    }
LABEL_15:
    v19 = a4[9];
    if ( v19 == 3 )
    {
      if ( a4[7] )
        (*(void (__fastcall **)(int, int, _DWORD *))(*(_DWORD *)a1 + 40))(a1, -1, a4);
      goto LABEL_17;
    }
    if ( v19 == 4 && a4[3] > a4[5] )
      break;
LABEL_17:
    if ( a3 <= v11 )
      goto LABEL_21;
  }
  a4[9] = 1;
LABEL_21:
  result = v11;
  if ( a4[1] == 3 )
    a4[9] = 1;
  return result;
}


// ===== 8882ac vox::VoxNativeSubDecoderPCM::DecodeCurrentSegmentWithOffset(void *,int) =====
signed int __fastcall vox::VoxNativeSubDecoderPCM::DecodeCurrentSegmentWithOffset(
        vox::VoxNativeSubDecoderPCM *this,
        char *a2,
        int a3)
{
  int v4; // r5
  int v6; // r6
  unsigned int v8; // r8
  int v9; // r11
  int v10; // r9
  signed int v11; // r5
  int v12; // r9
  unsigned int v13; // r6
  int v14; // r3
  unsigned int v15; // r0
  unsigned int v16; // r3
  unsigned int v17; // r1
  int v18; // r2
  int v19; // r2
  int v20; // r2
  int v21; // r1
  _DWORD *v23; // r1

  v4 = *((_DWORD *)this + 90);
  v6 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 6) + 4) + 24 * *((_DWORD *)this + 72));
  v8 = *((__int16 *)this + 8);
  v9 = *((_DWORD *)this + 77);
  v10 = *((_DWORD *)this + 5);
  if ( v4 > 0 )
  {
    v11 = v4 * v8;
    LC_API_MEMSET_0(a2, 0, v11);
    *((_DWORD *)this + 90) = 0;
  }
  else
  {
    v11 = 0;
  }
  v12 = v6 + *((_DWORD *)this + 74) + v10;
  if ( v12 != (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 24))(*((_DWORD *)this + 1)) )
    (*(void (__fastcall **)(_DWORD, int, _DWORD))(**((_DWORD **)this + 1) + 16))(*((_DWORD *)this + 1), v12, 0);
  if ( v11 < a3 )
  {
    v13 = v8 + v9 * v8;
    do
    {
      v21 = *((_DWORD *)this + 74);
      if ( a3 - v11 + v21 <= v13 )
      {
        v14 = (*(int (__fastcall **)(_DWORD, char *))(**((_DWORD **)this + 1) + 28))(*((_DWORD *)this + 1), &a2[v11]);
        *((_DWORD *)this + 74) += v14;
        if ( !v14 )
          goto LABEL_23;
      }
      else
      {
        v14 = (*(int (__fastcall **)(_DWORD, char *, unsigned int))(**((_DWORD **)this + 1) + 28))(
                *((_DWORD *)this + 1),
                &a2[v11],
                v13 - v21);
        *((_DWORD *)this + 74) = v13;
        if ( !v14 )
          goto LABEL_23;
      }
      v11 += v14;
      v15 = *((_DWORD *)this + 74) / v8;
      v16 = *((_DWORD *)this + 77);
      *((_DWORD *)this + 75) = v15;
      if ( v15 > v16 )
      {
        v17 = *((_DWORD *)this + 78);
        if ( v17 >> 1 )
        {
          v18 = *((_DWORD *)this + 79);
          if ( v17 == v18 )
            *((_DWORD *)this + 76) = *(_DWORD *)(*(_DWORD *)(**((_DWORD **)this + 11) + 12 * *((_DWORD *)this + 72)) + 4);
        }
        else
        {
          v18 = *((_DWORD *)this + 79);
        }
        v19 = v18 - 1;
        *((_DWORD *)this + 79) = v19;
        if ( !v19 )
        {
          if ( *((_DWORD *)this + 80) == 1 )
          {
            v23 = (_DWORD *)(**((_DWORD **)this + 11) + 12 * *((_DWORD *)this + 72));
            *((_DWORD *)this + 77) = *(_DWORD *)(*v23 + 4 * (((v23[1] - *v23) >> 2) - 1));
          }
          vox::VoxNativeSubDecoder::UpdateSegmentsStates(this);
          v16 = *((_DWORD *)this + 77);
          v13 = v8 + v16 * v8;
        }
        v20 = *((_DWORD *)this + 81);
        if ( v20 == 3 )
        {
          if ( *((_DWORD *)this + 79) )
            (*(void (__fastcall **)(vox::VoxNativeSubDecoderPCM *, int, char *))(*(_DWORD *)this + 40))(
              this,
              -1,
              (char *)this + 288);
        }
        else if ( v20 == 4 && *((_DWORD *)this + 75) > v16 )
        {
LABEL_23:
          *((_DWORD *)this + 81) = 1;
          return v11;
        }
      }
    }
    while ( a3 > v11 );
  }
  return v11;
}


// ===== 8884f8 vox::VoxNativeSubDecoderPCM::~VoxNativeSubDecoderPCM() =====
void __fastcall vox::VoxNativeSubDecoderPCM::~VoxNativeSubDecoderPCM(vox::VoxNativeSubDecoderPCM *this)
{
  vox::VoxNativeSubDecoderPCM::~VoxNativeSubDecoderPCM(this);
  LC_API_FREE_0(this);
}


// ===== 888514 vox::VoxNativeSubDecoderPCM::VoxNativeSubDecoderPCM(vox::StreamCursorInterface *,vox::NativeChunks *,vox::States *,vox::AudioSegments *,std::vector<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>> *,vox::TransitionRules *,std::vector*<std::vector<vox::TransitionParams,vox::SAllocator<std::vector*,(vox::VoxMemHint)0>>,vox::SAllocator<vox::SAllocator<std::vector*,(vox::VoxMemHint)0>,(vox::VoxMemHint)0>>,std::map<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,int,vox::StringCompare,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>> *,vox::NativePlaylistsManager *) =====
_DWORD *__fastcall vox::VoxNativeSubDecoderPCM::VoxNativeSubDecoderPCM(
        _DWORD *a1,
        int a2,
        _DWORD *a3,
        int a4,
        int a5,
        int a6,
        int a7,
        int a8,
        int a9,
        int a10)
{
  vox::VoxNativeSubDecoder::VoxNativeSubDecoder((int)a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  *a1 = off_993930;
  return a1;
}


// ===== 888580 vox::VoxNativeSubDecoderPCM::VoxNativeSubDecoderPCM(vox::StreamCursorInterface *,vox::NativeChunks *,vox::States *,vox::AudioSegments *,std::vector<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,vox::SAllocator<std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>,(vox::VoxMemHint)0>> *,vox::TransitionRules *,std::vector*<std::vector<vox::TransitionParams,vox::SAllocator<std::vector*,(vox::VoxMemHint)0>>,vox::SAllocator<vox::SAllocator<std::vector*,(vox::VoxMemHint)0>,(vox::VoxMemHint)0>>,std::map<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,int,vox::StringCompare,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>> *,vox::NativePlaylistsManager *) =====
_DWORD *__fastcall vox::VoxNativeSubDecoderPCM::VoxNativeSubDecoderPCM(
        _DWORD *a1,
        int a2,
        _DWORD *a3,
        int a4,
        int a5,
        int a6,
        int a7,
        int a8,
        int a9,
        int a10)
{
  vox::VoxNativeSubDecoder::VoxNativeSubDecoder((int)a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  *a1 = off_993930;
  return a1;
}


// ===== 8885ec vox::NativeSubDecoderPCMState::~NativeSubDecoderPCMState() =====
void __fastcall vox::NativeSubDecoderPCMState::~NativeSubDecoderPCMState(vox::NativeSubDecoderPCMState *this)
{
  *(_DWORD *)this = off_993970;
  vox::NativeSubDecoderState::~NativeSubDecoderState(this);
}


// ===== 888620 vox::NativeSubDecoderPCMState::~NativeSubDecoderPCMState() =====
void __fastcall vox::NativeSubDecoderPCMState::~NativeSubDecoderPCMState(vox::NativeSubDecoderPCMState *this)
{
  vox::NativeSubDecoderPCMState::~NativeSubDecoderPCMState(this);
  LC_API_FREE_0(this);
}


// ===== 88863c vox::NativeSubDecoderPCMState::~NativeSubDecoderPCMState() =====
void __fastcall vox::NativeSubDecoderPCMState::~NativeSubDecoderPCMState(vox::NativeSubDecoderPCMState *this)
{
  *(_DWORD *)this = off_993970;
  vox::NativeSubDecoderState::~NativeSubDecoderState(this);
}


// ===== 888670 vox::NativeSubDecoderPCMState::NativeSubDecoderPCMState(vox::NativePlaylistsManager *) =====
vox::NativeSubDecoderPCMState *__fastcall vox::NativeSubDecoderPCMState::NativeSubDecoderPCMState(
        vox::NativeSubDecoderPCMState *this,
        vox::NativePlaylistsManager *a2)
{
  vox::NativeSubDecoderState::NativeSubDecoderState(this, a2);
  *(_DWORD *)this = off_993970;
  return this;
}


// ===== 8886a4 vox::NativeSubDecoderPCMState::NativeSubDecoderPCMState(vox::NativePlaylistsManager *) =====
vox::NativeSubDecoderPCMState *__fastcall vox::NativeSubDecoderPCMState::NativeSubDecoderPCMState(
        vox::NativeSubDecoderPCMState *this,
        vox::NativePlaylistsManager *a2)
{
  vox::NativeSubDecoderState::NativeSubDecoderState(this, a2);
  *(_DWORD *)this = off_993970;
  return this;
}


// ===== 8886d8 vox::StreamInterface::~StreamInterface() =====
void __fastcall vox::StreamInterface::~StreamInterface(vox::StreamInterface *this)
{
  ;
}


// ===== 8886dc vox::StreamInterface::Init(void) =====
void __fastcall vox::StreamInterface::Init(vox::StreamInterface *this)
{
  ;
}


// ===== 8886e0 vox::StreamInterface::Shutdown(void) =====
void __fastcall vox::StreamInterface::Shutdown(vox::StreamInterface *this)
{
  ;
}


// ===== 8886e4 vox::StreamInterface::Size(void) =====
int __fastcall vox::StreamInterface::Size(vox::StreamInterface *this)
{
  return *((_DWORD *)this + 1);
}


// ===== 8886ec vox::StreamCursorInterface::~StreamCursorInterface() =====
void __fastcall vox::StreamCursorInterface::~StreamCursorInterface(vox::StreamCursorInterface *this)
{
  ;
}


// ===== 8886f0 vox::StreamCursorInterface::Init(void) =====
void __fastcall vox::StreamCursorInterface::Init(vox::StreamCursorInterface *this)
{
  ;
}


// ===== 8886f4 vox::StreamCursorInterface::Shutdown(void) =====
void __fastcall vox::StreamCursorInterface::Shutdown(vox::StreamCursorInterface *this)
{
  ;
}


// ===== 8886f8 vox::StreamCursorInterface::ReadRef(uchar *&,int) =====
int __fastcall vox::StreamCursorInterface::ReadRef(vox::StreamCursorInterface *this, unsigned __int8 **a2, int a3)
{
  return (*(int (__fastcall **)(vox::StreamCursorInterface *, _DWORD, int))(*(_DWORD *)this + 28))(this, *a2, a3);
}


// ===== 888710 vox::StreamCursorInterface::AllowBufferReference(void) =====
int __fastcall vox::StreamCursorInterface::AllowBufferReference(vox::StreamCursorInterface *this)
{
  return 0;
}


// ===== 888718 vox::StreamCFile::GetType(void) =====
int __fastcall vox::StreamCFile::GetType(vox::StreamCFile *this)
{
  return 1;
}


// ===== 888720 vox::StreamCFileCursor::IsSeekable(void) =====
int __fastcall vox::StreamCFileCursor::IsSeekable(vox::StreamCFileCursor *this)
{
  return 1;
}


// ===== 888728 vox::StreamCFileCursor::Init(void) =====
int __fastcall vox::StreamCFileCursor::Init(int this)
{
  int v1; // r3
  int v2; // r4
  int v3; // r1
  int v4; // r3

  v1 = *(_DWORD *)(this + 4);
  v2 = this;
  if ( v1 && !*(_DWORD *)(this + 8) )
  {
    v3 = *(_DWORD *)(v1 + 28);
    v4 = *(_DWORD *)(v1 + 32);
    if ( v3 )
    {
      this = (*(int (__fastcall **)(int, int, int))(*(_DWORD *)v4 + 8))(v4, v3, 6);
      *(_DWORD *)(v2 + 8) = this;
    }
  }
  return this;
}


// ===== 888778 vox::StreamCFileCursor::Tell(void) =====
int __fastcall vox::StreamCFileCursor::Tell(vox::StreamCFileCursor *this)
{
  int v1; // r3
  int result; // r0

  v1 = *((_DWORD *)this + 2);
  if ( !v1 )
    return -1;
  result = *((_DWORD *)this + 3);
  if ( result < 0 )
  {
    result = (*(int (__fastcall **)(int))(*(_DWORD *)v1 + 16))(v1);
    *((_DWORD *)this + 3) = result;
  }
  return result;
}


// ===== 8887bc vox::StreamInterface::~StreamInterface() =====
void __fastcall vox::StreamInterface::~StreamInterface(vox::StreamInterface *this)
{
  LC_API_FREE_0(this);
}


// ===== 8887d0 vox::StreamCursorInterface::~StreamCursorInterface() =====
void __fastcall vox::StreamCursorInterface::~StreamCursorInterface(vox::StreamCursorInterface *this)
{
  LC_API_FREE_0(this);
}


// ===== 8887e4 vox::StreamCFile::~StreamCFile() =====
void __fastcall vox::StreamCFile::~StreamCFile(vox::StreamCFile *this)
{
  char *v1; // r1
  char *v2; // r0

  *(_DWORD *)this = off_993A18;
  v1 = (char *)this + 8;
  v2 = *((char **)this + 7);
  if ( v2 != v1 )
  {
    if ( v2 )
      VoxFree(v2);
  }
}


// ===== 888830 vox::StreamCFile::DestroyCursor(vox::StreamCursorInterface *) =====
void __fastcall vox::StreamCFile::DestroyCursor(vox::StreamCFile *this, vox::StreamCursorInterface *a2)
{
  if ( a2 )
  {
    (**(void (__fastcall ***)(vox::StreamCursorInterface *))a2)(a2);
    VoxFree(a2);
  }
}


// ===== 88885c vox::StreamCFileCursor::Read(uchar *,int) =====
int __fastcall vox::StreamCFileCursor::Read(vox::StreamCFileCursor *this, unsigned __int8 *a2, int a3)
{
  int v3; // r3
  bool v5; // cc
  signed int v6; // r5
  int v8; // r6
  signed int v9; // r8
  int v10; // r5
  bool v11; // cc
  int v12; // r3
  char *v13; // r1
  unsigned __int8 *v14; // r0
  bool v15; // cc
  int v16; // r3
  int v17; // r0

  v3 = *((_DWORD *)this + 2);
  v5 = v3 <= 0;
  if ( v3 )
    v5 = a3 <= 0;
  v6 = a3;
  v8 = !v5;
  if ( !v5 )
  {
    if ( *((int *)this + 3) < 0 )
      *((_DWORD *)this + 3) = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 16))(*((_DWORD *)this + 2));
    v8 = 0;
    v9 = *((_DWORD *)this + 8196) - *((_DWORD *)this + 8197);
    do
    {
      v11 = v6 <= 0;
      if ( v6 > 0 )
        v11 = v9 <= 0;
      if ( !v11 )
      {
        v12 = *((_DWORD *)this + 8197);
        while ( 1 )
        {
          v13 = (char *)this + v12 + 16;
          v14 = &a2[v8];
          if ( v6 <= v9 )
            break;
          memcpy(v14, v13, v9);
          v6 -= v9;
          v12 = v9 + *((_DWORD *)this + 8197);
          v8 += v9;
          v9 = *((_DWORD *)this + 8196) - v12;
          v15 = v9 <= 0;
          if ( v9 > 0 )
            v15 = v6 <= 0;
          *((_DWORD *)this + 8197) = v12;
          if ( v15 )
            goto LABEL_11;
        }
        memcpy(v14, v13, v6);
        v8 += v6;
        v10 = v6 + *((_DWORD *)this + 8197);
        v9 = *((_DWORD *)this + 8196) - v10;
        *((_DWORD *)this + 8197) = v10;
        v6 = 0;
      }
LABEL_11:
      if ( !v9 )
      {
        v16 = *((_DWORD *)this + 2);
        *((_DWORD *)this + 8198) += *((_DWORD *)this + 8196);
        v17 = (*(int (__fastcall **)(int, char *, int, int))(*(_DWORD *)v16 + 8))(v16, (char *)this + 16, 1, 0x8000);
        *((_DWORD *)this + 8196) = v17;
        v9 = v17;
        *((_DWORD *)this + 8197) = 0;
        if ( !v17 )
          break;
      }
    }
    while ( v6 > 0 );
    *((_DWORD *)this + 3) += v8;
  }
  return v8;
}


// ===== 8889c0 vox::StreamCFileCursor::Shutdown(void) =====
vox::FileSystemInterface *__fastcall vox::StreamCFileCursor::Shutdown(vox::FileSystemInterface *this)
{
  int v1; // r3
  vox::FileSystemInterface *v2; // r4
  int v3; // r3

  v1 = *((_DWORD *)this + 1);
  v2 = this;
  if ( v1 )
  {
    if ( *((_DWORD *)this + 2) )
    {
      v3 = *(_DWORD *)(v1 + 32);
      if ( v3 )
        return (vox::FileSystemInterface *)(*(int (__fastcall **)(int))(*(_DWORD *)v3 + 12))(v3);
    }
  }
  else if ( *((_DWORD *)this + 2) )
  {
    this = (vox::FileSystemInterface *)vox::FileSystemInterface::GetInstance(this);
    if ( this )
      return (vox::FileSystemInterface *)(*(int (__fastcall **)(vox::FileSystemInterface *, _DWORD))(*(_DWORD *)this + 12))(
                                           this,
                                           *((_DWORD *)v2 + 2));
  }
  return this;
}


// ===== 888a2c vox::StreamCFileCursor::~StreamCFileCursor() =====
void __fastcall vox::StreamCFileCursor::~StreamCFileCursor(vox::StreamCFileCursor *this)
{
  *(_DWORD *)this = off_9939E0;
  vox::StreamCFileCursor::Shutdown(this);
}


// ===== 888a60 vox::StreamCFile::Init(void) =====
int __fastcall vox::StreamCFile::Init(vox::StreamCFile *this)
{
  int result; // r0
  int v3; // r1
  int v4; // r2
  int v5; // r6
  int v6; // r0
  int v7; // r3

  *((_DWORD *)this + 1) = 0;
  result = vox::FileSystemInterface::GetInstance(this);
  v3 = *((_DWORD *)this + 7);
  v4 = *((_DWORD *)this + 6);
  *((_DWORD *)this + 8) = result;
  if ( v4 != v3 && result )
  {
    result = (*(int (__fastcall **)(int))(*(_DWORD *)result + 8))(result);
    v5 = result;
    if ( result )
    {
      (*(void (__fastcall **)(int, _DWORD, int))(*(_DWORD *)result + 12))(result, 0, 2);
      v6 = (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 16))(v5);
      v7 = *((_DWORD *)this + 8);
      *((_DWORD *)this + 1) = v6;
      return (*(int (__fastcall **)(int, int))(*(_DWORD *)v7 + 12))(v7, v5);
    }
  }
  return result;
}


// ===== 888aec vox::StreamCFile::CreateNewCursor(void) =====
_DWORD *__fastcall vox::StreamCFile::CreateNewCursor(vox::StreamCFile *this)
{
  _DWORD *v2; // r0
  _DWORD *v3; // r6

  if ( *((int *)this + 1) <= 0 )
    return nullptr;
  v2 = VoxAlloc(0x801Cu, 0);
  v2[8198] = 0;
  v2[1] = this;
  *v2 = off_9939E0;
  v2[3] = -1;
  v2[8196] = 0;
  v2[8197] = 0;
  v3 = v2;
  v2[2] = 0;
  vox::StreamCFileCursor::Init((int)v2);
  return v3;
}


// ===== 888b70 std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_assign(char const*,char const*) =====
_DWORD *__fastcall std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_assign(
        _DWORD *a1,
        _BYTE *a2,
        _BYTE *a3)
{
  _BYTE *v4; // r3
  _BYTE *v5; // r0
  size_t v6; // r5
  size_t v8; // r2
  char *v10; // r2

  v4 = (_BYTE *)a1[4];
  v5 = (_BYTE *)a1[5];
  v6 = a3 - a2;
  v8 = v4 - v5;
  if ( v6 > v4 - v5 )
  {
    if ( v8 )
    {
      memcpy(v5, a2, v8);
      std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_append(
        a1,
        &a2[a1[4] - a1[5]],
        a3);
    }
    else
    {
      std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_append(a1, a2, a3);
    }
  }
  else
  {
    if ( v6 )
    {
      memcpy(v5, a2, v6);
      v5 = (_BYTE *)a1[5];
      v4 = (_BYTE *)a1[4];
      v10 = &v5[v6];
      if ( &v5[v6] == v4 )
        return a1;
      goto LABEL_4;
    }
    v10 = v5;
    if ( v5 != v4 )
    {
LABEL_4:
      v5[v6] = *v4;
      a1[4] += v10 - v4;
    }
  }
  return a1;
}


// ===== 888c30 std::priv::_String_base<char,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<char,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_allocate_block()
{
  ;
}


// ===== 888c34 vox::StreamCFile::StreamCFile(char const*) =====
vox::StreamCFile *__fastcall vox::StreamCFile::StreamCFile(vox::StreamCFile *this, char *a2)
{
  _DWORD *v2; // r5
  size_t v5; // r0

  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_993A18;
  v2 = (_DWORD *)((char *)this + 8);
  *((_DWORD *)this + 6) = (char *)this + 8;
  *((_DWORD *)this + 7) = (char *)this + 8;
  std::priv::_String_base<char,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_allocate_block();
  **((_BYTE **)this + 6) = 0;
  if ( a2 )
  {
    v5 = LC_API_STRLEN_0(a2);
    std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_assign(v2, a2, &a2[v5]);
    vox::StreamCFile::Init(this);
  }
  return this;
}


// ===== 888cb4 vox::StreamCFileCursor::~StreamCFileCursor() =====
void __fastcall vox::StreamCFileCursor::~StreamCFileCursor(vox::StreamCFileCursor *this)
{
  *(_DWORD *)this = off_9939E0;
  vox::StreamCFileCursor::Shutdown(this);
  LC_API_FREE_0(this);
}


// ===== 888cf0 vox::StreamCFileCursor::EndOfStream(void) =====
bool __fastcall vox::StreamCFileCursor::EndOfStream(vox::StreamCFileCursor *this)
{
  int v2; // r5
  int v3; // r3
  int v4; // r0

  if ( !*((_DWORD *)this + 2) )
    return 1;
  v2 = *((_DWORD *)this + 3);
  if ( v2 < 0 )
  {
    v2 = (*(int (__fastcall **)(vox::StreamCFileCursor *))(*(_DWORD *)this + 24))(this);
    *((_DWORD *)this + 3) = v2;
  }
  v3 = *((_DWORD *)this + 1);
  if ( v3 )
    v4 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 16))(*((_DWORD *)this + 1)) - 1;
  else
    v4 = -1;
  return v2 >= v4;
}


// ===== 888d64 vox::StreamCFile::~StreamCFile() =====
void __fastcall vox::StreamCFile::~StreamCFile(vox::StreamCFile *this)
{
  char *v2; // r1
  char *v3; // r0

  *(_DWORD *)this = off_993A18;
  v2 = (char *)this + 8;
  v3 = *((char **)this + 7);
  if ( v3 != v2 && v3 )
    VoxFree(v3);
  LC_API_FREE_0(this);
}


// ===== 888db8 vox::StreamCFileCursor::Seek(int,int) =====
int __fastcall vox::StreamCFileCursor::Seek(vox::StreamCFileCursor *this, int a2, int a3)
{
  int v3; // r3
  int v6; // r3
  int v7; // r0
  int result; // r0
  int v9; // r3
  int v10; // r0
  int v11; // r3
  int v12; // r1
  int v13; // r3
  int v14; // r3
  int v15; // r0

  v3 = *((_DWORD *)this + 2);
  if ( !v3 )
    return -1;
  switch ( a3 )
  {
    case 1:
      v15 = *((_DWORD *)this + 3);
      if ( v15 < 0 )
      {
        v15 = (*(int (__fastcall **)(int))(*(_DWORD *)v3 + 16))(v3);
        *((_DWORD *)this + 3) = v15;
      }
      a2 += v15;
      *((_DWORD *)this + 3) = a2;
      goto LABEL_7;
    case 2:
      v9 = *((_DWORD *)this + 1);
      if ( v9 )
        v10 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v9 + 16))(*((_DWORD *)this + 1));
      else
        v10 = 0;
      a2 = ~a2 + v10;
      goto LABEL_17;
    case 0:
LABEL_17:
      *((_DWORD *)this + 3) = a2;
      goto LABEL_7;
  }
  a2 = *((_DWORD *)this + 3);
LABEL_7:
  if ( a2 >= 0
    && ((v6 = *((_DWORD *)this + 1)) != 0
      ? (v7 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v6 + 16))(*((_DWORD *)this + 1)))
      : (v7 = 0),
        a2 <= v7) )
  {
    v11 = *((_DWORD *)this + 8198);
    v12 = *((_DWORD *)this + 3);
    if ( v12 >= v11 && v12 < v11 + *((_DWORD *)this + 8196) )
    {
      *((_DWORD *)this + 8197) = v12 - v11;
      return 0;
    }
    else
    {
      v13 = *((_DWORD *)this + 2);
      *((_DWORD *)this + 8196) = 0;
      *((_DWORD *)this + 8197) = 0;
      *((_DWORD *)this + 8198) = 0;
      result = (*(int (__fastcall **)(int))(*(_DWORD *)v13 + 12))(v13);
      if ( result )
      {
        v14 = -1;
        *((_DWORD *)this + 8198) = -1;
      }
      else
      {
        v14 = *((_DWORD *)this + 3);
      }
      if ( result )
        *((_DWORD *)this + 3) = v14;
      else
        *((_DWORD *)this + 8198) = v14;
    }
  }
  else
  {
    *((_DWORD *)this + 3) = -1;
    return -1;
  }
  return result;
}


// ===== 888f18 vox::StreamCFile::StreamCFile(char const*) =====
vox::StreamCFile *__fastcall vox::StreamCFile::StreamCFile(vox::StreamCFile *this, char *a2)
{
  _DWORD *v2; // r5
  size_t v5; // r0

  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_993A18;
  v2 = (_DWORD *)((char *)this + 8);
  *((_DWORD *)this + 6) = (char *)this + 8;
  *((_DWORD *)this + 7) = (char *)this + 8;
  std::priv::_String_base<char,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_allocate_block();
  **((_BYTE **)this + 6) = 0;
  if ( a2 )
  {
    v5 = LC_API_STRLEN_0(a2);
    std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_assign(v2, a2, &a2[v5]);
    vox::StreamCFile::Init(this);
  }
  return this;
}


// ===== 888f98 vox::StreamCFileFactory(void *) =====
vox::StreamCFile *__fastcall vox::StreamCFileFactory(vox *this, void *a2)
{
  vox::StreamCFile *v3; // r4

  v3 = (vox::StreamCFile *)VoxAlloc(0x24u, 0);
  vox::StreamCFile::StreamCFile(v3, (char *)this);
  return v3;
}


// ===== 888fc0 vox::StreamMemoryBuffer::GetType(void) =====
int __fastcall vox::StreamMemoryBuffer::GetType(vox::StreamMemoryBuffer *this)
{
  return 0;
}


// ===== 888fc8 vox::StreamMemoryBufferCursor::IsSeekable(void) =====
int __fastcall vox::StreamMemoryBufferCursor::IsSeekable(vox::StreamMemoryBufferCursor *this)
{
  return 1;
}


// ===== 888fd0 vox::StreamMemoryBufferCursor::Tell(void) =====
int __fastcall vox::StreamMemoryBufferCursor::Tell(vox::StreamMemoryBufferCursor *this)
{
  return *((_DWORD *)this + 2);
}


// ===== 888fd8 vox::StreamMemoryBufferCursor::AllowBufferReference(void) =====
int __fastcall vox::StreamMemoryBufferCursor::AllowBufferReference(vox::StreamMemoryBufferCursor *this)
{
  return 1;
}


// ===== 888fe0 vox::StreamMemoryBufferCursor::~StreamMemoryBufferCursor() =====
void __fastcall vox::StreamMemoryBufferCursor::~StreamMemoryBufferCursor(vox::StreamMemoryBufferCursor *this)
{
  ;
}


// ===== 888fe4 vox::StreamMemoryBufferCursor::~StreamMemoryBufferCursor() =====
void __fastcall vox::StreamMemoryBufferCursor::~StreamMemoryBufferCursor(vox::StreamMemoryBufferCursor *this)
{
  LC_API_FREE_0(this);
}


// ===== 888ff8 vox::StreamMemoryBuffer::DestroyCursor(vox::StreamCursorInterface *) =====
void __fastcall vox::StreamMemoryBuffer::DestroyCursor(vox::StreamMemoryBuffer *this, vox::StreamCursorInterface *a2)
{
  if ( a2 )
  {
    (**(void (__fastcall ***)(vox::StreamCursorInterface *))a2)(a2);
    VoxFree(a2);
  }
}


// ===== 889024 vox::StreamMemoryBuffer::~StreamMemoryBuffer() =====
void __fastcall vox::StreamMemoryBuffer::~StreamMemoryBuffer(vox::StreamMemoryBuffer *this)
{
  void *v2; // r0

  v2 = *((void **)this + 2);
  *(_DWORD *)this = off_993A78;
  if ( v2 )
  {
    if ( *((_BYTE *)this + 12) )
      VoxFree(v2);
  }
}


// ===== 889070 vox::StreamMemoryBuffer::~StreamMemoryBuffer() =====
void __fastcall vox::StreamMemoryBuffer::~StreamMemoryBuffer(vox::StreamMemoryBuffer *this)
{
  vox::StreamMemoryBuffer::~StreamMemoryBuffer(this);
  LC_API_FREE_0(this);
}


// ===== 88908c vox::StreamMemoryBuffer::~StreamMemoryBuffer() =====
void __fastcall vox::StreamMemoryBuffer::~StreamMemoryBuffer(vox::StreamMemoryBuffer *this)
{
  void *v2; // r0

  v2 = *((void **)this + 2);
  *(_DWORD *)this = off_993A78;
  if ( v2 )
  {
    if ( *((_BYTE *)this + 12) )
      VoxFree(v2);
  }
}


// ===== 8890d8 vox::StreamMemoryBuffer::CreateNewCursor(void) =====
_DWORD *__fastcall vox::StreamMemoryBuffer::CreateNewCursor(vox::StreamMemoryBuffer *this)
{
  _DWORD *result; // r0

  result = *((_DWORD **)this + 2);
  if ( result )
  {
    result = VoxAlloc(0xCu, 0);
    result[1] = this;
    result[2] = 0;
    *result = off_993A40;
  }
  return result;
}


// ===== 88912c vox::StreamMemoryBuffer::StreamMemoryBuffer(vox::StreamMemoryBufferParams *) =====
int __fastcall vox::StreamMemoryBuffer::StreamMemoryBuffer(int a1, int a2)
{
  char v3; // r12
  signed int v5; // r0
  void *v6; // r0

  v3 = 1;
  *(_DWORD *)a1 = off_993A78;
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)(a1 + 4) = 0;
  *(_BYTE *)(a1 + 12) = 1;
  if ( a2 )
  {
    v5 = *(_DWORD *)(a2 + 4);
    *(_DWORD *)(a1 + 4) = v5;
    if ( !*(_BYTE *)(a2 + 8) )
      v3 = *(_BYTE *)(a2 + 9);
    *(_BYTE *)(a1 + 12) = v3;
    if ( !*(_BYTE *)(a2 + 8) || *(_BYTE *)(a2 + 9) )
    {
      *(_DWORD *)(a1 + 8) = *(_DWORD *)a2;
    }
    else if ( v5 > 0 )
    {
      v6 = VoxAlloc(v5);
      *(_DWORD *)(a1 + 8) = v6;
      if ( v6 )
        memcpy(v6, *(const void **)a2, *(_DWORD *)(a1 + 4));
      else
        *(_DWORD *)(a1 + 4) = 0;
    }
  }
  return a1;
}


// ===== 8891dc vox::StreamMemoryBufferFactory(void *) =====
void *__fastcall vox::StreamMemoryBufferFactory(vox *this, void *a2)
{
  void *v3; // r4

  v3 = VoxAlloc(0x10u, 0);
  vox::StreamMemoryBuffer::StreamMemoryBuffer((int)v3, (int)this);
  return v3;
}


// ===== 889204 vox::StreamMemoryBuffer::StreamMemoryBuffer(vox::StreamMemoryBufferParams *) =====
int __fastcall vox::StreamMemoryBuffer::StreamMemoryBuffer(int a1, int a2)
{
  char v3; // r12
  signed int v5; // r0
  void *v6; // r0

  v3 = 1;
  *(_DWORD *)a1 = off_993A78;
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)(a1 + 4) = 0;
  *(_BYTE *)(a1 + 12) = 1;
  if ( a2 )
  {
    v5 = *(_DWORD *)(a2 + 4);
    *(_DWORD *)(a1 + 4) = v5;
    if ( !*(_BYTE *)(a2 + 8) )
      v3 = *(_BYTE *)(a2 + 9);
    *(_BYTE *)(a1 + 12) = v3;
    if ( !*(_BYTE *)(a2 + 8) || *(_BYTE *)(a2 + 9) )
    {
      *(_DWORD *)(a1 + 8) = *(_DWORD *)a2;
    }
    else if ( v5 > 0 )
    {
      v6 = VoxAlloc(v5);
      *(_DWORD *)(a1 + 8) = v6;
      if ( v6 )
        memcpy(v6, *(const void **)a2, *(_DWORD *)(a1 + 4));
      else
        *(_DWORD *)(a1 + 4) = 0;
    }
  }
  return a1;
}


// ===== 8892b4 vox::StreamMemoryBufferCursor::EndOfStream(void) =====
bool __fastcall vox::StreamMemoryBufferCursor::EndOfStream(vox::StreamMemoryBufferCursor *this)
{
  int v1; // r3
  int v3; // r0

  v1 = *((_DWORD *)this + 1);
  if ( v1 )
    v3 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 16))(*((_DWORD *)this + 1));
  else
    v3 = 0;
  return *((_DWORD *)this + 2) == v3;
}


// ===== 8892f0 vox::StreamMemoryBufferCursor::Seek(int,int) =====
int __fastcall vox::StreamMemoryBufferCursor::Seek(vox::StreamMemoryBufferCursor *this, int a2, int a3)
{
  int v3; // r5
  int v5; // r3
  int v6; // r0
  int v8; // r5
  int v9; // r0
  int v10; // [sp+4h] [bp-8h]

  v3 = *((_DWORD *)this + 2);
  switch ( a3 )
  {
    case 1:
      v3 += a2;
      break;
    case 2:
      v8 = *((_DWORD *)this + 1);
      if ( v8 )
      {
        v10 = a2;
        v9 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v8 + 16))(*((_DWORD *)this + 1));
        a2 = v10;
      }
      else
      {
        v9 = 0;
      }
      v3 = ~a2 + v9;
      break;
    case 0:
      v3 = a2;
      break;
  }
  if ( v3 < 0 )
    return -1;
  v5 = *((_DWORD *)this + 1);
  v6 = v5 ? (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v5 + 16))(*((_DWORD *)this + 1)) : 0;
  if ( v3 > v6 )
    return -1;
  *((_DWORD *)this + 2) = v3;
  return 0;
}


// ===== 889394 vox::StreamMemoryBufferCursor::ReadRef(uchar *&,int) =====
int __fastcall vox::StreamMemoryBufferCursor::ReadRef(
        vox::StreamMemoryBufferCursor *this,
        unsigned __int8 **a2,
        int a3)
{
  _DWORD *v3; // r4
  int v7; // r0
  int v8; // r3
  int result; // r0

  v3 = *((_DWORD **)this + 1);
  if ( !v3 || !v3[2] || a3 <= 0 )
    return 0;
  v7 = (*(int (__fastcall **)(_DWORD))(*v3 + 16))(*((_DWORD *)this + 1));
  v8 = *((_DWORD *)this + 2);
  result = v7 - v8;
  *a2 = (unsigned __int8 *)(v3[2] + v8);
  if ( result >= a3 )
    result = a3;
  *((_DWORD *)this + 2) += result;
  return result;
}


// ===== 889408 vox::StreamMemoryBufferCursor::Read(uchar *,int) =====
size_t __fastcall vox::StreamMemoryBufferCursor::Read(vox::StreamMemoryBufferCursor *this, unsigned __int8 *a2, int a3)
{
  _DWORD *v3; // r4
  bool v6; // zf
  int v8; // r0
  int v9; // r3
  int v10; // r1
  size_t v11; // r4

  v3 = *((_DWORD **)this + 1);
  v6 = a2 == nullptr;
  if ( a2 )
    v6 = v3 == nullptr;
  if ( v6 || !v3[2] || a3 <= 0 )
    return 0;
  v8 = (*(int (__fastcall **)(_DWORD))(*v3 + 16))(*((_DWORD *)this + 1));
  v9 = *((_DWORD *)this + 2);
  v10 = v3[2];
  v11 = v8 - v9;
  if ( v8 - v9 >= a3 )
    v11 = a3;
  memcpy(a2, (const void *)(v10 + v9), v11);
  *((_DWORD *)this + 2) += v11;
  return v11;
}


// ===== 889490 VoxFree_c =====
// attributes: thunk
void VoxFree_c(void *p)
{
  VoxFree(p);
}


// ===== 889494 VoxAlloc_c =====
// attributes: thunk
void *__fastcall VoxAlloc_c(size_t a1, const char *a2, const char *a3, unsigned int a4)
{
  return VoxAlloc(a1, a2, a3, a4);
}


// ===== 889498 vox::VoxSoundPackXML::GetBankInfo(int,int &,int &,vox::PriorityBankBehavior &) =====
int __fastcall vox::VoxSoundPackXML::GetBankInfo(int a1, int a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  int v5; // r4
  int v6; // r1
  int v8; // r12
  int v9; // r5
  int v10; // r4

  if ( a2 < 0 )
    return 0;
  v5 = *(_DWORD *)(a1 + 24);
  if ( a2 >= -858993459 * ((*(_DWORD *)(a1 + 28) - v5) >> 3) )
    return 0;
  v8 = 40 * a2;
  v9 = *(_DWORD *)(v5 + 40 * a2);
  v10 = v5 + 40 * a2;
  if ( a2 != v9 )
    return 0;
  v6 = 1;
  *a3 = *(_DWORD *)(v10 + 12);
  *a4 = *(_DWORD *)(*(_DWORD *)(a1 + 24) + v8 + 8);
  *a5 = *(_DWORD *)(*(_DWORD *)(a1 + 24) + v8 + 4);
  return v6;
}


// ===== 88952c vox::VoxSoundPackXML::GetBankInfo(int,vox::BankInfoXML &) =====
int __fastcall vox::VoxSoundPackXML::GetBankInfo(int a1, int a2, int *a3)
{
  int v4; // r4
  int v6; // r12

  if ( a2 < 0 )
    return 0;
  v4 = *(_DWORD *)(a1 + 24);
  if ( a2 >= -858993459 * ((*(_DWORD *)(a1 + 28) - v4) >> 3) )
    return 0;
  v6 = 40 * a2;
  if ( a2 != *(_DWORD *)(v4 + 40 * a2) )
    return 0;
  *a3 = a2;
  a3[3] = *(_DWORD *)(*(_DWORD *)(a1 + 24) + v6 + 12);
  a3[2] = *(_DWORD *)(*(_DWORD *)(a1 + 24) + v6 + 8);
  a3[1] = *(_DWORD *)(*(_DWORD *)(a1 + 24) + v6 + 4);
  a3[4] = *(_DWORD *)(*(_DWORD *)(a1 + 24) + v6 + 36);
  return 1;
}


// ===== 8895d4 vox::VoxSoundPackXML::GetGroupInfo(int,char const*&,vox::Vox3DSoundType &) =====
int __fastcall vox::VoxSoundPackXML::GetGroupInfo(int a1, int a2, _DWORD *a3, _DWORD *a4)
{
  int v4; // r4
  int v5; // r1
  int v7; // r12
  int v8; // r5
  int v9; // r4

  if ( a2 < 0 )
    return 0;
  v4 = *(_DWORD *)(a1 + 12);
  if ( a2 >= -1227133513 * ((*(_DWORD *)(a1 + 16) - v4) >> 3) )
    return 0;
  v7 = 56 * a2;
  v8 = *(_DWORD *)(v4 + 56 * a2);
  v9 = v4 + 56 * a2;
  if ( a2 != v8 )
    return 0;
  v5 = 1;
  *a3 = *(_DWORD *)(v9 + 24);
  *a4 = *(_DWORD *)(*(_DWORD *)(a1 + 12) + v7 + 52);
  return v5;
}


// ===== 889658 vox::VoxSoundPackXML::GetGroupInfo(int,vox::GroupInfoXML &) =====
int __fastcall vox::VoxSoundPackXML::GetGroupInfo(int a1, int a2, int *a3)
{
  int v4; // r4
  int v6; // r12

  if ( a2 < 0 )
    return 0;
  v4 = *(_DWORD *)(a1 + 12);
  if ( a2 >= -1227133513 * ((*(_DWORD *)(a1 + 16) - v4) >> 3) )
    return 0;
  v6 = 56 * a2;
  if ( a2 != *(_DWORD *)(v4 + 56 * a2) )
    return 0;
  *a3 = a2;
  a3[1] = *(_DWORD *)(*(_DWORD *)(a1 + 12) + v6 + 24);
  a3[2] = *(_DWORD *)(*(_DWORD *)(a1 + 12) + v6 + 48);
  a3[3] = *(_DWORD *)(*(_DWORD *)(a1 + 12) + v6 + 52);
  return 1;
}


// ===== 8896f4 vox::VoxSoundPackXML::GetDataSourceInfo(int,char const*&,vox::FormatTypes &,int &,int &,vox::VoxSourceLoadingFlags &) =====
int __fastcall vox::VoxSoundPackXML::GetDataSourceInfo(
        int *a1,
        int a2,
        _DWORD *a3,
        _DWORD *a4,
        _DWORD *a5,
        _DWORD *a6,
        _DWORD *a7)
{
  int v7; // r4
  int v8; // r1
  int v10; // r12
  int v11; // r5
  int v12; // r4

  if ( a2 < 0 )
    return 0;
  v7 = *a1;
  if ( a2 >= -252645135 * ((a1[1] - *a1) >> 2) )
    return 0;
  v10 = 68 * a2;
  v11 = *(_DWORD *)(v7 + 68 * a2);
  v12 = v7 + 68 * a2;
  if ( a2 != v11 )
    return 0;
  v8 = 1;
  *a3 = *(_DWORD *)(v12 + 12);
  *a4 = *(char *)(*a1 + v10 + 20);
  *a5 = *(char *)(*a1 + v10 + 22);
  *a6 = *(char *)(*a1 + v10 + 21);
  *a7 = *(_DWORD *)(*a1 + v10 + 16);
  return v8;
}


// ===== 8897ac vox::VoxSoundPackXML::GetDataSourceInfo(int,vox::DataSourceInfoXML &) =====
int __fastcall vox::VoxSoundPackXML::GetDataSourceInfo(_DWORD *a1, int a2, int *a3)
{
  int v5; // r12

  if ( a2 < 0 )
    return 0;
  if ( a2 >= -252645135 * ((a1[1] - *a1) >> 2) )
    return 0;
  v5 = 68 * a2;
  if ( a2 != *(_DWORD *)(*a1 + 68 * a2) )
    return 0;
  *a3 = a2;
  a3[1] = *(_DWORD *)(*a1 + v5 + 8);
  a3[2] = *(_DWORD *)(*a1 + v5 + 12);
  a3[3] = *(char *)(*a1 + v5 + 20);
  a3[4] = *(char *)(*a1 + v5 + 22);
  a3[5] = *(char *)(*a1 + v5 + 21);
  a3[6] = *(_DWORD *)(*a1 + v5 + 16);
  a3[7] = *(_DWORD *)(*a1 + v5 + 60);
  a3[8] = *(_DWORD *)(*a1 + v5 + 64);
  return 1;
}


// ===== 889894 vox::VoxSoundPackXML::GetEmitterInfo(int,int &,int &,bool &,vox::Vox3DSoundType &,char const*&) =====
int __fastcall vox::VoxSoundPackXML::GetEmitterInfo(
        int *a1,
        int a2,
        _DWORD *a3,
        int *a4,
        _BYTE *a5,
        _DWORD *a6,
        _DWORD *a7)
{
  int v10; // r2
  int v12; // r5
  int v13; // r3
  int v14; // r2
  int v15; // r1

  if ( a2 < 0 )
    return 0;
  v10 = *a1;
  if ( a2 >= -252645135 * ((a1[1] - *a1) >> 2) )
    return 0;
  v12 = 68 * a2;
  v13 = *(_DWORD *)(v10 + 68 * a2);
  v14 = v10 + 68 * a2;
  if ( a2 != v13 )
    return 0;
  v15 = *(char *)(v14 + 22);
  *a4 = v15;
  if ( !vox::VoxSoundPackXML::GetGroupInfo((int)a1, v15, a7, a6) )
    return 0;
  *a3 = *(_DWORD *)(*a1 + v12 + 4);
  *a5 = *(_BYTE *)(*a1 + v12 + 23);
  return 1;
}


// ===== 88993c vox::VoxSoundPackXML::GetEmitterInfo(int,vox::EmitterInfoXML &) =====
int __fastcall vox::VoxSoundPackXML::GetEmitterInfo(int *a1, int a2, int a3)
{
  int v5; // r2
  int v7; // r6
  int v8; // r3
  int v9; // r2
  int v10; // r1
  int v11; // r2
  char v12; // r3
  int v13; // [sp+0h] [bp-8h] BYREF
  int v14; // [sp+4h] [bp-4h] BYREF

  if ( a2 < 0 )
    return 0;
  v5 = *a1;
  if ( a2 >= -252645135 * ((a1[1] - *a1) >> 2) )
    return 0;
  v7 = 68 * a2;
  v8 = *(_DWORD *)(v5 + 68 * a2);
  v9 = v5 + 68 * a2;
  if ( a2 != v8 || !vox::VoxSoundPackXML::GetGroupInfo((int)a1, *(char *)(v9 + 22), &v14, &v13) )
    return 0;
  v10 = v13;
  v11 = v14;
  *(_DWORD *)a3 = *(_DWORD *)(*a1 + v7);
  *(_DWORD *)(a3 + 4) = *(_DWORD *)(*a1 + v7 + 8);
  *(_DWORD *)(a3 + 8) = *(_DWORD *)(*a1 + v7 + 4);
  *(_DWORD *)(a3 + 12) = *(char *)(*a1 + v7 + 22);
  v12 = *(_BYTE *)(*a1 + v7 + 23);
  *(_DWORD *)(a3 + 20) = v10;
  *(_DWORD *)(a3 + 24) = v11;
  *(_BYTE *)(a3 + 16) = v12;
  *(_DWORD *)(a3 + 28) = *(_DWORD *)(*a1 + v7 + 24);
  *(_DWORD *)(a3 + 32) = *(_DWORD *)(*a1 + v7 + 28);
  *(_DWORD *)(a3 + 36) = *(_DWORD *)(*a1 + v7 + 32);
  *(_DWORD *)(a3 + 40) = *(_DWORD *)(*a1 + v7 + 36);
  *(_DWORD *)(a3 + 44) = *(_DWORD *)(*a1 + v7 + 40);
  *(_DWORD *)(a3 + 48) = *(_DWORD *)(*a1 + v7 + 44);
  *(_DWORD *)(a3 + 52) = *(_DWORD *)(*a1 + v7 + 48);
  *(_DWORD *)(a3 + 56) = *(_DWORD *)(*a1 + v7 + 52);
  *(_DWORD *)(a3 + 60) = *(_DWORD *)(*a1 + v7 + 56);
  *(_DWORD *)(a3 + 64) = *(_DWORD *)(*a1 + v7 + 60);
  *(_DWORD *)(a3 + 68) = *(_DWORD *)(*a1 + v7 + 64);
  return 1;
}


// ===== 889ac8 vox::VoxSoundPackXML::GetSoundCustomParam(int,int,char const*&) =====
const char *__fastcall vox::VoxSoundPackXML::GetSoundCustomParam(
        vox::VoxSoundPackXML *this,
        int a2,
        const char *a3,
        const char **a4)
{
  const char *result; // r0
  int v5; // r1
  bool v6; // cc

  if ( a2 < 0 || a2 >= -252645135 * ((*((_DWORD *)this + 1) - *(_DWORD *)this) >> 2) )
    return nullptr;
  v5 = *(_DWORD *)this + 68 * a2;
  result = *(const char **)(v5 + 60);
  v6 = (int)result <= (int)a3;
  if ( (int)result <= (int)a3 )
    result = nullptr;
  else
    v5 = *(_DWORD *)(v5 + 64);
  if ( v6 )
  {
    *a4 = result;
  }
  else
  {
    result = (_BYTE *)(&dword_0 + 1);
    a3 = *(const char **)(v5 + 4 * (_DWORD)a3);
  }
  if ( !v6 )
    *a4 = a3;
  return result;
}


// ===== 889b34 vox::VoxSoundPackXML::GetEventInfo(int,vox::EventInfoXML &) =====
int __fastcall vox::VoxSoundPackXML::GetEventInfo(int a1, int a2, int a3)
{
  int v4; // r4
  int v6; // r12

  if ( a2 < 0 )
    return 0;
  v4 = *(_DWORD *)(a1 + 36);
  if ( a2 >= -1171354717 * ((*(_DWORD *)(a1 + 40) - v4) >> 2) )
    return 0;
  v6 = 44 * a2;
  if ( a2 != *(_DWORD *)(v4 + 44 * a2) )
    return 0;
  *(_DWORD *)a3 = a2;
  *(_DWORD *)(a3 + 4) = *(_DWORD *)(*(_DWORD *)(a1 + 36) + v6 + 4);
  *(_DWORD *)(a3 + 8) = *(_DWORD *)(a1 + 36) + v6 + 16;
  *(_DWORD *)(a3 + 12) = *(__int16 *)(*(_DWORD *)(a1 + 36) + v6 + 28);
  *(_WORD *)(a3 + 16) = *(_WORD *)(*(_DWORD *)(a1 + 36) + v6 + 30);
  *(_WORD *)(a3 + 18) = *(_WORD *)(*(_DWORD *)(a1 + 36) + v6 + 32);
  *(_DWORD *)(a3 + 20) = *(_DWORD *)(*(_DWORD *)(a1 + 36) + v6 + 36);
  *(_DWORD *)(a3 + 24) = *(_DWORD *)(*(_DWORD *)(a1 + 36) + v6 + 40);
  return 1;
}


// ===== 889c04 vox::VoxSoundPackXML::GetEventSize(int) =====
int __fastcall vox::VoxSoundPackXML::GetEventSize(vox::VoxSoundPackXML *this, int a2)
{
  int v2; // r2

  if ( a2 < 0 )
    return -1;
  v2 = *((_DWORD *)this + 9);
  if ( a2 >= -1171354717 * ((*((_DWORD *)this + 10) - v2) >> 2) )
    return -1;
  else
    return (*(_DWORD *)(v2 + 44 * a2 + 20) - *(_DWORD *)(v2 + 44 * a2 + 16)) >> 2;
}


// ===== 889c54 vox::VoxSoundPackXML::GetEventCustomParam(int,int,char const*&) =====
const char *__fastcall vox::VoxSoundPackXML::GetEventCustomParam(
        vox::VoxSoundPackXML *this,
        int a2,
        const char *a3,
        const char **a4)
{
  int v4; // r12
  const char *result; // r0
  int v6; // r1
  bool v7; // cc

  if ( a2 < 0 )
    return nullptr;
  v4 = *((_DWORD *)this + 9);
  if ( a2 >= -1171354717 * ((*((_DWORD *)this + 10) - v4) >> 2) )
    return nullptr;
  v6 = v4 + 44 * a2;
  result = *(const char **)(v6 + 36);
  v7 = (int)result <= (int)a3;
  if ( (int)result <= (int)a3 )
    result = nullptr;
  else
    v6 = *(_DWORD *)(v6 + 40);
  if ( v7 )
  {
    *a4 = result;
  }
  else
  {
    result = (_BYTE *)(&dword_0 + 1);
    a3 = *(const char **)(v6 + 4 * (_DWORD)a3);
  }
  if ( !v7 )
    *a4 = a3;
  return result;
}


// ===== 889cbc std::vector<vox::SoundXMLDef,vox::SAllocator<vox::SoundXMLDef,(vox::VoxMemHint)0>>::_M_allocate_and_copy<vox::SoundXMLDef const*>(uint &,vox::SoundXMLDef const*,vox::SoundXMLDef const*) =====
char *__fastcall std::vector<vox::SoundXMLDef,vox::SAllocator<vox::SoundXMLDef,(vox::VoxMemHint)0>>::_M_allocate_and_copy<vox::SoundXMLDef const*>(
        int a1,
        _DWORD *a2,
        int a3,
        int a4)
{
  char *v6; // r7
  int v7; // r6
  int v8; // r5

  v6 = (char *)VoxAlloc(68 * *a2, 0);
  v7 = -252645135 * ((a4 - a3) >> 2);
  if ( v7 > 0 )
  {
    v8 = 0;
    do
    {
      memcpy(&v6[v8], (const void *)(a3 + v8), 0x44u);
      --v7;
      v8 += 68;
    }
    while ( v7 );
  }
  return v6;
}


// ===== 889d2c std::list<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::_M_splice_insert_dispatch<std::priv::_List_iterator<int,std::_Const_traits<int>>>(std::priv::_List_iterator<int,std::_Nonconst_traits<int>>,std::priv::_List_iterator<int,std::_Const_traits<int>>,std::priv::_List_iterator<int,std::_Const_traits<int>>,std::__false_type const&) =====
void __fastcall std::list<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::_M_splice_insert_dispatch<std::priv::_List_iterator<int,std::_Const_traits<int>>>(
        int a1,
        _DWORD *a2,
        _DWORD *a3,
        _DWORD *a4)
{
  _DWORD **v6; // r0
  _DWORD *v7; // r4
  _DWORD *v8; // r0
  _DWORD *v9; // r3
  _DWORD **v10; // r3
  _DWORD *v11; // r2
  _DWORD *v12; // r4
  _DWORD *v13; // [sp+0h] [bp-Ch] BYREF
  _DWORD *v14; // [sp+4h] [bp-8h]

  v13 = &v13;
  v14 = &v13;
  if ( a4 == a3 )
  {
    v6 = &v13;
  }
  else
  {
    v7 = a3;
    do
    {
      v8 = VoxAlloc(0xCu, 0);
      v8[2] = v7[2];
      v9 = v14;
      *v8 = &v13;
      v8[1] = v9;
      *v9 = v8;
      v14 = v8;
      v7 = (_DWORD *)*v7;
    }
    while ( v7 != a4 );
    v6 = (_DWORD **)v13;
  }
  v10 = (_DWORD **)*a2;
  if ( v6 != &v13 )
  {
    if ( v10 == &v13 )
      goto LABEL_14;
    *v14 = v10;
    *v6[1] = &v13;
    *v10[1] = v6;
    v11 = v10[1];
    v10[1] = v14;
    v14 = v6[1];
    v6[1] = v11;
    v6 = (_DWORD **)v13;
    if ( v13 != &v13 )
    {
LABEL_14:
      while ( 1 )
      {
        v12 = *v6;
        VoxFree(v6);
        if ( v12 == &v13 )
          break;
        v6 = (_DWORD **)v12;
      }
    }
  }
}


// ===== 889e00 std::list<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::operator=(std::list<int,vox::SAllocator<int,(vox::VoxMemHint)0>> const&) =====
_DWORD *__fastcall std::list<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::operator=(_DWORD *a1, _DWORD *a2)
{
  _DWORD *v4; // r0
  _DWORD *v5; // r2
  int v6; // r12
  _DWORD *v7; // r1
  _DWORD *v9; // r5
  _DWORD *v10; // r3
  _DWORD *v11; // [sp+8h] [bp-Ch] BYREF

  if ( a1 != a2 )
  {
    v4 = (_DWORD *)*a1;
    v5 = (_DWORD *)*a2;
    while ( a1 != v4 )
    {
      if ( a2 == v5 )
      {
        while ( 1 )
        {
          v9 = (_DWORD *)*v4;
          v10 = (_DWORD *)v4[1];
          *v10 = *v4;
          v9[1] = v10;
          VoxFree(v4);
          if ( a1 == v9 )
            break;
          v4 = v9;
        }
        return a1;
      }
      v6 = v5[2];
      v7 = (_DWORD *)*v4;
      v5 = (_DWORD *)*v5;
      v4[2] = v6;
      v4 = v7;
    }
    if ( a2 != v5 )
    {
      v11 = a1;
      std::list<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::_M_splice_insert_dispatch<std::priv::_List_iterator<int,std::_Const_traits<int>>>(
        (int)a1,
        &v11,
        v5,
        a2);
    }
  }
  return a1;
}


// ===== 889e98 vox::SoundXMLDef::~SoundXMLDef() =====
void __fastcall vox::SoundXMLDef::~SoundXMLDef(vox::SoundXMLDef *this)
{
  void *v2; // r0
  void *v3; // r0
  void **v4; // r0

  v2 = *((void **)this + 2);
  if ( v2 )
    VoxFree(v2);
  v3 = *((void **)this + 3);
  if ( v3 )
    VoxFree(v3);
  v4 = *((void ***)this + 16);
  if ( v4 )
  {
    if ( *v4 )
    {
      VoxFree(*v4);
      v4 = *((void ***)this + 16);
    }
    VoxFree(v4);
  }
}


// ===== 889ef0 std::vector<vox::SoundXMLDef,vox::SAllocator<vox::SoundXMLDef,(vox::VoxMemHint)0>>::_M_erase(vox::SoundXMLDef*,vox::SoundXMLDef*,std::__false_type const&) =====
vox::SoundXMLDef *__fastcall std::vector<vox::SoundXMLDef,vox::SAllocator<vox::SoundXMLDef,(vox::VoxMemHint)0>>::_M_erase(
        int a1,
        vox::SoundXMLDef *this,
        int a3)
{
  vox::SoundXMLDef *v3; // r4
  int v6; // r3
  int v8; // r9
  vox::SoundXMLDef *v9; // r6
  int v10; // r5
  int v11; // r4
  vox::SoundXMLDef *v12; // r5
  vox::SoundXMLDef *v13; // r0

  v3 = *(vox::SoundXMLDef **)(a1 + 4);
  v6 = ((int)v3 - a3) >> 2;
  v8 = -252645135 * v6;
  if ( -252645135 * v6 > 0 )
  {
    v10 = -252645135 * v6;
    v11 = 0;
    do
    {
      memcpy((char *)this + v11, (const void *)(a3 + v11), 0x44u);
      --v10;
      v11 += 68;
    }
    while ( v10 );
    v9 = (vox::SoundXMLDef *)((char *)this + 68 * v8);
    v3 = *(vox::SoundXMLDef **)(a1 + 4);
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
      v12 = (vox::SoundXMLDef *)((char *)v12 + 68);
      vox::SoundXMLDef::~SoundXMLDef(v13);
    }
    while ( v3 != v12 );
  }
  *(_DWORD *)(a1 + 4) = v9;
  return this;
}


// ===== 889f88 std::vector<vox::SoundXMLDef,vox::SAllocator<vox::SoundXMLDef,(vox::VoxMemHint)0>>::vector(uint) =====
_DWORD *__fastcall std::vector<vox::SoundXMLDef,vox::SAllocator<vox::SoundXMLDef,(vox::VoxMemHint)0>>::vector(
        _DWORD *a1,
        int a2)
{
  vox::SoundXMLDef *v2; // r7
  int v3; // r10
  int v4; // r5
  char *v6; // r0
  char *v7; // r10
  char *v8; // r6
  int v9; // r4
  _DWORD v11[18]; // [sp+4h] [bp-48h] BYREF

  v3 = 68 * a2;
  v4 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v6 = (char *)VoxAlloc(68 * a2, 0);
  v7 = &v6[v3];
  v11[14] = 1065353216;
  v8 = v6;
  v9 = -252645135 * ((v7 - v6) >> 2);
  LOBYTE(v11[5]) = -1;
  v11[6] = 1120403456;
  v11[7] = 2139095039;
  if ( v9 <= 0 )
    v2 = (vox::SoundXMLDef *)v11;
  *a1 = v6;
  a1[1] = v6;
  a1[2] = v7;
  memset(v11, 0, 20);
  *(_WORD *)((char *)&v11[5] + 1) = 0;
  HIBYTE(v11[5]) = 0;
  v11[8] = 1065353216;
  v11[9] = 1065353216;
  v11[10] = 1065353216;
  v11[11] = 1065353216;
  v11[12] = 1065353216;
  v11[13] = 1065353216;
  v11[15] = 0;
  v11[16] = 0;
  if ( v9 > 0 )
  {
    v2 = (vox::SoundXMLDef *)v11;
    do
    {
      memcpy(&v8[v4], v11, 0x44u);
      --v9;
      v4 += 68;
    }
    while ( v9 );
  }
  a1[1] = v7;
  vox::SoundXMLDef::~SoundXMLDef(v2);
  return a1;
}


// ===== 88a090 vox::EventXMLDef::~EventXMLDef() =====
void __fastcall vox::EventXMLDef::~EventXMLDef(vox::EventXMLDef *this)
{
  void *v2; // r0
  void **v3; // r0
  void *v4; // r0
  vox::EventXMLDef **v5; // r0
  vox::EventXMLDef *v6; // r4

  v2 = *((void **)this + 1);
  if ( v2 )
    VoxFree(v2);
  v3 = *((void ***)this + 10);
  if ( v3 )
  {
    if ( *v3 )
    {
      VoxFree(*v3);
      v3 = *((void ***)this + 10);
    }
    VoxFree(v3);
  }
  v4 = *((void **)this + 4);
  if ( v4 )
    VoxFree(v4);
  v5 = *((vox::EventXMLDef ***)this + 2);
  if ( v5 != (vox::EventXMLDef **)((char *)this + 8) )
  {
    while ( 1 )
    {
      v6 = *v5;
      VoxFree(v5);
      if ( v6 == (vox::EventXMLDef *)((char *)this + 8) )
        break;
      v5 = (vox::EventXMLDef **)v6;
    }
    v5 = (vox::EventXMLDef **)((char *)this + 8);
  }
  *((_DWORD *)this + 2) = v5;
  *((_DWORD *)this + 3) = v5;
}


// ===== 88a11c std::priv::_Rb_tree<char *,vox::c8stringcomp,std::pair<char * const,int>,std::priv::_Select1st<std::pair<char * const,int>>,std::priv::_MapTraitsT<std::pair<char * const,int>>,vox::SAllocator<std::pair<char const*,int>,(vox::VoxMemHint)0>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<char *,vox::c8stringcomp,std::pair<char * const,int>,std::priv::_Select1st<std::pair<char * const,int>>,std::priv::_MapTraitsT<std::pair<char * const,int>>,vox::SAllocator<std::pair<char const*,int>,(vox::VoxMemHint)0>>::_M_erase(
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
      std::priv::_Rb_tree<char *,vox::c8stringcomp,std::pair<char * const,int>,std::priv::_Select1st<std::pair<char * const,int>>,std::priv::_MapTraitsT<std::pair<char * const,int>>,vox::SAllocator<std::pair<char const*,int>,(vox::VoxMemHint)0>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      VoxFree(v2);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 88a150 std::vector<vox::SoundXMLDef,vox::SAllocator<vox::SoundXMLDef,(vox::VoxMemHint)0>>::operator=(std::vector<vox::SoundXMLDef,vox::SAllocator<vox::SoundXMLDef,(vox::VoxMemHint)0>> const&) =====
vox::SoundXMLDef **__fastcall std::vector<vox::SoundXMLDef,vox::SAllocator<vox::SoundXMLDef,(vox::VoxMemHint)0>>::operator=(
        vox::SoundXMLDef **a1,
        int *a2)
{
  int v4; // r3
  int v5; // r8
  vox::SoundXMLDef *v6; // r5
  int v7; // r1
  int v8; // r11
  int v9; // r7
  vox::SoundXMLDef *v10; // r6
  int v11; // r6
  vox::SoundXMLDef *v12; // r0
  int v14; // r10
  int v15; // r7
  int v16; // r6
  int v17; // r7
  int v18; // r5
  char *v19; // r0
  vox::SoundXMLDef *v20; // r6
  vox::SoundXMLDef *v21; // r7
  int v22; // r3
  int v23; // [sp+4h] [bp-8h] BYREF

  if ( a2 != (int *)a1 )
  {
    v4 = a2[1];
    v5 = *a2;
    v6 = *a1;
    v7 = (v4 - *a2) >> 2;
    v8 = -252645135 * v7;
    v9 = -252645135 * v7;
    if ( -252645135 * v7 > (unsigned int)(-252645135 * ((a1[2] - *a1) >> 2)) )
    {
      v23 = -252645135 * v7;
      v19 = std::vector<vox::SoundXMLDef,vox::SAllocator<vox::SoundXMLDef,(vox::VoxMemHint)0>>::_M_allocate_and_copy<vox::SoundXMLDef const*>(
              (int)a1,
              &v23,
              v5,
              v4);
      v20 = a1[1];
      v21 = *a1;
      v6 = (vox::SoundXMLDef *)v19;
      if ( v20 != *a1 )
      {
        do
        {
          v20 = (vox::SoundXMLDef *)((char *)v20 - 68);
          vox::SoundXMLDef::~SoundXMLDef(v20);
        }
        while ( v21 != v20 );
        v20 = *a1;
      }
      VoxFree(v20);
      v22 = v23;
      *a1 = v6;
      a1[2] = (vox::SoundXMLDef *)((char *)v6 + 68 * v22);
      goto LABEL_11;
    }
    v10 = a1[1];
    if ( v8 > (unsigned int)(-252645135 * ((v10 - v6) >> 2)) )
    {
      v14 = v5 + 4 * ((v10 - v6) >> 2);
      v15 = -252645135 * ((4 * ((v10 - v6) >> 2)) >> 2);
      if ( v15 > 0 )
      {
        v16 = 0;
        do
        {
          memcpy((char *)v6 + v16, (const void *)(v5 + v16), 0x44u);
          --v15;
          v16 += 68;
        }
        while ( v15 );
        v6 = *a1;
        v10 = a1[1];
        v4 = a2[1];
        v14 = *a2 + 4 * ((v10 - *a1) >> 2);
      }
      v17 = -252645135 * ((v4 - v14) >> 2);
      if ( v17 <= 0 )
        goto LABEL_11;
      v18 = 0;
      do
      {
        memcpy((char *)v10 + v18, (const void *)(v14 + v18), 0x44u);
        --v17;
        v18 += 68;
      }
      while ( v17 );
    }
    else
    {
      if ( v8 <= 0 )
        goto LABEL_9;
      v11 = 0;
      do
      {
        memcpy((char *)v6 + v11, (const void *)(v5 + v11), 0x44u);
        --v9;
        v11 += 68;
      }
      while ( v9 );
      v6 = (vox::SoundXMLDef *)((char *)v6 + 68 * v8);
      v10 = a1[1];
      while ( v6 != v10 )
      {
        v12 = v6;
        v6 = (vox::SoundXMLDef *)((char *)v6 + 68);
        vox::SoundXMLDef::~SoundXMLDef(v12);
LABEL_9:
        ;
      }
    }
    v6 = *a1;
LABEL_11:
    a1[1] = (vox::SoundXMLDef *)((char *)v6 + 68 * v8);
  }
  return a1;
}


// ===== 88a36c std::vector<vox::SoundXMLDef,vox::SAllocator<vox::SoundXMLDef,(vox::VoxMemHint)0>>::~vector() =====
vox::SoundXMLDef **__fastcall std::vector<vox::SoundXMLDef,vox::SAllocator<vox::SoundXMLDef,(vox::VoxMemHint)0>>::~vector(
        vox::SoundXMLDef **a1)
{
  vox::SoundXMLDef *v1; // r4
  vox::SoundXMLDef *v2; // r5

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 = (vox::SoundXMLDef *)((char *)v1 - 68);
    vox::SoundXMLDef::~SoundXMLDef(v1);
  }
  if ( *a1 )
    VoxFree(*a1);
  return a1;
}


// ===== 88a3b0 std::vector<vox::EventXMLDef,vox::SAllocator<vox::EventXMLDef,(vox::VoxMemHint)0>>::~vector() =====
vox::EventXMLDef **__fastcall std::vector<vox::EventXMLDef,vox::SAllocator<vox::EventXMLDef,(vox::VoxMemHint)0>>::~vector(
        vox::EventXMLDef **a1)
{
  vox::EventXMLDef *v1; // r4
  vox::EventXMLDef *v2; // r5

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 = (vox::EventXMLDef *)((char *)v1 - 44);
    vox::EventXMLDef::~EventXMLDef(v1);
  }
  if ( *a1 )
    VoxFree(*a1);
  return a1;
}


// ===== 88a3f4 vox::VoxSoundPackXML::GetEventUid(char const*) =====
int __fastcall vox::VoxSoundPackXML::GetEventUid(vox::VoxSoundPackXML *this, const char *a2)
{
  int v2; // r7
  int v3; // r8
  int v5; // r4
  int v6; // r5

  v2 = *((_DWORD *)this + 9);
  v3 = -1171354717 * ((*((_DWORD *)this + 10) - v2) >> 2);
  if ( !v3 )
    return -1;
  v5 = 0;
  v6 = 0;
  while ( 1 )
  {
    ++v6;
    if ( !LC_API_STRCASECMP_0(*(const char **)(v2 + v5 + 4), a2) )
      break;
    v5 += 44;
    if ( v6 == v3 )
      return -1;
  }
  return *(_DWORD *)(v2 + v5);
}


// ===== 88a464 vox::VoxSoundPackXML::GetEventCustomParam(char const*,int,char const*&) =====
const char *__fastcall vox::VoxSoundPackXML::GetEventCustomParam(
        vox::VoxSoundPackXML *this,
        const char *a2,
        const char *a3,
        const char **a4)
{
  int EventUid; // r0

  EventUid = vox::VoxSoundPackXML::GetEventUid(this, a2);
  return vox::VoxSoundPackXML::GetEventCustomParam(this, EventUid, a3, a4);
}


// ===== 88a490 vox::VoxSoundPackXML::GetEventSize(char const*) =====
int __fastcall vox::VoxSoundPackXML::GetEventSize(vox::VoxSoundPackXML *this, const char *a2)
{
  int EventUid; // r1

  EventUid = vox::VoxSoundPackXML::GetEventUid(this, a2);
  return vox::VoxSoundPackXML::GetEventSize(this, EventUid);
}


// ===== 88a4ac vox::VoxSoundPackXML::GetEventInfo(char const*,vox::EventInfoXML &) =====
int __fastcall vox::VoxSoundPackXML::GetEventInfo(vox::VoxSoundPackXML *a1, const char *a2, int a3)
{
  int EventUid; // r0

  EventUid = vox::VoxSoundPackXML::GetEventUid(a1, a2);
  return vox::VoxSoundPackXML::GetEventInfo((int)a1, EventUid, a3);
}


// ===== 88a4d0 vox::c8stringcomp::operator()(char const*,char const*) =====
unsigned int __fastcall vox::c8stringcomp::operator()(int a1, char *a2, char *a3)
{
  return (unsigned int)LC_API_STRCASECMP_0(a2, a3) >> 31;
}


// ===== 88a4e8 std::priv::_Rb_tree<char *,vox::c8stringcomp,std::pair<char * const,int>,std::priv::_Select1st<std::pair<char * const,int>>,std::priv::_MapTraitsT<std::pair<char * const,int>>,vox::SAllocator<std::pair<char const*,int>,(vox::VoxMemHint)0>>::_M_find<char *>(char * const&) =====
int __fastcall std::priv::_Rb_tree<char *,vox::c8stringcomp,std::pair<char * const,int>,std::priv::_Select1st<std::pair<char * const,int>>,std::priv::_MapTraitsT<std::pair<char * const,int>>,vox::SAllocator<std::pair<char const*,int>,(vox::VoxMemHint)0>>::_M_find<char *>(
        int a1,
        char **a2)
{
  int v2; // r4
  int v5; // r6
  int v6; // r7
  unsigned int v7; // r0

  v2 = *(_DWORD *)(a1 + 4);
  if ( !v2 )
    return a1;
  v5 = a1 + 20;
  v6 = a1;
  do
  {
    v7 = vox::c8stringcomp::operator()(v5, *(char **)(v2 + 16), *a2);
    if ( v7 )
      v2 = *(_DWORD *)(v2 + 12);
    else
      v6 = v2;
    if ( !v7 )
      v2 = *(_DWORD *)(v2 + 8);
  }
  while ( v2 );
  if ( v6 != a1 && vox::c8stringcomp::operator()(v5, *a2, *(char **)(v6 + 16)) )
    return a1;
  return v6;
}


// ===== 88a55c vox::VoxSoundPackXML::GetSoundUid(char const*) =====
int __fastcall vox::VoxSoundPackXML::GetSoundUid(vox::VoxSoundPackXML *this, char *a2)
{
  char *v2; // r4
  int v3; // r0
  char *v5; // [sp+4h] [bp-4h] BYREF

  v5 = a2;
  v2 = (char *)this + 48;
  v3 = std::priv::_Rb_tree<char *,vox::c8stringcomp,std::pair<char * const,int>,std::priv::_Select1st<std::pair<char * const,int>>,std::priv::_MapTraitsT<std::pair<char * const,int>>,vox::SAllocator<std::pair<char const*,int>,(vox::VoxMemHint)0>>::_M_find<char *>(
         (int)this + 48,
         &v5);
  if ( (char *)v3 == v2 )
    return -1;
  else
    return *(_DWORD *)(v3 + 20);
}


// ===== 88a590 vox::VoxSoundPackXML::GetSoundCustomParam(char const*,int,char const*&) =====
const char *__fastcall vox::VoxSoundPackXML::GetSoundCustomParam(
        vox::VoxSoundPackXML *this,
        char *a2,
        const char *a3,
        const char **a4)
{
  int SoundUid; // r0

  SoundUid = vox::VoxSoundPackXML::GetSoundUid(this, a2);
  return vox::VoxSoundPackXML::GetSoundCustomParam(this, SoundUid, a3, a4);
}


// ===== 88a5bc vox::VoxSoundPackXML::GetEmitterInfo(char const*,vox::EmitterInfoXML &) =====
int __fastcall vox::VoxSoundPackXML::GetEmitterInfo(vox::VoxSoundPackXML *a1, char *a2, int a3)
{
  int SoundUid; // r0

  SoundUid = vox::VoxSoundPackXML::GetSoundUid(a1, a2);
  return vox::VoxSoundPackXML::GetEmitterInfo((int *)a1, SoundUid, a3);
}


// ===== 88a5e0 vox::VoxSoundPackXML::GetEmitterInfo(char const*,int &,int &,int &,bool &,vox::Vox3DSoundType &,char const*&) =====
int __fastcall vox::VoxSoundPackXML::GetEmitterInfo(
        vox::VoxSoundPackXML *a1,
        char *a2,
        int *a3,
        _DWORD *a4,
        int *a5,
        _BYTE *a6,
        _DWORD *a7,
        _DWORD *a8)
{
  int SoundUid; // r0

  SoundUid = vox::VoxSoundPackXML::GetSoundUid(a1, a2);
  *a3 = SoundUid;
  return vox::VoxSoundPackXML::GetEmitterInfo((int *)a1, SoundUid, a4, a5, a6, a7, a8);
}


// ===== 88a62c vox::VoxSoundPackXML::GetDataSourceInfo(char const*,vox::DataSourceInfoXML &) =====
int __fastcall vox::VoxSoundPackXML::GetDataSourceInfo(vox::VoxSoundPackXML *a1, char *a2, int *a3)
{
  int SoundUid; // r0

  SoundUid = vox::VoxSoundPackXML::GetSoundUid(a1, a2);
  return vox::VoxSoundPackXML::GetDataSourceInfo(a1, SoundUid, a3);
}


// ===== 88a650 vox::VoxSoundPackXML::GetDataSourceInfo(char const*,int &,char const*&,vox::FormatTypes &,int &,int &,vox::VoxSourceLoadingFlags &) =====
int __fastcall vox::VoxSoundPackXML::GetDataSourceInfo(
        vox::VoxSoundPackXML *a1,
        char *a2,
        int *a3,
        _DWORD *a4,
        _DWORD *a5,
        _DWORD *a6,
        _DWORD *a7,
        _DWORD *a8)
{
  int SoundUid; // r0

  SoundUid = vox::VoxSoundPackXML::GetSoundUid(a1, a2);
  *a3 = SoundUid;
  return vox::VoxSoundPackXML::GetDataSourceInfo((int *)a1, SoundUid, a4, a5, a6, a7, a8);
}


// ===== 88a69c std::priv::_Rb_tree<char *,vox::c8stringcomp,std::pair<char * const,int>,std::priv::_Select1st<std::pair<char * const,int>>,std::priv::_MapTraitsT<std::pair<char * const,int>>,vox::SAllocator<std::pair<char const*,int>,(vox::VoxMemHint)0>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<char * const,int> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<char *,vox::c8stringcomp,std::pair<char * const,int>,std::priv::_Select1st<std::pair<char * const,int>>,std::priv::_MapTraitsT<std::pair<char * const,int>>,vox::SAllocator<std::pair<char const*,int>,(vox::VoxMemHint)0>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        int a3,
        int a4,
        int a5,
        int a6)
{
  _DWORD *v10; // r0
  _DWORD *v11; // r8
  int v12; // r2
  _DWORD *v14; // r0
  int v15; // r2
  int v16; // r2

  if ( a2 == (_DWORD *)a3 )
  {
    v11 = VoxAlloc(0x18u, 0);
    v11[4] = *(_DWORD *)a4;
    v16 = *(_DWORD *)(a4 + 4);
    v11[3] = 0;
    v11[2] = 0;
    v11[5] = v16;
    a2[2] = v11;
    a2[1] = v11;
    a2[3] = v11;
  }
  else if ( !a6 && (a5 || vox::c8stringcomp::operator()((int)(a2 + 5), *(char **)a4, *(char **)(a3 + 16))) )
  {
    v14 = VoxAlloc(0x18u, 0);
    v11 = v14;
    v14[4] = *(_DWORD *)a4;
    v15 = *(_DWORD *)(a4 + 4);
    v14[3] = 0;
    v14[2] = 0;
    v14[5] = v15;
    *(_DWORD *)(a3 + 8) = v14;
    if ( a3 == a2[2] )
      a2[2] = v14;
  }
  else
  {
    v10 = VoxAlloc(0x18u, 0);
    v11 = v10;
    v10[4] = *(_DWORD *)a4;
    v12 = *(_DWORD *)(a4 + 4);
    v10[3] = 0;
    v10[2] = 0;
    v10[5] = v12;
    *(_DWORD *)(a3 + 12) = v10;
    if ( a3 == a2[3] )
      a2[3] = v10;
  }
  v11[1] = a3;
  std::priv::_Rb_global<bool>::_Rebalance((int)v11, a2 + 1);
  ++a2[4];
  *a1 = v11;
  return a1;
}


// ===== 88a7d4 std::priv::_Rb_tree<char *,vox::c8stringcomp,std::pair<char * const,int>,std::priv::_Select1st<std::pair<char * const,int>>,std::priv::_MapTraitsT<std::pair<char * const,int>>,vox::SAllocator<std::pair<char const*,int>,(vox::VoxMemHint)0>>::insert_unique(std::pair<char * const,int> const&) =====
int __fastcall std::priv::_Rb_tree<char *,vox::c8stringcomp,std::pair<char * const,int>,std::priv::_Select1st<std::pair<char * const,int>>,std::priv::_MapTraitsT<std::pair<char * const,int>>,vox::SAllocator<std::pair<char const*,int>,(vox::VoxMemHint)0>>::insert_unique(
        int a1,
        _DWORD *a2,
        char **a3)
{
  int v3; // r5
  int v7; // r6
  unsigned int v8; // r0
  int v9; // r2
  int v10; // r3
  int v11; // r10
  int v13; // r3
  int v14; // r10
  int v15; // r3
  int v16; // r2
  int v17; // r3
  int v18; // [sp+8h] [bp-Ch] BYREF
  int v19; // [sp+Ch] [bp-8h] BYREF

  v3 = a2[1];
  if ( v3 )
  {
    v7 = (int)(a2 + 5);
    while ( 1 )
    {
      v8 = vox::c8stringcomp::operator()(v7, *a3, *(char **)(v3 + 16));
      v9 = v8 ? *(_DWORD *)(v3 + 8) : *(_DWORD *)(v3 + 12);
      v10 = v3;
      if ( !v9 )
        break;
      v3 = v9;
    }
    if ( !v8 )
    {
      v11 = v3;
      goto LABEL_12;
    }
  }
  else
  {
    v3 = (int)a2;
  }
  if ( v3 == a2[2] )
  {
    std::priv::_Rb_tree<char *,vox::c8stringcomp,std::pair<char * const,int>,std::priv::_Select1st<std::pair<char * const,int>>,std::priv::_MapTraitsT<std::pair<char * const,int>>,vox::SAllocator<std::pair<char const*,int>,(vox::VoxMemHint)0>>::_M_insert(
      &v19,
      a2,
      v3,
      (int)a3,
      v3,
      0);
    v17 = v19;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v17;
    return a1;
  }
  if ( *(_BYTE *)v3 || v3 != *(_DWORD *)(*(_DWORD *)(v3 + 4) + 4) )
  {
    v13 = *(_DWORD *)(v3 + 8);
    if ( v13 )
    {
      while ( *(_DWORD *)(v13 + 12) )
        v13 = *(_DWORD *)(v13 + 12);
    }
    else
    {
      v16 = *(_DWORD *)(v3 + 4);
      if ( v3 != *(_DWORD *)(v16 + 8) )
      {
        v10 = *(_DWORD *)(v3 + 4);
        v11 = v10;
        v7 = (int)(a2 + 5);
        goto LABEL_12;
      }
      while ( 1 )
      {
        v13 = *(_DWORD *)(v16 + 4);
        if ( *(_DWORD *)(v13 + 8) != v16 )
          break;
        v16 = *(_DWORD *)(v16 + 4);
      }
    }
    v14 = v13;
    if ( !vox::c8stringcomp::operator()((int)(a2 + 5), *(char **)(v13 + 16), *a3) )
    {
      *(_DWORD *)a1 = v14;
      *(_BYTE *)(a1 + 4) = 0;
      return a1;
    }
LABEL_25:
    std::priv::_Rb_tree<char *,vox::c8stringcomp,std::pair<char * const,int>,std::priv::_Select1st<std::pair<char * const,int>>,std::priv::_MapTraitsT<std::pair<char * const,int>>,vox::SAllocator<std::pair<char const*,int>,(vox::VoxMemHint)0>>::_M_insert(
      &v18,
      a2,
      v3,
      (int)a3,
      0,
      0);
    v15 = v18;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v15;
    return a1;
  }
  v10 = *(_DWORD *)(v3 + 12);
  v7 = (int)(a2 + 5);
  v11 = v10;
LABEL_12:
  if ( vox::c8stringcomp::operator()(v7, *(char **)(v10 + 16), *a3) )
    goto LABEL_25;
  *(_DWORD *)a1 = v11;
  *(_BYTE *)(a1 + 4) = 0;
  return a1;
}


// ===== 88a980 std::priv::_Rb_tree<char *,vox::c8stringcomp,std::pair<char * const,int>,std::priv::_Select1st<std::pair<char * const,int>>,std::priv::_MapTraitsT<std::pair<char * const,int>>,vox::SAllocator<std::pair<char const*,int>,(vox::VoxMemHint)0>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<char * const,int>,std::priv::_MapTraitsT<std::pair<char * const,int>>>,std::pair<char * const,int> const&) =====
int *__fastcall std::priv::_Rb_tree<char *,vox::c8stringcomp,std::pair<char * const,int>,std::priv::_Select1st<std::pair<char * const,int>>,std::priv::_MapTraitsT<std::pair<char * const,int>>,vox::SAllocator<std::pair<char const*,int>,(vox::VoxMemHint)0>>::insert_unique(
        int *a1,
        _DWORD *a2,
        int *a3,
        char **a4)
{
  int v5; // r7
  int v9; // r4
  unsigned int v10; // r7
  int v12; // r2
  int v13; // r4
  int v14; // r3
  int v15; // r9
  int v16; // r12
  int v17; // r3
  _DWORD *v18; // r1
  int v19; // r2
  int v20; // [sp+8h] [bp-20h] BYREF
  int v21; // [sp+10h] [bp-18h] BYREF
  int v22; // [sp+18h] [bp-10h] BYREF
  int v23; // [sp+20h] [bp-8h] BYREF

  v5 = *a3;
  if ( *a3 == a2[2] )
  {
    if ( !a2[4] )
    {
      std::priv::_Rb_tree<char *,vox::c8stringcomp,std::pair<char * const,int>,std::priv::_Select1st<std::pair<char * const,int>>,std::priv::_MapTraitsT<std::pair<char * const,int>>,vox::SAllocator<std::pair<char const*,int>,(vox::VoxMemHint)0>>::insert_unique(
        (int)&v23,
        a2,
        a4);
      *a1 = v23;
      return a1;
    }
    v15 = (int)(a2 + 5);
    if ( vox::c8stringcomp::operator()((int)(a2 + 5), *a4, *(char **)(v5 + 16)) )
    {
LABEL_11:
      std::priv::_Rb_tree<char *,vox::c8stringcomp,std::pair<char * const,int>,std::priv::_Select1st<std::pair<char * const,int>>,std::priv::_MapTraitsT<std::pair<char * const,int>>,vox::SAllocator<std::pair<char const*,int>,(vox::VoxMemHint)0>>::_M_insert(
        a1,
        a2,
        *a3,
        (int)a4,
        *a3,
        0);
      return a1;
    }
    if ( !vox::c8stringcomp::operator()(v15, *(char **)(*a3 + 16), *a4) )
      goto LABEL_57;
    v16 = *a3;
    v13 = *(_DWORD *)(*a3 + 12);
    if ( v13 )
    {
      while ( *(_DWORD *)(v13 + 8) )
        v13 = *(_DWORD *)(v13 + 8);
    }
    else
    {
      v17 = *(_DWORD *)(v16 + 4);
      if ( v16 == *(_DWORD *)(v17 + 12) )
      {
        do
        {
          v13 = v17;
          v17 = *(_DWORD *)(v17 + 4);
        }
        while ( *(_DWORD *)(v17 + 12) == v13 );
      }
      else
      {
        v13 = *a3;
      }
      if ( v17 != *(_DWORD *)(v13 + 12) )
        v13 = v17;
    }
    if ( a2 != (_DWORD *)v13 )
    {
      if ( !vox::c8stringcomp::operator()(v15, *a4, *(char **)(v13 + 16)) )
      {
        std::priv::_Rb_tree<char *,vox::c8stringcomp,std::pair<char * const,int>,std::priv::_Select1st<std::pair<char * const,int>>,std::priv::_MapTraitsT<std::pair<char * const,int>>,vox::SAllocator<std::pair<char const*,int>,(vox::VoxMemHint)0>>::insert_unique(
          (int)&v22,
          a2,
          a4);
        *a1 = v22;
        return a1;
      }
      goto LABEL_23;
    }
    v18 = a2;
    v19 = *a3;
LABEL_56:
    std::priv::_Rb_tree<char *,vox::c8stringcomp,std::pair<char * const,int>,std::priv::_Select1st<std::pair<char * const,int>>,std::priv::_MapTraitsT<std::pair<char * const,int>>,vox::SAllocator<std::pair<char const*,int>,(vox::VoxMemHint)0>>::_M_insert(
      a1,
      v18,
      v19,
      (int)a4,
      0,
      v16);
    return a1;
  }
  if ( (_DWORD *)v5 == a2 )
  {
    if ( !vox::c8stringcomp::operator()(v5 + 20, *(char **)(*(_DWORD *)(v5 + 12) + 16), *a4) )
    {
      std::priv::_Rb_tree<char *,vox::c8stringcomp,std::pair<char * const,int>,std::priv::_Select1st<std::pair<char * const,int>>,std::priv::_MapTraitsT<std::pair<char * const,int>>,vox::SAllocator<std::pair<char const*,int>,(vox::VoxMemHint)0>>::insert_unique(
        (int)&v21,
        (_DWORD *)v5,
        a4);
      *a1 = v21;
      return a1;
    }
    v19 = *(_DWORD *)(v5 + 12);
    v16 = *a3;
    v18 = (_DWORD *)v5;
    goto LABEL_56;
  }
  if ( !*(_BYTE *)v5 )
  {
    if ( v5 == *(_DWORD *)(*(_DWORD *)(v5 + 4) + 4) )
    {
      v9 = *(_DWORD *)(v5 + 12);
      goto LABEL_8;
    }
    v9 = *(_DWORD *)(v5 + 8);
    if ( !v9 )
      goto LABEL_32;
LABEL_7:
    while ( *(_DWORD *)(v9 + 12) )
      v9 = *(_DWORD *)(v9 + 12);
    goto LABEL_8;
  }
  v9 = *(_DWORD *)(v5 + 8);
  if ( v9 )
    goto LABEL_7;
LABEL_32:
  v9 = *(_DWORD *)(v5 + 4);
  if ( v5 == *(_DWORD *)(v9 + 8) )
  {
    while ( *(_DWORD *)(*(_DWORD *)(v9 + 4) + 8) == v9 )
      v9 = *(_DWORD *)(v9 + 4);
    v9 = *(_DWORD *)(v9 + 4);
  }
LABEL_8:
  v10 = vox::c8stringcomp::operator()((int)(a2 + 5), *a4, *(char **)(v5 + 16));
  if ( v10 && vox::c8stringcomp::operator()((int)(a2 + 5), *(char **)(v9 + 16), *a4) )
  {
    if ( !*(_DWORD *)(v9 + 12) )
    {
      std::priv::_Rb_tree<char *,vox::c8stringcomp,std::pair<char * const,int>,std::priv::_Select1st<std::pair<char * const,int>>,std::priv::_MapTraitsT<std::pair<char * const,int>>,vox::SAllocator<std::pair<char const*,int>,(vox::VoxMemHint)0>>::_M_insert(
        a1,
        a2,
        v9,
        (int)a4,
        0,
        v9);
      return a1;
    }
    goto LABEL_11;
  }
  v12 = *a3;
  v13 = *(_DWORD *)(*a3 + 12);
  if ( v13 )
  {
    while ( *(_DWORD *)(v13 + 8) )
      v13 = *(_DWORD *)(v13 + 8);
    if ( v10 )
      goto LABEL_37;
  }
  else
  {
    v14 = *(_DWORD *)(v12 + 4);
    if ( v12 == *(_DWORD *)(v14 + 12) )
    {
      do
      {
        v13 = v14;
        v14 = *(_DWORD *)(v14 + 4);
      }
      while ( *(_DWORD *)(v14 + 12) == v13 );
    }
    else
    {
      v13 = *a3;
    }
    if ( v14 != *(_DWORD *)(v13 + 12) )
      v13 = v14;
    if ( v10 )
      goto LABEL_37;
  }
  if ( !vox::c8stringcomp::operator()((int)(a2 + 5), *(char **)(v12 + 16), *a4) )
  {
LABEL_57:
    *a1 = *a3;
    return a1;
  }
  if ( a2 != (_DWORD *)v13 && !vox::c8stringcomp::operator()((int)(a2 + 5), *a4, *(char **)(v13 + 16)) )
  {
LABEL_37:
    std::priv::_Rb_tree<char *,vox::c8stringcomp,std::pair<char * const,int>,std::priv::_Select1st<std::pair<char * const,int>>,std::priv::_MapTraitsT<std::pair<char * const,int>>,vox::SAllocator<std::pair<char const*,int>,(vox::VoxMemHint)0>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
    return a1;
  }
LABEL_23:
  if ( *(_DWORD *)(*a3 + 12) )
    std::priv::_Rb_tree<char *,vox::c8stringcomp,std::pair<char * const,int>,std::priv::_Select1st<std::pair<char * const,int>>,std::priv::_MapTraitsT<std::pair<char * const,int>>,vox::SAllocator<std::pair<char const*,int>,(vox::VoxMemHint)0>>::_M_insert(
      a1,
      a2,
      v13,
      (int)a4,
      v13,
      0);
  else
    std::priv::_Rb_tree<char *,vox::c8stringcomp,std::pair<char * const,int>,std::priv::_Select1st<std::pair<char * const,int>>,std::priv::_MapTraitsT<std::pair<char * const,int>>,vox::SAllocator<std::pair<char const*,int>,(vox::VoxMemHint)0>>::_M_insert(
      a1,
      a2,
      *a3,
      (int)a4,
      0,
      *a3);
  return a1;
}


// ===== 88ad28 std::map<char *,int,vox::c8stringcomp,vox::SAllocator<std::pair<char const*,int>,(vox::VoxMemHint)0>>::operator[]<char *>(char * const&) =====
int __fastcall std::map<char *,int,vox::c8stringcomp,vox::SAllocator<std::pair<char const*,int>,(vox::VoxMemHint)0>>::operator[]<char *>(
        _DWORD *a1,
        char **a2)
{
  int v2; // r4
  int v5; // r7
  _DWORD *v6; // r5
  unsigned int v7; // r0
  int v8; // r3
  bool v9; // zf
  int v10; // r0
  char *v12[2]; // [sp+4h] [bp-14h] BYREF
  int v13; // [sp+Ch] [bp-Ch] BYREF
  int v14; // [sp+10h] [bp-8h] BYREF
  _BYTE v15[4]; // [sp+14h] [bp-4h] BYREF

  v2 = a1[1];
  if ( v2 )
  {
    v5 = (int)(a1 + 5);
    v6 = a1;
    while ( 1 )
    {
      v7 = vox::c8stringcomp::operator()(v5, *(char **)(v2 + 16), *a2);
      if ( v7 )
        v8 = *(_DWORD *)(v2 + 12);
      else
        v8 = *(_DWORD *)(v2 + 8);
      if ( v7 )
        v2 = (int)v6;
      v6 = (_DWORD *)v2;
      if ( !v8 )
        break;
      v2 = v8;
    }
  }
  else
  {
    v2 = (int)a1;
  }
  if ( a1 == (_DWORD *)v2
    || (v9 = vox::c8stringcomp::operator()((int)v15, *a2, *(char **)(v2 + 16)) == 0, v10 = v2, !v9) )
  {
    v12[0] = *a2;
    v12[1] = nullptr;
    v13 = v2;
    std::priv::_Rb_tree<char *,vox::c8stringcomp,std::pair<char * const,int>,std::priv::_Select1st<std::pair<char * const,int>>,std::priv::_MapTraitsT<std::pair<char * const,int>>,vox::SAllocator<std::pair<char const*,int>,(vox::VoxMemHint)0>>::insert_unique(
      &v14,
      a1,
      &v13,
      v12);
    v10 = v14;
  }
  return v10 + 20;
}


// ===== 88ade0 vox::GroupXMLDef::GroupXMLDef(void) =====
vox::GroupXMLDef *__fastcall vox::GroupXMLDef::GroupXMLDef(vox::GroupXMLDef *this)
{
  *(_DWORD *)this = 0;
  std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::basic_string(
    (_DWORD *)this + 1,
    "");
  std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::basic_string(
    (_DWORD *)this + 7,
    "");
  *((_DWORD *)this + 13) = 0;
  return this;
}


// ===== 88ae2c vox::GroupXMLDef::GroupXMLDef(vox::GroupXMLDef const&) =====
vox::GroupXMLDef *__fastcall vox::GroupXMLDef::GroupXMLDef(vox::GroupXMLDef *this, const vox::GroupXMLDef *a2)
{
  _DWORD *v4; // r0

  *(_DWORD *)this = *(_DWORD *)a2;
  v4 = (_DWORD *)((char *)this + 4);
  *((_DWORD *)this + 5) = v4;
  *((_DWORD *)this + 6) = v4;
  std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_range_initialize(
    v4,
    *((_BYTE **)a2 + 6),
    *((_BYTE **)a2 + 5));
  *((_DWORD *)this + 11) = (char *)this + 28;
  *((_DWORD *)this + 12) = (char *)this + 28;
  std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_range_initialize(
    (_DWORD *)this + 7,
    *((_BYTE **)a2 + 12),
    *((_BYTE **)a2 + 11));
  *((_DWORD *)this + 13) = *((_DWORD *)a2 + 13);
  return this;
}


// ===== 88ae7c std::vector<vox::GroupXMLDef,vox::SAllocator<vox::GroupXMLDef,(vox::VoxMemHint)0>>::_M_initialize(uint,vox::GroupXMLDef const&) =====
vox::GroupXMLDef *__fastcall std::vector<vox::GroupXMLDef,vox::SAllocator<vox::GroupXMLDef,(vox::VoxMemHint)0>>::_M_initialize(
        vox::GroupXMLDef *result,
        int a2,
        vox::GroupXMLDef *a3)
{
  vox::GroupXMLDef *v3; // r4
  vox::GroupXMLDef *v4; // r5
  int v5; // r8
  int v7; // r6

  v3 = *(vox::GroupXMLDef **)result;
  v4 = result;
  v5 = *(_DWORD *)result + 56 * a2;
  v7 = -1227133513 * ((56 * a2) >> 3);
  if ( v7 > 0 )
  {
    do
    {
      result = vox::GroupXMLDef::GroupXMLDef(v3, a3);
      --v7;
      v3 = (vox::GroupXMLDef *)((char *)v3 + 56);
    }
    while ( v7 );
  }
  *((_DWORD *)v4 + 1) = v5;
  return result;
}


// ===== 88aedc std::vector<vox::GroupXMLDef,vox::SAllocator<vox::GroupXMLDef,(vox::VoxMemHint)0>>::_M_allocate_and_copy<vox::GroupXMLDef const*>(uint &,vox::GroupXMLDef const*,vox::GroupXMLDef const*) =====
char *__fastcall std::vector<vox::GroupXMLDef,vox::SAllocator<vox::GroupXMLDef,(vox::VoxMemHint)0>>::_M_allocate_and_copy<vox::GroupXMLDef const*>(
        int a1,
        _DWORD *a2,
        int a3,
        int a4)
{
  char *v6; // r7
  int v7; // r6
  int v8; // r5

  v6 = (char *)VoxAlloc(56 * *a2, 0);
  v7 = -1227133513 * ((a4 - a3) >> 3);
  if ( v7 > 0 )
  {
    v8 = 0;
    do
    {
      vox::GroupXMLDef::GroupXMLDef((vox::GroupXMLDef *)&v6[v8], (const vox::GroupXMLDef *)(a3 + v8));
      --v7;
      v8 += 56;
    }
    while ( v7 );
  }
  return v6;
}


// ===== 88af4c std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::stringcomp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_create_node(std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::stringcomp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_create_node(
        int a1,
        int a2)
{
  _DWORD *v3; // r4
  int v4; // r2

  v3 = VoxAlloc(0x2Cu, 0);
  v3[8] = v3 + 4;
  v3[9] = v3 + 4;
  std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_range_initialize(
    v3 + 4,
    *(_BYTE **)(a2 + 20),
    *(_BYTE **)(a2 + 16));
  v4 = *(_DWORD *)(a2 + 24);
  v3[3] = 0;
  v3[10] = v4;
  v3[2] = 0;
  return v3;
}


// ===== 88af98 std::priv::__ufill<vox::BankXMLDef *,vox::BankXMLDef,int>(vox::BankXMLDef *,vox::BankXMLDef *,vox::BankXMLDef const&,std::random_access_iterator_tag const&,int *) =====
_BYTE *__fastcall std::priv::__ufill<vox::BankXMLDef *,vox::BankXMLDef,int>(_BYTE *result, int a2, int a3)
{
  int v4; // r6
  _DWORD *i; // r4
  int v6; // r2

  v4 = -858993459 * ((a2 - (int)result) >> 3);
  if ( v4 > 0 )
  {
    for ( i = result; ; i += 10 )
    {
      *i = *(_DWORD *)a3;
      i[1] = *(_DWORD *)(a3 + 4);
      i[2] = *(_DWORD *)(a3 + 8);
      v6 = *(_DWORD *)(a3 + 12);
      i[8] = i + 4;
      i[9] = i + 4;
      i[3] = v6;
      result = std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_range_initialize(
                 i + 4,
                 *(_BYTE **)(a3 + 36),
                 *(_BYTE **)(a3 + 32));
      if ( !--v4 )
        break;
    }
  }
  return result;
}


// ===== 88b018 std::priv::__ucopy<vox::BankXMLDef const*,vox::BankXMLDef*,int>(vox::BankXMLDef const*,vox::BankXMLDef const*,vox::BankXMLDef*,std::random_access_iterator_tag const&,int *) =====
_DWORD *__fastcall std::priv::__ucopy<vox::BankXMLDef const*,vox::BankXMLDef*,int>(int a1, int a2, _DWORD *a3)
{
  int v3; // r3
  int v4; // r5
  int v6; // r7
  int v7; // r6
  _DWORD *v8; // r4
  int v9; // r2

  v3 = (a2 - a1) >> 3;
  v4 = a1;
  v6 = -858993459 * v3;
  if ( -858993459 * v3 <= 0 )
    return a3;
  v7 = -858993459 * v3;
  v8 = a3;
  while ( 1 )
  {
    *v8 = *(_DWORD *)v4;
    v8[1] = *(_DWORD *)(v4 + 4);
    v8[2] = *(_DWORD *)(v4 + 8);
    v9 = *(_DWORD *)(v4 + 12);
    v8[8] = v8 + 4;
    v8[9] = v8 + 4;
    v8[3] = v9;
    std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_range_initialize(
      v8 + 4,
      *(_BYTE **)(v4 + 36),
      *(_BYTE **)(v4 + 32));
    --v7;
    v8 += 10;
    if ( !v7 )
      break;
    v4 += 40;
  }
  return &a3[10 * v6];
}


// ===== 88b0b4 std::vector<vox::BankXMLDef,vox::SAllocator<vox::BankXMLDef,(vox::VoxMemHint)0>>::_M_allocate_and_copy<vox::BankXMLDef const*>(uint &,vox::BankXMLDef const*,vox::BankXMLDef const*) =====
_DWORD *__fastcall std::vector<vox::BankXMLDef,vox::SAllocator<vox::BankXMLDef,(vox::VoxMemHint)0>>::_M_allocate_and_copy<vox::BankXMLDef const*>(
        int a1,
        _DWORD *a2,
        int a3,
        int a4)
{
  _DWORD *v6; // r4

  v6 = VoxAlloc(40 * *a2, 0);
  std::priv::__ucopy<vox::BankXMLDef const*,vox::BankXMLDef*,int>(a3, a4, v6);
  return v6;
}


// ===== 88b104 vox::EventXMLDef::operator=(vox::EventXMLDef const&) =====
int __fastcall vox::EventXMLDef::operator=(int a1, int a2)
{
  *(_DWORD *)a1 = *(_DWORD *)a2;
  *(_DWORD *)(a1 + 4) = *(_DWORD *)(a2 + 4);
  std::list<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::operator=((_DWORD *)(a1 + 8), (_DWORD *)(a2 + 8));
  std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::operator=(a1 + 16, a2 + 16);
  *(_WORD *)(a1 + 28) = *(_WORD *)(a2 + 28);
  *(_WORD *)(a1 + 30) = *(_WORD *)(a2 + 30);
  *(_WORD *)(a1 + 32) = *(_WORD *)(a2 + 32);
  *(_WORD *)(a1 + 34) = *(_WORD *)(a2 + 34);
  *(_DWORD *)(a1 + 36) = *(_DWORD *)(a2 + 36);
  *(_DWORD *)(a1 + 40) = *(_DWORD *)(a2 + 40);
  return a1;
}


// ===== 88b170 std::vector<vox::EventXMLDef,vox::SAllocator<vox::EventXMLDef,(vox::VoxMemHint)0>>::_M_erase(vox::EventXMLDef*,vox::EventXMLDef*,std::__false_type const&) =====
vox::EventXMLDef *__fastcall std::vector<vox::EventXMLDef,vox::SAllocator<vox::EventXMLDef,(vox::VoxMemHint)0>>::_M_erase(
        int a1,
        vox::EventXMLDef *this,
        int a3)
{
  vox::EventXMLDef *v3; // r4
  int v4; // r10
  vox::EventXMLDef *v8; // r10
  int v9; // r6
  int v10; // r4
  vox::EventXMLDef *v11; // r6
  vox::EventXMLDef *v12; // r0

  v3 = *(vox::EventXMLDef **)(a1 + 4);
  v4 = -1171354717 * (((int)v3 - a3) >> 2);
  if ( v4 > 0 )
  {
    v9 = -1171354717 * (((int)v3 - a3) >> 2);
    v10 = 0;
    do
    {
      vox::EventXMLDef::operator=((int)this + v10, a3 + v10);
      --v9;
      v10 += 44;
    }
    while ( v9 );
    v8 = (vox::EventXMLDef *)((char *)this + 44 * v4);
    v3 = *(vox::EventXMLDef **)(a1 + 4);
  }
  else
  {
    v8 = this;
  }
  if ( v3 != v8 )
  {
    v11 = v8;
    do
    {
      v12 = v11;
      v11 = (vox::EventXMLDef *)((char *)v11 + 44);
      vox::EventXMLDef::~EventXMLDef(v12);
    }
    while ( v3 != v11 );
  }
  *(_DWORD *)(a1 + 4) = v8;
  return this;
}


// ===== 88b1fc vox::EventXMLDef::EventXMLDef(vox::EventXMLDef const&) =====
vox::EventXMLDef *__fastcall vox::EventXMLDef::EventXMLDef(vox::EventXMLDef *this, const vox::EventXMLDef *a2)
{
  char *v2; // r5
  int v3; // r3
  char *v4; // r4
  char *v5; // r6
  _DWORD *v8; // r0
  _DWORD *v9; // r3

  v2 = (char *)this + 8;
  *(_DWORD *)this = *(_DWORD *)a2;
  v3 = *((_DWORD *)a2 + 1);
  *((_DWORD *)this + 2) = (char *)this + 8;
  *((_DWORD *)this + 3) = (char *)this + 8;
  *((_DWORD *)this + 1) = v3;
  v5 = (char *)a2 + 8;
  v4 = *((char **)a2 + 2);
  if ( v4 != (char *)a2 + 8 )
  {
    do
    {
      v8 = VoxAlloc(0xCu, 0);
      v8[2] = *((_DWORD *)v4 + 2);
      v9 = *((_DWORD **)v2 + 1);
      *v8 = v2;
      v8[1] = v9;
      *v9 = v8;
      *((_DWORD *)v2 + 1) = v8;
      v4 = *(char **)v4;
    }
    while ( v5 != v4 );
  }
  std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::vector((_DWORD *)this + 4, (int)a2 + 16);
  *((_WORD *)this + 14) = *((_WORD *)a2 + 14);
  *((_WORD *)this + 15) = *((_WORD *)a2 + 15);
  *((_WORD *)this + 16) = *((_WORD *)a2 + 16);
  *((_WORD *)this + 17) = *((_WORD *)a2 + 17);
  *((_DWORD *)this + 9) = *((_DWORD *)a2 + 9);
  *((_DWORD *)this + 10) = *((_DWORD *)a2 + 10);
  return this;
}


// ===== 88b2ac std::vector<vox::EventXMLDef,vox::SAllocator<vox::EventXMLDef,(vox::VoxMemHint)0>>::_M_initialize(uint,vox::EventXMLDef const&) =====
vox::EventXMLDef *__fastcall std::vector<vox::EventXMLDef,vox::SAllocator<vox::EventXMLDef,(vox::VoxMemHint)0>>::_M_initialize(
        vox::EventXMLDef *result,
        int a2,
        vox::EventXMLDef *a3)
{
  vox::EventXMLDef *v3; // r4
  int v4; // r7
  int v5; // r5
  vox::EventXMLDef *v6; // r6

  v3 = *(vox::EventXMLDef **)result;
  v4 = *(_DWORD *)result + 44 * a2;
  v5 = -1171354717 * ((44 * a2) >> 2);
  v6 = result;
  if ( v5 > 0 )
  {
    do
    {
      result = vox::EventXMLDef::EventXMLDef(v3, a3);
      --v5;
      v3 = (vox::EventXMLDef *)((char *)v3 + 44);
    }
    while ( v5 );
  }
  *((_DWORD *)v6 + 1) = v4;
  return result;
}


// ===== 88b300 std::vector<vox::EventXMLDef,vox::SAllocator<vox::EventXMLDef,(vox::VoxMemHint)0>>::vector(uint) =====
vox::EventXMLDef *__fastcall std::vector<vox::EventXMLDef,vox::SAllocator<vox::EventXMLDef,(vox::VoxMemHint)0>>::vector(
        vox::EventXMLDef *a1,
        int a2)
{
  int v2; // r6
  char *v5; // r0
  _DWORD v7[2]; // [sp+4h] [bp-30h] BYREF
  _DWORD v8[5]; // [sp+Ch] [bp-28h] BYREF
  __int16 v9; // [sp+20h] [bp-14h]
  __int16 v10; // [sp+22h] [bp-12h]
  __int16 v11; // [sp+24h] [bp-10h]
  __int16 v12; // [sp+26h] [bp-Eh]
  int v13; // [sp+28h] [bp-Ch]
  int v14; // [sp+2Ch] [bp-8h]

  v2 = 44 * a2;
  *(_DWORD *)a1 = 0;
  *((_DWORD *)a1 + 1) = 0;
  *((_DWORD *)a1 + 2) = 0;
  v5 = (char *)VoxAlloc(44 * a2, 0);
  *((_DWORD *)a1 + 2) = &v5[v2];
  *(_DWORD *)a1 = v5;
  *((_DWORD *)a1 + 1) = v5;
  v12 = -1;
  v9 = -1;
  v8[1] = v8;
  v8[0] = v8;
  v11 = 100;
  v14 = 0;
  v7[0] = 0;
  v7[1] = 0;
  memset(&v8[2], 0, 12);
  v10 = 0;
  v13 = 0;
  std::vector<vox::EventXMLDef,vox::SAllocator<vox::EventXMLDef,(vox::VoxMemHint)0>>::_M_initialize(
    a1,
    a2,
    (vox::EventXMLDef *)v7);
  vox::EventXMLDef::~EventXMLDef((vox::EventXMLDef *)v7);
  return a1;
}


// ===== 88b3ac std::vector<vox::EventXMLDef,vox::SAllocator<vox::EventXMLDef,(vox::VoxMemHint)0>>::_M_allocate_and_copy<vox::EventXMLDef const*>(uint &,vox::EventXMLDef const*,vox::EventXMLDef const*) =====
char *__fastcall std::vector<vox::EventXMLDef,vox::SAllocator<vox::EventXMLDef,(vox::VoxMemHint)0>>::_M_allocate_and_copy<vox::EventXMLDef const*>(
        int a1,
        _DWORD *a2,
        int a3,
        int a4)
{
  int v5; // r6
  char *v6; // r7
  int v7; // r5

  v5 = -1171354717 * ((a4 - a3) >> 2);
  v6 = (char *)VoxAlloc(44 * *a2, 0);
  if ( v5 > 0 )
  {
    v7 = 0;
    do
    {
      vox::EventXMLDef::EventXMLDef((vox::EventXMLDef *)&v6[v7], (const vox::EventXMLDef *)(a3 + v7));
      --v5;
      v7 += 44;
    }
    while ( v5 );
  }
  return v6;
}


// ===== 88b410 std::vector<vox::EventXMLDef,vox::SAllocator<vox::EventXMLDef,(vox::VoxMemHint)0>>::operator=(std::vector<vox::EventXMLDef,vox::SAllocator<vox::EventXMLDef,(vox::VoxMemHint)0>> const&) =====
vox::EventXMLDef **__fastcall std::vector<vox::EventXMLDef,vox::SAllocator<vox::EventXMLDef,(vox::VoxMemHint)0>>::operator=(
        vox::EventXMLDef **a1,
        int *a2)
{
  int v4; // r3
  int v5; // r8
  vox::EventXMLDef *v6; // r6
  int v7; // r5
  int v8; // r11
  int v9; // r7
  int v11; // r10
  int v12; // r7
  vox::EventXMLDef *v13; // r8
  int v14; // r10
  int v15; // r7
  int v16; // r6
  char *v17; // r0
  vox::EventXMLDef *v18; // r7
  vox::EventXMLDef *v19; // r8
  int v20; // r3
  vox::EventXMLDef *v21; // [sp+4h] [bp-10h]
  int v22; // [sp+Ch] [bp-8h] BYREF

  if ( a2 != (int *)a1 )
  {
    v4 = a2[1];
    v5 = *a2;
    v6 = *a1;
    v7 = -1171354717 * ((v4 - *a2) >> 2);
    v8 = v7;
    if ( v7 > (unsigned int)(-1171354717 * ((a1[2] - *a1) >> 2)) )
    {
      v22 = -1171354717 * ((v4 - *a2) >> 2);
      v17 = std::vector<vox::EventXMLDef,vox::SAllocator<vox::EventXMLDef,(vox::VoxMemHint)0>>::_M_allocate_and_copy<vox::EventXMLDef const*>(
              (int)a1,
              &v22,
              v5,
              v4);
      v18 = a1[1];
      v19 = *a1;
      v6 = (vox::EventXMLDef *)v17;
      if ( v18 != *a1 )
      {
        do
        {
          v18 = (vox::EventXMLDef *)((char *)v18 - 44);
          vox::EventXMLDef::~EventXMLDef(v18);
        }
        while ( v19 != v18 );
        v18 = *a1;
      }
      VoxFree(v18);
      v20 = v22;
      *a1 = v6;
      a1[2] = (vox::EventXMLDef *)((char *)v6 + 44 * v20);
      goto LABEL_11;
    }
    v21 = a1[1];
    if ( v7 > (unsigned int)(-1171354717 * ((v21 - v6) >> 2)) )
    {
      v11 = v5 + 4 * ((a1[1] - v6) >> 2);
      v12 = -1171354717 * ((4 * ((a1[1] - v6) >> 2)) >> 2);
      if ( v12 > 0 )
      {
        v14 = 0;
        do
        {
          vox::EventXMLDef::operator=((int)v6 + v14, v5 + v14);
          --v12;
          v14 += 44;
        }
        while ( v12 );
        v6 = *a1;
        v13 = a1[1];
        v4 = a2[1];
        v11 = *a2 + 4 * ((v13 - *a1) >> 2);
      }
      else
      {
        v13 = a1[1];
      }
      v15 = -1171354717 * ((v4 - v11) >> 2);
      if ( v15 <= 0 )
        goto LABEL_11;
      v16 = 0;
      do
      {
        vox::EventXMLDef::EventXMLDef((vox::EventXMLDef *)((char *)v13 + v16), (const vox::EventXMLDef *)(v11 + v16));
        --v15;
        v16 += 44;
      }
      while ( v15 );
    }
    else
    {
      if ( v7 > 0 )
      {
        v9 = 0;
        do
        {
          vox::EventXMLDef::operator=((int)v6 + v9, v5 + v9);
          --v8;
          v9 += 44;
        }
        while ( v8 );
        v6 = (vox::EventXMLDef *)((char *)v6 + 44 * v7);
        v21 = a1[1];
      }
      for ( ; v6 != v21; v6 = (vox::EventXMLDef *)((char *)v6 + 44) )
        vox::EventXMLDef::~EventXMLDef(v6);
    }
    v6 = *a1;
LABEL_11:
    a1[1] = (vox::EventXMLDef *)((char *)v6 + 44 * v7);
  }
  return a1;
}


// ===== 88b5f0 vox::GroupXMLDef::operator=(vox::GroupXMLDef const&) =====
_DWORD *__fastcall vox::GroupXMLDef::operator=(_DWORD *a1, int a2)
{
  _DWORD *v4; // r0

  *a1 = *(_DWORD *)a2;
  v4 = a1 + 1;
  if ( v4 != (_DWORD *)(a2 + 4) )
    std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_assign(
      v4,
      *(_BYTE **)(a2 + 24),
      *(_BYTE **)(a2 + 20));
  if ( a1 + 7 != (_DWORD *)(a2 + 28) )
    std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_assign(
      a1 + 7,
      *(_BYTE **)(a2 + 48),
      *(_BYTE **)(a2 + 44));
  a1[13] = *(_DWORD *)(a2 + 52);
  return a1;
}


// ===== 88b648 std::priv::__copy<vox::BankXMLDef *,vox::BankXMLDef *,int>(vox::BankXMLDef *,vox::BankXMLDef *,vox::BankXMLDef *,std::random_access_iterator_tag const&,int *) =====
_DWORD *__fastcall std::priv::__copy<vox::BankXMLDef *,vox::BankXMLDef *,int>(int a1, int a2, _DWORD *a3)
{
  int v3; // r4
  _DWORD *v4; // r7
  int v5; // r8
  _DWORD *v6; // r5
  int v7; // r6

  v3 = a1;
  v4 = a3;
  v5 = -858993459 * ((a2 - a1) >> 3);
  if ( v5 > 0 )
  {
    v6 = a3;
    v7 = -858993459 * ((a2 - a1) >> 3);
    while ( 1 )
    {
      *v6 = *(_DWORD *)v3;
      v6[1] = *(_DWORD *)(v3 + 4);
      v6[2] = *(_DWORD *)(v3 + 8);
      v6[3] = *(_DWORD *)(v3 + 12);
      if ( v6 + 4 != (_DWORD *)(v3 + 16) )
        std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_assign(
          v6 + 4,
          *(_BYTE **)(v3 + 36),
          *(_BYTE **)(v3 + 32));
      --v7;
      v6 += 10;
      if ( !v7 )
        break;
      v3 += 40;
    }
    v4 += 10 * v5;
  }
  return v4;
}


// ===== 88b6e0 std::priv::__copy<vox::BankXMLDef const*,vox::BankXMLDef*,int>(vox::BankXMLDef const*,vox::BankXMLDef const*,vox::BankXMLDef*,std::random_access_iterator_tag const&,int *) =====
_DWORD *__fastcall std::priv::__copy<vox::BankXMLDef const*,vox::BankXMLDef*,int>(int a1, int a2, _DWORD *a3)
{
  int v3; // r4
  _DWORD *v4; // r7
  int v5; // r8
  int v6; // r6
  _DWORD *v7; // r5

  v3 = a1;
  v4 = a3;
  v5 = -858993459 * ((a2 - a1) >> 3);
  if ( v5 > 0 )
  {
    v6 = -858993459 * ((a2 - a1) >> 3);
    v7 = a3;
    while ( 1 )
    {
      *v7 = *(_DWORD *)v3;
      v7[1] = *(_DWORD *)(v3 + 4);
      v7[2] = *(_DWORD *)(v3 + 8);
      v7[3] = *(_DWORD *)(v3 + 12);
      if ( v7 + 4 != (_DWORD *)(v3 + 16) )
        std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_assign(
          v7 + 4,
          *(_BYTE **)(v3 + 36),
          *(_BYTE **)(v3 + 32));
      --v6;
      v7 += 10;
      if ( !v6 )
        break;
      v3 += 40;
    }
    v4 += 10 * v5;
  }
  return v4;
}


// ===== 88b778 vox::stringcomp::operator()(std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const&,std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const&) =====
unsigned int __fastcall vox::stringcomp::operator()(int a1, int a2, int a3)
{
  const void *v3; // r0
  int v4; // r5
  const void *v5; // r1
  signed int v6; // r5
  int v7; // r4
  size_t v8; // r2
  unsigned int v9; // r0

  v3 = *(const void **)(a2 + 20);
  v4 = *(_DWORD *)(a2 + 16);
  v5 = *(const void **)(a3 + 20);
  v6 = v4 - (_DWORD)v3;
  v7 = *(_DWORD *)(a3 + 16) - (_DWORD)v5;
  if ( v7 >= v6 )
    v8 = v6;
  else
    v8 = *(_DWORD *)(a3 + 16) - (_DWORD)v5;
  v9 = memcmp(v3, v5, v8);
  if ( !v9 )
  {
    if ( v6 >= v7 )
      v9 = v6 > v7;
    else
      v9 = -1;
  }
  return v9 >> 31;
}


// ===== 88b7c8 std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::stringcomp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::stringcomp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3,
        int a4,
        int a5,
        int a6)
{
  _DWORD *v9; // r0
  _DWORD *node; // r7
  _DWORD *v12; // r0
  unsigned int v13; // r0
  int v14; // [sp+4h] [bp-8h]

  if ( a2 == a3 )
  {
    node = std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::stringcomp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( !a6
         && (a5 || (v14 = a4, v13 = vox::stringcomp::operator()((int)(a2 + 5), a4, (int)(a3 + 4)), a4 = v14, v13)) )
  {
    v12 = std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::stringcomp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_create_node(
            (int)a2,
            a4);
    a3[2] = v12;
    node = v12;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v12;
  }
  else
  {
    v9 = std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::stringcomp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_create_node(
           (int)a2,
           a4);
    a3[3] = v9;
    node = v9;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v9;
  }
  node[1] = a3;
  std::priv::_Rb_global<bool>::_Rebalance((int)node, a2 + 1);
  ++a2[4];
  *a1 = node;
  return a1;
}


// ===== 88b8b8 vox::VoxSoundPackXML::GetGroupUid(char const*) =====
int __fastcall vox::VoxSoundPackXML::GetGroupUid(vox::VoxSoundPackXML *this, char *a2)
{
  int v3; // r3
  int v4; // r0
  int v6; // r4
  unsigned int v7; // r5

  v3 = *((_DWORD *)this + 4);
  v4 = *((_DWORD *)this + 3);
  if ( !(1227133513 * ((v3 - v4) >> 3)) )
    return -1;
  v6 = 0;
  v7 = 0;
  while ( 1 )
  {
    ++v7;
    if ( std::operator==<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>(v4 + v6 + 28, a2) )
      break;
    v4 = *((_DWORD *)this + 3);
    v6 += 56;
    if ( v7 >= -1227133513 * ((*((_DWORD *)this + 4) - v4) >> 3) )
      return -1;
  }
  return *(_DWORD *)(*((_DWORD *)this + 3) + v6);
}


// ===== 88b960 vox::VoxSoundPackXML::GetGroupInfo(char const*,vox::GroupInfoXML &) =====
int __fastcall vox::VoxSoundPackXML::GetGroupInfo(vox::VoxSoundPackXML *a1, char *a2, int *a3)
{
  int GroupUid; // r0

  GroupUid = vox::VoxSoundPackXML::GetGroupUid(a1, a2);
  return vox::VoxSoundPackXML::GetGroupInfo((int)a1, GroupUid, a3);
}


// ===== 88b984 vox::VoxSoundPackXML::GetGroupInfo(char const*,int &,char const*&,vox::Vox3DSoundType &) =====
int __fastcall vox::VoxSoundPackXML::GetGroupInfo(vox::VoxSoundPackXML *a1, char *a2, int *a3, _DWORD *a4, _DWORD *a5)
{
  int GroupUid; // r0

  GroupUid = vox::VoxSoundPackXML::GetGroupUid(a1, a2);
  *a3 = GroupUid;
  return vox::VoxSoundPackXML::GetGroupInfo((int)a1, GroupUid, a4, a5);
}


// ===== 88b9b8 vox::VoxSoundPackXML::GetBankUid(char const*) =====
int __fastcall vox::VoxSoundPackXML::GetBankUid(vox::VoxSoundPackXML *this, char *a2)
{
  int v3; // r3
  int v4; // r0
  int v6; // r4
  unsigned int v7; // r5

  v3 = *((_DWORD *)this + 7);
  v4 = *((_DWORD *)this + 6);
  if ( !(-858993459 * ((v3 - v4) >> 3)) )
    return -1;
  v6 = 0;
  v7 = 0;
  while ( 1 )
  {
    ++v7;
    if ( std::operator==<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>(v4 + v6 + 16, a2) )
      break;
    v4 = *((_DWORD *)this + 6);
    v6 += 40;
    if ( v7 >= -858993459 * ((*((_DWORD *)this + 7) - v4) >> 3) )
      return -1;
  }
  return *(_DWORD *)(*((_DWORD *)this + 6) + v6);
}


// ===== 88ba5c vox::VoxSoundPackXML::GetBankInfo(char const*,vox::BankInfoXML &) =====
int __fastcall vox::VoxSoundPackXML::GetBankInfo(vox::VoxSoundPackXML *a1, char *a2, int *a3)
{
  int BankUid; // r0

  BankUid = vox::VoxSoundPackXML::GetBankUid(a1, a2);
  return vox::VoxSoundPackXML::GetBankInfo((int)a1, BankUid, a3);
}


// ===== 88ba80 vox::VoxSoundPackXML::GetBankInfo(char const*,int &,int &,int &,vox::PriorityBankBehavior &) =====
int __fastcall vox::VoxSoundPackXML::GetBankInfo(
        vox::VoxSoundPackXML *a1,
        char *a2,
        int *a3,
        _DWORD *a4,
        _DWORD *a5,
        _DWORD *a6)
{
  int BankUid; // r0

  BankUid = vox::VoxSoundPackXML::GetBankUid(a1, a2);
  *a3 = BankUid;
  return vox::VoxSoundPackXML::GetBankInfo((int)a1, BankUid, a4, a5, a6);
}


// ===== 88babc std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::_M_insert_overflow(int *,int const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::_M_insert_overflow(
        int a1,
        int a2,
        _DWORD *a3)
{
  unsigned int v6; // r3
  unsigned int v7; // r7
  size_t v8; // r7
  _DWORD *v9; // r0
  const void *v10; // r1
  _DWORD *v11; // r5
  size_t v12; // r6
  _DWORD *v13; // r6

  v6 = (*(_DWORD *)(a1 + 4) - *(_DWORD *)a1) >> 2;
  if ( v6 )
    v7 = 2 * v6;
  else
    v7 = 1;
  if ( v7 > 0x3FFFFFFF || v6 > v7 )
  {
    v8 = -1;
    v9 = VoxAlloc(0xFFFFFFFC, 0);
    v10 = *(const void **)a1;
    v11 = v9;
    v12 = a2 - *(_DWORD *)a1;
    if ( !v12 )
    {
      v13 = v9;
      goto LABEL_11;
    }
LABEL_14:
    v13 = (char *)memmove(v9, v10, v12) + v12;
    goto LABEL_11;
  }
  v8 = v7;
  v9 = VoxAlloc(v8 * 4, 0);
  v10 = *(const void **)a1;
  v11 = v9;
  v12 = a2 - *(_DWORD *)a1;
  if ( v12 )
    goto LABEL_14;
  v13 = v9;
LABEL_11:
  *v13 = *a3;
  VoxFree(*(void **)a1);
  *(_DWORD *)a1 = v11;
  *(_DWORD *)(a1 + 4) = v13 + 1;
  *(_DWORD *)(a1 + 8) = &v11[v8];
}


// ===== 88bb6c vox::VoxSoundPackXML::GetEventSoundUid(int,int &) =====
int __fastcall vox::VoxSoundPackXML::GetEventSoundUid(vox::VoxSoundPackXML *this, int a2, int *a3)
{
  int v5; // r2
  int v6; // r5
  int v7; // r8
  int v8; // r0
  int v9; // r2
  signed int v10; // r7
  int v11; // r9
  int v12; // r10
  int v13; // r8
  _DWORD *v14; // r0
  int v15; // r8
  _DWORD *v16; // r3
  int v17; // r3
  int v18; // r0
  int v19; // r2
  _DWORD *v20; // r3
  _DWORD *v21; // r1
  int *v22; // r0
  int v23; // r3
  int *v24; // r2
  __int16 v26; // r3
  int v27; // r1
  int v28; // r0

  if ( a2 < 0 )
    return 0;
  v5 = *((_DWORD *)this + 9);
  if ( a2 >= -1171354717 * ((*((_DWORD *)this + 10) - v5) >> 2) )
    return 0;
  v6 = 44 * a2;
  v7 = (*(_DWORD *)(v5 + 44 * a2 + 20) - *(_DWORD *)(v5 + 44 * a2 + 16)) >> 2;
  if ( v7 <= 0 )
    return 0;
  v8 = lrand48();
  v9 = *((_DWORD *)this + 9) + v6;
  if ( v8 % 100 >= *(__int16 *)(v9 + 32) )
  {
    *a3 = -1;
    return 1;
  }
  v10 = *(__int16 *)(v9 + 28);
  if ( !*(_WORD *)(v9 + 28) )
  {
    v11 = (*(_DWORD *)(v9 + 20) - *(_DWORD *)(v9 + 16)) >> 2;
    v12 = lrand48() % v11;
    *a3 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 9) + v6 + 16) + 4 * v12);
    v13 = *((_DWORD *)this + 9);
    v14 = VoxAlloc(0xCu, v10);
    v15 = v13 + v6;
    v14[2] = *a3;
    v16 = *(_DWORD **)(v15 + 12);
    *v14 = v15 + 8;
    v14[1] = v16;
    *v16 = v14;
    *(_DWORD *)(v15 + 12) = v14;
    v17 = *(_DWORD *)(*((_DWORD *)this + 9) + v6 + 16);
    *(_DWORD *)(v17 + 4 * v12) = *(_DWORD *)(v17 + 4 * (v11 - 1));
    *(_DWORD *)(*((_DWORD *)this + 9) + v6 + 20) -= 4;
    v18 = *((_DWORD *)this + 9) + v6;
    v19 = *(_DWORD *)(v18 + 8);
    if ( v19 != v18 + 8 )
    {
      v20 = *(_DWORD **)(v18 + 8);
      do
      {
        v20 = (_DWORD *)*v20;
        ++v10;
      }
      while ( (_DWORD *)(v18 + 8) != v20 );
    }
    if ( *(__int16 *)(v18 + 30) < v10 )
    {
      v21 = *(_DWORD **)(v18 + 20);
LABEL_12:
      if ( v21 == *(_DWORD **)(v18 + 24) )
      {
        std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::_M_insert_overflow(
          v18 + 16,
          (int)v21,
          (_DWORD *)(v19 + 8));
      }
      else
      {
        *v21 = *(_DWORD *)(v19 + 8);
        *(_DWORD *)(v18 + 20) += 4;
      }
      v22 = *(int **)(*((_DWORD *)this + 9) + v6 + 8);
      v23 = *v22;
      v24 = (int *)v22[1];
      *v24 = *v22;
      *(_DWORD *)(v23 + 4) = v24;
      VoxFree(v22);
      return 1;
    }
    v21 = *(_DWORD **)(v18 + 20);
    if ( !(((unsigned int)v21 - *(_DWORD *)(v18 + 16)) >> 2) )
      goto LABEL_12;
    return 1;
  }
  if ( v10 != 1 )
    return 1;
  v26 = *(_WORD *)(v9 + 34);
  v27 = v26;
  if ( v26 >= v7 )
  {
    *(_WORD *)(v9 + 34) = 0;
    v9 = *((_DWORD *)this + 9) + v6;
    v26 = *(_WORD *)(v9 + 34);
    v27 = v26;
  }
  v28 = *(_DWORD *)(v9 + 16);
  *(_WORD *)(v9 + 34) = v26 + 1;
  *a3 = *(_DWORD *)(v28 + 4 * v27);
  return 1;
}


// ===== 88bdac vox::VoxSoundPackXML::GetEventSoundUid(char const*,int &) =====
int __fastcall vox::VoxSoundPackXML::GetEventSoundUid(vox::VoxSoundPackXML *this, const char *a2, int *a3)
{
  int EventUid; // r0

  EventUid = vox::VoxSoundPackXML::GetEventUid(this, a2);
  return vox::VoxSoundPackXML::GetEventSoundUid(this, EventUid, a3);
}


// ===== 88bdd0 vox::VoxSoundPackXML::GetEmitterInfoFromSoundOrEvent(char const*,vox::EmitterInfoXML &) =====
int __fastcall vox::VoxSoundPackXML::GetEmitterInfoFromSoundOrEvent(vox::VoxSoundPackXML *a1, char *a2, int a3)
{
  int result; // r0
  int v7; // [sp+4h] [bp-4h] BYREF

  if ( vox::VoxSoundPackXML::GetEmitterInfo(a1, a2, a3) )
    return 1;
  result = vox::VoxSoundPackXML::GetEventSoundUid(a1, a2, &v7);
  if ( result )
    return vox::VoxSoundPackXML::GetEmitterInfo((int *)a1, v7, a3);
  return result;
}


// ===== 88be28 vox::VoxSoundPackXML::ResetEvent(int) =====
int __fastcall vox::VoxSoundPackXML::ResetEvent(vox::VoxSoundPackXML *this, int a2)
{
  int v3; // r2
  int v4; // r3
  int v5; // r5
  _DWORD *v6; // r0
  int v7; // r3
  _DWORD *v8; // r2
  _DWORD *v9; // r3
  _DWORD *v10; // t1
  _DWORD *v11; // r1
  _DWORD *v12; // r1
  int *v13; // r0
  int v14; // r3
  int *v15; // r2

  if ( a2 < 0 )
    return 0;
  v3 = *((_DWORD *)this + 9);
  v4 = -1171354717 * ((*((_DWORD *)this + 10) - v3) >> 2);
  if ( a2 >= v4 )
    return 0;
  v5 = 44 * a2;
  *(_WORD *)(v3 + 44 * a2 + 34) = v4;
  v6 = (_DWORD *)(*((_DWORD *)this + 9) + 44 * a2);
  v7 = *((_DWORD *)this + 9) + 44 * a2;
  v10 = *(_DWORD **)(v7 + 8);
  v9 = (_DWORD *)(v7 + 8);
  v8 = v10;
  if ( v10 != v9 )
  {
    do
    {
      v11 = v8;
      do
        v11 = (_DWORD *)*v11;
      while ( v9 != v11 );
      v12 = (_DWORD *)v6[5];
      if ( v12 == (_DWORD *)v6[6] )
      {
        std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::_M_insert_overflow((int)(v6 + 4), (int)v12, v8 + 2);
      }
      else
      {
        *v12 = v8[2];
        v6[5] += 4;
      }
      v13 = *(int **)(*((_DWORD *)this + 9) + v5 + 8);
      v14 = *v13;
      v15 = (int *)v13[1];
      *v15 = *v13;
      *(_DWORD *)(v14 + 4) = v15;
      VoxFree(v13);
      v6 = (_DWORD *)(*((_DWORD *)this + 9) + v5);
      v9 = v6 + 2;
      v8 = (_DWORD *)v6[2];
    }
    while ( v8 != v6 + 2 );
  }
  return 1;
}


// ===== 88bf10 vox::VoxSoundPackXML::ResetEvent(char const*) =====
int __fastcall vox::VoxSoundPackXML::ResetEvent(vox::VoxSoundPackXML *this, const char *a2)
{
  int EventUid; // r1

  EventUid = vox::VoxSoundPackXML::GetEventUid(this, a2);
  return vox::VoxSoundPackXML::ResetEvent(this, EventUid);
}


// ===== 88bf2c std::vector<vox::BankXMLDef,vox::SAllocator<vox::BankXMLDef,(vox::VoxMemHint)0>>::~vector() =====
void ***__fastcall std::vector<vox::BankXMLDef,vox::SAllocator<vox::BankXMLDef,(vox::VoxMemHint)0>>::~vector(
        void ***a1)
{
  void **v1; // r4
  void **v2; // r5
  void **v4; // r3

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 -= 10;
    v4 = (void **)v1[9];
    if ( v4 != v1 + 4 && v4 )
      VoxFree(v1[9]);
  }
  if ( *a1 )
    VoxFree(*a1);
  return a1;
}


// ===== 88bf88 std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::stringcomp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::stringcomp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_erase(
        int a1,
        int a2)
{
  int v2; // r4
  int v4; // r3
  int v5; // r6

  v2 = a2;
  if ( a2 )
  {
    do
    {
      std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::stringcomp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_erase(
        a1,
        *(_DWORD *)(v2 + 12));
      v4 = *(_DWORD *)(v2 + 36);
      v5 = *(_DWORD *)(v2 + 8);
      if ( v4 != v2 + 16 )
      {
        if ( v4 )
          VoxFree(*(void **)(v2 + 36));
      }
      VoxFree((void *)v2);
      v2 = v5;
    }
    while ( v5 );
  }
}


// ===== 88bfdc std::vector<vox::BankXMLDef,vox::SAllocator<vox::BankXMLDef,(vox::VoxMemHint)0>>::_M_erase(vox::BankXMLDef*,vox::BankXMLDef*,std::__false_type const&) =====
_DWORD *__fastcall std::vector<vox::BankXMLDef,vox::SAllocator<vox::BankXMLDef,(vox::VoxMemHint)0>>::_M_erase(
        int a1,
        _DWORD *a2,
        int a3)
{
  _DWORD *v5; // r0
  _DWORD *v6; // r7
  _DWORD *v7; // r8
  _DWORD *v8; // r6
  void *v9; // r2
  void *v10; // r3

  v5 = std::priv::__copy<vox::BankXMLDef *,vox::BankXMLDef *,int>(a3, *(_DWORD *)(a1 + 4), a2);
  v6 = *(_DWORD **)(a1 + 4);
  v7 = v5;
  if ( v6 != v5 )
  {
    v8 = v5;
    do
    {
      v9 = v8 + 4;
      v10 = (void *)v8[9];
      v8 += 10;
      if ( v10 != v9 && v10 )
        VoxFree(v10);
    }
    while ( v6 != v8 );
  }
  *(_DWORD *)(a1 + 4) = v7;
  return a2;
}


// ===== 88c05c std::vector<vox::BankXMLDef,vox::SAllocator<vox::BankXMLDef,(vox::VoxMemHint)0>>::operator=(std::vector<vox::BankXMLDef,vox::SAllocator<vox::BankXMLDef,(vox::VoxMemHint)0>> const&) =====
void ***__fastcall std::vector<vox::BankXMLDef,vox::SAllocator<vox::BankXMLDef,(vox::VoxMemHint)0>>::operator=(
        void ***a1,
        int *a2)
{
  int v4; // r3
  int v5; // r12
  void **v6; // r2
  int v7; // lr
  unsigned int v8; // r6
  void **v9; // r0
  void **v10; // r7
  void **i; // r5
  void *v12; // r2
  void *v13; // r3
  void **v14; // r8
  void **v16; // r0
  void **v17; // r5
  void **v18; // r7
  void **v19; // r3
  int v20; // r3
  int v21; // [sp+8h] [bp-10h] BYREF

  if ( a2 != (int *)a1 )
  {
    v4 = a2[1];
    v5 = *a2;
    v6 = *a1;
    v7 = (v4 - *a2) >> 3;
    v8 = -858993459 * v7;
    if ( -858993459 * v7 > (unsigned int)(-858993459 * (((char *)a1[2] - (char *)*a1) >> 3)) )
    {
      v21 = -858993459 * v7;
      v16 = (void **)std::vector<vox::BankXMLDef,vox::SAllocator<vox::BankXMLDef,(vox::VoxMemHint)0>>::_M_allocate_and_copy<vox::BankXMLDef const*>(
                       (int)a1,
                       &v21,
                       v5,
                       v4);
      v17 = a1[1];
      v18 = *a1;
      v14 = v16;
      if ( v17 != *a1 )
      {
        do
        {
          v17 -= 10;
          v19 = (void **)v17[9];
          if ( v19 != v17 + 4 && v19 )
            VoxFree(v17[9]);
        }
        while ( v18 != v17 );
        v17 = *a1;
      }
      VoxFree(v17);
      v20 = v21;
      *a1 = v14;
      a1[2] = &v14[10 * v20];
    }
    else
    {
      if ( v8 > -858993459 * (((char *)a1[1] - (char *)v6) >> 3) )
      {
        std::priv::__copy<vox::BankXMLDef const*,vox::BankXMLDef*,int>(
          v5,
          v5 + 8 * (((char *)a1[1] - (char *)v6) >> 3),
          v6);
        std::priv::__ucopy<vox::BankXMLDef const*,vox::BankXMLDef*,int>(
          *a2 + 8 * (((char *)a1[1] - (char *)*a1) >> 3),
          a2[1],
          a1[1]);
      }
      else
      {
        v9 = (void **)std::priv::__copy<vox::BankXMLDef const*,vox::BankXMLDef*,int>(v5, v4, v6);
        v10 = a1[1];
        for ( i = v9; v10 != i; i += 10 )
        {
          v12 = i + 4;
          v13 = i[9];
          if ( v13 != v12 && v13 )
            VoxFree(v13);
        }
      }
      v14 = *a1;
    }
    a1[1] = &v14[10 * v8];
  }
  return a1;
}


// ===== 88c228 std::__destroy_range<std::reverse_iterator<vox::GroupXMLDef *>,vox::GroupXMLDef>(std::reverse_iterator<vox::GroupXMLDef *>,std::reverse_iterator<vox::GroupXMLDef *>,vox::GroupXMLDef *) [clone] =====
void __fastcall std::__destroy_range<std::reverse_iterator<vox::GroupXMLDef *>,vox::GroupXMLDef>(int *a1, int *a2)
{
  int v2; // r5
  int v3; // r4
  int v4; // r3
  int v5; // r3

  v2 = *a2;
  v3 = *a1;
  while ( v2 != v3 )
  {
    v3 -= 56;
    v4 = *(_DWORD *)(v3 + 48);
    if ( v4 != v3 + 28 && v4 )
      VoxFree(*(void **)(v3 + 48));
    v5 = *(_DWORD *)(v3 + 24);
    if ( v5 != v3 + 4 )
    {
      if ( v5 )
        VoxFree(*(void **)(v3 + 24));
    }
  }
}


// ===== 88c28c std::vector<vox::GroupXMLDef,vox::SAllocator<vox::GroupXMLDef,(vox::VoxMemHint)0>>::~vector() =====
int __fastcall std::vector<vox::GroupXMLDef,vox::SAllocator<vox::GroupXMLDef,(vox::VoxMemHint)0>>::~vector(int a1)
{
  void *v1; // r3
  int v4; // [sp+0h] [bp-8h] BYREF
  void *v5; // [sp+4h] [bp-4h] BYREF

  v1 = *(void **)a1;
  v4 = *(_DWORD *)(a1 + 4);
  v5 = v1;
  std::__destroy_range<std::reverse_iterator<vox::GroupXMLDef *>,vox::GroupXMLDef>(&v4, (int *)&v5);
  if ( *(_DWORD *)a1 )
    VoxFree(*(void **)a1);
  return a1;
}


// ===== 88c2cc vox::VoxSoundPackXML::~VoxSoundPackXML() =====
void __fastcall vox::VoxSoundPackXML::~VoxSoundPackXML(vox::VoxSoundPackXML *this)
{
  char *v2; // r5
  int v3; // r3

  if ( *((_DWORD *)this + 22) )
  {
    v2 = (char *)this + 72;
    std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::stringcomp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_erase(
      (int)this + 72,
      *((_DWORD *)this + 19));
    *((_DWORD *)this + 22) = 0;
    *((_DWORD *)this + 19) = 0;
    v3 = *((_DWORD *)this + 16);
    *((_DWORD *)this + 21) = v2;
    *((_DWORD *)this + 20) = v2;
    if ( !v3 )
      goto LABEL_3;
LABEL_5:
    std::priv::_Rb_tree<char *,vox::c8stringcomp,std::pair<char * const,int>,std::priv::_Select1st<std::pair<char * const,int>>,std::priv::_MapTraitsT<std::pair<char * const,int>>,vox::SAllocator<std::pair<char const*,int>,(vox::VoxMemHint)0>>::_M_erase(
      (int)this + 48,
      *((_DWORD **)this + 13));
    *((_DWORD *)this + 15) = (char *)this + 48;
    *((_DWORD *)this + 16) = 0;
    *((_DWORD *)this + 14) = (char *)this + 48;
    *((_DWORD *)this + 13) = 0;
    goto LABEL_3;
  }
  if ( *((_DWORD *)this + 16) )
    goto LABEL_5;
LABEL_3:
  std::vector<vox::EventXMLDef,vox::SAllocator<vox::EventXMLDef,(vox::VoxMemHint)0>>::~vector((vox::EventXMLDef **)this + 9);
  std::vector<vox::BankXMLDef,vox::SAllocator<vox::BankXMLDef,(vox::VoxMemHint)0>>::~vector((void ***)this + 6);
  std::vector<vox::GroupXMLDef,vox::SAllocator<vox::GroupXMLDef,(vox::VoxMemHint)0>>::~vector((int)this + 12);
  std::vector<vox::SoundXMLDef,vox::SAllocator<vox::SoundXMLDef,(vox::VoxMemHint)0>>::~vector((vox::SoundXMLDef **)this);
}


// ===== 88c36c vox::VoxSoundPackXML::~VoxSoundPackXML() =====
void __fastcall vox::VoxSoundPackXML::~VoxSoundPackXML(vox::VoxSoundPackXML *this)
{
  char *v2; // r5
  int v3; // r3

  if ( *((_DWORD *)this + 22) )
  {
    v2 = (char *)this + 72;
    std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::stringcomp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_erase(
      (int)this + 72,
      *((_DWORD *)this + 19));
    *((_DWORD *)this + 22) = 0;
    *((_DWORD *)this + 19) = 0;
    v3 = *((_DWORD *)this + 16);
    *((_DWORD *)this + 21) = v2;
    *((_DWORD *)this + 20) = v2;
    if ( !v3 )
      goto LABEL_3;
LABEL_5:
    std::priv::_Rb_tree<char *,vox::c8stringcomp,std::pair<char * const,int>,std::priv::_Select1st<std::pair<char * const,int>>,std::priv::_MapTraitsT<std::pair<char * const,int>>,vox::SAllocator<std::pair<char const*,int>,(vox::VoxMemHint)0>>::_M_erase(
      (int)this + 48,
      *((_DWORD **)this + 13));
    *((_DWORD *)this + 15) = (char *)this + 48;
    *((_DWORD *)this + 16) = 0;
    *((_DWORD *)this + 14) = (char *)this + 48;
    *((_DWORD *)this + 13) = 0;
    goto LABEL_3;
  }
  if ( *((_DWORD *)this + 16) )
    goto LABEL_5;
LABEL_3:
  std::vector<vox::EventXMLDef,vox::SAllocator<vox::EventXMLDef,(vox::VoxMemHint)0>>::~vector((vox::EventXMLDef **)this + 9);
  std::vector<vox::BankXMLDef,vox::SAllocator<vox::BankXMLDef,(vox::VoxMemHint)0>>::~vector((void ***)this + 6);
  std::vector<vox::GroupXMLDef,vox::SAllocator<vox::GroupXMLDef,(vox::VoxMemHint)0>>::~vector((int)this + 12);
  std::vector<vox::SoundXMLDef,vox::SAllocator<vox::SoundXMLDef,(vox::VoxMemHint)0>>::~vector((vox::SoundXMLDef **)this);
}


// ===== 88c40c std::_Destroy_Range<vox::GroupXMLDef *>(vox::GroupXMLDef *,vox::GroupXMLDef *) =====
void __fastcall std::_Destroy_Range<vox::GroupXMLDef *>(int a1, int a2)
{
  int i; // r4
  int v4; // r3
  void *v5; // r2
  void *v6; // r3

  for ( i = a1; a2 != i; i += 56 )
  {
    v4 = *(_DWORD *)(i + 48);
    if ( v4 != i + 28 && v4 )
      VoxFree(*(void **)(i + 48));
    v5 = (void *)(i + 4);
    v6 = *(void **)(i + 24);
    if ( v6 != v5 )
    {
      if ( v6 )
        VoxFree(v6);
    }
  }
}


// ===== 88c470 std::vector<vox::GroupXMLDef,vox::SAllocator<vox::GroupXMLDef,(vox::VoxMemHint)0>>::operator=(std::vector<vox::GroupXMLDef,vox::SAllocator<vox::GroupXMLDef,(vox::VoxMemHint)0>> const&) =====
int __fastcall std::vector<vox::GroupXMLDef,vox::SAllocator<vox::GroupXMLDef,(vox::VoxMemHint)0>>::operator=(
        int a1,
        int *a2)
{
  int v4; // r3
  int v5; // r10
  char *v6; // r7
  int v7; // r5
  int v8; // r8
  int v9; // r1
  int v10; // r6
  int v12; // r9
  int v13; // r8
  int v14; // r10
  int v15; // r6
  int v16; // r8
  int v17; // r6
  char *v18; // r0
  int v19; // r3
  int v20; // r3
  int v21; // [sp+4h] [bp-10h] BYREF
  int v22; // [sp+8h] [bp-Ch] BYREF
  int v23; // [sp+Ch] [bp-8h] BYREF

  if ( a2 != (int *)a1 )
  {
    v4 = a2[1];
    v5 = *a2;
    v6 = *(char **)a1;
    v7 = -1227133513 * ((v4 - *a2) >> 3);
    v8 = v7;
    if ( v7 > (unsigned int)(-1227133513 * ((*(_DWORD *)(a1 + 8) - *(_DWORD *)a1) >> 3)) )
    {
      v23 = -1227133513 * ((v4 - *a2) >> 3);
      v18 = std::vector<vox::GroupXMLDef,vox::SAllocator<vox::GroupXMLDef,(vox::VoxMemHint)0>>::_M_allocate_and_copy<vox::GroupXMLDef const*>(
              a1,
              &v23,
              v5,
              v4);
      v19 = *(_DWORD *)a1;
      v6 = v18;
      v22 = *(_DWORD *)(a1 + 4);
      v21 = v19;
      std::__destroy_range<std::reverse_iterator<vox::GroupXMLDef *>,vox::GroupXMLDef>(&v22, &v21);
      VoxFree(*(void **)a1);
      v20 = v23;
      *(_DWORD *)a1 = v6;
      *(_DWORD *)(a1 + 8) = &v6[56 * v20];
    }
    else
    {
      v9 = *(_DWORD *)(a1 + 4);
      if ( v7 > (unsigned int)(-1227133513 * ((v9 - (int)v6) >> 3)) )
      {
        v12 = v5 + 8 * ((v9 - (int)v6) >> 3);
        v13 = -1227133513 * ((8 * ((v9 - (int)v6) >> 3)) >> 3);
        if ( v13 > 0 )
        {
          v15 = 0;
          do
          {
            vox::GroupXMLDef::operator=(&v6[v15], v5 + v15);
            --v13;
            v15 += 56;
          }
          while ( v13 );
          v6 = *(char **)a1;
          v14 = *(_DWORD *)(a1 + 4);
          v4 = a2[1];
          v12 = *a2 + 8 * ((v14 - *(_DWORD *)a1) >> 3);
        }
        else
        {
          v14 = *(_DWORD *)(a1 + 4);
        }
        v16 = -1227133513 * ((v4 - v12) >> 3);
        if ( v16 > 0 )
        {
          v17 = 0;
          do
          {
            vox::GroupXMLDef::GroupXMLDef((vox::GroupXMLDef *)(v14 + v17), (const vox::GroupXMLDef *)(v12 + v17));
            --v16;
            v17 += 56;
          }
          while ( v16 );
          v6 = *(char **)a1;
        }
      }
      else
      {
        if ( v7 > 0 )
        {
          v10 = 0;
          do
          {
            vox::GroupXMLDef::operator=(&v6[v10], v5 + v10);
            --v8;
            v10 += 56;
          }
          while ( v8 );
          v6 += 56 * v7;
          v9 = *(_DWORD *)(a1 + 4);
        }
        std::_Destroy_Range<vox::GroupXMLDef *>((int)v6, v9);
        v6 = *(char **)a1;
      }
    }
    *(_DWORD *)(a1 + 4) = &v6[56 * v7];
  }
  return a1;
}


// ===== 88c684 std::vector<vox::GroupXMLDef,vox::SAllocator<vox::GroupXMLDef,(vox::VoxMemHint)0>>::vector(uint) =====
vox::GroupXMLDef *__fastcall std::vector<vox::GroupXMLDef,vox::SAllocator<vox::GroupXMLDef,(vox::VoxMemHint)0>>::vector(
        vox::GroupXMLDef *a1,
        int a2)
{
  int v2; // r6
  int v3; // r3
  char *v6; // r0
  _BYTE v8[4]; // [sp+4h] [bp-3Ch] BYREF
  int v9; // [sp+8h] [bp-38h] BYREF
  void *v10; // [sp+1Ch] [bp-24h]
  int v11; // [sp+20h] [bp-20h] BYREF
  void *p; // [sp+34h] [bp-Ch]
  int v13; // [sp+3Ch] [bp-4h]

  v2 = 56 * a2;
  v3 = _stack_chk_guard;
  *(_DWORD *)a1 = 0;
  *((_DWORD *)a1 + 1) = 0;
  *((_DWORD *)a1 + 2) = 0;
  v13 = v3;
  v6 = (char *)VoxAlloc(56 * a2, 0);
  *((_DWORD *)a1 + 2) = &v6[v2];
  *(_DWORD *)a1 = v6;
  *((_DWORD *)a1 + 1) = v6;
  vox::GroupXMLDef::GroupXMLDef((vox::GroupXMLDef *)v8);
  std::vector<vox::GroupXMLDef,vox::SAllocator<vox::GroupXMLDef,(vox::VoxMemHint)0>>::_M_initialize(
    a1,
    a2,
    (vox::GroupXMLDef *)v8);
  if ( p != &v11 && p )
    VoxFree(p);
  if ( v10 != &v9 && v10 )
    VoxFree(v10);
  return a1;
}


// ===== 88c760 std::vector<vox::BankXMLDef,vox::SAllocator<vox::BankXMLDef,(vox::VoxMemHint)0>>::vector(uint) =====
int __fastcall std::vector<vox::BankXMLDef,vox::SAllocator<vox::BankXMLDef,(vox::VoxMemHint)0>>::vector(int a1, int a2)
{
  int v2; // r7
  void *v3; // r3
  char *v5; // r0
  int v6; // r7
  void **v7; // r0
  _DWORD v9[4]; // [sp+14h] [bp-2Ch] BYREF
  void *v10[7]; // [sp+24h] [bp-1Ch] BYREF

  v2 = 40 * a2;
  v3 = (void *)_stack_chk_guard;
  *(_DWORD *)a1 = 0;
  *(_DWORD *)(a1 + 4) = 0;
  *(_DWORD *)(a1 + 8) = 0;
  v10[6] = v3;
  v5 = (char *)VoxAlloc(40 * a2, 0);
  *(_DWORD *)(a1 + 8) = &v5[v2];
  *(_DWORD *)a1 = v5;
  *(_DWORD *)(a1 + 4) = v5;
  v9[1] = 3;
  v9[2] = 0x7FFFFFFF;
  v9[3] = -2147483647;
  v9[0] = 0;
  std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::basic_string(v10, "");
  v6 = *(_DWORD *)a1 + v2;
  std::priv::__ufill<vox::BankXMLDef *,vox::BankXMLDef,int>(*(_BYTE **)a1, v6, (int)v9);
  v7 = (void **)v10[5];
  *(_DWORD *)(a1 + 4) = v6;
  if ( v7 != v10 && v7 )
    VoxFree(v7);
  return a1;
}


// ===== 88c858 std::vector<vox::GroupXMLDef,vox::SAllocator<vox::GroupXMLDef,(vox::VoxMemHint)0>>::_M_erase(vox::GroupXMLDef*,vox::GroupXMLDef*,std::__false_type const&) =====
int __fastcall std::vector<vox::GroupXMLDef,vox::SAllocator<vox::GroupXMLDef,(vox::VoxMemHint)0>>::_M_erase(
        int a1,
        int a2,
        int a3)
{
  int v3; // r4
  int v6; // r3
  int v8; // r10
  int v9; // r10
  int v10; // r6
  int v11; // r4
  int v12; // r6
  int v13; // r3
  void *v14; // r2
  void *v15; // r3

  v3 = *(_DWORD *)(a1 + 4);
  v6 = (v3 - a3) >> 3;
  v8 = -1227133513 * v6;
  if ( -1227133513 * v6 > 0 )
  {
    v10 = -1227133513 * v6;
    v11 = 0;
    do
    {
      vox::GroupXMLDef::operator=((_DWORD *)(a2 + v11), a3 + v11);
      --v10;
      v11 += 56;
    }
    while ( v10 );
    v9 = a2 + 56 * v8;
    v3 = *(_DWORD *)(a1 + 4);
  }
  else
  {
    v9 = a2;
  }
  if ( v3 != v9 )
  {
    v12 = v9;
    do
    {
      v13 = *(_DWORD *)(v12 + 48);
      if ( v13 != v12 + 28 && v13 )
        VoxFree(*(void **)(v12 + 48));
      v14 = (void *)(v12 + 4);
      v15 = *(void **)(v12 + 24);
      v12 += 56;
      if ( v15 != v14 && v15 )
        VoxFree(v15);
    }
    while ( v3 != v12 );
  }
  *(_DWORD *)(a1 + 4) = v9;
  return a2;
}


// ===== 88c928 std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::stringcomp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::insert_unique(std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int> const&) =====
int __fastcall std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::stringcomp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::insert_unique(
        int a1,
        _DWORD *a2,
        int a3)
{
  _DWORD *v3; // r5
  const void *v7; // r7
  int v8; // r11
  int v9; // r10
  _DWORD *v10; // r3
  int v11; // r1
  const void *v12; // r3
  int v13; // r6
  size_t v14; // r2
  int v15; // r0
  _DWORD *v16; // r2
  _DWORD *v17; // r10
  const void *v18; // r0
  signed int v19; // r11
  int v20; // r6
  size_t v21; // r2
  int v22; // r0
  int v24; // r3
  int v25; // r3
  int v26; // r3
  int v27; // [sp+8h] [bp-Ch] BYREF
  int v28; // [sp+Ch] [bp-8h] BYREF

  v3 = (_DWORD *)a2[1];
  if ( !v3 )
  {
    v3 = a2;
    goto LABEL_27;
  }
  v7 = *(const void **)(a3 + 20);
  v8 = *(_DWORD *)(a3 + 16);
  v9 = v8 - (_DWORD)v7;
  while ( 1 )
  {
    v12 = (const void *)v3[9];
    v13 = v3[8] - (_DWORD)v12;
    if ( v13 >= v9 )
      v14 = v8 - (_DWORD)v7;
    else
      v14 = v3[8] - (_DWORD)v12;
    v15 = memcmp(v7, v12, v14);
    v16 = v3;
    if ( !v15 )
    {
      if ( v9 < v13 )
        goto LABEL_3;
      v15 = v9 > v13;
    }
    if ( v15 >= 0 )
      break;
LABEL_3:
    v10 = (_DWORD *)v3[2];
    v11 = 1;
    if ( !v10 )
      goto LABEL_13;
LABEL_4:
    v3 = v10;
  }
  v10 = (_DWORD *)v3[3];
  v11 = 0;
  if ( v10 )
    goto LABEL_4;
LABEL_13:
  if ( !v11 )
  {
    v17 = v3;
    goto LABEL_16;
  }
LABEL_27:
  if ( v3 == (_DWORD *)a2[2] )
  {
    std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::stringcomp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_insert(
      &v28,
      a2,
      v3,
      a3,
      (int)v3,
      0);
    v26 = v28;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v26;
  }
  else
  {
    if ( !*(_BYTE *)v3 && v3 == *(_DWORD **)(v3[1] + 4) )
    {
      v16 = (_DWORD *)v3[3];
      v7 = *(const void **)(a3 + 20);
      v8 = *(_DWORD *)(a3 + 16);
      v17 = v16;
    }
    else
    {
      v16 = (_DWORD *)v3[2];
      if ( v16 )
      {
        while ( v16[3] )
          v16 = (_DWORD *)v16[3];
LABEL_34:
        v17 = v16;
        v7 = *(const void **)(a3 + 20);
        v8 = *(_DWORD *)(a3 + 16);
      }
      else
      {
        v25 = v3[1];
        if ( v3 != *(_DWORD **)(v25 + 8) )
        {
          v16 = (_DWORD *)v3[1];
          goto LABEL_34;
        }
        while ( 1 )
        {
          v16 = *(_DWORD **)(v25 + 4);
          if ( v16[2] != v25 )
            break;
          v25 = *(_DWORD *)(v25 + 4);
        }
        v7 = *(const void **)(a3 + 20);
        v8 = *(_DWORD *)(a3 + 16);
        v17 = *(_DWORD **)(v25 + 4);
      }
    }
LABEL_16:
    v18 = (const void *)v16[9];
    v19 = v8 - (_DWORD)v7;
    v20 = v16[8] - (_DWORD)v18;
    if ( v19 >= v20 )
      v21 = v16[8] - (_DWORD)v18;
    else
      v21 = v19;
    v22 = memcmp(v18, v7, v21);
    if ( v22 )
    {
LABEL_22:
      if ( v22 < 0 )
        goto LABEL_35;
      *(_DWORD *)a1 = v17;
      *(_BYTE *)(a1 + 4) = 0;
    }
    else
    {
      if ( v20 >= v19 )
      {
        v22 = v20 > v19;
        goto LABEL_22;
      }
LABEL_35:
      std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::stringcomp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_insert(
        &v27,
        a2,
        v3,
        a3,
        0,
        0);
      v24 = v27;
      *(_BYTE *)(a1 + 4) = 1;
      *(_DWORD *)a1 = v24;
    }
  }
  return a1;
}


// ===== 88cb40 std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::stringcomp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_find<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>>(std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::stringcomp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_find<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>>(
        _DWORD *a1,
        int a2)
{
  _DWORD *v2; // r4
  _DWORD *v4; // r9
  const void *v5; // r7
  _DWORD *v6; // r8
  signed int v7; // r6
  const void *v8; // r3
  int v9; // r5
  size_t v10; // r2
  int v11; // r0
  const void *v12; // r3
  int v13; // r4
  size_t v14; // r2
  int v15; // r0

  v2 = (_DWORD *)a1[1];
  v4 = a1;
  if ( !v2 )
    return v4;
  v5 = *(const void **)(a2 + 20);
  v6 = a1;
  v7 = *(_DWORD *)(a2 + 16) - (_DWORD)v5;
  do
  {
    while ( 1 )
    {
      v8 = (const void *)v2[9];
      v9 = v2[8] - (_DWORD)v8;
      v10 = v7 >= v9 ? v2[8] - (_DWORD)v8 : v7;
      v11 = memcmp(v8, v5, v10);
      if ( v11 )
        break;
      if ( v9 < v7 )
        goto LABEL_10;
LABEL_4:
      v6 = v2;
      v2 = (_DWORD *)v2[2];
      if ( !v2 )
        goto LABEL_11;
    }
    if ( v11 >= 0 )
      goto LABEL_4;
LABEL_10:
    v2 = (_DWORD *)v2[3];
  }
  while ( v2 );
LABEL_11:
  if ( v6 == a1 )
    return v6;
  v12 = (const void *)v6[9];
  v13 = v6[8] - (_DWORD)v12;
  if ( v13 >= v7 )
    v14 = v7;
  else
    v14 = v6[8] - (_DWORD)v12;
  v15 = memcmp(v5, v12, v14);
  if ( v15 )
  {
    if ( v15 >= 0 )
      return v6;
  }
  else if ( v7 >= v13 )
  {
    return v6;
  }
  return v4;
}


// ===== 88cc14 vox::VoxSoundPackXML::GetGroupMask(char const*,int &) =====
void __fastcall vox::VoxSoundPackXML::GetGroupMask(vox::VoxSoundPackXML *this, char *a2, int *a3)
{
  _DWORD *v3; // r7
  int v5; // r3
  _DWORD *v6; // r10
  _DWORD v7[5]; // [sp+4h] [bp-20h] BYREF
  void *p; // [sp+18h] [bp-Ch]

  v3 = (_DWORD *)((char *)this + 72);
  std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::basic_string(v7, a2);
  v6 = std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::stringcomp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_find<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>>(
         v3,
         (int)v7);
  if ( p != v7 && p )
    VoxFree(p);
  if ( v6 == v3 )
    *a3 = 0;
  else
    v5 = v6[10];
  if ( v6 != v3 )
    *a3 = v5;
}


// ===== 88ccb4 std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::stringcomp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>>,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int> const&) =====
int *__fastcall std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::stringcomp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::insert_unique(
        int *a1,
        _DWORD *a2,
        int *a3,
        int a4)
{
  _DWORD *v4; // r5
  _DWORD *v8; // r4
  const void *v9; // r3
  const void *v10; // r9
  signed int v11; // r11
  signed int v12; // r2
  int v13; // r0
  const void *v14; // r3
  unsigned int v15; // r12
  _DWORD *v16; // r4
  int v17; // r0
  const void *v18; // r2
  const void *v19; // r0
  signed int v20; // r10
  size_t v21; // r2
  int v22; // r0
  int v23; // r12
  const void *v25; // r3
  const void *v26; // r1
  int v27; // r4
  int v28; // r10
  size_t v29; // r2
  int v30; // r0
  int v31; // r12
  int v32; // r3
  int v33; // r4
  const void *v34; // r1
  int v35; // r9
  int v36; // r3
  signed int v37; // r9
  signed int v38; // r10
  size_t v39; // r2
  int v40; // r0
  int v41; // r2
  void *v42; // [sp+Ch] [bp-38h]
  unsigned int v43; // [sp+10h] [bp-34h]
  signed int v45; // [sp+18h] [bp-2Ch]
  size_t v46; // [sp+1Ch] [bp-28h]
  int v47; // [sp+20h] [bp-24h] BYREF
  int v48; // [sp+28h] [bp-1Ch] BYREF
  int v49; // [sp+30h] [bp-14h] BYREF
  int v50[3]; // [sp+38h] [bp-Ch] BYREF

  v4 = (_DWORD *)*a3;
  if ( *a3 == a2[2] )
  {
    if ( !a2[4] )
    {
      std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::stringcomp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::insert_unique(
        (int)v50,
        a2,
        a4);
      *a1 = v50[0];
      return a1;
    }
    v25 = *(const void **)(a4 + 20);
    v26 = (const void *)v4[9];
    v27 = *(_DWORD *)(a4 + 16) - (_DWORD)v25;
    v28 = v4[8] - (_DWORD)v26;
    if ( v28 >= v27 )
      v29 = *(_DWORD *)(a4 + 16) - (_DWORD)v25;
    else
      v29 = v4[8] - (_DWORD)v26;
    v30 = memcmp(v25, v26, v29);
    if ( !v30 )
    {
      if ( v27 < v28 )
        goto LABEL_37;
      v30 = v27 > v28;
    }
    if ( v30 >= 0 )
    {
      if ( !vox::stringcomp::operator()((int)(a2 + 5), (int)(v4 + 4), a4) )
      {
        *a1 = *a3;
        return a1;
      }
      v31 = *a3;
      v16 = *(_DWORD **)(*a3 + 12);
      if ( v16 )
      {
        while ( v16[2] )
          v16 = (_DWORD *)v16[2];
      }
      else
      {
        v32 = *(_DWORD *)(v31 + 4);
        if ( v31 == *(_DWORD *)(v32 + 12) )
        {
          do
          {
            v16 = (_DWORD *)v32;
            v32 = *(_DWORD *)(v32 + 4);
          }
          while ( *(_DWORD **)(v32 + 12) == v16 );
        }
        else
        {
          v16 = (_DWORD *)*a3;
        }
        if ( v32 != v16[3] )
          v16 = (_DWORD *)v32;
      }
      if ( a2 == v16 )
        goto LABEL_93;
      if ( !vox::stringcomp::operator()((int)(a2 + 5), a4, (int)(v16 + 4)) )
      {
        std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::stringcomp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::insert_unique(
          (int)&v49,
          a2,
          a4);
        *a1 = v49;
        return a1;
      }
      v31 = *a3;
      if ( !*(_DWORD *)(*a3 + 12) )
      {
LABEL_93:
        std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::stringcomp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_insert(
          a1,
          a2,
          (_DWORD *)*a3,
          a4,
          0,
          v31);
        return a1;
      }
      goto LABEL_61;
    }
    goto LABEL_37;
  }
  if ( v4 == a2 )
  {
    v33 = v4[3];
    v34 = *(const void **)(a4 + 20);
    v35 = *(_DWORD *)(a4 + 16);
    v36 = *(_DWORD *)(v33 + 36);
    v37 = v35 - (_DWORD)v34;
    v38 = *(_DWORD *)(v33 + 32) - v36;
    if ( v37 >= v38 )
      v39 = *(_DWORD *)(v33 + 32) - v36;
    else
      v39 = v37;
    v40 = memcmp(*(const void **)(v33 + 36), v34, v39);
    if ( !v40 )
    {
      if ( v38 < v37 )
      {
LABEL_76:
        std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::stringcomp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_insert(
          a1,
          a2,
          (_DWORD *)v33,
          a4,
          0,
          (int)v4);
        return a1;
      }
      v40 = v38 > v37;
    }
    if ( v40 >= 0 )
    {
      std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::stringcomp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::insert_unique(
        (int)&v48,
        a2,
        a4);
      *a1 = v48;
      return a1;
    }
    goto LABEL_76;
  }
  if ( !*(_BYTE *)v4 )
  {
    if ( v4 == *(_DWORD **)(v4[1] + 4) )
    {
      v8 = (_DWORD *)v4[3];
      goto LABEL_8;
    }
    v8 = (_DWORD *)v4[2];
    if ( !v8 )
      goto LABEL_26;
LABEL_7:
    while ( v8[3] )
      v8 = (_DWORD *)v8[3];
    goto LABEL_8;
  }
  v8 = (_DWORD *)v4[2];
  if ( v8 )
    goto LABEL_7;
LABEL_26:
  v8 = (_DWORD *)v4[1];
  if ( v4 == (_DWORD *)v8[2] )
  {
    while ( *(_DWORD **)(v8[1] + 8) == v8 )
      v8 = (_DWORD *)v8[1];
    v8 = (_DWORD *)v8[1];
  }
LABEL_8:
  v9 = (const void *)v4[9];
  v10 = *(const void **)(a4 + 20);
  v11 = *(_DWORD *)(a4 + 16) - (_DWORD)v10;
  v12 = v4[8] - (_DWORD)v9;
  v45 = v12;
  if ( v12 >= v11 )
    v12 = *(_DWORD *)(a4 + 16) - (_DWORD)v10;
  v42 = (void *)v4[9];
  v46 = v12;
  v13 = memcmp(*(const void **)(a4 + 20), v9, v12);
  v14 = v42;
  if ( !v13 )
  {
    if ( v11 >= v45 )
      v13 = v11 > v45;
    else
      v13 = -1;
  }
  v15 = (unsigned int)v13 >> 31;
  if ( v13 < 0 )
  {
    v18 = (const void *)v8[9];
    v19 = v18;
    v20 = v8[8] - (_DWORD)v18;
    if ( v11 >= v20 )
      v21 = v8[8] - (_DWORD)v18;
    else
      v21 = v11;
    v43 = v15;
    v22 = memcmp(v19, v10, v21);
    v14 = v42;
    v15 = v43;
    if ( !v22 )
    {
      if ( v11 <= v20 )
        goto LABEL_15;
      v23 = v8[3];
      if ( v23 )
        goto LABEL_37;
LABEL_65:
      std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::stringcomp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_insert(
        a1,
        a2,
        v8,
        a4,
        v23,
        (int)v8);
      return a1;
    }
    if ( v22 >= 0 )
      goto LABEL_15;
    v23 = v8[3];
    if ( !v23 )
      goto LABEL_65;
LABEL_37:
    std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::stringcomp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_insert(
      a1,
      a2,
      v4,
      a4,
      (int)v4,
      0);
    return a1;
  }
LABEL_15:
  v16 = (_DWORD *)v4[3];
  if ( v16 )
  {
    while ( v16[2] )
      v16 = (_DWORD *)v16[2];
  }
  else
  {
    v41 = v4[1];
    if ( v4 == *(_DWORD **)(v41 + 12) )
    {
      while ( *(_DWORD *)(*(_DWORD *)(v41 + 4) + 12) == v41 )
        v41 = *(_DWORD *)(v41 + 4);
      v16 = (_DWORD *)v41;
      v41 = *(_DWORD *)(v41 + 4);
    }
    else
    {
      v16 = v4;
    }
    if ( v41 != v16[3] )
      v16 = (_DWORD *)v41;
  }
  if ( v15 )
    goto LABEL_41;
  v17 = memcmp(v14, v10, v46);
  if ( v17 )
  {
    if ( v17 >= 0 )
      goto LABEL_22;
    goto LABEL_39;
  }
  if ( v11 > v45 )
  {
LABEL_39:
    if ( a2 != v16 )
    {
      if ( !vox::stringcomp::operator()((int)(a2 + 5), a4, (int)(v16 + 4)) )
      {
LABEL_41:
        std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::stringcomp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::insert_unique(
          (int)&v47,
          a2,
          a4);
        *a1 = v47;
        return a1;
      }
      v4 = (_DWORD *)*a3;
    }
    if ( !v4[3] )
    {
      std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::stringcomp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_insert(
        a1,
        a2,
        v4,
        a4,
        0,
        (int)v4);
      return a1;
    }
LABEL_61:
    std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::stringcomp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      (int)v16,
      0);
    return a1;
  }
LABEL_22:
  *a1 = (int)v4;
  return a1;
}


// ===== 88d1b8 std::map<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,int,vox::stringcomp,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::operator[]<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>>(std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const&) =====
_DWORD *__fastcall std::map<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,int,vox::stringcomp,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::operator[]<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>>(
        _DWORD *a1,
        int a2)
{
  _DWORD *v2; // r4
  _BYTE *v4; // r11
  _BYTE *v5; // r10
  _DWORD *v6; // r8
  int v7; // r7
  const void *v8; // r3
  int v9; // r6
  size_t v10; // r2
  int v11; // r0
  _DWORD *v12; // r3
  const void *v13; // r3
  int v14; // r7
  size_t v15; // r2
  int v16; // r0
  bool v17; // zf
  bool v18; // nf
  _DWORD *v19; // r0
  int v20; // r4
  _DWORD *v22; // [sp+8h] [bp-2Ch] BYREF
  int v23; // [sp+Ch] [bp-28h] BYREF
  void *v24[5]; // [sp+10h] [bp-24h] BYREF
  void *p; // [sp+24h] [bp-10h]
  int v26; // [sp+28h] [bp-Ch]

  v2 = (_DWORD *)a1[1];
  if ( v2 )
  {
    v4 = *(_BYTE **)(a2 + 16);
    v5 = *(_BYTE **)(a2 + 20);
    v6 = a1;
    v7 = v4 - v5;
    while ( 1 )
    {
      v8 = (const void *)v2[9];
      v9 = v2[8] - (_DWORD)v8;
      if ( v7 >= v9 )
        v10 = v2[8] - (_DWORD)v8;
      else
        v10 = v4 - v5;
      v11 = memcmp(v8, v5, v10);
      if ( v11 )
      {
        if ( v11 >= 0 )
        {
LABEL_8:
          v12 = (_DWORD *)v2[2];
          if ( !v12 )
            goto LABEL_12;
          goto LABEL_9;
        }
      }
      else if ( v9 >= v7 )
      {
        goto LABEL_8;
      }
      v12 = (_DWORD *)v2[3];
      v2 = v6;
      if ( !v12 )
        goto LABEL_12;
LABEL_9:
      v6 = v2;
      v2 = v12;
    }
  }
  v4 = *(_BYTE **)(a2 + 16);
  v5 = *(_BYTE **)(a2 + 20);
  v2 = a1;
LABEL_12:
  if ( a1 != v2 )
  {
    v13 = (const void *)v2[9];
    v14 = v2[8] - (_DWORD)v13;
    if ( v14 >= v4 - v5 )
      v15 = v4 - v5;
    else
      v15 = v2[8] - (_DWORD)v13;
    v16 = memcmp(v5, v13, v15);
    v17 = v16 == 0;
    v18 = v16 < 0;
    v19 = v2;
    if ( v17 )
    {
      if ( v4 - v5 >= v14 )
        return v19 + 10;
    }
    else if ( !v18 )
    {
      return v19 + 10;
    }
  }
  v24[4] = v24;
  p = v24;
  std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_range_initialize(
    v24,
    v5,
    v4);
  v22 = v2;
  v26 = 0;
  std::priv::_Rb_tree<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,vox::stringcomp,std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,std::priv::_Select1st<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,std::priv::_MapTraitsT<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>>,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::insert_unique(
    &v23,
    a1,
    (int *)&v22,
    (int)v24);
  v20 = v23;
  if ( p != v24 && p )
    VoxFree(p);
  v19 = (_DWORD *)v20;
  return v19 + 10;
}


// ===== 88d344 vox::VoxSoundPackXML::LoadXML(char const*) =====
int __fastcall vox::VoxSoundPackXML::LoadXML(vox::VoxSoundPackXML *this, const char *a2)
{
  int v2; // r2
  vox::VoxSoundPackXML *v3; // r4
  int v5; // r1
  int v6; // r2
  _DWORD *v7; // r1
  int v8; // r2
  vox::EventXMLDef *v9; // r1
  int v10; // r2
  int Instance; // r0
  int v12; // r6
  int v13; // r0
  int v14; // r5
  int v15; // r8
  int v16; // r8
  TiXmlElement *v18; // r0
  TiXmlNode *i; // r5
  _BYTE *v20; // r0
  const char *v21; // r0
  const char *v22; // r10
  int v23; // r9
  size_t v24; // r0
  char *v25; // r0
  const char *v26; // r0
  const char *v27; // r7
  const char *v28; // r0
  const char *v29; // r7
  const char *v30; // r0
  const char *v31; // r10
  int v32; // r9
  size_t v33; // r0
  char *v34; // r0
  float v35; // r0
  float v36; // r0
  float v37; // r0
  float v38; // r0
  float v39; // r0
  float v40; // r0
  float v41; // r0
  float v42; // r0
  float v43; // r0
  const char *v44; // r7
  int v45; // r9
  int v46; // r0
  int v47; // r3
  void **v48; // r10
  size_t v49; // r0
  int v50; // r3
  char *v51; // r0
  int v52; // r10
  int v53; // r7
  int v54; // r9
  char *v55; // r0
  _DWORD *v56; // r0
  TiXmlElement *v57; // r0
  TiXmlNode *j; // r5
  int v59; // r2
  const char *v60; // r0
  _DWORD *v61; // r7
  size_t v62; // r0
  char *v63; // r1
  const char *v64; // r0
  _DWORD *v65; // r7
  size_t v66; // r0
  char *v67; // r1
  char *v68; // r0
  int v69; // r3
  int v70; // r3
  TiXmlNode *m; // r5
  int v72; // r10
  size_t v73; // r0
  int v74; // r3
  char *v75; // r0
  int v76; // r7
  int v77; // r3
  int v78; // r9
  _BYTE *v79; // r3
  TiXmlElement *SiblingElement; // r5
  _DWORD *v81; // r11
  vox::VoxSoundPackXML *v82; // r6
  char *v83; // r4
  _DWORD *v84; // r0
  TiXmlElement *v85; // r0
  TiXmlNode *k; // r5
  const char *v87; // r0
  _DWORD *v88; // r6
  size_t v89; // r0
  char *v90; // r1
  const char *v91; // r0
  const char *v92; // r6
  TiXmlElement *v93; // r0
  const char *v94; // r0
  const char *v95; // r8
  int v96; // r10
  size_t v97; // r0
  char *v98; // r0
  const char *v99; // r0
  const char *v100; // r7
  char *v101; // r0
  char *n; // r0
  int v103; // r10
  int v104; // r0
  int *v105; // r1
  char *v106; // r0
  char *v107; // r0
  int v108; // r0
  int v109; // r3
  int v110; // r2
  char *v111; // r0
  int v112; // r0
  const char *v113; // r7
  int v114; // r8
  int v115; // r3
  void **v116; // r8
  size_t v117; // r0
  int v118; // r3
  char *v119; // r0
  int v120; // r8
  int v121; // r7
  int v122; // r10
  char *v123; // r0
  int v124; // r10
  _BYTE *v125; // r3
  char *v126; // [sp+0h] [bp-204h]
  char *v127; // [sp+0h] [bp-204h]
  char *v128; // [sp+0h] [bp-204h]
  void ***v129; // [sp+Ch] [bp-1F8h]
  vox::EventXMLDef **v130; // [sp+1Ch] [bp-1E8h]
  unsigned __int8 *p; // [sp+28h] [bp-1DCh]
  vox::EventXMLDef *v132[3]; // [sp+88h] [bp-17Ch] BYREF
  void **v133[3]; // [sp+94h] [bp-170h] BYREF
  int v134[3]; // [sp+A0h] [bp-164h] BYREF
  vox::SoundXMLDef *v135[3]; // [sp+ACh] [bp-158h] BYREF
  double v136; // [sp+B8h] [bp-14Ch] BYREF
  int v137; // [sp+C4h] [bp-140h] BYREF
  int v138; // [sp+C8h] [bp-13Ch] BYREF
  _BYTE v139[4]; // [sp+CCh] [bp-138h] BYREF
  char v140[4]; // [sp+D0h] [bp-134h] BYREF
  char v141[4]; // [sp+D4h] [bp-130h] BYREF
  char v142[4]; // [sp+D8h] [bp-12Ch] BYREF
  int v143; // [sp+DCh] [bp-128h] BYREF
  _BYTE v144[4]; // [sp+E0h] [bp-124h] BYREF
  char v145[4]; // [sp+E4h] [bp-120h] BYREF
  char v146[4]; // [sp+E8h] [bp-11Ch] BYREF
  int v147; // [sp+ECh] [bp-118h] BYREF
  _BYTE v148[4]; // [sp+F0h] [bp-114h] BYREF
  char v149[4]; // [sp+F4h] [bp-110h] BYREF
  char v150[4]; // [sp+F8h] [bp-10Ch] BYREF
  char v151[4]; // [sp+FCh] [bp-108h] BYREF
  int v152; // [sp+100h] [bp-104h] BYREF
  _BYTE v153[4]; // [sp+104h] [bp-100h] BYREF
  char v154[4]; // [sp+108h] [bp-FCh] BYREF
  char v155[4]; // [sp+10Ch] [bp-F8h] BYREF
  _BYTE v156[4]; // [sp+110h] [bp-F4h] BYREF
  char v157[4]; // [sp+114h] [bp-F0h] BYREF
  char v158[4]; // [sp+118h] [bp-ECh] BYREF
  char v159[4]; // [sp+11Ch] [bp-E8h] BYREF
  _BYTE v160[4]; // [sp+120h] [bp-E4h] BYREF
  char v161[4]; // [sp+124h] [bp-E0h] BYREF
  char v162[4]; // [sp+128h] [bp-DCh] BYREF
  char v163[4]; // [sp+12Ch] [bp-D8h] BYREF
  int v164; // [sp+130h] [bp-D4h] BYREF
  _BYTE v165[4]; // [sp+134h] [bp-D0h] BYREF
  char v166[4]; // [sp+138h] [bp-CCh] BYREF
  char v167[4]; // [sp+13Ch] [bp-C8h] BYREF
  _BYTE v168[4]; // [sp+140h] [bp-C4h] BYREF
  char v169[4]; // [sp+144h] [bp-C0h] BYREF
  char v170[4]; // [sp+148h] [bp-BCh] BYREF
  char v171[4]; // [sp+14Ch] [bp-B8h] BYREF
  int v172; // [sp+150h] [bp-B4h] BYREF
  _BYTE v173[4]; // [sp+154h] [bp-B0h] BYREF
  char v174[4]; // [sp+158h] [bp-ACh] BYREF
  char v175[4]; // [sp+15Ch] [bp-A8h] BYREF
  _DWORD v176[16]; // [sp+174h] [bp-90h] BYREF
  char v177; // [sp+1B4h] [bp-50h]
  std::priv::_String_base<char,std::allocator<char> > v178; // [sp+1BCh] [bp-48h] BYREF
  _DWORD v179[5]; // [sp+1E4h] [bp-20h] BYREF
  void *v180; // [sp+1F8h] [bp-Ch]

  v2 = *((_DWORD *)this + 1);
  v3 = this;
  if ( *(_DWORD *)this != v2 )
    this = std::vector<vox::SoundXMLDef,vox::SAllocator<vox::SoundXMLDef,(vox::VoxMemHint)0>>::_M_erase(
             (int)this,
             *(vox::SoundXMLDef **)this,
             v2);
  v5 = *((_DWORD *)v3 + 3);
  v6 = *((_DWORD *)v3 + 4);
  if ( v5 != v6 )
    this = (vox::VoxSoundPackXML *)std::vector<vox::GroupXMLDef,vox::SAllocator<vox::GroupXMLDef,(vox::VoxMemHint)0>>::_M_erase(
                                     (int)v3 + 12,
                                     v5,
                                     v6);
  v7 = *((_DWORD **)v3 + 6);
  v8 = *((_DWORD *)v3 + 7);
  v129 = (void ***)((char *)v3 + 24);
  if ( v7 != (_DWORD *)v8 )
    this = (vox::VoxSoundPackXML *)std::vector<vox::BankXMLDef,vox::SAllocator<vox::BankXMLDef,(vox::VoxMemHint)0>>::_M_erase(
                                     (int)v3 + 24,
                                     v7,
                                     v8);
  v9 = *((vox::EventXMLDef **)v3 + 9);
  v10 = *((_DWORD *)v3 + 10);
  v130 = (vox::EventXMLDef **)((char *)v3 + 36);
  if ( v9 != (vox::EventXMLDef *)v10 )
    this = std::vector<vox::EventXMLDef,vox::SAllocator<vox::EventXMLDef,(vox::VoxMemHint)0>>::_M_erase(
             (int)v3 + 36,
             v9,
             v10);
  if ( *((_DWORD *)v3 + 16) )
  {
    std::priv::_Rb_tree<char *,vox::c8stringcomp,std::pair<char * const,int>,std::priv::_Select1st<std::pair<char * const,int>>,std::priv::_MapTraitsT<std::pair<char * const,int>>,vox::SAllocator<std::pair<char const*,int>,(vox::VoxMemHint)0>>::_M_erase(
      (int)v3 + 48,
      *((_DWORD **)v3 + 13));
    *((_DWORD *)v3 + 15) = (char *)v3 + 48;
    *((_DWORD *)v3 + 16) = 0;
    *((_DWORD *)v3 + 14) = (char *)v3 + 48;
    *((_DWORD *)v3 + 13) = 0;
  }
  Instance = vox::FileSystemInterface::GetInstance(this);
  v12 = Instance;
  if ( !Instance )
    return 0;
  v13 = (*(int (__fastcall **)(int, const char *, int))(*(_DWORD *)Instance + 8))(Instance, a2, 6);
  v14 = v13;
  if ( !v13 )
    return 0;
  (*(void (__fastcall **)(int, _DWORD, int))(*(_DWORD *)v13 + 12))(v13, 0, 2);
  v15 = (*(int (__fastcall **)(int))(*(_DWORD *)v14 + 16))(v14);
  (*(void (__fastcall **)(int, _DWORD, _DWORD))(*(_DWORD *)v14 + 12))(v14, 0, 0);
  p = (unsigned __int8 *)VoxAlloc(v15 + 1);
  if ( p )
  {
    p[v15] = 0;
    v16 = (*(int (__fastcall **)(int, unsigned __int8 *, int, int))(*(_DWORD *)v14 + 8))(v14, p, v15, 1);
    (*(void (__fastcall **)(int, int))(*(_DWORD *)v12 + 12))(v12, v14);
    if ( v16 == 1 )
    {
      TiXmlDocument::TiXmlDocument((TiXmlDocument *)v176);
      TiXmlDocument::Parse((int)v176, p, nullptr, 0);
      if ( !v177 )
      {
        *(_DWORD *)v175 = v176;
        TiXmlHandle::FirstChild((TiXmlHandle *)v174, v175, "soundpack");
        TiXmlHandle::FirstChild((TiXmlHandle *)v173, v174, "sounds");
        v18 = (TiXmlElement *)TiXmlHandle::ToElement((TiXmlHandle *)v173);
        TiXmlElement::QueryIntAttribute(v18, "size", &v172);
        std::vector<vox::SoundXMLDef,vox::SAllocator<vox::SoundXMLDef,(vox::VoxMemHint)0>>::vector(v135, v172);
        std::vector<vox::SoundXMLDef,vox::SAllocator<vox::SoundXMLDef,(vox::VoxMemHint)0>>::operator=(
          (vox::SoundXMLDef **)v3,
          (int *)v135);
        std::vector<vox::SoundXMLDef,vox::SAllocator<vox::SoundXMLDef,(vox::VoxMemHint)0>>::~vector(v135);
        *(_DWORD *)v171 = v176;
        TiXmlHandle::FirstChild((TiXmlHandle *)v170, v171, "soundpack");
        TiXmlHandle::FirstChild((TiXmlHandle *)v169, v170, "sounds");
        TiXmlHandle::FirstChild((TiXmlHandle *)v168, v169, "sound");
        for ( i = (TiXmlNode *)TiXmlHandle::ToElement((TiXmlHandle *)v168);
              i;
              i = (TiXmlNode *)TiXmlNode::NextSiblingElement(i) )
        {
          if ( !TiXmlElement::QueryIntAttribute(i, "uid", &v138) )
            *(_DWORD *)(*(_DWORD *)v3 + 68 * v138) = v138;
          if ( !TiXmlElement::QueryIntAttribute(i, "bank", &v147) )
            *(_BYTE *)(*(_DWORD *)v3 + 68 * v138 + 21) = v147;
          if ( !TiXmlElement::QueryIntAttribute(i, "group", &v147) )
            *(_BYTE *)(*(_DWORD *)v3 + 68 * v138 + 22) = v147;
          if ( !TiXmlElement::QueryIntAttribute(i, "priority", &v147) )
            *(_DWORD *)(*(_DWORD *)v3 + 68 * v138 + 4) = v147;
          v20 = (_BYTE *)TiXmlElement::Attribute(i, "loop");
          if ( v20 )
            *(_BYTE *)(*(_DWORD *)v3 + 68 * v138 + 23) = *v20 == 121;
          v21 = (const char *)TiXmlElement::Attribute(i, "label");
          v22 = v21;
          if ( v21 )
          {
            v23 = *(_DWORD *)v3 + 68 * v138;
            v24 = LC_API_STRLEN_0(v21);
            *(_DWORD *)(v23 + 8) = VoxAlloc(v24 + 1);
            v25 = *(char **)(*(_DWORD *)v3 + 68 * v138 + 8);
            if ( v25 )
              LC_API_STRCPY_0(v25, v22);
          }
          else
          {
            v78 = *(_DWORD *)v3 + 68 * v138;
            *(_DWORD *)(v78 + 8) = VoxAlloc(1u);
            v79 = *(_BYTE **)(*(_DWORD *)v3 + 68 * v138 + 8);
            if ( v79 )
              *v79 = 0;
          }
          v26 = (const char *)TiXmlElement::Attribute(i, "format");
          v27 = v26;
          if ( v26 )
          {
            if ( LC_API_STRCMP_0(v26, "pcm") && LC_API_STRCMP_0(v27, "adpcm") )
            {
              if ( LC_API_STRCMP_0(v27, "mpc8") && LC_API_STRCMP_0(v27, "mpc") )
              {
                if ( LC_API_STRCMP_0(v27, "ogg") )
                {
                  if ( !LC_API_STRCMP_0(v27, "vxn") )
                    *(_BYTE *)(*(_DWORD *)v3 + 68 * v138 + 20) = 4;
                }
                else
                {
                  *(_BYTE *)(*(_DWORD *)v3 + 68 * v138 + 20) = 2;
                }
              }
              else
              {
                *(_BYTE *)(*(_DWORD *)v3 + 68 * v138 + 20) = 3;
              }
            }
            else
            {
              *(_BYTE *)(*(_DWORD *)v3 + 68 * v138 + 20) = 1;
            }
          }
          v28 = (const char *)TiXmlElement::Attribute(i, "loadingflags");
          v29 = v28;
          if ( v28 )
          {
            if ( LC_API_STRCMP_0(v28, "none") )
            {
              if ( LC_API_STRCMP_0(v29, "load to ram") )
              {
                if ( !LC_API_STRCMP_0(v29, "load and decode") )
                  *(_DWORD *)(*(_DWORD *)v3 + 68 * v138 + 16) = 2;
              }
              else
              {
                *(_DWORD *)(*(_DWORD *)v3 + 68 * v138 + 16) = 1;
              }
            }
            else
            {
              *(_DWORD *)(*(_DWORD *)v3 + 68 * v138 + 16) = 0;
            }
          }
          v30 = (const char *)TiXmlElement::Attribute(i, "filename");
          v31 = v30;
          if ( v30 )
          {
            v32 = *(_DWORD *)v3 + 68 * v138;
            v33 = LC_API_STRLEN_0(v30);
            *(_DWORD *)(v32 + 12) = VoxAlloc(v33 + 1);
            v34 = *(char **)(*(_DWORD *)v3 + 68 * v138 + 12);
            if ( v34 )
              LC_API_STRCPY_0(v34, v31);
          }
          else
          {
            v72 = *(_DWORD *)v3 + 68 * v138;
            if ( *(char *)(v72 + 20) != -1 )
            {
              v73 = LC_API_STRLEN_0(*(const char **)(v72 + 8));
              *(_DWORD *)(v72 + 12) = VoxAlloc(v73 + 5);
              v74 = *(_DWORD *)v3 + 68 * v138;
              v75 = *(char **)(v74 + 12);
              if ( v75 )
              {
                LC_API_STRCPY_0(v75, *(const char **)(v74 + 8));
                v76 = *(_DWORD *)v3 + 68 * v138;
                v77 = *(char *)(v76 + 20);
                switch ( v77 )
                {
                  case 1:
                    strcpy((char *)(*(_DWORD *)(v76 + 12) + LC_API_STRLEN_0(*(const char **)(v76 + 12))), ".wav");
                    break;
                  case 3:
                    strcpy((char *)(*(_DWORD *)(v76 + 12) + LC_API_STRLEN_0(*(const char **)(v76 + 12))), ".mpc");
                    break;
                  case 2:
                    strcpy((char *)(*(_DWORD *)(v76 + 12) + LC_API_STRLEN_0(*(const char **)(v76 + 12))), ".ogg");
                    break;
                  case 4:
                    strcpy((char *)(*(_DWORD *)(v76 + 12) + LC_API_STRLEN_0(*(const char **)(v76 + 12))), ".vxn");
                    break;
                }
              }
            }
          }
          if ( !TiXmlElement::QueryDoubleAttribute(i, "refdistance", &v136) )
          {
            v35 = v136;
            *(float *)(*(_DWORD *)v3 + 68 * v138 + 24) = v35;
          }
          if ( !TiXmlElement::QueryDoubleAttribute(i, "maxdistance", &v136) )
          {
            v36 = v136;
            *(float *)(*(_DWORD *)v3 + 68 * v138 + 28) = v36;
          }
          if ( !TiXmlElement::QueryDoubleAttribute(i, "rolloff", &v136) )
          {
            v37 = v136;
            *(float *)(*(_DWORD *)v3 + 68 * v138 + 32) = v37;
          }
          if ( !TiXmlElement::QueryDoubleAttribute(i, "basegain", &v136) )
          {
            v38 = v136;
            *(float *)(*(_DWORD *)v3 + 68 * v138 + 36) = v38;
          }
          if ( !TiXmlElement::QueryDoubleAttribute(i, "mingainmod", &v136) )
          {
            v39 = v136;
            *(float *)(*(_DWORD *)v3 + 68 * v138 + 40) = v39;
          }
          if ( !TiXmlElement::QueryDoubleAttribute(i, "maxgainmod", &v136) )
          {
            v40 = v136;
            *(float *)(*(_DWORD *)v3 + 68 * v138 + 44) = v40;
          }
          if ( !TiXmlElement::QueryDoubleAttribute(i, "basepitch", &v136) )
          {
            v41 = v136;
            *(float *)(*(_DWORD *)v3 + 68 * v138 + 48) = v41;
          }
          if ( !TiXmlElement::QueryDoubleAttribute(i, "minpitchmod", &v136) )
          {
            v42 = v136;
            *(float *)(*(_DWORD *)v3 + 68 * v138 + 52) = v42;
          }
          if ( !TiXmlElement::QueryDoubleAttribute(i, "maxpitchmod", &v136) )
          {
            v43 = v136;
            *(float *)(*(_DWORD *)v3 + 68 * v138 + 56) = v43;
          }
          v44 = (const char *)TiXmlElement::Attribute(i, "customparam");
          if ( v44 )
          {
            if ( !TiXmlElement::QueryIntAttribute(i, "customparamqty", &v147) )
              *(_DWORD *)(*(_DWORD *)v3 + 68 * v138 + 60) = v147;
            v45 = *(_DWORD *)v3 + 68 * v138;
            v46 = *(_DWORD *)(v45 + 60);
            if ( v46 > 0 )
            {
              *(_DWORD *)(v45 + 64) = VoxAlloc(4 * v46);
              v47 = *(_DWORD *)v3 + 68 * v138;
              v48 = *(void ***)(v47 + 64);
              if ( v48 )
              {
                v49 = LC_API_STRLEN_0(v44);
                *v48 = VoxAlloc(v49 + 1);
                v50 = *(_DWORD *)v3 + 68 * v138;
                v51 = **(char ***)(v50 + 64);
                if ( v51 )
                {
                  LC_API_STRCPY_0(v51, v44);
                  v45 = *(_DWORD *)v3 + 68 * v138;
                  if ( *(int *)(v45 + 60) > 1 )
                  {
                    v52 = 0;
                    v53 = 1;
                    do
                    {
                      v54 = *(_DWORD *)(v45 + 64);
                      v55 = strchr(*(const char **)(v54 + v52), 59);
                      *(_DWORD *)(v54 + 4 * v53) = v55 + 1;
                      *v55 = 0;
                      ++v53;
                      v52 += 4;
                      v45 = *(_DWORD *)v3 + 68 * v138;
                    }
                    while ( *(_DWORD *)(v45 + 60) > v53 );
                  }
                }
                else
                {
                  *(_DWORD *)(v50 + 60) = 0;
                  v45 = *(_DWORD *)v3 + 68 * v138;
                }
              }
              else
              {
                *(_DWORD *)(v47 + 60) = 0;
                v45 = *(_DWORD *)v3 + 68 * v138;
              }
            }
          }
          else
          {
            v45 = *(_DWORD *)v3 + 68 * v138;
          }
          if ( *(_DWORD *)(v45 + 8) )
          {
            v56 = (_DWORD *)std::map<char *,int,vox::c8stringcomp,vox::SAllocator<std::pair<char const*,int>,(vox::VoxMemHint)0>>::operator[]<char *>(
                              (_DWORD *)v3 + 12,
                              (char **)(v45 + 8));
            *v56 = v138;
          }
        }
        *(_DWORD *)v167 = v176;
        TiXmlHandle::FirstChild((TiXmlHandle *)v166, v167, "soundpack");
        TiXmlHandle::FirstChild((TiXmlHandle *)v165, v166, "groups");
        v57 = (TiXmlElement *)TiXmlHandle::ToElement((TiXmlHandle *)v165);
        TiXmlElement::QueryIntAttribute(v57, "size", &v164);
        std::vector<vox::GroupXMLDef,vox::SAllocator<vox::GroupXMLDef,(vox::VoxMemHint)0>>::vector(
          (vox::GroupXMLDef *)v134,
          v164 + 1);
        std::vector<vox::GroupXMLDef,vox::SAllocator<vox::GroupXMLDef,(vox::VoxMemHint)0>>::operator=(
          (int)v3 + 12,
          v134);
        std::vector<vox::GroupXMLDef,vox::SAllocator<vox::GroupXMLDef,(vox::VoxMemHint)0>>::~vector((int)v134);
        *(_DWORD *)v163 = v176;
        TiXmlHandle::FirstChild((TiXmlHandle *)v162, v163, "soundpack");
        TiXmlHandle::FirstChild((TiXmlHandle *)v161, v162, "groups");
        TiXmlHandle::FirstChild((TiXmlHandle *)v160, v161, "group");
        for ( j = (TiXmlNode *)TiXmlHandle::ToElement((TiXmlHandle *)v160);
              j;
              j = (TiXmlNode *)TiXmlNode::NextSiblingElement(j) )
        {
          if ( !TiXmlElement::QueryIntAttribute(j, "uid", &v147) )
            *(_DWORD *)(*((_DWORD *)v3 + 3) + 56 * v147) = v147;
          v68 = (char *)TiXmlElement::Attribute(j, "pos3d");
          if ( v68 )
          {
            v69 = *v68;
            if ( v69 == 121 )
            {
              *(_DWORD *)(*((_DWORD *)v3 + 3) + 56 * v147 + 52) = 1;
            }
            else
            {
              if ( v69 == 114 )
                v59 = 2;
              else
                v59 = 0;
              *(_DWORD *)(*((_DWORD *)v3 + 3) + 56 * v147 + 52) = v59;
            }
          }
          v60 = (const char *)TiXmlElement::Attribute(j, "bus");
          v61 = (_DWORD *)(*((_DWORD *)v3 + 3) + 56 * v147 + 4);
          if ( v60 )
          {
            v126 = (char *)v60;
            v62 = LC_API_STRLEN_0(v60);
            v63 = v126;
          }
          else
          {
            v62 = 0;
            v63 = "";
          }
          std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_assign(
            v61,
            v63,
            &v63[v62]);
          v64 = (const char *)TiXmlElement::Attribute(j, "name");
          v65 = (_DWORD *)(*((_DWORD *)v3 + 3) + 56 * v147 + 28);
          if ( v64 )
          {
            v127 = (char *)v64;
            v66 = LC_API_STRLEN_0(v64);
            v67 = v127;
          }
          else
          {
            v66 = 0;
            v67 = "";
          }
          std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_assign(
            v65,
            v67,
            &v67[v66]);
        }
        *(_DWORD *)v159 = v176;
        TiXmlHandle::FirstChild((TiXmlHandle *)v158, v159, "soundpack");
        TiXmlHandle::FirstChild((TiXmlHandle *)v157, v158, "groupmasks");
        TiXmlHandle::FirstChild((TiXmlHandle *)v156, v157, "groupmask");
        SiblingElement = (TiXmlElement *)TiXmlHandle::ToElement((TiXmlHandle *)v156);
        if ( SiblingElement )
        {
          v81 = (_DWORD *)((char *)v3 + 72);
          v82 = v3;
          do
          {
            v83 = (char *)TiXmlElement::Attribute(SiblingElement, "label");
            if ( !TiXmlElement::QueryIntAttribute(SiblingElement, "mask", &v147) )
            {
              if ( v83 )
              {
                std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::basic_string(
                  v179,
                  v83);
                v84 = std::map<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>,int,vox::stringcomp,vox::SAllocator<std::pair<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>> const,int>,(vox::VoxMemHint)0>>::operator[]<std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>>(
                        v81,
                        (int)v179);
                *v84 = v147;
                if ( v180 != v179 )
                {
                  if ( v180 )
                    VoxFree(v180);
                }
              }
            }
            SiblingElement = (TiXmlElement *)TiXmlNode::NextSiblingElement(SiblingElement);
          }
          while ( SiblingElement );
          v3 = v82;
        }
        *(_DWORD *)v155 = v176;
        TiXmlHandle::FirstChild((TiXmlHandle *)v154, v155, "soundpack");
        TiXmlHandle::FirstChild((TiXmlHandle *)v153, v154, "banks");
        v85 = (TiXmlElement *)TiXmlHandle::ToElement((TiXmlHandle *)v153);
        TiXmlElement::QueryIntAttribute(v85, "size", &v152);
        std::vector<vox::BankXMLDef,vox::SAllocator<vox::BankXMLDef,(vox::VoxMemHint)0>>::vector((int)v133, v152 + 1);
        std::vector<vox::BankXMLDef,vox::SAllocator<vox::BankXMLDef,(vox::VoxMemHint)0>>::operator=(v129, (int *)v133);
        std::vector<vox::BankXMLDef,vox::SAllocator<vox::BankXMLDef,(vox::VoxMemHint)0>>::~vector(v133);
        *(_DWORD *)v151 = v176;
        TiXmlHandle::FirstChild((TiXmlHandle *)v150, v151, "soundpack");
        TiXmlHandle::FirstChild((TiXmlHandle *)v149, v150, "banks");
        TiXmlHandle::FirstChild((TiXmlHandle *)v148, v149, "bank");
        for ( k = (TiXmlNode *)TiXmlHandle::ToElement((TiXmlHandle *)v148);
              k;
              k = (TiXmlNode *)TiXmlNode::NextSiblingElement(k) )
        {
          if ( !TiXmlElement::QueryIntAttribute(k, "uid", &v147) )
            *(_DWORD *)(*((_DWORD *)v3 + 6) + 40 * v147) = v147;
          if ( !TiXmlElement::QueryIntAttribute(k, "maxplaybacks", &v138) )
            *(_DWORD *)(*((_DWORD *)v3 + 6) + 40 * v147 + 8) = v138;
          if ( !TiXmlElement::QueryIntAttribute(k, "threshold", &v138) )
            *(_DWORD *)(*((_DWORD *)v3 + 6) + 40 * v147 + 12) = v138;
          v87 = (const char *)TiXmlElement::Attribute(k, "name");
          v88 = (_DWORD *)(*((_DWORD *)v3 + 6) + 40 * v147 + 16);
          if ( v87 )
          {
            v128 = (char *)v87;
            v89 = LC_API_STRLEN_0(v87);
            v90 = v128;
          }
          else
          {
            v89 = 0;
            v90 = "";
          }
          std::basic_string<char,std::char_traits<char>,vox::SAllocator<char,(vox::VoxMemHint)0>>::_M_assign(
            v88,
            v90,
            &v90[v89]);
          v91 = (const char *)TiXmlElement::Attribute(k, "behaviour");
          v92 = v91;
          if ( v91 )
          {
            if ( LC_API_STRCMP_0(v91, "steal oldest") )
            {
              if ( LC_API_STRCMP_0(v92, "steal lowest priority") )
              {
                if ( !LC_API_STRCMP_0(v92, "steal low. prio. or old. same prio") )
                  *(_DWORD *)(*((_DWORD *)v3 + 6) + 40 * v147 + 4) = 2;
              }
              else
              {
                *(_DWORD *)(*((_DWORD *)v3 + 6) + 40 * v147 + 4) = 1;
              }
            }
            else
            {
              *(_DWORD *)(*((_DWORD *)v3 + 6) + 40 * v147 + 4) = 0;
            }
          }
        }
        *(_DWORD *)v146 = v176;
        TiXmlHandle::FirstChild((TiXmlHandle *)v145, v146, "soundpack");
        TiXmlHandle::FirstChild((TiXmlHandle *)v144, v145, "events");
        v93 = (TiXmlElement *)TiXmlHandle::ToElement((TiXmlHandle *)v144);
        TiXmlElement::QueryIntAttribute(v93, "size", &v143);
        std::vector<vox::EventXMLDef,vox::SAllocator<vox::EventXMLDef,(vox::VoxMemHint)0>>::vector(
          (vox::EventXMLDef *)v132,
          v143);
        std::vector<vox::EventXMLDef,vox::SAllocator<vox::EventXMLDef,(vox::VoxMemHint)0>>::operator=(v130, (int *)v132);
        std::vector<vox::EventXMLDef,vox::SAllocator<vox::EventXMLDef,(vox::VoxMemHint)0>>::~vector(v132);
        *(_DWORD *)v142 = v176;
        TiXmlHandle::FirstChild((TiXmlHandle *)v141, v142, "soundpack");
        TiXmlHandle::FirstChild((TiXmlHandle *)v140, v141, "events");
        TiXmlHandle::FirstChild((TiXmlHandle *)v139, v140, "event");
        for ( m = (TiXmlNode *)TiXmlHandle::ToElement((TiXmlHandle *)v139);
              m;
              m = (TiXmlNode *)TiXmlNode::NextSiblingElement(m) )
        {
          if ( !TiXmlElement::QueryIntAttribute(m, "uid", &v138) )
            *(_DWORD *)(*((_DWORD *)v3 + 9) + 44 * v138) = v138;
          v94 = (const char *)TiXmlElement::Attribute(m, "label");
          v95 = v94;
          if ( v94 )
          {
            v96 = *((_DWORD *)v3 + 9) + 44 * v138;
            v97 = LC_API_STRLEN_0(v94);
            *(_DWORD *)(v96 + 4) = VoxAlloc(v97 + 1);
            v98 = *(char **)(*((_DWORD *)v3 + 9) + 44 * v138 + 4);
            if ( v98 )
              LC_API_STRCPY_0(v98, v95);
          }
          else
          {
            v124 = *((_DWORD *)v3 + 9) + 44 * v138;
            *(_DWORD *)(v124 + 4) = VoxAlloc(1u);
            v125 = *(_BYTE **)(*((_DWORD *)v3 + 9) + 44 * v138 + 4);
            if ( v125 )
              *v125 = 0;
          }
          v99 = (const char *)TiXmlElement::Attribute(m, "type");
          v100 = v99;
          if ( v99 )
          {
            if ( LC_API_STRCMP_0(v99, "random") )
            {
              if ( !LC_API_STRCMP_0(v100, "playlist") )
                *(_WORD *)(*((_DWORD *)v3 + 9) + 44 * v138 + 28) = 1;
            }
            else
            {
              *(_WORD *)(*((_DWORD *)v3 + 9) + 44 * v138 + 28) = 0;
            }
          }
          v101 = (char *)TiXmlElement::Attribute(m, "value");
          if ( v101 )
          {
            for ( n = strtok(v101, " ,"); n; n = strtok(nullptr, " ,") )
            {
              while ( 1 )
              {
                v103 = *((_DWORD *)v3 + 9) + 44 * v138;
                v104 = LC_API_ATOI_0(n);
                v137 = v104;
                v105 = *(int **)(v103 + 20);
                if ( v105 == *(int **)(v103 + 24) )
                  break;
                *v105 = v104;
                *(_DWORD *)(v103 + 20) += 4;
                n = strtok(nullptr, " ,");
                if ( !n )
                  goto LABEL_158;
              }
              std::vector<int,vox::SAllocator<int,(vox::VoxMemHint)0>>::_M_insert_overflow(v103 + 16, (int)v105, &v137);
            }
          }
LABEL_158:
          v106 = (char *)TiXmlElement::Attribute(m, "params");
          if ( v106 )
          {
            v107 = strtok(v106, " ;");
            if ( v107 )
            {
              v108 = LC_API_ATOI_0(v107);
              v109 = *((_DWORD *)v3 + 9) + 44 * v138;
              v110 = (*(_DWORD *)(v109 + 20) - *(_DWORD *)(v109 + 16)) >> 2;
              if ( v108 < v110 )
                LOWORD(v110) = v108;
              *(_WORD *)(v109 + 30) = v110;
              v111 = strtok(nullptr, " ;");
              if ( v111 )
              {
                v112 = LC_API_ATOI_0(v111);
                if ( v112 >= 100 )
                  LOWORD(v112) = 100;
                *(_WORD *)(*((_DWORD *)v3 + 9) + 44 * v138 + 32) = v112;
              }
            }
          }
          v113 = (const char *)TiXmlElement::Attribute(m, "customparam");
          if ( v113 )
          {
            TiXmlElement::QueryIntAttribute(m, "customparamqty", (int *)(*((_DWORD *)v3 + 9) + 44 * v138 + 36));
            v114 = *((_DWORD *)v3 + 9) + 44 * v138;
            *(_DWORD *)(v114 + 40) = VoxAlloc(4 * *(_DWORD *)(v114 + 36));
            v115 = *((_DWORD *)v3 + 9) + 44 * v138;
            v116 = *(void ***)(v115 + 40);
            if ( v116 )
            {
              v117 = LC_API_STRLEN_0(v113);
              *v116 = VoxAlloc(v117 + 1);
              v118 = *((_DWORD *)v3 + 9) + 44 * v138;
              v119 = **(char ***)(v118 + 40);
              if ( v119 )
              {
                LC_API_STRCPY_0(v119, v113);
                v70 = *((_DWORD *)v3 + 9) + 44 * v138;
                if ( *(int *)(v70 + 36) > 1 )
                {
                  v120 = 0;
                  v121 = 1;
                  do
                  {
                    v122 = *(_DWORD *)(v70 + 40);
                    v123 = strchr(*(const char **)(v122 + v120), 59);
                    *(_DWORD *)(v122 + 4 * v121) = v123 + 1;
                    *v123 = 0;
                    ++v121;
                    v120 += 4;
                    v70 = *((_DWORD *)v3 + 9) + 44 * v138;
                  }
                  while ( *(_DWORD *)(v70 + 36) > v121 );
                }
              }
              else
              {
                *(_DWORD *)(v118 + 36) = 0;
                v70 = *((_DWORD *)v3 + 9) + 44 * v138;
              }
            }
            else
            {
              *(_DWORD *)(v115 + 36) = 0;
              v70 = *((_DWORD *)v3 + 9) + 44 * v138;
            }
          }
          else
          {
            v70 = *((_DWORD *)v3 + 9) + 44 * v138;
          }
          *(_WORD *)(v70 + 34) = (*(_DWORD *)(v70 + 20) - *(_DWORD *)(v70 + 16)) >> 2;
        }
      }
      VoxFree(p);
      v176[0] = off_96C630;
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v178);
      TiXmlNode::~TiXmlNode((TiXmlNode *)v176);
      return 1;
    }
    else
    {
      VoxFree(p);
      return 0;
    }
  }
  else
  {
    (*(void (__fastcall **)(int, int))(*(_DWORD *)v12 + 12))(v12, v14);
    return 0;
  }
}


// ===== 88ec4c vox::VoxSoundPackXML::VoxSoundPackXML(char const*) =====
vox::VoxSoundPackXML *__fastcall vox::VoxSoundPackXML::VoxSoundPackXML(vox::VoxSoundPackXML *this, const char *a2)
{
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_BYTE *)this + 48) = 0;
  *((_DWORD *)this + 15) = (char *)this + 48;
  *((_DWORD *)this + 14) = (char *)this + 48;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_BYTE *)this + 72) = 0;
  *((_DWORD *)this + 21) = (char *)this + 72;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 20) = (char *)this + 72;
  vox::VoxSoundPackXML::LoadXML(this, a2);
  return this;
}


// ===== 88ecc4 vox::VoxSoundPackXML::VoxSoundPackXML(char const*) =====
vox::VoxSoundPackXML *__fastcall vox::VoxSoundPackXML::VoxSoundPackXML(vox::VoxSoundPackXML *this, const char *a2)
{
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_BYTE *)this + 48) = 0;
  *((_DWORD *)this + 15) = (char *)this + 48;
  *((_DWORD *)this + 14) = (char *)this + 48;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_BYTE *)this + 72) = 0;
  *((_DWORD *)this + 21) = (char *)this + 72;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 20) = (char *)this + 72;
  vox::VoxSoundPackXML::LoadXML(this, a2);
  return this;
}


// ===== 88ed3c vox::DriverSourceInterface::SetDSPParameter(int,void *) =====
void __fastcall vox::DriverSourceInterface::SetDSPParameter(vox::DriverSourceInterface *this, int a2, void *a3)
{
  ;
}


// ===== 88ed40 vox::DriverInterface::RampOut(void) =====
void __fastcall vox::DriverInterface::RampOut(vox::DriverInterface *this)
{
  ;
}


// ===== 88ed44 vox::DriverInterface::RampIn(void) =====
void __fastcall vox::DriverInterface::RampIn(vox::DriverInterface *this)
{
  ;
}


// ===== 88ed48 vox::DriverInterface::SetDSPParameter(int,void *) =====
void __fastcall vox::DriverInterface::SetDSPParameter(vox::DriverInterface *this, int a2, void *a3)
{
  ;
}


// ===== 88ed4c vox::DriverInterface::SetStaticBusRouting(char *) =====
void __fastcall vox::DriverInterface::SetStaticBusRouting(vox::DriverInterface *this, char *a2)
{
  ;
}


// ===== 88ed50 vox::DriverInterface::SetDynamicBusRouting(char *) =====
void __fastcall vox::DriverInterface::SetDynamicBusRouting(vox::DriverInterface *this, char *a2)
{
  ;
}


// ===== 88ed54 vox::DriverInterface::SetSFXPresetActive(int,bool,float) =====
void __fastcall vox::DriverInterface::SetSFXPresetActive(vox::DriverInterface *this, int a2, bool a3, float a4)
{
  ;
}


// ===== 88ed58 vox::DriverInterface::SetOutputMode(vox::VoxOutputMode) =====
int vox::DriverInterface::SetOutputMode()
{
  return 0;
}


// ===== 88ed60 vox::DriverInterface::GetOutputMode(void) =====
int __fastcall vox::DriverInterface::GetOutputMode(vox::DriverInterface *this)
{
  return 1;
}


// ===== 88ed68 vox::DriverCallbackSourceInterface::AllowBufferReference(void) =====
int __fastcall vox::DriverCallbackSourceInterface::AllowBufferReference(vox::DriverCallbackSourceInterface *this)
{
  return 1;
}


// ===== 88ed70 vox::DriverCallbackSourceInterface::GetBufferCount(void) =====
int __fastcall vox::DriverCallbackSourceInterface::GetBufferCount(vox::DriverCallbackSourceInterface *this)
{
  return *((_DWORD *)this + 17);
}


// ===== 88ed78 _JNIEnv::GetMethodID(_jclass *,char const*,char const*) =====
jmethodID __fastcall _JNIEnv::GetMethodID(_JNIEnv *this, _jclass *a2, const char *a3, const char *a4)
{
  return this->functions->GetMethodID(this, a2, a3, a4);
}


// ===== 88ed8c VoxSetJavaVM(_JavaVM *) =====
int __fastcall VoxSetJavaVM(int result)
{
  vox::DriverAndroid::s_javaVM = result;
  return result;
}


// ===== 88edac VoxSetDataThreshold =====
bool __fastcall VoxSetDataThreshold(double a1)
{
  double v1; // r6
  _BOOL4 result; // r0

  v1 = a1;
  result = a1 < 0.0;
  if ( result )
  {
    v1 = 0.0;
  }
  else
  {
    result = v1 > 1.0;
    if ( v1 > 1.0 )
      v1 = 1.0;
  }
  *(double *)&vox::DriverAndroid::m_dataThresholdRatio = v1;
  return result;
}


// ===== 88ee1c VoxSetJavaVMC =====
bool __fastcall VoxSetJavaVMC(int a1)
{
  VoxSetJavaVM(a1);
  return VoxSetDataThreshold(1.0);
}


// ===== 88ee38 VoxSetAndroidAPILevel(int) =====
int __fastcall VoxSetAndroidAPILevel(int result)
{
  vox::DriverAndroid::s_androidAPILevel = result;
  return result;
}


// ===== 88ee58 vox::DriverAndroidSource::PrintDebug(void) =====
void __fastcall vox::DriverAndroidSource::PrintDebug(vox::DriverAndroidSource *this)
{
  ;
}


// ===== 88ee5c vox::DriverAndroid::_InitOSL(void *) =====
void __fastcall vox::DriverAndroid::_InitOSL(vox::DriverAndroid *this, void *a2)
{
  ;
}


// ===== 88ee60 vox::DriverAndroid::_ShutdownOSL(void) =====
void __fastcall vox::DriverAndroid::_ShutdownOSL(vox::DriverAndroid *this)
{
  ;
}


// ===== 88ee64 vox::DriverAndroid::_SuspendOSL(void) =====
void __fastcall vox::DriverAndroid::_SuspendOSL(vox::DriverAndroid *this)
{
  ;
}


// ===== 88ee68 vox::DriverAndroid::_ResumeOSL(void) =====
void __fastcall vox::DriverAndroid::_ResumeOSL(vox::DriverAndroid *this)
{
  ;
}


// ===== 88ee6c vox::DriverAndroid::PrintDebug(void) =====
void __fastcall vox::DriverAndroid::PrintDebug(vox::DriverAndroid *this)
{
  ;
}


// ===== 88ee70 vox::DriverAndroid::_UpdateAT(float) =====
void __fastcall vox::DriverAndroid::_UpdateAT(vox::DriverAndroid *this, float a2)
{
  ;
}


// ===== 88ee74 vox::DriverAndroid::_UpdateOSL(float) =====
void __fastcall vox::DriverAndroid::_UpdateOSL(vox::DriverAndroid *this, float a2)
{
  ;
}


// ===== 88ee78 vox::DriverAndroid::Update(float) =====
void __fastcall vox::DriverAndroid::Update(vox::DriverAndroid *this, float a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 21);
  if ( v2 == 1 )
  {
    vox::DriverAndroid::_UpdateAT(this, a2);
  }
  else if ( v2 == 2 )
  {
    vox::DriverAndroid::_UpdateOSL(this, a2);
  }
}


// ===== 88ee94 _JNIEnv::NewObject(_jclass *,_jmethodID *,...) =====
int _JNIEnv::NewObject(_JNIEnv *this, _jclass *a2, _jmethodID *a3, ...)
{
  return ((int (__fastcall *)(_JNIEnv *, _jclass *, _jmethodID *))this->functions->NewObjectV)(this, a2, a3);
}


// ===== 88eec8 _JNIEnv::CallNonvirtualVoidMethod(_jobject *,_jclass *,_jmethodID *,...) =====
int _JNIEnv::CallNonvirtualVoidMethod(_JNIEnv *this, _jobject *a2, _jclass *a3, _jmethodID *a4, ...)
{
  va_list va; // [sp+18h] [bp+Ch] BYREF

  va_start(va, a4);
  return ((int (__fastcall *)(_JNIEnv *, _jobject *, _jclass *, _jmethodID *, char *))this->functions->CallNonvirtualVoidMethodV)(
           this,
           a2,
           a3,
           a4,
           (char *)&va);
}


// ===== 88ef00 _JNIEnv::CallNonvirtualIntMethod(_jobject *,_jclass *,_jmethodID *,...) =====
int _JNIEnv::CallNonvirtualIntMethod(_JNIEnv *this, _jobject *a2, _jclass *a3, _jmethodID *a4, ...)
{
  va_list va; // [sp+18h] [bp+Ch] BYREF

  va_start(va, a4);
  return ((int (__fastcall *)(_JNIEnv *, _jobject *, _jclass *, _jmethodID *, char *))this->functions->CallNonvirtualIntMethodV)(
           this,
           a2,
           a3,
           a4,
           (char *)&va);
}


// ===== 88ef38 _JNIEnv::CallStaticIntMethod(_jclass *,_jmethodID *,...) =====
int _JNIEnv::CallStaticIntMethod(_JNIEnv *this, _jclass *a2, _jmethodID *a3, ...)
{
  return ((int (__fastcall *)(_JNIEnv *, _jclass *, _jmethodID *))this->functions->CallStaticIntMethodV)(this, a2, a3);
}


// ===== 88ef6c vox::DriverAndroid::_ResumeAT(void) =====
int __fastcall vox::DriverAndroid::_ResumeAT(vox::DriverAndroid *this)
{
  pthread_mutex_t *v1; // r6
  _JNIEnv *v4; // [sp+4h] [bp-8h] BYREF

  v1 = (pthread_mutex_t *)((char *)this + 4);
  vox::Mutex::Lock((pthread_mutex_t *)this + 1);
  if ( *((_BYTE *)this + 8) )
  {
    v4 = nullptr;
    (*(void (__fastcall **)(int, _JNIEnv **, int))(*(_DWORD *)vox::DriverAndroid::s_javaVM + 24))(
      vox::DriverAndroid::s_javaVM,
      &v4,
      65538);
    _JNIEnv::CallNonvirtualVoidMethod(
      v4,
      *((_jobject **)this + 25),
      (_jclass *)vox::DriverAndroid::cAudioTrack,
      (_jmethodID *)vox::DriverAndroid::mPlay);
    *((_BYTE *)this + 96) = 0;
    *(_QWORD *)&vox::DriverAndroid::m_updateStartTime = _GetTime();
  }
  return vox::Mutex::Unlock(v1);
}


// ===== 88f028 vox::DriverAndroid::Resume(void) =====
void __fastcall vox::DriverAndroid::Resume(vox::DriverAndroid *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 21);
  if ( v1 == 1 )
  {
    vox::DriverAndroid::_ResumeAT(this);
  }
  else if ( v1 == 2 )
  {
    vox::DriverAndroid::_ResumeOSL(this);
  }
}


// ===== 88f044 vox::DriverAndroid::_SuspendAT(void) =====
int __fastcall vox::DriverAndroid::_SuspendAT(vox::DriverAndroid *this)
{
  pthread_mutex_t *v1; // r5
  double v4; // r8
  _JNIEnv *v5; // [sp+4h] [bp-4h] BYREF

  v1 = (pthread_mutex_t *)((char *)this + 4);
  vox::Mutex::Lock((pthread_mutex_t *)this + 1);
  if ( *((_BYTE *)this + 8) )
  {
    v5 = nullptr;
    (*(void (__fastcall **)(int, _JNIEnv **, int))(*(_DWORD *)vox::DriverAndroid::s_javaVM + 24))(
      vox::DriverAndroid::s_javaVM,
      &v5,
      65538);
    _JNIEnv::CallNonvirtualVoidMethod(
      v5,
      *((_jobject **)this + 25),
      (_jclass *)vox::DriverAndroid::cAudioTrack,
      (_jmethodID *)vox::DriverAndroid::mPause);
    *((_BYTE *)this + 96) = 1;
    v4 = *(double *)&vox::DriverAndroid::m_dataDuration;
    *(double *)&vox::DriverAndroid::m_dataDuration = v4
                                                   - (_GetTime()
                                                    - *(double *)&vox::DriverAndroid::m_updateStartTime);
  }
  return vox::Mutex::Unlock(v1);
}


// ===== 88f130 vox::DriverAndroid::Suspend(void) =====
void __fastcall vox::DriverAndroid::Suspend(vox::DriverAndroid *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 21);
  if ( v1 == 1 )
  {
    vox::DriverAndroid::_SuspendAT(this);
  }
  else if ( v1 == 2 )
  {
    vox::DriverAndroid::_SuspendOSL(this);
  }
}


// ===== 88f14c vox::DriverAndroid::DoCallbackAT(_jarray *&) =====
int __fastcall vox::DriverAndroid::DoCallbackAT(vox::DriverAndroid *this, _jarray **a2)
{
  __int16 *v4; // r8
  int v5; // r9
  double v6; // r6
  int result; // r0
  double Time; // r0
  _JNIEnv *v9; // [sp+14h] [bp-4h] BYREF

  v9 = nullptr;
  (*(void (__fastcall **)(int, _JNIEnv **, int))(*(_DWORD *)vox::DriverAndroid::s_javaVM + 24))(
    vox::DriverAndroid::s_javaVM,
    &v9,
    65538);
  v4 = (__int16 *)v9->functions->GetPrimitiveArrayCritical(v9, *a2, 0);
  if ( v4 )
  {
    v5 = *((_DWORD *)this + 23);
    vox::Mutex::Lock((pthread_mutex_t *)this + 1);
    vox::DriverCallbackInterface::_FillBuffer(this, v4, v5);
    vox::Mutex::Unlock((pthread_mutex_t *)this + 1);
    v9->functions->ReleasePrimitiveArrayCritical(v9, *a2, v4, 0);
    _JNIEnv::CallNonvirtualIntMethod(
      v9,
      *((_jobject **)this + 25),
      (_jclass *)vox::DriverAndroid::cAudioTrack,
      (_jmethodID *)vox::DriverAndroid::mWrite,
      *a2,
      0,
      4 * v5);
    *(double *)&vox::DriverAndroid::m_dataDuration = *(double *)&vox::DriverAndroid::m_dataDuration
                                                   + *(double *)&vox::DriverAndroid::m_updateTime;
  }
  if ( vox::DriverAndroid::DoCallbackAT(_jarray *&)::isFirst )
  {
    Time = _GetTime();
    vox::DriverAndroid::DoCallbackAT(_jarray *&)::isFirst = 0;
    *(double *)&vox::DriverAndroid::m_updateStartTime = Time;
  }
  v6 = *(double *)&vox::DriverAndroid::m_dataDuration;
  result = v6 - (_GetTime() - *(double *)&vox::DriverAndroid::m_updateStartTime) > *(double *)&vox::DriverAndroid::m_dataThreshold;
  if ( result )
    return usleep((unsigned int)(*(double *)&vox::DriverAndroid::m_updateTime * 1000000.0));
  return result;
}


// ===== 88f328 vox::DriverAndroid::UpdateThreadedAT(void *) =====
int __fastcall vox::DriverAndroid::UpdateThreadedAT(vox::DriverAndroid *this, void *a2)
{
  _jobject *v3; // r0
  _jobject *v4; // r6
  vox::DriverAndroid *v5; // r0
  _JNIEnv *v7; // [sp+20h] [bp-Ch] BYREF
  _jarray *v8; // [sp+24h] [bp-8h] BYREF

  if ( this )
  {
    v7 = nullptr;
    v8 = nullptr;
    vox::Mutex::Lock((pthread_mutex_t *)this + 1);
    (*(void (__fastcall **)(int, _JNIEnv **, _DWORD))(*(_DWORD *)vox::DriverAndroid::s_javaVM + 16))(
      vox::DriverAndroid::s_javaVM,
      &v7,
      0);
    if ( v7 )
    {
      v7->functions->PushLocalFrame(v7, 2);
      v3 = (_jobject *)_JNIEnv::NewObject(
                         v7,
                         (_jclass *)vox::DriverAndroid::cAudioTrack,
                         (_jmethodID *)vox::DriverAndroid::mAudioTrack,
                         3,
                         44100,
                         12,
                         2,
                         4 * *((_DWORD *)this + 22),
                         1);
      *((_DWORD *)this + 25) = v3;
      if ( v3
        && (_JNIEnv::CallNonvirtualVoidMethod(
              v7,
              v3,
              (_jclass *)vox::DriverAndroid::cAudioTrack,
              (_jmethodID *)vox::DriverAndroid::mPlay),
            (v8 = (_jarray *)v7->functions->NewByteArray(v7, 4 * *((_DWORD *)this + 22))) != nullptr) )
      {
        *((_BYTE *)this + 8) = 1;
        vox::Mutex::Unlock((pthread_mutex_t *)this + 1);
        *(_QWORD *)&vox::DriverAndroid::m_updateStartTime = _GetTime();
        while ( 1 )
        {
          v4 = (_jobject *)(unsigned __int8)vox::DriverAndroid::m_running;
          v5 = this;
          if ( !vox::DriverAndroid::m_running )
            break;
          while ( *((_BYTE *)this + 96) )
          {
            usleep((int)(*(double *)&vox::DriverAndroid::m_updateTime * 1000000.0));
            v4 = (_jobject *)(unsigned __int8)vox::DriverAndroid::m_running;
            v5 = this;
            if ( !vox::DriverAndroid::m_running )
              goto LABEL_9;
          }
          vox::DriverAndroid::DoCallbackAT(v5, &v8);
        }
LABEL_9:
        *((_BYTE *)this + 8) = (_BYTE)v4;
        vox::Mutex::Lock((pthread_mutex_t *)this + 1);
        _JNIEnv::CallNonvirtualVoidMethod(
          v7,
          *((_jobject **)this + 25),
          (_jclass *)vox::DriverAndroid::cAudioTrack,
          (_jmethodID *)vox::DriverAndroid::mStop);
        _JNIEnv::CallNonvirtualVoidMethod(
          v7,
          *((_jobject **)this + 25),
          (_jclass *)vox::DriverAndroid::cAudioTrack,
          (_jmethodID *)vox::DriverAndroid::mRelease);
        v7->functions->PopLocalFrame(v7, v4);
        (*(void (__fastcall **)(int))(*(_DWORD *)vox::DriverAndroid::s_javaVM + 20))(vox::DriverAndroid::s_javaVM);
      }
      else
      {
        (*(void (__fastcall **)(int))(*(_DWORD *)vox::DriverAndroid::s_javaVM + 20))(vox::DriverAndroid::s_javaVM);
      }
    }
    vox::Mutex::Unlock((pthread_mutex_t *)this + 1);
  }
  return 0;
}


// ===== 88f59c vox::DriverAndroid::DestroyDriverSource(vox::DriverSourceInterface *) =====
int __fastcall vox::DriverAndroid::DestroyDriverSource(pthread_mutex_t *this, vox::DriverSourceInterface *a2)
{
  pthread_mutex_t *v2; // r4
  vox::DriverSourceInterface **i; // r0
  vox::DriverSourceInterface **v6; // r5
  vox::DriverSourceInterface **v7; // t1
  vox::DriverSourceInterface *v9; // r3
  vox::DriverSourceInterface **v10; // r2

  v2 = this + 1;
  vox::Mutex::Lock(this + 1);
  if ( a2 )
  {
    v7 = *((vox::DriverSourceInterface ***)this + 4);
    v6 = (vox::DriverSourceInterface **)(this + 4);
    for ( i = v7; v6 != i; i = (vox::DriverSourceInterface **)*i )
    {
      if ( a2 == i[2] )
      {
        v9 = *i;
        v10 = (vox::DriverSourceInterface **)i[1];
        *v10 = *i;
        *((_DWORD *)v9 + 1) = v10;
        VoxFree(i);
        break;
      }
    }
    (**(void (__fastcall ***)(vox::DriverSourceInterface *))a2)(a2);
    VoxFree(a2);
  }
  return vox::Mutex::Unlock(v2);
}


// ===== 88f618 vox::DriverAndroid::_ShutdownAT(void) =====
int __fastcall vox::DriverAndroid::_ShutdownAT(vox::DriverAndroid *this)
{
  vox::DriverAndroid::m_running = 0;
  return pthread_join(*((_DWORD *)this + 26), nullptr);
}


// ===== 88f644 vox::DriverAndroid::Shutdown(void) =====
void __fastcall vox::DriverAndroid::Shutdown(vox::DriverAndroid *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 21);
  if ( v1 == 1 )
  {
    vox::DriverAndroid::_ShutdownAT(this);
  }
  else if ( v1 == 2 )
  {
    vox::DriverAndroid::_ShutdownOSL(this);
  }
}


// ===== 88f660 vox::DriverAndroid::_InitAT(void *) =====
_jobject *__fastcall vox::DriverAndroid::_InitAT(vox::DriverAndroid *this, int a2)
{
  _jobject *result; // r0
  _jclass *v4; // r1
  int v5; // r0
  jmethodID MethodID; // r0
  _JNIEnv *v7; // [sp+Ch] [bp-8h] BYREF

  result = (_jobject *)vox::DriverCallbackSourceInterface::SetDriverSampleRate(
                         (vox::DriverCallbackSourceInterface *)&elf_hash_bucket[10970],
                         a2);
  if ( vox::DriverAndroid::s_javaVM )
  {
    v7 = nullptr;
    (*(void (__fastcall **)(int, _JNIEnv **, int))(*(_DWORD *)vox::DriverAndroid::s_javaVM + 24))(
      vox::DriverAndroid::s_javaVM,
      &v7,
      65538);
    v4 = (_jclass *)vox::DriverAndroid::cAudioTrack;
    if ( !vox::DriverAndroid::cAudioTrack )
    {
      result = (_jobject *)v7->functions->FindClass(v7, "android/media/AudioTrack");
      vox::DriverAndroid::cAudioTrack = (int)result;
      if ( !result )
        return result;
      vox::DriverAndroid::cAudioTrack = (int)v7->functions->NewGlobalRef(v7, result);
      vox::DriverAndroid::mAudioTrack = (int)_JNIEnv::GetMethodID(
                                               v7,
                                               (_jclass *)vox::DriverAndroid::cAudioTrack,
                                               "<init>",
                                               "(IIIIII)V");
      vox::DriverAndroid::mGetMinBufferSize = (int)v7->functions->GetStaticMethodID(
                                                     v7,
                                                     vox::DriverAndroid::cAudioTrack,
                                                     "getMinBufferSize",
                                                     "(III)I");
      vox::DriverAndroid::mPlay = (int)_JNIEnv::GetMethodID(
                                         v7,
                                         (_jclass *)vox::DriverAndroid::cAudioTrack,
                                         "play",
                                         "()V");
      vox::DriverAndroid::mPause = (int)_JNIEnv::GetMethodID(
                                          v7,
                                          (_jclass *)vox::DriverAndroid::cAudioTrack,
                                          "pause",
                                          "()V");
      vox::DriverAndroid::mStop = (int)_JNIEnv::GetMethodID(
                                         v7,
                                         (_jclass *)vox::DriverAndroid::cAudioTrack,
                                         "stop",
                                         "()V");
      vox::DriverAndroid::mRelease = (int)_JNIEnv::GetMethodID(
                                            v7,
                                            (_jclass *)vox::DriverAndroid::cAudioTrack,
                                            "release",
                                            "()V");
      MethodID = _JNIEnv::GetMethodID(v7, (_jclass *)vox::DriverAndroid::cAudioTrack, "write", "([BII)I");
      v4 = (_jclass *)vox::DriverAndroid::cAudioTrack;
      vox::DriverAndroid::mWrite = (int)MethodID;
    }
    v5 = _JNIEnv::CallStaticIntMethod(v7, v4, (_jmethodID *)vox::DriverAndroid::mGetMinBufferSize, 44100, 12, 2) / 4;
    *((_DWORD *)this + 23) = 1024;
    *((_DWORD *)this + 22) = v5;
    if ( v5 < 1024 )
      *((_DWORD *)this + 23) = v5;
    else
      v5 = 1024;
    *(double *)&vox::DriverAndroid::m_updateTime = (double)v5 / 44100.0;
    vox::DriverAndroid::m_dataThreshold = COERCE__INT64(
                                            (double)*((int *)this + 22)
                                          / 44100.0
                                          * *(double *)&vox::DriverAndroid::m_dataThresholdRatio)
                                        + 0x8000000000000000LL;
    *(_QWORD *)&vox::DriverAndroid::m_dataDuration = 0;
    *((_DWORD *)this + 21) = 1;
    vox::DriverAndroid::m_running = 1;
    *((_BYTE *)this + 96) = 0;
    return (_jobject *)pthread_create(
                         (pthread_t *)this + 26,
                         nullptr,
                         (void *(*)(void *))vox::DriverAndroid::UpdateThreadedAT,
                         this);
  }
  return result;
}


// ===== 88f9a0 vox::DriverAndroid::Init(void *) =====
int __fastcall vox::DriverAndroid::Init(pthread_mutex_t *this, void *a2)
{
  pthread_mutex_t *v2; // r5

  v2 = this + 1;
  vox::Mutex::Lock(this + 1);
  vox::DriverCallbackInterface::Init((vox::DriverCallbackInterface *)this, a2);
  vox::DriverCallbackInterface::SetDefaultParameter((vox::DriverCallbackInterface *)this);
  vox::DriverAndroid::_InitAT((vox::DriverAndroid *)this, (int)a2);
  vox::DriverCallbackInterface::SetDefaultParameter((vox::DriverCallbackInterface *)this);
  return vox::Mutex::Unlock(v2);
}


// ===== 88f9ec vox::DriverAndroid::~DriverAndroid() =====
void __fastcall vox::DriverAndroid::~DriverAndroid(vox::DriverAndroid *this)
{
  *(_DWORD *)this = off_993AA0;
  vox::DriverAndroid::Shutdown(this);
  vox::DriverCallbackInterface::~DriverCallbackInterface(this);
}


// ===== 88fa28 vox::DriverAndroid::~DriverAndroid() =====
void __fastcall vox::DriverAndroid::~DriverAndroid(vox::DriverAndroid *this)
{
  vox::DriverAndroid::~DriverAndroid(this);
  LC_API_FREE_0(this);
}


// ===== 88fa44 vox::DriverAndroid::~DriverAndroid() =====
void __fastcall vox::DriverAndroid::~DriverAndroid(vox::DriverAndroid *this)
{
  *(_DWORD *)this = off_993AA0;
  vox::DriverAndroid::Shutdown(this);
  vox::DriverCallbackInterface::~DriverCallbackInterface(this);
}


// ===== 88fa80 vox::DriverAndroid::DriverAndroid(void) =====
vox::DriverAndroid *__fastcall vox::DriverAndroid::DriverAndroid(vox::DriverAndroid *this)
{
  vox::DriverCallbackInterface::DriverCallbackInterface(this);
  *((_DWORD *)this + 21) = 0;
  *(_DWORD *)this = off_993AA0;
  vox::DriverAndroid::Init((pthread_mutex_t *)this, nullptr);
  return this;
}


// ===== 88fac4 vox::CreateDriver(void) =====
vox::DriverAndroid *__fastcall vox::CreateDriver(vox *this)
{
  vox::DriverAndroid *v1; // r4

  v1 = (vox::DriverAndroid *)VoxAlloc(0x6Cu, 0);
  vox::DriverAndroid::DriverAndroid(v1);
  return v1;
}


// ===== 88fae4 vox::DriverAndroid::DriverAndroid(void) =====
vox::DriverAndroid *__fastcall vox::DriverAndroid::DriverAndroid(vox::DriverAndroid *this)
{
  vox::DriverCallbackInterface::DriverCallbackInterface(this);
  *((_DWORD *)this + 21) = 0;
  *(_DWORD *)this = off_993AA0;
  vox::DriverAndroid::Init((pthread_mutex_t *)this, nullptr);
  return this;
}


// ===== 88fb28 vox::DriverAndroidSource::~DriverAndroidSource() =====
void __fastcall vox::DriverAndroidSource::~DriverAndroidSource(vox::DriverAndroidSource *this)
{
  *(_DWORD *)this = off_993AF8;
  vox::DriverCallbackSourceInterface::~DriverCallbackSourceInterface(this);
}


// ===== 88fb5c vox::DriverAndroidSource::~DriverAndroidSource() =====
void __fastcall vox::DriverAndroidSource::~DriverAndroidSource(vox::DriverAndroidSource *this)
{
  vox::DriverAndroidSource::~DriverAndroidSource(this);
  LC_API_FREE_0(this);
}


// ===== 88fb78 vox::DriverAndroidSource::~DriverAndroidSource() =====
void __fastcall vox::DriverAndroidSource::~DriverAndroidSource(vox::DriverAndroidSource *this)
{
  *(_DWORD *)this = off_993AF8;
  vox::DriverCallbackSourceInterface::~DriverCallbackSourceInterface(this);
}


// ===== 88fbac vox::DriverAndroidSource::DriverAndroidSource(void *,void *,uint) =====
vox::DriverAndroidSource *__fastcall vox::DriverAndroidSource::DriverAndroidSource(
        vox::DriverAndroidSource *this,
        void *a2,
        void *a3,
        unsigned int a4)
{
  vox::DriverCallbackSourceInterface::DriverCallbackSourceInterface(this, a2, a3, a4);
  *(_DWORD *)this = off_993AF8;
  vox::DriverCallbackSourceInterface::Init(this);
  return this;
}


// ===== 88fbe8 vox::DriverAndroid::CreateDriverSource(void *,void *,int) =====
vox::DriverAndroidSource *__fastcall vox::DriverAndroid::CreateDriverSource(
        pthread_mutex_t *this,
        void *a2,
        void *a3,
        int a4)
{
  pthread_mutex_t *v4; // r5
  vox::DriverAndroidSource *v9; // r6
  _DWORD *v10; // r0
  _DWORD *v11; // r3
  int v12; // r3

  v4 = this + 1;
  vox::Mutex::Lock(this + 1);
  if ( *((_BYTE *)this + 8)
    && (v9 = (vox::DriverAndroidSource *)VoxAlloc(0xB4u, 0),
        vox::DriverAndroidSource::DriverAndroidSource(v9, a2, a3, *((_DWORD *)this + 3)),
        v9) )
  {
    v10 = VoxAlloc(0xCu, 0);
    v10[2] = v9;
    v11 = *((_DWORD **)this + 5);
    *v10 = this + 4;
    v10[1] = v11;
    *v11 = v10;
    v12 = *((_DWORD *)this + 3);
    *((_DWORD *)this + 5) = v10;
    *((_DWORD *)this + 3) = v12 + 1;
    vox::Mutex::Unlock(v4);
    return v9;
  }
  else
  {
    vox::Mutex::Unlock(v4);
    return nullptr;
  }
}


// ===== 88fc8c vox::DriverAndroidSource::DriverAndroidSource(void *,void *,uint) =====
vox::DriverAndroidSource *__fastcall vox::DriverAndroidSource::DriverAndroidSource(
        vox::DriverAndroidSource *this,
        void *a2,
        void *a3,
        unsigned int a4)
{
  vox::DriverCallbackSourceInterface::DriverCallbackSourceInterface(this, a2, a3, a4);
  *(_DWORD *)this = off_993AF8;
  vox::DriverCallbackSourceInterface::Init(this);
  return this;
}


// ===== 88fcc8 vox::DriverSourceInterface::~DriverSourceInterface() =====
void __fastcall vox::DriverSourceInterface::~DriverSourceInterface(vox::DriverSourceInterface *this)
{
  ;
}


// ===== 88fccc vox::DriverSourceInterface::Update(float) =====
void __fastcall vox::DriverSourceInterface::Update(vox::DriverSourceInterface *this, float a2)
{
  ;
}


// ===== 88fcd0 vox::DriverSourceInterface::AllowBufferReference(void) =====
int __fastcall vox::DriverSourceInterface::AllowBufferReference(vox::DriverSourceInterface *this)
{
  return 0;
}


// ===== 88fcd8 vox::DriverSourceInterface::FreeDisposableData(int,int &,int &) =====
void __fastcall vox::DriverSourceInterface::FreeDisposableData(
        vox::DriverSourceInterface *this,
        int a2,
        int *a3,
        int *a4)
{
  ;
}


// ===== 88fcdc vox::DriverInterface::~DriverInterface() =====
void __fastcall vox::DriverInterface::~DriverInterface(vox::DriverInterface *this)
{
  ;
}


// ===== 88fce0 vox::DriverInterface::Update(float) =====
void __fastcall vox::DriverInterface::Update(vox::DriverInterface *this, float a2)
{
  ;
}


// ===== 88fce4 vox::DriverCallbackSourceInterface::Update(float) =====
int __fastcall vox::DriverCallbackSourceInterface::Update(vox::DriverCallbackSourceInterface *this, float a2)
{
  int v3; // r3
  int result; // r0

  v3 = *((_DWORD *)this + 1);
  result = (int)(float)(a2 * 16384.0) - v3;
  *((_DWORD *)this + 1) = v3 + (result >> 3);
  return result;
}


// ===== 88fd14 vox::DriverCallbackSourceInterface::GetNbAvailableSamples(int) =====
int __fastcall vox::DriverCallbackSourceInterface::GetNbAvailableSamples(
        vox::DriverCallbackSourceInterface *this,
        int a2)
{
  int v2; // r8
  int v3; // r6
  int v4; // r9
  int v5; // r5
  int v6; // r7
  int v7; // r5
  int v8; // r11
  int v9; // r4
  int v10; // r0

  v2 = *((_DWORD *)this + 17);
  v3 = *((_DWORD *)this + 19);
  if ( v2 <= 0 )
    return -1;
  v4 = *((_DWORD *)this + 24);
  v5 = v4 + 24 * v3;
  v6 = *(unsigned __int8 *)(v5 + 20);
  if ( *(_BYTE *)(v5 + 20) )
    return 0;
  v8 = *((_DWORD *)this + 23);
  v7 = *(_DWORD *)(v5 + 4) / v8 - *(_DWORD *)(v5 + 16);
  if ( a2 > v7 )
  {
    while ( 1 )
    {
      ++v6;
      v10 = v3 + 1;
      if ( v6 == v2 )
        break;
      v3 = v10 % v2;
      v9 = v4 + 24 * (v10 % v2);
      if ( *(_BYTE *)(v9 + 20) )
        return v7;
      v7 += *(_DWORD *)(v9 + 4) / v8 - *(_DWORD *)(v9 + 16);
      if ( v7 >= a2 )
        return a2;
    }
    return -1;
  }
  return a2;
}


// ===== 88fdd4 vox::DriverCallbackSourceInterface::FillBufferStereo16NoInter(int *,int) =====
int __fastcall vox::DriverCallbackSourceInterface::FillBufferStereo16NoInter(int this, int *a2, int a3)
{
  int v3; // r4
  int v4; // r3
  int v5; // r2
  int v6; // r12
  int v7; // r9
  int v8; // r11
  int v9; // r8
  int v10; // r1
  int v11; // r3
  int v12; // r2
  int v13; // r0
  int v14; // r6
  int v15; // r0
  int v16; // r10
  int v17; // r6
  __int16 *v18; // r5
  int *v19; // r3
  int v20; // r1
  int v21; // r0
  int v22; // r0
  int v23; // r7
  int *v24; // r6
  int v25; // r10
  _BOOL4 v26; // r3
  int v27; // r3
  int v28; // r2
  int v29; // r1
  int v30; // r0
  int v31; // r1
  int v32; // t0
  int v33; // r3
  int v35; // [sp+8h] [bp-1Ch]
  int v37; // [sp+10h] [bp-14h]
  int v38; // [sp+14h] [bp-10h]
  int v39; // [sp+1Ch] [bp-8h]

  v3 = this;
  if ( *(_DWORD *)(this + 80) == 1 )
  {
    v4 = *(_DWORD *)(this + 96) + 24 * *(_DWORD *)(this + 76);
    v5 = *(unsigned __int8 *)(v4 + 20);
    if ( !*(_BYTE *)(v4 + 20) )
    {
      if ( *(_DWORD *)(v4 + 12) )
      {
        ++*(_DWORD *)(v4 + 16);
        *(_DWORD *)(*(_DWORD *)(this + 96) + 24 * *(_DWORD *)(this + 76) + 12) = v5;
      }
      this = vox::DriverCallbackSourceInterface::GetNbAvailableSamples((vox::DriverCallbackSourceInterface *)this, a3);
      if ( a3 > this )
      {
        v7 = this - *(_DWORD *)(v3 + 32);
        v38 = *(_DWORD *)(v3 + 32);
        v6 = v38;
        if ( v7 < 0 )
        {
          v38 = this;
          v7 = 0;
        }
      }
      else
      {
        v6 = *(_DWORD *)(v3 + 32);
        v7 = a3 + 1;
        v38 = 0;
      }
      if ( v7 >= v6 )
      {
        this = a3;
        if ( v6 >= a3 )
          v6 = a3;
      }
      else
      {
        v6 = v7;
      }
      v8 = *(unsigned __int8 *)(v3 + 36);
      v9 = *(_DWORD *)(v3 + 44);
      if ( *(_BYTE *)(v3 + 36) )
      {
        if ( v6 > 0 )
        {
          this = (*(_DWORD *)(v3 + 40) - v9) / v6;
          v8 = this;
        }
        else
        {
          v8 = 0;
        }
      }
      else
      {
        *(_BYTE *)(v3 + 36) = 1;
        v9 = *(_DWORD *)(v3 + 40);
      }
      if ( a3 <= 0 )
      {
LABEL_31:
        *(_DWORD *)(v3 + 44) = v9;
        return this;
      }
      v37 = 0;
      while ( 1 )
      {
        v10 = *(_DWORD *)(v3 + 76);
        v11 = *(_DWORD *)(v3 + 96);
        v12 = v38 > 0;
        v13 = v11 + 24 * v10;
        v14 = *(_DWORD *)(v13 + 4);
        v15 = *(_DWORD *)(v13 + 16);
        v16 = a3;
        v17 = (v14 >> 2) - v15;
        if ( v8 )
          v12 = 1;
        if ( a3 >= v17 )
          v16 = v17;
        v35 = v17;
        v18 = (__int16 *)(*(_DWORD *)(v11 + 24 * v10) + 4 * v15);
        if ( v12 )
        {
          if ( v16 > 0 )
          {
            v22 = v8;
            v39 = v16;
            v23 = v37;
            v24 = a2;
            v25 = v16 + v37;
            do
            {
              if ( v23 == v7 )
              {
                v22 = v9 / v38;
                if ( v9 / v38 > 0 )
                  v22 = -v22;
              }
              v26 = v23 < v6;
              if ( v23 >= v7 )
                v26 = 1;
              if ( v26 )
                v9 += v22;
              v27 = v24[1];
              *v24 += (*v18 * v9) >> 14;
              ++v23;
              v28 = v18[1] * v9;
              v18 += 2;
              v24[1] = v27 + (v28 >> 14);
              v24 += 2;
            }
            while ( v23 != v25 );
            v16 = v39;
            v8 = v22;
            v10 = *(_DWORD *)(v3 + 76);
            v11 = *(_DWORD *)(v3 + 96);
            a2 += 2 * v39;
            v37 += v39;
          }
          v9 = *(_DWORD *)(v3 + 40);
          *(_DWORD *)(v3 + 88) += 4 * v16;
          if ( v35 != v16 )
          {
LABEL_29:
            this = 24;
            *(_DWORD *)(v11 + 24 * v10 + 16) += v16;
            goto LABEL_30;
          }
        }
        else
        {
          if ( v16 > 0 )
          {
            v19 = a2;
            do
            {
              v20 = v19[1];
              ++v12;
              *v19 += (*v18 * v9) >> 14;
              v21 = v18[1];
              v18 += 2;
              v19[1] = v20 + ((v21 * v9) >> 14);
              v19 += 2;
            }
            while ( v12 != v16 );
            v10 = *(_DWORD *)(v3 + 76);
            v11 = *(_DWORD *)(v3 + 96);
            a2 += 2 * v16;
            v8 = 0;
          }
          else
          {
            v8 = 0;
          }
          *(_DWORD *)(v3 + 88) += 4 * v16;
          if ( v17 != v16 )
            goto LABEL_29;
        }
        *(_BYTE *)(v11 + 24 * v10 + 20) = 1;
        v29 = *(_DWORD *)(v3 + 68);
        v30 = *(_DWORD *)(v3 + 76) + 1;
        *(_DWORD *)(v3 + 76) = v30;
        v32 = v30 / v29;
        v31 = v30 % v29;
        this = v32;
        v33 = *(_DWORD *)(v3 + 96);
        *(_DWORD *)(v3 + 76) = v31;
        if ( *(_BYTE *)(v33 + 24 * v31 + 20) )
        {
          *(_DWORD *)(v3 + 44) = v9;
          return this;
        }
LABEL_30:
        a3 -= v16;
        if ( a3 <= 0 )
          goto LABEL_31;
      }
    }
  }
  return this;
}


// ===== 890148 vox::DriverCallbackSourceInterface::FreeAllBuffer(void) =====
_DWORD *__fastcall vox::DriverCallbackSourceInterface::FreeAllBuffer(_DWORD *this)
{
  int v1; // r3
  int v2; // r2
  int v3; // r12

  if ( (int)*(this + 17) > 0 )
  {
    v1 = 0;
    v2 = 0;
    do
    {
      ++v2;
      *(_BYTE *)(*(this + 24) + v1 + 20) = 1;
      v3 = *(this + 17);
      *(this + 19) = 0;
      *(this + 18) = 0;
      v1 += 24;
    }
    while ( v3 > v2 );
  }
  return this;
}


// ===== 890198 vox::DriverCallbackSourceInterface::Set3DParameters(vox::ListenerParameters,vox::Vox3DGeneralParameters) =====
float __fastcall vox::DriverCallbackSourceInterface::Set3DParameters(
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
        int a11,
        int a12,
        float a13,
        float a14,
        int a15)
{
  float result; // r0

  vox::DriverCallbackSourceInterface::s_listenerParameters = a1;
  dword_A33E70 = a2;
  dword_A33E74 = a3;
  dword_A33E78 = a4;
  dword_A33E7C = a5;
  dword_A33E80 = a6;
  dword_A33E84 = a7;
  dword_A33E88 = a8;
  dword_A33E8C = a9;
  dword_A33E90 = a10;
  dword_A33E94 = a11;
  dword_A33E98 = a12;
  vox::DriverCallbackSourceInterface::s_distanceModel = a15;
  vox::DriverCallbackSourceInterface::s_dopplerFactor = LODWORD(a13);
  LODWORD(result) = a13 > 0.0;
  if ( a13 > 0.0 )
  {
    *(float *)&vox::DriverCallbackSourceInterface::s_alteredSpeedOfSound = a14 / a13;
    return a14 / a13;
  }
  else
  {
    vox::DriverCallbackSourceInterface::s_alteredSpeedOfSound = LODWORD(a14);
  }
  return result;
}


// ===== 890254 vox::DriverCallbackSourceInterface::SetDriverCallbackPeriod(float) =====
int __fastcall vox::DriverCallbackSourceInterface::SetDriverCallbackPeriod(
        vox::DriverCallbackSourceInterface *this,
        float a2)
{
  int result; // r0

  result = (int)(float)(*(float *)&this * 16384.0);
  vox::DriverCallbackSourceInterface::s_driverCallbackPeriod = result;
  return result;
}


// ===== 890288 vox::DriverCallbackSourceInterface::SetDriverSampleRate(int) =====
int __fastcall vox::DriverCallbackSourceInterface::SetDriverSampleRate(int this, int a2)
{
  vox::DriverCallbackSourceInterface::s_driverSampleRate = this;
  return this;
}


// ===== 8902a8 vox::DriverCallbackInterface::Init(void *) =====
int *__fastcall vox::DriverCallbackInterface::Init(vox::DriverCallbackInterface *this, void *a2)
{
  dword_A33EA0 = 0;
  dword_A33EA8 = 0;
  vox::DriverCallbackInterface::m_sWorkBuffer = 0;
  vox::DriverCallbackInterface::m_sMixingBuffer = 0;
  return &vox::DriverCallbackInterface::m_sWorkBuffer;
}


// ===== 8902e4 vox::DriverCallbackInterface::_Set3DParameter(int,void *) =====
_DWORD *__fastcall vox::DriverCallbackInterface::_Set3DParameter(_DWORD *this, int a2, _DWORD *a3)
{
  switch ( a2 )
  {
    case 0:
      *(this + 6) = *a3;
      break;
    case 1:
      *(this + 7) = *a3;
      break;
    case 2:
      *(this + 8) = *a3;
      break;
    case 3:
      *(this + 9) = *a3;
      *(this + 10) = a3[1];
      *(this + 11) = a3[2];
      break;
    case 4:
      *(this + 12) = *a3;
      *(this + 13) = a3[1];
      *(this + 14) = a3[2];
      break;
    case 5:
      *(this + 15) = *a3;
      *(this + 16) = a3[1];
      *(this + 17) = a3[2];
      *(this + 18) = a3[3];
      *(this + 19) = a3[4];
      *(this + 20) = a3[5];
      break;
    default:
      return this;
  }
  return this;
}


// ===== 89039c vox::DriverCallbackInterface::SetDefaultParameter(void) =====
_DWORD *__fastcall vox::DriverCallbackInterface::SetDefaultParameter(vox::DriverCallbackInterface *this)
{
  _DWORD v3[6]; // [sp+0h] [bp-38h] BYREF
  _DWORD v4[3]; // [sp+18h] [bp-20h] BYREF
  _DWORD v5[3]; // [sp+24h] [bp-14h] BYREF
  int v6; // [sp+30h] [bp-8h] BYREF
  int v7; // [sp+34h] [bp-4h] BYREF

  v7 = 1065353216;
  vox::DriverCallbackInterface::_Set3DParameter(this, 0, &v7);
  v7 = 1135322726;
  vox::DriverCallbackInterface::_Set3DParameter(this, 1, &v7);
  v6 = 2;
  vox::DriverCallbackInterface::_Set3DParameter(this, 2, &v6);
  memset(v5, 0, sizeof(v5));
  vox::DriverCallbackInterface::_Set3DParameter(this, 3, v5);
  memset(v4, 0, sizeof(v4));
  vox::DriverCallbackInterface::_Set3DParameter(this, 4, v4);
  v3[5] = 0;
  v3[2] = -1082130432;
  v3[4] = 1065353216;
  v3[0] = 0;
  v3[1] = 0;
  v3[3] = 0;
  return vox::DriverCallbackInterface::_Set3DParameter(this, 5, v3);
}


// ===== 890464 `global constructor keyed to'.._.._src_vox_driver_callback_template.cpp =====
int `global constructor keyed to'.._.._src_vox_driver_callback_template.cpp()
{
  dword_A33EA8 = 0;
  dword_A33E98 = 0;
  dword_A33EA0 = 0;
  vox::DriverCallbackSourceInterface::s_listenerParameters = 0;
  dword_A33E70 = 0;
  dword_A33E74 = 0;
  dword_A33E78 = 0;
  dword_A33E7C = 0;
  dword_A33E80 = 0;
  dword_A33E84 = 0;
  dword_A33E88 = 0;
  dword_A33E8C = 0;
  dword_A33E90 = 0;
  dword_A33E94 = 0;
  vox::DriverCallbackInterface::m_sWorkBuffer = 0;
  vox::DriverCallbackInterface::m_sMixingBuffer = 0;
  return 0;
}


// ===== 8904e8 vox::DriverCallbackInterface::GetWorkBuffer(int) =====
int *__fastcall vox::DriverCallbackInterface::GetWorkBuffer(vox::DriverCallbackInterface *this, int a2)
{
  vox::DriverCallbackInterface *v2; // r6
  void *v3; // r0

  v2 = this;
  if ( vox::DriverCallbackInterface::m_sWorkBuffer < (int)this )
  {
    if ( dword_A33EA0 )
      VoxFree((void *)dword_A33EA0);
    v3 = VoxAlloc((size_t)v2);
    if ( !v3 )
      v2 = nullptr;
    vox::DriverCallbackInterface::m_sWorkBuffer = (int)v2;
    dword_A33EA0 = (int)v3;
  }
  return &vox::DriverCallbackInterface::m_sWorkBuffer;
}


// ===== 890548 vox::DriverCallbackInterface::_FillBuffer(short *,int) =====
float __fastcall vox::DriverCallbackInterface::_FillBuffer(vox::DriverCallbackInterface *this, __int16 *a2, int a3)
{
  float result; // r0
  int v7; // r3
  char *v8; // r7
  char *i; // r8
  char *v10; // t1
  int v11; // r3
  int v12; // r2
  __int16 v13; // r2

  result = vox::DriverCallbackSourceInterface::Set3DParameters(
             *((_DWORD *)this + 9),
             *((_DWORD *)this + 10),
             *((_DWORD *)this + 11),
             *((_DWORD *)this + 12),
             *((_DWORD *)this + 13),
             *((_DWORD *)this + 14),
             *((_DWORD *)this + 15),
             *((_DWORD *)this + 16),
             *((_DWORD *)this + 17),
             *((_DWORD *)this + 18),
             *((_DWORD *)this + 19),
             *((_DWORD *)this + 20),
             *((float *)this + 6),
             *((float *)this + 7),
             *((_DWORD *)this + 8));
  v7 = vox::DriverCallbackInterface::m_sMixingBuffer;
  if ( a3 <= vox::DriverCallbackInterface::m_sMixingBuffer )
  {
LABEL_10:
    if ( v7 > 0 )
    {
      LC_API_MEMSET_0((void *)dword_A33EA8, 0, 8 * a3);
      v10 = *((char **)this + 4);
      v8 = (char *)this + 16;
      for ( i = v10; i != v8; i = *(char **)i )
        (*(void (__fastcall **)(int, int, int))(**((_DWORD **)i + 2) + 96))(*((_DWORD *)i + 2), dword_A33EA8, a3);
      result = *(float *)&dword_A33EA8;
      if ( 2 * a3 > 0 )
      {
        v11 = 0;
        do
        {
          v12 = *(_DWORD *)(LODWORD(result) + 1 * v11);
          if ( (unsigned int)(v12 + 0x8000) > 0xFFFF )
          {
            if ( v12 < 0 )
              v13 = 0x8000;
            else
              v13 = 0x7FFF;
            a2[v11] = v13;
          }
          else
          {
            a2[v11] = v12;
          }
          ++v11;
        }
        while ( v11 != 2 * a3 );
      }
    }
    return result;
  }
  if ( dword_A33EA8 )
    VoxFree((void *)dword_A33EA8);
  result = COERCE_FLOAT(VoxAlloc(8 * a3));
  dword_A33EA8 = LODWORD(result);
  if ( result == 0.0 )
    vox::DriverCallbackInterface::m_sMixingBuffer = 0;
  else
    vox::DriverCallbackInterface::m_sMixingBuffer = a3;
  if ( result != 0.0 )
  {
    v7 = a3;
    goto LABEL_10;
  }
  return result;
}


// ===== 8906a0 vox::DriverCallbackInterface::FillBuffer(short *,int) =====
int __fastcall vox::DriverCallbackInterface::FillBuffer(pthread_mutex_t *this, __int16 *a2, int a3)
{
  pthread_mutex_t *v3; // r5

  v3 = this + 1;
  vox::Mutex::Lock(this + 1);
  if ( *((_BYTE *)this + 8) )
    vox::DriverCallbackInterface::_FillBuffer((vox::DriverCallbackInterface *)this, a2, a3);
  return vox::Mutex::Unlock(v3);
}


// ===== 8906e4 vox::DriverCallbackInterface::Set3DParameter(int,void *) =====
int __fastcall vox::DriverCallbackInterface::Set3DParameter(pthread_mutex_t *this, int a2, _DWORD *a3)
{
  pthread_mutex_t *v3; // r4

  v3 = this + 1;
  vox::Mutex::Lock(this + 1);
  vox::DriverCallbackInterface::_Set3DParameter(this, a2, a3);
  return vox::Mutex::Unlock(v3);
}


// ===== 89071c vox::DriverCallbackSourceInterface::FreeDisposableData(int,int &,int &) =====
int __fastcall vox::DriverCallbackSourceInterface::FreeDisposableData(pthread_mutex_t *this, int a2, int *a3, int *a4)
{
  pthread_mutex_t *v4; // r4
  int v7; // r6
  volatile int value; // r8
  int v9; // r5
  int v10; // r3
  int v11; // r2
  volatile int v12; // r11
  int v13; // r7
  int v14; // r4
  int *v15; // r9
  int v16; // r10
  int v17; // r3
  int v18; // r12
  int v19; // r11
  volatile int v20; // r0
  int v21; // r2
  int v22; // r1
  int v23; // r6
  int v24; // r3
  int v25; // r5
  int v26; // r7
  int v28; // r12
  int v29; // r2
  int v31; // [sp+4h] [bp-18h]
  int v32; // [sp+4h] [bp-18h]
  int v33; // [sp+8h] [bp-14h]
  pthread_mutex_t *mutex; // [sp+Ch] [bp-10h]
  pthread_mutex_t *v35; // [sp+10h] [bp-Ch]
  int *v36; // [sp+14h] [bp-8h]

  v4 = this;
  mutex = this + 2;
  vox::Mutex::Lock(this + 2);
  v7 = 0;
  *a3 = 0;
  *a4 = 0;
  if ( a2 <= 0 )
    return vox::Mutex::Unlock(mutex);
  value = v4[23].value;
  v9 = v4[17].value;
  v10 = v4[16].value
      + ((vox::DriverCallbackSourceInterface::s_driverSampleRate
        + vox::DriverCallbackSourceInterface::s_driverCallbackPeriod
        * vox::DriverCallbackSourceInterface::s_driverSampleRate) >> 14)
      * v4[16].value;
  v11 = v4[19].value;
  v33 = v11;
  v31 = 3 * value + (v10 >> 14) * 3 * value;
  if ( v9 <= 0 )
  {
LABEL_9:
    v32 = 0;
    v19 = -1;
  }
  else
  {
    v12 = v4[24].value;
    v13 = 0;
    v35 = v4;
    v36 = a3;
    v14 = 0;
    v15 = a4;
    v16 = 3 * value + (v10 >> 14) * 3 * value;
    while ( 1 )
    {
      v17 = v12 + 24 * v11;
      ++v7;
      if ( !*(_BYTE *)(v17 + 20) )
      {
        v18 = *(_DWORD *)(v17 + 16) * value;
        v13 += *(_DWORD *)(v17 + 4) - v18;
        if ( v16 < v13 )
          break;
      }
      if ( v7 == v9 )
      {
        a4 = v15;
        v4 = v35;
        a3 = v36;
        goto LABEL_9;
      }
      v14 = v13;
      v11 = (v11 + 1) % v9;
    }
    a4 = v15;
    v28 = v18 + v31 - v14;
    v4 = v35;
    a3 = v36;
    v32 = v28;
    v19 = v11;
  }
  if ( v33 )
    v20 = v33 - 1;
  else
    v20 = v9 - 1;
  if ( v9 <= 0 )
    return vox::Mutex::Unlock(mutex);
  v21 = 0;
  v22 = 0;
  while ( 1 )
  {
    v23 = 24 * v20;
    v24 = v4[24].value + 24 * v20;
    if ( *(_BYTE *)(v24 + 20) )
      goto LABEL_19;
    v25 = *(_DWORD *)(v24 + 4);
    v26 = *(_DWORD *)(v24 + 16) * v4[23].value;
    v22 += v25 - v26;
    if ( v20 == v19 )
      break;
    if ( a2 <= v22 )
    {
      *(_DWORD *)(v24 + 4) = v26 + v22 - a2;
      *a4 = *a4 - *(_DWORD *)(v4[24].value + v23 + 4) + v25;
      v4[18].value = (v20 + 1) % v4[17].value;
      return vox::Mutex::Unlock(mutex);
    }
    *(_BYTE *)(v24 + 20) = 1;
    ++*a3;
    *a4 += v25;
    v9 = v4[17].value;
LABEL_19:
    ++v21;
    if ( v20 )
      --v20;
    else
      v20 = v9 - 1;
    if ( v9 <= v21 )
      return vox::Mutex::Unlock(mutex);
  }
  v29 = v26 + v22 - a2;
  if ( v32 <= v29 )
  {
    *(_DWORD *)(v24 + 4) = v29;
    goto LABEL_31;
  }
  *(_DWORD *)(v24 + 4) = v32;
  if ( v32 )
  {
LABEL_31:
    v4[18].value = (v20 + 1) % v4[17].value;
  }
  else
  {
    *(_BYTE *)(v4[24].value + v23 + 20) = 1;
    ++*a3;
    v4[18].value = v20;
  }
  *a4 = *a4 - *(_DWORD *)(v4[24].value + v23 + 4) + v25;
  return vox::Mutex::Unlock(mutex);
}


// ===== 8909e8 vox::DriverCallbackSourceInterface::Set3DParameter(int,void *) =====
int __fastcall vox::DriverCallbackSourceInterface::Set3DParameter(pthread_mutex_t *this, int a2, pthread_mutex_t *a3)
{
  pthread_mutex_t *v3; // r5

  v3 = this + 2;
  vox::Mutex::Lock(this + 2);
  if ( *((_DWORD *)this + 21) )
  {
    switch ( a2 )
    {
      case 0:
        *(this + 36) = (pthread_mutex_t)a3->value;
        break;
      case 1:
        *(this + 37) = (pthread_mutex_t)a3->value;
        break;
      case 2:
        *(this + 38) = (pthread_mutex_t)a3->value;
        break;
      case 3:
        *(this + 39) = (pthread_mutex_t)a3->value;
        break;
      case 4:
        *(this + 40) = (pthread_mutex_t)a3->value;
        break;
      case 5:
        *(this + 41) = (pthread_mutex_t)a3->value;
        break;
      case 6:
        *(this + 42) = (pthread_mutex_t)a3->value;
        break;
      case 8:
        *(this + 27) = (pthread_mutex_t)a3->value;
        *(this + 28) = a3[1];
        *(this + 29) = a3[2];
        break;
      case 9:
        *(this + 30) = (pthread_mutex_t)a3->value;
        *(this + 31) = a3[1];
        *(this + 32) = a3[2];
        break;
      case 10:
        *(this + 33) = (pthread_mutex_t)a3->value;
        *(this + 34) = a3[1];
        *(this + 35) = a3[2];
        break;
      default:
        return vox::Mutex::Unlock(v3);
    }
  }
  return vox::Mutex::Unlock(v3);
}


// ===== 890af8 vox::DriverCallbackSourceInterface::Cleanup(void) =====
int __fastcall vox::DriverCallbackSourceInterface::Cleanup(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r5
  int v3; // r3

  v1 = this + 2;
  vox::Mutex::Lock(this + 2);
  v3 = *((_DWORD *)this + 24);
  if ( v3 != *((_DWORD *)this + 25) )
    *((_DWORD *)this + 25) = v3;
  return vox::Mutex::Unlock(v1);
}


// ===== 890b28 vox::DriverCallbackSourceInterface::SetByteOffset(int) =====
int __fastcall vox::DriverCallbackSourceInterface::SetByteOffset(pthread_mutex_t *this, int a2)
{
  pthread_mutex_t *v2; // r4

  v2 = this + 2;
  vox::Mutex::Lock(this + 2);
  *((_DWORD *)this + 22) = a2;
  return vox::Mutex::Unlock(v2);
}


// ===== 890b50 vox::DriverCallbackSourceInterface::GetByteOffset(void) =====
int __fastcall vox::DriverCallbackSourceInterface::GetByteOffset(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r4
  int v3; // r5

  v1 = this + 2;
  vox::Mutex::Lock(this + 2);
  v3 = *((_DWORD *)this + 22);
  vox::Mutex::Unlock(v1);
  return v3;
}


// ===== 890b78 vox::DriverCallbackSourceInterface::GetPitch(void) =====
int __fastcall vox::DriverCallbackSourceInterface::GetPitch(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r4
  float v3; // r5

  v1 = this + 2;
  vox::Mutex::Lock(this + 2);
  v3 = (float)*((int *)this + 13) * 0.000061035;
  vox::Mutex::Unlock(v1);
  return LODWORD(v3);
}


// ===== 890bb0 vox::DriverCallbackSourceInterface::GetGain(void) =====
int __fastcall vox::DriverCallbackSourceInterface::GetGain(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r4
  float v3; // r5

  v1 = this + 2;
  vox::Mutex::Lock(this + 2);
  v3 = (float)*((int *)this + 10) * 0.000061035;
  vox::Mutex::Unlock(v1);
  return LODWORD(v3);
}


// ===== 890be8 vox::DriverCallbackSourceInterface::SetPitch(float) =====
int __fastcall vox::DriverCallbackSourceInterface::SetPitch(pthread_mutex_t *this, float a2)
{
  pthread_mutex_t *v2; // r6
  _BOOL4 v5; // r0
  int v7; // r0
  int v8; // r3
  int v9; // r1
  int v10; // r0

  v2 = this + 2;
  vox::Mutex::Lock(this + 2);
  v5 = a2 > 2.0;
  if ( a2 > 2.0 )
    LODWORD(a2) = 0x8000;
  if ( v5 )
  {
    *((float *)this + 13) = a2;
  }
  else
  {
    if ( a2 > 0.0 )
    {
      v7 = (int)(float)(a2 * 16384.0);
      v8 = *((_DWORD *)this + 20);
      LODWORD(a2) = (int)(float)(a2 * 16384.0);
      *((_DWORD *)this + 13) = v7;
      if ( v8 != 1 )
      {
        *((_DWORD *)this + 14) = v7;
        return vox::Mutex::Unlock(v2);
      }
      goto LABEL_14;
    }
    LODWORD(a2) = 1;
    *((_DWORD *)this + 13) = 1;
  }
  if ( *((_DWORD *)this + 20) != 1 )
  {
    *((float *)this + 14) = a2;
    return vox::Mutex::Unlock(v2);
  }
LABEL_14:
  v9 = *((_DWORD *)this + 1);
  if ( v9 > vox::DriverCallbackSourceInterface::s_driverCallbackPeriod )
    v10 = (vox::DriverCallbackSourceInterface::s_driverCallbackPeriod << 14) / v9;
  else
    v10 = 0x4000;
  *((_DWORD *)this + 15) = ((LODWORD(a2) - *((_DWORD *)this + 14)) * v10) >> 14;
  return vox::Mutex::Unlock(v2);
}


// ===== 890ccc vox::DriverCallbackSourceInterface::SetGain(float) =====
int __fastcall vox::DriverCallbackSourceInterface::SetGain(pthread_mutex_t *this, float a2)
{
  pthread_mutex_t *v2; // r4

  v2 = this + 2;
  vox::Mutex::Lock(this + 2);
  if ( a2 <= 1.0 )
  {
    if ( a2 >= 0.0 )
      *((_DWORD *)this + 10) = (int)(float)(a2 * 16384.0);
    else
      *((_DWORD *)this + 10) = 0;
  }
  else
  {
    *((_DWORD *)this + 10) = 0x4000;
  }
  return vox::Mutex::Unlock(v2);
}


// ===== 890d40 vox::DriverCallbackSourceInterface::UploadData(void *,int) =====
int __fastcall vox::DriverCallbackSourceInterface::UploadData(pthread_mutex_t *this, void *a2, int a3)
{
  pthread_mutex_t *v3; // r5
  int v7; // r3
  bool v8; // cc
  int v9; // r0
  int v10; // r1
  int v11; // r1
  int v12; // r0

  v3 = this + 2;
  vox::Mutex::Lock(this + 2);
  v7 = *((_DWORD *)this + 20);
  v8 = v7 <= -1;
  if ( v7 != -1 )
    v8 = a3 <= 0;
  if ( !v8 )
  {
    v9 = *((_DWORD *)this + 24);
    v10 = 24 * *((_DWORD *)this + 18);
    if ( *(_BYTE *)(v9 + v10 + 20) )
    {
      *(_DWORD *)(v9 + v10) = a2;
      *(_DWORD *)(*((_DWORD *)this + 24) + 24 * *((_DWORD *)this + 18) + 4) = a3;
      *(_DWORD *)(*((_DWORD *)this + 24) + 24 * *((_DWORD *)this + 18) + 8) = a3;
      *(_BYTE *)(*((_DWORD *)this + 24) + 24 * *((_DWORD *)this + 18) + 20) = 0;
      *(_DWORD *)(*((_DWORD *)this + 24) + 24 * *((_DWORD *)this + 18) + 12) = 0;
      *(_DWORD *)(*((_DWORD *)this + 24) + 24 * *((_DWORD *)this + 18) + 16) = 0;
      v11 = *((_DWORD *)this + 17);
      v12 = *((_DWORD *)this + 18) + 1;
      *((_DWORD *)this + 18) = v12;
      *((_DWORD *)this + 18) = v12 % v11;
    }
  }
  return vox::Mutex::Unlock(v3);
}


// ===== 890e0c vox::DriverCallbackSourceInterface::NeedData(void) =====
int __fastcall vox::DriverCallbackSourceInterface::NeedData(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r5
  int v3; // r1
  int v5; // r4

  v1 = this + 2;
  vox::Mutex::Lock(this + 2);
  if ( *((_DWORD *)this + 20) != -1 && (v3 = *((_DWORD *)this + 24), -1431655765 * ((*((_DWORD *)this + 25) - v3) >> 3)) )
  {
    v5 = *(unsigned __int8 *)(v3 + 24 * *((_DWORD *)this + 18) + 20);
    vox::Mutex::Unlock(v1);
    return v5;
  }
  else
  {
    vox::Mutex::Unlock(v1);
    return 0;
  }
}


// ===== 890e8c vox::DriverCallbackSourceInterface::GetState(void) =====
int __fastcall vox::DriverCallbackSourceInterface::GetState(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r6
  int v3; // r4

  v1 = this + 2;
  vox::Mutex::Lock(this + 2);
  v3 = *((_DWORD *)this + 20);
  if ( v3 == 1 && *(_BYTE *)(*((_DWORD *)this + 24) + 24 * *((_DWORD *)this + 19) + 20) )
    v3 = 3;
  vox::Mutex::Unlock(v1);
  return v3;
}


// ===== 890ee8 vox::DriverCallbackSourceInterface::Reset(void) =====
int __fastcall vox::DriverCallbackSourceInterface::Reset(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r5

  v1 = this + 2;
  vox::Mutex::Lock(this + 2);
  if ( -1431655765 * ((*((_DWORD *)this + 25) - *((_DWORD *)this + 24)) >> 3) )
  {
    *((_DWORD *)this + 20) = 0;
    vox::DriverCallbackSourceInterface::FreeAllBuffer(this);
    *((_DWORD *)this + 22) = 0;
  }
  return vox::Mutex::Unlock(v1);
}


// ===== 890f48 vox::DriverCallbackSourceInterface::Pause(void) =====
int __fastcall vox::DriverCallbackSourceInterface::Pause(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r5

  v1 = this + 2;
  vox::Mutex::Lock(this + 2);
  if ( *((_DWORD *)this + 20) == 1 )
  {
    *((_DWORD *)this + 11) = 0;
    *((_DWORD *)this + 20) = 2;
    *((_DWORD *)this + 12) = 0;
  }
  return vox::Mutex::Unlock(v1);
}


// ===== 890f84 vox::DriverCallbackSourceInterface::Stop(void) =====
int __fastcall vox::DriverCallbackSourceInterface::Stop(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r5

  v1 = this + 2;
  vox::Mutex::Lock(this + 2);
  if ( *((_DWORD *)this + 20) != -1 )
  {
    *((_DWORD *)this + 20) = 3;
    vox::DriverCallbackSourceInterface::FreeAllBuffer(this);
    *((_DWORD *)this + 11) = 0;
    *((_DWORD *)this + 22) = 0;
    *((_DWORD *)this + 12) = 0;
  }
  return vox::Mutex::Unlock(v1);
}


// ===== 890fd0 vox::DriverCallbackSourceInterface::Play(void) =====
int __fastcall vox::DriverCallbackSourceInterface::Play(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r5

  v1 = this + 2;
  vox::Mutex::Lock(this + 2);
  if ( *((_DWORD *)this + 20) != -1 )
    *((_DWORD *)this + 20) = 1;
  return vox::Mutex::Unlock(v1);
}


// ===== 891000 vox::DriverInterface::~DriverInterface() =====
void __fastcall vox::DriverInterface::~DriverInterface(vox::DriverInterface *this)
{
  LC_API_FREE_0(this);
}


// ===== 891014 vox::DriverSourceInterface::~DriverSourceInterface() =====
void __fastcall vox::DriverSourceInterface::~DriverSourceInterface(vox::DriverSourceInterface *this)
{
  LC_API_FREE_0(this);
}


// ===== 891028 vox::DriverCallbackInterface::~DriverCallbackInterface() =====
void __fastcall vox::DriverCallbackInterface::~DriverCallbackInterface(pthread_mutex_t *this)
{
  pthread_mutex_t *v2; // r7
  vox::DriverCallbackInterface **v3; // r0
  vox::DriverCallbackInterface *v4; // r4

  this->value = (volatile int)off_993C28;
  v2 = this + 1;
  vox::Mutex::Lock(this + 1);
  vox::DriverCallbackInterface::m_sWorkBuffer = 0;
  if ( dword_A33EA0 )
    VoxFree((void *)dword_A33EA0);
  dword_A33EA0 = 0;
  vox::DriverCallbackInterface::m_sMixingBuffer = 0;
  if ( dword_A33EA8 )
    VoxFree((void *)dword_A33EA8);
  dword_A33EA8 = 0;
  vox::Mutex::Unlock(v2);
  v3 = *((vox::DriverCallbackInterface ***)this + 4);
  if ( v3 != (vox::DriverCallbackInterface **)(this + 4) )
  {
    while ( 1 )
    {
      v4 = *v3;
      VoxFree(v3);
      if ( v4 == (vox::DriverCallbackInterface *)(this + 4) )
        break;
      v3 = (vox::DriverCallbackInterface **)v4;
    }
    v3 = (vox::DriverCallbackInterface **)(this + 4);
  }
  *((_DWORD *)this + 4) = v3;
  *((_DWORD *)this + 5) = v3;
  vox::Mutex::~Mutex((vox::Mutex *)v2);
}


// ===== 891104 vox::DriverCallbackInterface::~DriverCallbackInterface() =====
void __fastcall vox::DriverCallbackInterface::~DriverCallbackInterface(pthread_mutex_t *this)
{
  vox::DriverCallbackInterface::~DriverCallbackInterface(this);
  LC_API_FREE_0(this);
}


// ===== 891120 vox::DriverCallbackInterface::~DriverCallbackInterface() =====
void __fastcall vox::DriverCallbackInterface::~DriverCallbackInterface(pthread_mutex_t *this)
{
  pthread_mutex_t *v2; // r7
  vox::DriverCallbackInterface **v3; // r0
  vox::DriverCallbackInterface *v4; // r4

  this->value = (volatile int)off_993C28;
  v2 = this + 1;
  vox::Mutex::Lock(this + 1);
  vox::DriverCallbackInterface::m_sWorkBuffer = 0;
  if ( dword_A33EA0 )
    VoxFree((void *)dword_A33EA0);
  dword_A33EA0 = 0;
  vox::DriverCallbackInterface::m_sMixingBuffer = 0;
  if ( dword_A33EA8 )
    VoxFree((void *)dword_A33EA8);
  dword_A33EA8 = 0;
  vox::Mutex::Unlock(v2);
  v3 = *((vox::DriverCallbackInterface ***)this + 4);
  if ( v3 != (vox::DriverCallbackInterface **)(this + 4) )
  {
    while ( 1 )
    {
      v4 = *v3;
      VoxFree(v3);
      if ( v4 == (vox::DriverCallbackInterface *)(this + 4) )
        break;
      v3 = (vox::DriverCallbackInterface **)v4;
    }
    v3 = (vox::DriverCallbackInterface **)(this + 4);
  }
  *((_DWORD *)this + 4) = v3;
  *((_DWORD *)this + 5) = v3;
  vox::Mutex::~Mutex((vox::Mutex *)v2);
}


// ===== 8911fc vox::DriverCallbackSourceInterface::~DriverCallbackSourceInterface() =====
void __fastcall vox::DriverCallbackSourceInterface::~DriverCallbackSourceInterface(pthread_mutex_t *this)
{
  void *v2; // r0

  this->value = (volatile int)off_993C80;
  vox::DriverCallbackSourceInterface::Cleanup(this);
  v2 = *((void **)this + 24);
  if ( v2 )
    VoxFree(v2);
  vox::Mutex::~Mutex((vox::Mutex *)(this + 2));
}


// ===== 891248 vox::DriverCallbackSourceInterface::~DriverCallbackSourceInterface() =====
void __fastcall vox::DriverCallbackSourceInterface::~DriverCallbackSourceInterface(pthread_mutex_t *this)
{
  vox::DriverCallbackSourceInterface::~DriverCallbackSourceInterface(this);
  LC_API_FREE_0(this);
}


// ===== 891264 vox::DriverCallbackSourceInterface::~DriverCallbackSourceInterface() =====
void __fastcall vox::DriverCallbackSourceInterface::~DriverCallbackSourceInterface(pthread_mutex_t *this)
{
  void *v2; // r0

  this->value = (volatile int)off_993C80;
  vox::DriverCallbackSourceInterface::Cleanup(this);
  v2 = *((void **)this + 24);
  if ( v2 )
    VoxFree(v2);
  vox::Mutex::~Mutex((vox::Mutex *)(this + 2));
}


// ===== 8912b0 vox::DriverCallbackInterface::DriverCallbackInterface(void) =====
vox::DriverCallbackInterface *__fastcall vox::DriverCallbackInterface::DriverCallbackInterface(
        vox::DriverCallbackInterface *this)
{
  *(_DWORD *)this = off_993C28;
  vox::Mutex::Mutex((vox::DriverCallbackInterface *)((char *)this + 4));
  *((_BYTE *)this + 8) = 0;
  *((_DWORD *)this + 3) = 1;
  *((_DWORD *)this + 5) = (char *)this + 16;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 4) = (char *)this + 16;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  return this;
}


// ===== 891334 vox::DriverCallbackInterface::DriverCallbackInterface(void) =====
vox::DriverCallbackInterface *__fastcall vox::DriverCallbackInterface::DriverCallbackInterface(
        vox::DriverCallbackInterface *this)
{
  *(_DWORD *)this = off_993C28;
  vox::Mutex::Mutex((vox::DriverCallbackInterface *)((char *)this + 4));
  *((_BYTE *)this + 8) = 0;
  *((_DWORD *)this + 3) = 1;
  *((_DWORD *)this + 5) = (char *)this + 16;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 4) = (char *)this + 16;
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  return this;
}


// ===== 8913b8 vox::DriverCallbackSourceInterface::DriverCallbackSourceInterface(void *,void *,uint) =====
vox::DriverCallbackSourceInterface *__fastcall vox::DriverCallbackSourceInterface::DriverCallbackSourceInterface(
        vox::DriverCallbackSourceInterface *this,
        _DWORD *a2,
        int *a3,
        unsigned int a4)
{
  int v8; // r1
  int v9; // r2
  int v10; // r3
  int v11; // r3
  int v12; // r2
  int v14; // r3

  *(_DWORD *)this = off_993C80;
  vox::Mutex::Mutex((vox::DriverCallbackSourceInterface *)((char *)this + 8));
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 16) = 0x4000;
  *((_DWORD *)this + 21) = a4;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 35) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_BYTE *)this + 36) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0x4000;
  *((_DWORD *)this + 14) = 0x4000;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 27) = 0;
  *((_DWORD *)this + 28) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 31) = 0;
  *((_DWORD *)this + 32) = 0;
  *((_DWORD *)this + 33) = 0;
  *((_DWORD *)this + 34) = 0;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  *((_DWORD *)this + 4) = *a2;
  *((_DWORD *)this + 5) = v8;
  *((_DWORD *)this + 6) = v9;
  *((_DWORD *)this + 7) = v10;
  *((_DWORD *)this + 8) = (int)(float)((float)*((int *)this + 5) * 0.003);
  if ( a3 )
    v11 = *a3;
  else
    v11 = 3;
  v12 = *((_DWORD *)this + 4);
  *((_DWORD *)this + 17) = v11;
  v14 = v12 * (*((int *)this + 6) >> 3);
  *((_DWORD *)this + 1) = 540;
  *((_DWORD *)this + 23) = v14;
  return this;
}


// ===== 8914bc vox::DriverCallbackSourceInterface::DriverCallbackSourceInterface(void *,void *,uint) =====
vox::DriverCallbackSourceInterface *__fastcall vox::DriverCallbackSourceInterface::DriverCallbackSourceInterface(
        vox::DriverCallbackSourceInterface *this,
        _DWORD *a2,
        int *a3,
        unsigned int a4)
{
  int v8; // r1
  int v9; // r2
  int v10; // r3
  int v11; // r3
  int v12; // r2
  int v14; // r3

  *(_DWORD *)this = off_993C80;
  vox::Mutex::Mutex((vox::DriverCallbackSourceInterface *)((char *)this + 8));
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 16) = 0x4000;
  *((_DWORD *)this + 21) = a4;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 35) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_BYTE *)this + 36) = 0;
  *((_DWORD *)this + 11) = 0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 13) = 0x4000;
  *((_DWORD *)this + 14) = 0x4000;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 27) = 0;
  *((_DWORD *)this + 28) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 31) = 0;
  *((_DWORD *)this + 32) = 0;
  *((_DWORD *)this + 33) = 0;
  *((_DWORD *)this + 34) = 0;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  *((_DWORD *)this + 4) = *a2;
  *((_DWORD *)this + 5) = v8;
  *((_DWORD *)this + 6) = v9;
  *((_DWORD *)this + 7) = v10;
  *((_DWORD *)this + 8) = (int)(float)((float)*((int *)this + 5) * 0.003);
  if ( a3 )
    v11 = *a3;
  else
    v11 = 3;
  v12 = *((_DWORD *)this + 4);
  *((_DWORD *)this + 17) = v11;
  v14 = v12 * (*((int *)this + 6) >> 3);
  *((_DWORD *)this + 1) = 540;
  *((_DWORD *)this + 23) = v14;
  return this;
}


// ===== 8915c0 vox::DriverCallbackSourceInterface::GetWorkData(uchar *,int,int) =====
size_t __fastcall vox::DriverCallbackSourceInterface::GetWorkData(
        vox::DriverCallbackSourceInterface *this,
        unsigned __int8 *a2,
        int a3,
        int a4)
{
  int v5; // r12
  int v6; // r0
  int v7; // r1
  signed int v9; // r5
  int v10; // r1
  int v11; // lr
  _DWORD *v12; // r3
  int v13; // r1
  size_t v14; // r10
  signed int v15; // r7
  unsigned __int8 *v16; // r0
  int v17; // r2
  int v18; // r3
  int v19; // r8
  int v21; // r3
  int v22; // r3
  int v23; // r2
  int v24; // r11
  unsigned int v25; // r9
  unsigned int v26; // r3
  int v27; // r1
  int v28; // r0
  int v29; // r1
  int v30; // r1
  int v31; // r0
  size_t v33; // [sp+8h] [bp-14h]
  int v34; // [sp+Ch] [bp-10h]
  signed int v35; // [sp+10h] [bp-Ch]
  int v36; // [sp+14h] [bp-8h]

  v5 = *((_DWORD *)this + 24);
  v6 = *((_DWORD *)this + 19);
  v7 = v5 + 24 * v6;
  v33 = a3;
  if ( *(_BYTE *)(v7 + 20) )
    return 0;
  if ( a3 > 0 )
  {
    v9 = a3;
    v10 = v6;
    while ( 1 )
    {
      v11 = 24 * v10;
      v12 = (_DWORD *)(v5 + 24 * v10);
      v13 = v12[4] * *((_DWORD *)this + 23);
      v14 = v33 - v9;
      v15 = v12[1] - v13;
      v16 = &a2[v33 - v9];
      if ( v15 > v9 )
      {
        memcpy(v16, (const void *)(*v12 + v13), v9);
        v17 = *((_DWORD *)this + 24) + 24 * *((_DWORD *)this + 19);
        *(_DWORD *)(v17 + 12) += a4;
        v18 = *((_DWORD *)this + 24) + 24 * *((_DWORD *)this + 19);
        *(_DWORD *)(v18 + 16) += *(int *)(v18 + 12) >> 14;
        v19 = *((_DWORD *)this + 24) + 24 * *((_DWORD *)this + 19);
        *(_DWORD *)(v19 + 12) &= 0x3FFFu;
        goto LABEL_8;
      }
      v9 -= v15;
      memcpy(v16, (const void *)(*(_DWORD *)(v5 + v11) + v13), v12[1] - v13);
      v21 = *((_DWORD *)this + 24) + 24 * *((_DWORD *)this + 19);
      *(_DWORD *)(v21 + 12) += a4;
      v22 = *((_DWORD *)this + 24) + 24 * *((_DWORD *)this + 19);
      *(_DWORD *)(v22 + 16) += *(int *)(v22 + 12) >> 14;
      v23 = *((_DWORD *)this + 24) + 24 * *((_DWORD *)this + 19);
      *(_DWORD *)(v23 + 12) &= 0x3FFFu;
      v34 = *((_DWORD *)this + 24);
      v24 = v34 + 24 * *((_DWORD *)this + 19);
      v35 = *((_DWORD *)this + 23);
      v25 = *(_DWORD *)(v24 + 16);
      v26 = *(_DWORD *)(v24 + 4) / v35;
      v36 = *(_DWORD *)(v24 + 12);
      if ( v25 < v26 )
        break;
      *(_BYTE *)(v24 + 20) = 1;
      v27 = *((_DWORD *)this + 17);
      v28 = *((_DWORD *)this + 19) + 1;
      *((_DWORD *)this + 19) = v28;
      v10 = v28 % v27;
      *((_DWORD *)this + 19) = v10;
      v5 = *((_DWORD *)this + 24);
      a4 = v36 + ((v25 - v26) << 14);
      if ( *(_BYTE *)(v5 + 24 * v10 + 20) )
        goto LABEL_16;
      if ( v9 <= 0 )
      {
        v33 -= v9;
        goto LABEL_8;
      }
    }
    v29 = 24 * ((*((_DWORD *)this + 19) + 1) % *((_DWORD *)this + 17));
    if ( !*(_BYTE *)(v34 + v29 + 20) )
    {
      if ( v9 > 0 )
      {
        memcpy(&a2[v15 + v14], *(const void **)(v34 + v29), v35);
        v9 -= *((_DWORD *)this + 23);
      }
LABEL_16:
      v33 -= v9;
      goto LABEL_8;
    }
    *(_BYTE *)(v24 + 20) = 1;
    v30 = *((_DWORD *)this + 17);
    v31 = *((_DWORD *)this + 19) + 1;
    v33 -= v9;
    *((_DWORD *)this + 19) = v31;
    *((_DWORD *)this + 19) = v31 % v30;
  }
  else
  {
    v33 = *(unsigned __int8 *)(v7 + 20);
  }
LABEL_8:
  *((_DWORD *)this + 22) += v33;
  return v33;
}


// ===== 891860 vox::DriverCallbackSourceInterface::FillBufferStereo16(int *,int) =====
int __fastcall vox::DriverCallbackSourceInterface::FillBufferStereo16(int this, int *a2, int a3)
{
  int *v3; // r5
  int v6; // r3
  int v7; // r10
  int v8; // r6
  int v9; // r9
  int *v10; // r8
  int v11; // r8
  int v12; // r3
  _BOOL4 v13; // r11
  int v14; // r9
  int v15; // r3
  int v16; // r10
  int v17; // r11
  int v18; // r7
  int v19; // r2
  int v20; // r12
  _BOOL4 v21; // r5
  int v22; // r3
  int v23; // r1
  int v24; // r1
  int v25; // r0
  int v26; // r2
  int *i; // [sp+4h] [bp-18h]
  int v28; // [sp+8h] [bp-14h]
  int v29; // [sp+Ch] [bp-10h]
  int v30; // [sp+10h] [bp-Ch]
  int v31; // [sp+14h] [bp-8h]

  v3 = (int *)this;
  if ( *(_DWORD *)(this + 80) == 1 )
  {
    v6 = *(_DWORD *)(this + 96) + 24 * *(_DWORD *)(this + 76);
    v7 = *(unsigned __int8 *)(v6 + 20);
    if ( !*(_BYTE *)(v6 + 20) )
    {
      v8 = *(_DWORD *)(v6 + 12);
      v9 = *(_DWORD *)(this + 64) * a3;
      this = (int)vox::DriverCallbackInterface::GetWorkBuffer(
                    (vox::DriverCallbackInterface *)(4 * ((v9 >> 14) + 3)),
                    24);
      v10 = (int *)this;
      if ( !*(_DWORD *)this )
      {
        v3[20] = -1;
        return this;
      }
      this = (((int)vox::DriverCallbackSourceInterface::GetWorkData(
                      (vox::DriverCallbackSourceInterface *)v3,
                      *(unsigned __int8 **)(this + 4),
                      4 * ((v9 >> 14) + 3),
                      v9)
             / 4) << 14)
           / v3[16];
      v11 = v10[1];
      if ( a3 > this )
      {
        v28 = --this;
        v14 = this - v3[8];
        v31 = v3[8];
        v12 = v31;
        if ( v14 < 0 )
        {
          v13 = this > 0;
          v14 = v7;
          v31 = this;
        }
        else
        {
          v13 = v31 > 0;
        }
      }
      else
      {
        v12 = v3[8];
        v13 = v7;
        v14 = a3 + 1;
        v28 = a3;
        v31 = v7;
      }
      if ( v14 >= v12 )
      {
        if ( v12 >= a3 )
          v12 = a3;
        v29 = v12;
      }
      else
      {
        v29 = v14;
      }
      v15 = *((unsigned __int8 *)v3 + 36);
      v16 = v3[11];
      if ( *((_BYTE *)v3 + 36) )
      {
        if ( v29 > 0 )
        {
          this = (v3[10] - v16) / v29;
          v30 = this;
          v15 = this;
          if ( this )
            v15 = 1;
        }
        else
        {
          v15 = 0;
          v30 = 0;
        }
      }
      else
      {
        v16 = v3[10];
        *((_BYTE *)v3 + 36) = 1;
        v30 = v15;
      }
      v17 = v15 | v13;
      if ( v17 )
      {
        if ( v28 > 0 )
        {
          v18 = 0;
          for ( i = v3; ; v8 += i[16] )
          {
            if ( v18 == v14 )
              v30 = ((v16 / v31) >> 31) - ((v16 / v31) ^ ((v16 / v31) >> 31));
            v19 = (v8 >> 14) + 1;
            v21 = v18 < v29;
            if ( v18 >= v14 )
              v21 = 1;
            v22 = v8 & 0x3FFF;
            if ( v21 )
              v16 += v30;
            v20 = *(__int16 *)(v11 + 4 * (v8 >> 14));
            this = *a2 + (((v20 + ((v22 * (*(__int16 *)(v11 + 4 * v19) - v20)) >> 14)) * v16) >> 14);
            *a2 = this;
            v23 = *(__int16 *)(v11 + 4 * (v8 >> 14) + 2);
            ++v18;
            a2[1] += ((v23 + ((v22 * (*(__int16 *)(v11 + 4 * v19 + 2) - v23)) >> 14)) * v16) >> 14;
            if ( v18 == v28 )
              break;
            a2 += 2;
          }
          v3 = i;
        }
        v16 = v3[10];
        goto LABEL_31;
      }
      if ( !v16 || v28 <= 0 )
      {
LABEL_31:
        v3[11] = v16;
        return this;
      }
      do
      {
        v24 = (v8 >> 14) + 1;
        v25 = *(__int16 *)(v11 + 4 * (v8 >> 14));
        *a2 += (v16 * (v25 + (((v8 & 0x3FFF) * (*(__int16 *)(v11 + 4 * v24) - v25)) >> 14))) >> 14;
        v26 = *(__int16 *)(v11 + 4 * (v8 >> 14) + 2);
        ++v17;
        this = *(__int16 *)(v11 + 4 * v24 + 2) - v26;
        a2[1] += (v16 * (v26 + (((v8 & 0x3FFF) * this) >> 14))) >> 14;
        a2 += 2;
        v8 += v3[16];
      }
      while ( v17 != v28 );
      v3[11] = v16;
    }
  }
  return this;
}


// ===== 891b80 vox::DriverCallbackSourceInterface::GetStereoPanning(int *,int *) =====
int __fastcall vox::DriverCallbackSourceInterface::GetStereoPanning(
        vox::DriverCallbackSourceInterface *this,
        int *a2,
        int *a3)
{
  float v6; // r5
  float v7; // r0
  float v8; // r5
  int result; // r0
  float v10; // r10
  float v11; // r7
  float v12; // r8
  float v13; // r9
  float v14; // r5
  float v15; // r0
  float v16; // [sp+Ch] [bp-10h]
  float v17; // [sp+10h] [bp-Ch]

  if ( *((_DWORD *)this + 36) )
  {
    v6 = sqrtf(
           (float)((float)(*((float *)this + 27) * *((float *)this + 27))
                 + (float)(*((float *)this + 28) * *((float *)this + 28)))
         + (float)(*((float *)this + 29) * *((float *)this + 29)));
    if ( v6 > 0.0 )
    {
      v7 = *((float *)this + 27) / v6;
      goto LABEL_4;
    }
  }
  else
  {
    v10 = *((float *)this + 27) - *(float *)&vox::DriverCallbackSourceInterface::s_listenerParameters;
    v11 = *((float *)this + 28) - *(float *)&dword_A33E70;
    v16 = *((float *)this + 29) - *(float *)&dword_A33E74;
    v17 = sqrtf((float)((float)(v10 * v10) + (float)(v11 * v11)) + (float)(v16 * v16));
    v12 = (float)(*(float *)&dword_A33E88 * *(float *)&dword_A33E98)
        - (float)(*(float *)&dword_A33E8C * *(float *)&dword_A33E94);
    v13 = (float)(*(float *)&dword_A33E8C * *(float *)&dword_A33E90)
        - (float)(*(float *)&dword_A33E98 * *(float *)&dword_A33E84);
    v14 = (float)(*(float *)&dword_A33E94 * *(float *)&dword_A33E84)
        - (float)(*(float *)&dword_A33E88 * *(float *)&dword_A33E90);
    v15 = sqrtf((float)((float)(v12 * v12) + (float)(v13 * v13)) + (float)(v14 * v14));
    if ( v17 > 0.0 && v15 > 0.0 )
    {
      v7 = (float)((float)((float)(v10 / v17) * (float)(v12 / v15)) + (float)((float)(v11 / v17) * (float)(v13 / v15)))
         + (float)((float)(v16 / v17) * (float)(v14 / v15));
      goto LABEL_4;
    }
  }
  v7 = 0.0;
LABEL_4:
  v8 = sqrtf((float)(v7 + 1.0) * 0.5);
  *a2 = (int)(float)(sqrtf(1.0 - (float)(v8 * v8)) * 16384.0);
  result = (int)(float)(v8 * 16384.0);
  *a3 = result;
  return result;
}


// ===== 891ed0 vox::DriverCallbackSourceInterface::GetDopplerPitch(void) =====
int __fastcall vox::DriverCallbackSourceInterface::GetDopplerPitch(vox::DriverCallbackSourceInterface *this)
{
  float v2; // r8
  float v3; // r7
  float v4; // r6
  float v5; // r10
  float v6; // r9
  float v7; // r5
  float v8; // r4
  float v9; // r4

  if ( *(float *)&vox::DriverCallbackSourceInterface::s_dopplerFactor <= 0.0 )
    return 0x4000;
  if ( *((_DWORD *)this + 36) )
  {
    LODWORD(v2) = *((_DWORD *)this + 27) + 0x80000000;
    LODWORD(v3) = *((_DWORD *)this + 28) + 0x80000000;
    LODWORD(v4) = *((_DWORD *)this + 29) + 0x80000000;
    v5 = 0.0;
  }
  else
  {
    v2 = *(float *)&vox::DriverCallbackSourceInterface::s_listenerParameters - *((float *)this + 27);
    v3 = *(float *)&dword_A33E70 - *((float *)this + 28);
    v4 = *(float *)&dword_A33E74 - *((float *)this + 29);
    v5 = (float)((float)(v2 * *(float *)&dword_A33E78) + (float)(v3 * *(float *)&dword_A33E7C))
       + (float)(v4 * *(float *)&dword_A33E80);
  }
  v6 = sqrtf((float)((float)(v2 * v2) + (float)(v3 * v3)) + (float)(v4 * v4));
  v7 = (float)((float)(v2 * *((float *)this + 30)) + (float)(v3 * *((float *)this + 31)))
     + (float)(v4 * *((float *)this + 32));
  if ( v5 > (float)(v6 * *(float *)&vox::DriverCallbackSourceInterface::s_alteredSpeedOfSound) )
    v5 = v6 * *(float *)&vox::DriverCallbackSourceInterface::s_alteredSpeedOfSound;
  v8 = (float)(v6 * *(float *)&vox::DriverCallbackSourceInterface::s_alteredSpeedOfSound) - v7;
  if ( v8 <= 0.0 )
    return 0x4000;
  v9 = (float)((float)(v7 - v5) / v8) + 1.0;
  if ( v9 > 2.9 )
    return 47513;
  if ( v9 >= 0.001 )
    return (int)(float)(v9 * 16384.0);
  return 16;
}


// ===== 892114 vox::DriverCallbackSourceInterface::GetDistanceGain(void) =====
int __fastcall vox::DriverCallbackSourceInterface::GetDistanceGain(vox::DriverCallbackSourceInterface *this)
{
  float v2; // r6
  float v3; // r8
  float v4; // r7
  float v5; // r0
  float v6; // r6
  float v7; // r5
  float v9; // r4
  float v10; // r5
  float v11; // r7
  float v12; // r4
  float v13; // r0
  float v14; // r1
  float v15; // r4
  float v16; // r5
  float v17; // r7
  float v18; // r7
  float v19; // r4
  float v20; // r5
  float v21; // r7
  float v22; // r4
  float v23; // r1
  float v24; // r4

  if ( *((_DWORD *)this + 36) )
  {
    v2 = *((float *)this + 27);
    v3 = *((float *)this + 28);
    v4 = *((float *)this + 29);
  }
  else
  {
    v2 = *((float *)this + 27) - *(float *)&vox::DriverCallbackSourceInterface::s_listenerParameters;
    v3 = *((float *)this + 28) - *(float *)&dword_A33E70;
    v4 = *((float *)this + 29) - *(float *)&dword_A33E74;
  }
  v5 = sqrtf((float)((float)(v2 * v2) + (float)(v3 * v3)) + (float)(v4 * v4));
  v6 = v5;
  switch ( vox::DriverCallbackSourceInterface::s_distanceModel )
  {
    case 1:
      v7 = *((float *)this + 38);
      goto LABEL_16;
    case 2:
      v7 = *((float *)this + 38);
      if ( v7 <= v5 )
      {
        if ( *((float *)this + 37) < v5 )
          v6 = *((float *)this + 37);
      }
      else
      {
        v6 = *((float *)this + 38);
      }
      v5 = v6;
LABEL_16:
      v9 = v7 + (float)((float)(v5 - v7) * *((float *)this + 39));
      if ( v9 > 0.0 )
        return (int)(float)((float)(v7 / v9) * 16384.0);
      return 0x4000;
    case 3:
      v10 = *((float *)this + 38);
      v11 = *((float *)this + 39);
      v12 = *((float *)this + 37) - v10;
      if ( v12 <= 0.0 )
        return 0x4000;
      v13 = (float)(v5 - v10) * v11;
      v14 = v12;
      goto LABEL_21;
    case 4:
      v16 = *((float *)this + 38);
      if ( v16 > v5 )
      {
        v17 = *((float *)this + 37);
        v6 = *((float *)this + 38);
      }
      else
      {
        v17 = *((float *)this + 37);
        if ( v17 < v5 )
          v6 = *((float *)this + 37);
      }
      v18 = v17 - v16;
      v19 = *((float *)this + 39);
      if ( v18 <= 0.0 )
        return 0x4000;
      v13 = (float)(v6 - v16) * v19;
      v14 = v18;
LABEL_21:
      v15 = 1.0 - (float)(v13 / v14);
      if ( v15 >= 0.0 )
        return (int)(float)(v15 * 16384.0);
      else
        return 0;
    case 5:
      v20 = *((float *)this + 39);
      if ( v20 <= 0.0 )
        return 0x4000;
      v24 = *((float *)this + 38);
      if ( v24 <= 0.0 )
        return 0x4000;
      v23 = v24;
      break;
    case 6:
      v20 = *((float *)this + 39);
      if ( v20 <= 0.0 )
        return 0x4000;
      v21 = *((float *)this + 38);
      if ( v21 <= 0.0 )
        return 0x4000;
      if ( v21 <= v5 )
      {
        v22 = *((float *)this + 37);
        if ( v22 < v5 )
          v6 = v22;
      }
      else
      {
        v6 = *((float *)this + 38);
      }
      v23 = v21;
      break;
    default:
      return 0x4000;
  }
  return (int)(float)(powf(v6 / v23, COERCE_FLOAT(LODWORD(v20) + 0x80000000)) * 16384.0);
}


// ===== 892460 vox::DriverCallbackSourceInterface::GetDirectionalGain(void) =====
int __fastcall vox::DriverCallbackSourceInterface::GetDirectionalGain(vox::DriverCallbackSourceInterface *this)
{
  float v2; // r6
  float v3; // r7
  float v4; // r8
  float v5; // r11
  float v6; // r9
  float v7; // r10
  float v8; // r5
  float v9; // r0
  float v10; // r0
  float v11; // r6
  float v12; // r5
  float v13; // r7
  float v14; // r4

  if ( *((float *)this + 40) >= 360.0 )
    return 0x4000;
  v2 = *((float *)this + 33);
  if ( v2 == 0.0 )
  {
    v3 = *((float *)this + 34);
    if ( v3 == 0.0 )
    {
      v4 = *((float *)this + 35);
      if ( v4 == 0.0 )
        return 0x4000;
    }
    else
    {
      v4 = *((float *)this + 35);
    }
  }
  else
  {
    v3 = *((float *)this + 34);
    v4 = *((float *)this + 35);
  }
  if ( *((_DWORD *)this + 36) )
  {
    LODWORD(v5) = *((_DWORD *)this + 27) + 0x80000000;
    LODWORD(v6) = *((_DWORD *)this + 28) + 0x80000000;
    LODWORD(v7) = *((_DWORD *)this + 29) + 0x80000000;
  }
  else
  {
    v5 = *(float *)&vox::DriverCallbackSourceInterface::s_listenerParameters - *((float *)this + 27);
    v6 = *(float *)&dword_A33E70 - *((float *)this + 28);
    v7 = *(float *)&dword_A33E74 - *((float *)this + 29);
  }
  v8 = (float)((float)(v5 * v2) + (float)(v6 * v3)) + (float)(v7 * v4);
  v9 = sqrtf(
         (float)(v8 * v8)
       / (float)((float)((float)((float)(v5 * v5) + (float)(v6 * v6)) + (float)(v7 * v7))
               * (float)((float)((float)(v2 * v2) + (float)(v3 * v3)) + (float)(v4 * v4))));
  v10 = (float)(acosf(v9) * 180.0) / 3.14159265;
  v11 = v10;
  if ( v8 < 0.0 )
    v11 = 180.0 - v10;
  v12 = *((float *)this + 40) * 0.5;
  if ( v11 <= v12 )
    return 0x4000;
  v13 = *((float *)this + 41) * 0.5;
  if ( v11 >= v13 )
    return (int)(float)(*((float *)this + 42) * 16384.0);
  v14 = *((float *)this + 42);
  if ( (float)(v13 - v12) <= 0.0 )
    return 0x4000;
  return (int)(float)((float)((float)((float)(v13 - v11) + (float)(v14 * (float)(v11 - v12))) / (float)(v13 - v12))
                    * 16384.0);
}


// ===== 89278c vox::DriverCallbackSourceInterface::FillBufferMono16NoInter(int *,int) =====
int __fastcall vox::DriverCallbackSourceInterface::FillBufferMono16NoInter(int this, int *a2, int a3)
{
  int v3; // r4
  int v4; // r3
  int v5; // r2
  int v6; // r5
  int v7; // r5
  int v8; // r5
  int v9; // r3
  int v10; // r11
  int v11; // r5
  int v12; // r10
  int v13; // r9
  int v14; // r0
  int v15; // r2
  int v16; // r12
  int v17; // r3
  int v18; // r12
  int v19; // r3
  int v20; // r7
  int v21; // r1
  int *v22; // r2
  int v23; // r6
  int v24; // r0
  int v25; // r12
  int v26; // r6
  int *v27; // r5
  int v28; // r8
  int v29; // r12
  _BOOL4 v30; // r2
  int v31; // r1
  int v32; // r0
  int v33; // r1
  int v34; // t0
  int v35; // r2
  int v36; // [sp+4h] [bp-40h]
  int v38; // [sp+Ch] [bp-38h]
  int v39; // [sp+10h] [bp-34h]
  int v41; // [sp+18h] [bp-2Ch]
  int v42; // [sp+1Ch] [bp-28h]
  int v43; // [sp+2Ch] [bp-18h]
  int v44; // [sp+30h] [bp-14h]
  int v45; // [sp+34h] [bp-10h]
  int v46; // [sp+38h] [bp-Ch] BYREF
  int v47; // [sp+3Ch] [bp-8h] BYREF

  v3 = this;
  if ( *(_DWORD *)(this + 80) == 1 )
  {
    v4 = *(_DWORD *)(this + 96) + 24 * *(_DWORD *)(this + 76);
    v5 = *(unsigned __int8 *)(v4 + 20);
    if ( !*(_BYTE *)(v4 + 20) )
    {
      v6 = *(_DWORD *)(this + 40);
      if ( *(_DWORD *)(v4 + 12) )
      {
        ++*(_DWORD *)(v4 + 16);
        *(_DWORD *)(*(_DWORD *)(this + 96) + 24 * *(_DWORD *)(this + 76) + 12) = v5;
      }
      v7 = v6 * vox::DriverCallbackSourceInterface::GetDistanceGain((vox::DriverCallbackSourceInterface *)this);
      v8 = vox::DriverCallbackSourceInterface::GetDirectionalGain((vox::DriverCallbackSourceInterface *)v3) * (v7 >> 14);
      vox::DriverCallbackSourceInterface::GetStereoPanning((vox::DriverCallbackSourceInterface *)v3, &v47, &v46);
      v8 >>= 14;
      v44 = (v46 * v8) >> 14;
      v43 = (v47 * v8) >> 14;
      this = vox::DriverCallbackSourceInterface::GetNbAvailableSamples((vox::DriverCallbackSourceInterface *)v3, a3);
      if ( a3 > this )
      {
        v9 = *(_DWORD *)(v3 + 32);
        v10 = this - v9;
        v38 = v9;
        if ( this - v9 >= 0 )
        {
          v9 = *(_DWORD *)(v3 + 32);
        }
        else
        {
          v10 = 0;
          v38 = this;
        }
      }
      else
      {
        v9 = *(_DWORD *)(v3 + 32);
        v10 = a3 + 1;
        v38 = 0;
      }
      if ( v10 >= v9 )
      {
        v11 = a3;
        if ( a3 >= v9 )
          v11 = v9;
        v45 = v11;
      }
      else
      {
        v45 = v10;
      }
      v12 = *(_DWORD *)(v3 + 44);
      v13 = *(_DWORD *)(v3 + 48);
      if ( *(_BYTE *)(v3 + 36) )
      {
        if ( v45 > 0 )
        {
          v36 = (v43 - v12) / v45;
          this = (v44 - v13) / v45;
          v41 = this;
        }
        else
        {
          this = 0;
          v41 = 0;
          v36 = 0;
        }
      }
      else
      {
        v41 = *(unsigned __int8 *)(v3 + 36);
        *(_BYTE *)(v3 + 36) = 1;
        v13 = v44;
        v12 = v43;
        v36 = v41;
      }
      if ( a3 <= 0 )
      {
LABEL_31:
        *(_DWORD *)(v3 + 48) = v13;
        *(_DWORD *)(v3 + 44) = v12;
        return this;
      }
      v42 = 0;
      while ( 1 )
      {
        v14 = *(_DWORD *)(v3 + 76);
        v15 = *(_DWORD *)(v3 + 96);
        v16 = v15 + 24 * v14;
        v17 = *(_DWORD *)(v16 + 4);
        v18 = *(_DWORD *)(v16 + 16);
        v39 = (v17 >> 1) - v18;
        v19 = a3;
        v20 = *(_DWORD *)(v15 + 24 * v14) + 2 * v18;
        if ( a3 >= v39 )
          v19 = v39;
        v21 = v38 > 0;
        if ( v36 | v41 )
          v21 = 1;
        if ( !v21 )
          break;
        if ( v19 <= 0 )
        {
          v13 = v44;
          v12 = v43;
LABEL_45:
          v23 = 2 * v19;
LABEL_28:
          *(_DWORD *)(v3 + 88) += v23;
          if ( v39 != v19 )
            goto LABEL_29;
          goto LABEL_42;
        }
        v26 = v42;
        v27 = a2;
        v28 = 0;
        v29 = v41;
        do
        {
          if ( v26 == v10 )
          {
            v36 = ((v12 / v38) >> 31) - ((v12 / v38) ^ ((v12 / v38) >> 31));
            v29 = ((v13 / v38) >> 31) - ((v13 / v38) ^ ((v13 / v38) >> 31));
          }
          v30 = v26 < v45;
          if ( v26 >= v10 )
            v30 = 1;
          if ( v30 )
          {
            v12 += v36;
            v13 += v29;
          }
          *v27 += (*(__int16 *)(v20 + v28) * v12) >> 14;
          ++v26;
          v27[1] += (*(__int16 *)(v20 + v28) * v13) >> 14;
          v28 += 2;
          v27 += 2;
        }
        while ( v26 != v19 + v42 );
        v41 = v29;
        a2 += 2 * v19;
        v42 += v19;
        v13 = v44;
        v12 = v43;
        v14 = *(_DWORD *)(v3 + 76);
        v15 = *(_DWORD *)(v3 + 96);
        *(_DWORD *)(v3 + 88) += 2 * v19;
        if ( v39 != v19 )
        {
LABEL_29:
          *(_DWORD *)(v15 + 24 * v14 + 16) += v19;
          goto LABEL_30;
        }
LABEL_42:
        *(_BYTE *)(v15 + 24 * v14 + 20) = 1;
        v31 = *(_DWORD *)(v3 + 68);
        v32 = *(_DWORD *)(v3 + 76) + 1;
        *(_DWORD *)(v3 + 76) = v32;
        v34 = v32 / v31;
        v33 = v32 % v31;
        this = v34;
        v35 = *(_DWORD *)(v3 + 96);
        *(_DWORD *)(v3 + 76) = v33;
        if ( *(_BYTE *)(v35 + 24 * v33 + 20) )
        {
          *(_DWORD *)(v3 + 48) = v13;
          *(_DWORD *)(v3 + 44) = v12;
          return this;
        }
LABEL_30:
        this = a3 - v19;
        a3 -= v19;
        if ( a3 <= 0 )
          goto LABEL_31;
      }
      if ( v19 <= 0 )
        goto LABEL_45;
      v22 = a2;
      v23 = 2 * v19;
      do
      {
        v24 = v22[1];
        *v22 += (*(__int16 *)(v20 + v21) * v12) >> 14;
        v25 = *(__int16 *)(v20 + v21);
        v21 += 2;
        v22[1] = v24 + ((v25 * v13) >> 14);
        v22 += 2;
      }
      while ( v21 != v23 );
      v14 = *(_DWORD *)(v3 + 76);
      v15 = *(_DWORD *)(v3 + 96);
      a2 += 2 * v19;
      goto LABEL_28;
    }
  }
  return this;
}


// ===== 892bd0 vox::DriverCallbackSourceInterface::FillBufferMono16(int *,int) =====
int *__fastcall vox::DriverCallbackSourceInterface::FillBufferMono16(int *this, int **a2, int a3)
{
  int *v3; // r5
  int v6; // r3
  int v7; // r10
  int v8; // r9
  int v9; // r11
  int v10; // r6
  int v11; // r1
  int *v12; // r8
  int v13; // r0
  int v14; // r8
  int v15; // r2
  _BOOL4 v16; // r12
  int v17; // r3
  int v18; // r11
  int v19; // r2
  int v20; // r1
  int v21; // r10
  int v22; // r9
  int v23; // r2
  __int16 *v24; // r0
  int v25; // r1
  int v26; // r12
  int v27; // r3
  int v28; // r12
  int v29; // r7
  int v30; // r0
  bool v31; // zf
  __int16 *v32; // r1
  int v33; // r2
  int v34; // r1
  int DirectionalGain; // [sp+Ch] [bp-28h]
  int v36; // [sp+10h] [bp-24h]
  int DistanceGain; // [sp+14h] [bp-20h]
  __int64 v38; // [sp+14h] [bp-20h]
  int v39; // [sp+18h] [bp-1Ch]
  int v40; // [sp+1Ch] [bp-18h]
  int v41; // [sp+20h] [bp-14h]
  int *v42; // [sp+20h] [bp-14h]
  int v43; // [sp+24h] [bp-10h]
  int v44; // [sp+24h] [bp-10h]
  int v45; // [sp+28h] [bp-Ch] BYREF
  int v46; // [sp+2Ch] [bp-8h] BYREF

  v3 = this;
  if ( *(this + 20) == 1 )
  {
    v6 = *(this + 24) + 24 * *(this + 19);
    v7 = *(unsigned __int8 *)(v6 + 20);
    if ( !*(_BYTE *)(v6 + 20) )
    {
      v39 = *(this + 10);
      DistanceGain = vox::DriverCallbackSourceInterface::GetDistanceGain((vox::DriverCallbackSourceInterface *)this);
      DirectionalGain = vox::DriverCallbackSourceInterface::GetDirectionalGain((vox::DriverCallbackSourceInterface *)v3);
      vox::DriverCallbackSourceInterface::GetStereoPanning((vox::DriverCallbackSourceInterface *)v3, &v46, &v45);
      v8 = v3[16] * a3;
      v9 = (v8 >> 14) + 3;
      v10 = *(_DWORD *)(v3[24] + 24 * v3[19] + 12);
      v41 = v46;
      v43 = v45;
      this = vox::DriverCallbackInterface::GetWorkBuffer((vox::DriverCallbackInterface *)(4 * v9), v11);
      v12 = this;
      if ( *this )
      {
        v13 = (((int)vox::DriverCallbackSourceInterface::GetWorkData(
                       (vox::DriverCallbackSourceInterface *)v3,
                       (unsigned __int8 *)*(this + 1),
                       2 * v9,
                       v8)
              / 2) << 14)
            / v3[16];
        v14 = v12[1];
        if ( a3 > v13 )
        {
          v18 = v13 - 1;
          v17 = v13 - 1 - v3[8];
          v40 = v3[8];
          if ( v17 < 0 )
          {
            v15 = v3[8];
            v17 = v7;
            v16 = v18 > 0;
            v40 = v13 - 1;
          }
          else
          {
            v16 = v40 > 0;
            v15 = v3[8];
          }
        }
        else
        {
          v15 = v3[8];
          v16 = v7;
          v17 = a3 + 1;
          v18 = a3;
          v40 = v7;
        }
        if ( v17 >= v15 )
        {
          if ( v15 >= a3 )
            v15 = a3;
          v36 = v15;
        }
        else
        {
          v36 = v17;
        }
        v19 = *((unsigned __int8 *)v3 + 36);
        v20 = (DirectionalGain * ((v39 * DistanceGain) >> 14)) >> 14;
        this = (int *)((v41 * v20) >> 14);
        v42 = this;
        v44 = (v43 * v20) >> 14;
        v21 = v3[11];
        v22 = v3[12];
        if ( *((_BYTE *)v3 + 36) )
        {
          this = (int *)v36;
          if ( v36 > 0 )
          {
            HIDWORD(v38) = ((int)v42 - v21) / v36;
            LODWORD(v38) = (v44 - v22) / v36;
            this = (int *)(v38 | HIDWORD(v38));
            v19 = v38 != 0;
          }
          else
          {
            v19 = 0;
            v38 = 0;
          }
        }
        else
        {
          *((_BYTE *)v3 + 36) = 1;
          v22 = v44;
          v21 = (int)this;
          v38 = 0;
        }
        v23 = v19 | v16;
        if ( v23 )
        {
          if ( v18 > 0 )
          {
            v29 = 0;
            while ( 1 )
            {
              if ( v29 == v17 )
              {
                HIDWORD(v38) = ((v21 / v40) >> 31) - ((v21 / v40) ^ ((v21 / v40) >> 31));
                LODWORD(v38) = ((v22 / v40) >> 31) - ((v22 / v40) ^ ((v22 / v40) >> 31));
              }
              v30 = v29 < v36;
              if ( v29 >= v17 )
                v30 = 1;
              v31 = v30 == 0;
              if ( v30 )
                v30 = HIDWORD(v38);
              v32 = (__int16 *)(v14 + 2 * ((unsigned __int64)v10 >> 14));
              if ( !v31 )
              {
                v21 += v30;
                v22 += v38;
              }
              v33 = *v32 + (((v10 & 0x3FFF) * (v32[1] - *v32)) >> 14);
              this = (int *)v18;
              v34 = (int)a2[1] + ((v33 * v22) >> 14);
              ++v29;
              *a2 = (int *)((char *)*a2 + ((v33 * v21) >> 14));
              a2[1] = (int *)v34;
              if ( v29 == v18 )
                break;
              a2 += 2;
              v10 += v3[16];
            }
          }
          v22 = v44;
          v21 = (int)v42;
        }
        else if ( v18 > 0 )
        {
          do
          {
            v24 = (__int16 *)(v14 + 2 * ((unsigned __int64)v10 >> 14));
            v25 = *v24;
            v26 = v24[1];
            this = *a2;
            v27 = v25 + (((v10 & 0x3FFF) * (v26 - v25)) >> 14);
            v28 = (int)a2[1] + ((v22 * v27) >> 14);
            *a2 = (int *)((char *)*a2 + ((v21 * v27) >> 14));
            a2[1] = (int *)v28;
            ++v23;
            v10 += v3[16];
            a2 += 2;
          }
          while ( v23 != v18 );
        }
        v3[12] = v22;
        v3[11] = v21;
      }
      else
      {
        v3[20] = -1;
      }
    }
  }
  return this;
}


// ===== 892f68 vox::DriverCallbackSourceInterface::FillBuffer(int *,int) =====
int __fastcall vox::DriverCallbackSourceInterface::FillBuffer(pthread_mutex_t *this, int **a2, int a3)
{
  pthread_mutex_t *v3; // r5
  int v8; // r2
  int v9; // r1
  int v10; // r3
  signed int v11; // r12
  signed int v12; // r0
  int v13; // r3
  int v14; // r2
  int DopplerPitch; // r0

  v3 = this + 2;
  vox::Mutex::Lock(this + 2);
  if ( *((_DWORD *)this + 20) != 1 || *(_BYTE *)(*((_DWORD *)this + 24) + 24 * *((_DWORD *)this + 19) + 20) )
    return vox::Mutex::Unlock(v3);
  v8 = *((_DWORD *)this + 14);
  v9 = *((_DWORD *)this + 13);
  if ( v8 != v9 )
  {
    v10 = *((_DWORD *)this + 15);
    v11 = abs32(v9 - v8);
    v12 = abs32(v10);
    if ( v11 < v12 )
      *((_DWORD *)this + 14) = v9;
    else
      v10 += v8;
    if ( v11 >= v12 )
      *((_DWORD *)this + 14) = v10;
  }
  v13 = *((_DWORD *)this + 4);
  if ( v13 == 1 )
  {
    DopplerPitch = vox::DriverCallbackSourceInterface::GetDopplerPitch((vox::DriverCallbackSourceInterface *)this);
    v13 = *((_DWORD *)this + 4);
    *((_DWORD *)this + 44) = DopplerPitch;
  }
  v14 = (*((_DWORD *)this + 44) * ((*((_DWORD *)this + 14) * *((_DWORD *)this + 3)) >> 14)) >> 14;
  *((_DWORD *)this + 16) = v14;
  if ( !v14 )
  {
    *((_DWORD *)this + 16) = 1;
    goto LABEL_19;
  }
  if ( v14 != 0x4000 )
  {
LABEL_19:
    if ( v13 == 1 )
    {
      if ( *((_DWORD *)this + 6) == 16 )
        vox::DriverCallbackSourceInterface::FillBufferMono16((int *)&this->value, a2, a3);
    }
    else if ( v13 == 2 && *((_DWORD *)this + 6) == 16 )
    {
      vox::DriverCallbackSourceInterface::FillBufferStereo16((int)this, (int *)a2, a3);
    }
    return vox::Mutex::Unlock(v3);
  }
  if ( v13 == 1 )
  {
    if ( *((_DWORD *)this + 6) == 16 )
      vox::DriverCallbackSourceInterface::FillBufferMono16NoInter((int)this, (int *)a2, a3);
  }
  else if ( v13 == 2 && *((_DWORD *)this + 6) == 16 )
  {
    vox::DriverCallbackSourceInterface::FillBufferStereo16NoInter((int)this, (int *)a2, a3);
  }
  return vox::Mutex::Unlock(v3);
}


// ===== 893108 vox::DriverCallbackSourceInterface::Init(void) =====
int __fastcall vox::DriverCallbackSourceInterface::Init(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r4
  volatile int value; // r6
  int v3; // r0
  volatile int v4; // r1
  int v5; // r5
  int v6; // r10
  volatile int v7; // r6
  int v8; // r10
  _DWORD *v9; // r5
  _DWORD *v10; // r5
  int v11; // r5
  int v12; // r3
  int v13; // r5
  unsigned int v15; // r3
  unsigned int v16; // r2
  _DWORD *v17; // r0
  volatile int v18; // r2
  _DWORD *v19; // r5
  int v20; // r8
  unsigned int v21; // r5
  pthread_mutex_t *v22; // r10
  volatile int v23; // r4
  _DWORD *v24; // r12
  int v25; // r1
  int v26; // r2
  int v27; // r3
  _DWORD *v28; // r12
  int v29; // r1
  _DWORD *v30; // lr
  char *v31; // r0
  char *v32; // r3
  pthread_mutex_t *mutex; // [sp+4h] [bp-38h]
  volatile int v34; // [sp+Ch] [bp-30h]
  int v35; // [sp+10h] [bp-2Ch]
  unsigned int v36; // [sp+14h] [bp-28h]
  int v37; // [sp+18h] [bp-24h]
  int v38; // [sp+20h] [bp-1Ch]
  int v39; // [sp+34h] [bp-8h]

  v1 = this;
  mutex = this + 2;
  vox::Mutex::Lock(this + 2);
  value = v1[5].value;
  v1[10].value = 0x4000;
  v1[13].value = 0x4000;
  v3 = (value << 14) / vox::DriverCallbackSourceInterface::s_driverSampleRate;
  v4 = v1[4].value;
  v5 = v1[6].value >> 3;
  v6 = v5 * 150 * value * v4 / 1000;
  v7 = 0;
  v1[3].value = v3;
  v1[42].value = 0;
  v1[27].value = 0;
  v1[28].value = 0;
  v1[29].value = 0;
  v1[30].value = 0;
  v1[31].value = 0;
  v1[32].value = 0;
  v1[33].value = 0;
  v1[34].value = 0;
  v1[35].value = 0;
  v1[39].value = 1065353216;
  v1[41].value = 1135869952;
  v1[43].value = 2139095039;
  v1[44].value = 0x4000;
  v1[36].value = 0;
  v1[37].value = 2139095039;
  v1[38].value = 1065353216;
  v1[40].value = 1135869952;
  v1[18].value = 0;
  v1[19].value = 0;
  v8 = v6 - v6 % (v4 * v5);
  if ( v1[21].value )
  {
    if ( v1[17].value > 0 )
    {
      v9 = (_DWORD *)v1[25].value;
      do
      {
        if ( (_DWORD *)v1[26].value == v9 )
        {
          v15 = -1431655765 * (((int)v9 - v1[24].value) >> 3);
          if ( v15 )
            v16 = 1431655766 * (((int)v9 - v1[24].value) >> 3);
          else
            v16 = 1;
          if ( v16 <= 0xAAAAAAA && v15 <= v16 )
          {
            v36 = 24 * v16;
            v17 = VoxAlloc(24 * v16, 0);
          }
          else
          {
            v36 = -16;
            v17 = VoxAlloc(0xFFFFFFF0, 0);
          }
          v34 = (volatile int)v17;
          v18 = v1[24].value;
          v35 = -1431655765 * (((int)v9 - v18) >> 3);
          if ( v35 > 0 )
          {
            v20 = -1431655765 * (((int)v9 - v18) >> 3);
            v37 = v8;
            v21 = 0;
            v22 = v1;
            v23 = v1[24].value;
            do
            {
              v24 = &v17[v21 / 4];
              v25 = *(_DWORD *)(v23 + v21 + 4);
              v26 = *(_DWORD *)(v23 + v21 + 8);
              v27 = *(_DWORD *)(v23 + v21 + 12);
              *v24 = *(_DWORD *)(v23 + v21);
              v24[1] = v25;
              v24[2] = v26;
              v24[3] = v27;
              v28 = &v17[v21 / 4 + 4];
              v29 = *(_DWORD *)(v23 + v21 + 20);
              --v20;
              *v28 = *(_DWORD *)(v23 + v21 + 16);
              v28[1] = v29;
              v21 += 24;
            }
            while ( v20 );
            v1 = v22;
            v8 = v37;
            v19 = &v17[6 * v35];
          }
          else
          {
            v19 = v17;
          }
          LOBYTE(v39) = 1;
          *v19 = v38;
          v19[1] = 0;
          v19[2] = v8;
          v19[3] = 0;
          v30 = v19 + 4;
          v9 = v19 + 6;
          *v30 = 0;
          v30[1] = v39;
          v31 = (char *)v1[25].value;
          v32 = (char *)v1[24].value;
          if ( v31 != v32 )
            v31 += -24 * ((178956971 * ((unsigned int)(v31 - 24 - v32) >> 3)) & 0x1FFFFFFF) - 24;
          VoxFree(v31);
          v1[25].value = (volatile int)v9;
          v1[24].value = v34;
          v1[26].value = v34 + v36;
        }
        else
        {
          LOBYTE(v39) = 1;
          *v9 = v38;
          v9[1] = 0;
          v9[2] = v8;
          v9[3] = 0;
          v10 = v9 + 4;
          *v10 = 0;
          v10[1] = v39;
          v9 = (_DWORD *)(v1[25].value + 24);
          v1[25].value = (volatile int)v9;
        }
        ++v7;
      }
      while ( v1[17].value > v7 );
    }
    else
    {
      v9 = (_DWORD *)v1[25].value;
    }
    v11 = ((int)v9 - v1[24].value) >> 3;
    v12 = 1431655765 * v11;
    v13 = -1431655765 * v11;
    if ( v13 <= 0 )
      v12 = -1;
    v1[17].value = v13;
    if ( v13 <= 0 )
      v1[20].value = v12;
  }
  v1[22].value = 0;
  return vox::Mutex::Unlock(mutex);
}


// ===== 893464 vox::Mutex::TryLock(void) =====
bool __fastcall vox::Mutex::TryLock(pthread_mutex_t *this)
{
  return pthread_mutex_trylock(this) == 0;
}


// ===== 893478 vox::Mutex::Unlock(void) =====
// attributes: thunk
int vox::Mutex::Unlock(pthread_mutex_t *mutex)
{
  return pthread_mutex_unlock(mutex);
}


// ===== 89347c vox::Mutex::Lock(void) =====
// attributes: thunk
int vox::Mutex::Lock(pthread_mutex_t *mutex)
{
  return pthread_mutex_lock(mutex);
}


// ===== 893480 vox::AccessController::ReleaseWriteAccess(void) =====
int __fastcall vox::AccessController::ReleaseWriteAccess(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r5

  v1 = this + 2;
  vox::Mutex::Lock(this + 2);
  --*((_DWORD *)this + 1);
  return vox::Mutex::Unlock(v1);
}


// ===== 8934ac vox::AccessController::GetWriteAccess(void) =====
int __fastcall vox::AccessController::GetWriteAccess(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r4
  pthread_mutex_t *v3; // r0

  v1 = this + 2;
  vox::Mutex::Lock(this + 2);
  v3 = v1;
  if ( *((_DWORD *)this + 1) || this->value )
  {
    do
    {
      do
      {
        vox::Mutex::Unlock(v3);
        usleep(0x3E8u);
        vox::Mutex::Lock(v1);
        v3 = v1;
      }
      while ( *((_DWORD *)this + 1) );
    }
    while ( this->value );
  }
  *((_DWORD *)this + 1) = 1;
  return vox::Mutex::Unlock(v3);
}


// ===== 89351c vox::AccessController::ReleaseReadAccess(void) =====
int __fastcall vox::AccessController::ReleaseReadAccess(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r5

  v1 = this + 2;
  vox::Mutex::Lock(this + 2);
  --this->value;
  return vox::Mutex::Unlock(v1);
}


// ===== 893548 vox::AccessController::GetReadAccess(void) =====
int __fastcall vox::AccessController::GetReadAccess(vox::AccessController *this)
{
  pthread_mutex_t *v2; // r4

  v2 = (pthread_mutex_t *)((char *)this + 8);
  while ( 1 )
  {
    vox::Mutex::Lock(v2);
    if ( !*((_DWORD *)this + 1) )
      break;
    vox::Mutex::Unlock(v2);
    usleep(0x3E8u);
  }
  ++*(_DWORD *)this;
  return vox::Mutex::Unlock(v2);
}


// ===== 893590 vox::Mutex::Mutex(vox::Mutex const&) =====
_DWORD *__fastcall vox::Mutex::Mutex(_DWORD *this, const vox::Mutex *a2)
{
  *this = *(_DWORD *)a2;
  return this;
}


// ===== 89359c vox::Mutex::Mutex(vox::Mutex const&) =====
_DWORD *__fastcall vox::Mutex::Mutex(_DWORD *this, const vox::Mutex *a2)
{
  *this = *(_DWORD *)a2;
  return this;
}


// ===== 8935a8 vox::Mutex::~Mutex() =====
void __fastcall vox::Mutex::~Mutex(pthread_mutex_t *this)
{
  pthread_mutex_destroy(this);
}


// ===== 8935bc vox::Mutex::~Mutex() =====
void __fastcall vox::Mutex::~Mutex(pthread_mutex_t *this)
{
  pthread_mutex_destroy(this);
}


// ===== 8935d0 vox::Mutex::Mutex(void) =====
pthread_mutex_t *__fastcall vox::Mutex::Mutex(pthread_mutex_t *this)
{
  pthread_mutex_init(this, nullptr);
  return this;
}


// ===== 8935e8 vox::Mutex::Mutex(void) =====
pthread_mutex_t *__fastcall vox::Mutex::Mutex(pthread_mutex_t *this)
{
  pthread_mutex_init(this, nullptr);
  return this;
}


// ===== 893600 vox::VoxThread::GetCurThreadId(void) =====
// attributes: thunk
pthread_t vox::VoxThread::GetCurThreadId(void)
{
  return pthread_self();
}


// ===== 893604 vox::VoxThread::Sleep(uint) =====
int __fastcall vox::VoxThread::Sleep(vox::VoxThread *this, unsigned int a2)
{
  return usleep(1000 * (_DWORD)this);
}


// ===== 893610 vox::VoxThread::_Update(void) =====
int __fastcall vox::VoxThread::_Update(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r8
  int v3; // r6
  int v4; // r5
  int result; // r0
  double Time; // r6
  int v7; // r0
  unsigned int v8; // r1
  vox::VoxThread *v9; // r0
  int v10; // r6

  v1 = this + 3;
  vox::Mutex::Lock(this + 3);
  v3 = *((unsigned __int8 *)this + 17);
  v4 = *((unsigned __int8 *)this + 16);
  result = vox::Mutex::Unlock(v1);
  if ( v3 )
  {
    do
    {
      Time = _GetTime();
      if ( v4 )
        ((void (__fastcall *)(_DWORD, _DWORD))this->value)(*((_DWORD *)this + 1), *((_DWORD *)this + 2));
      v7 = (int)((_GetTime() - Time) * 1000.0);
      v9 = (vox::VoxThread *)(66 - (int)((Time - *((double *)this + 3)) * 1000.0) - v7);
      *((double *)this + 3) = Time;
      if ( (int)v9 > 0 )
      {
        if ( (int)v9 >= 33 )
          v9 = (vox::VoxThread *)((char *)&dword_20 + 1);
      }
      else
      {
        v9 = (vox::VoxThread *)(&dword_0 + 1);
      }
      vox::VoxThread::Sleep(v9, v8);
      vox::Mutex::Lock(v1);
      v10 = *((unsigned __int8 *)this + 17);
      v4 = *((unsigned __int8 *)this + 16);
      result = vox::Mutex::Unlock(v1);
    }
    while ( v10 );
  }
  return result;
}


// ===== 893700 vox::VoxThread::Update(void *) =====
int __fastcall vox::VoxThread::Update(pthread_mutex_t *this, void *a2)
{
  vox::VoxThread::_Update(this);
  return 0;
}


// ===== 893710 vox::funcUpdate(void *) =====
// attributes: thunk
int __fastcall vox::funcUpdate(pthread_mutex_t *this, void *a2)
{
  return vox::VoxThread::Update(this, a2);
}


// ===== 893714 vox::VoxThread::Stop(void) =====
int __fastcall vox::VoxThread::Stop(pthread_mutex_t *this)
{
  pthread_mutex_t *v1; // r6

  v1 = this + 3;
  vox::Mutex::Lock(this + 3);
  *((_BYTE *)this + 16) = 0;
  *((_BYTE *)this + 17) = 0;
  vox::Mutex::Unlock(v1);
  return pthread_join(*((_DWORD *)this + 24), nullptr);
}


// ===== 89374c vox::VoxThread::~VoxThread() =====
void __fastcall vox::VoxThread::~VoxThread(pthread_mutex_t *this)
{
  vox::VoxThread::Stop(this);
  vox::Mutex::~Mutex(this + 3);
}


// ===== 893768 vox::VoxThread::~VoxThread() =====
void __fastcall vox::VoxThread::~VoxThread(pthread_mutex_t *this)
{
  vox::VoxThread::Stop(this);
  vox::Mutex::~Mutex(this + 3);
}


// ===== 893784 vox::VoxThread::VoxThread(void (*)(void *,void *),void *,void *,char *) =====
vox::VoxThread *__fastcall vox::VoxThread::VoxThread(
        vox::VoxThread *this,
        void (*a2)(void *, void *),
        void *a3,
        void *a4,
        char *a5)
{
  pthread_mutex_t v6; // r2
  bool v7; // zf
  int priority_min; // r7
  int priority_max; // r3
  pthread_t v11; // r0
  struct sched_param v12; // [sp+4h] [bp-10h] BYREF
  struct sched_param param; // [sp+8h] [bp-Ch] BYREF
  int policy[2]; // [sp+Ch] [bp-8h] BYREF

  *(_DWORD *)this = a2;
  *((_DWORD *)this + 1) = a3;
  *((_DWORD *)this + 2) = a4;
  vox::Mutex::Mutex((pthread_mutex_t *)this + 3);
  v6.value = *(_DWORD *)this;
  v7 = *(_DWORD *)this == 0;
  *((_BYTE *)this + 17) = 1;
  *((_QWORD *)this + 3) = 0;
  *((_BYTE *)this + 16) = 1;
  if ( v7 )
  {
    *((_BYTE *)this + 17) = v6.value;
  }
  else
  {
    if ( a5 )
    {
      LC_API_STRNCPY_0((char *)this + 32, a5, 0x3Fu);
      *((_BYTE *)this + 95) = 0;
    }
    else
    {
      strcpy((char *)this + 32, "VoxThread");
    }
    if ( !pthread_create((pthread_t *)this + 24, nullptr, (void *(*)(void *))vox::funcUpdate, this) )
    {
      pthread_getschedparam(*((_DWORD *)this + 24), policy, &param);
      priority_min = sched_get_priority_min(policy[0]);
      priority_max = sched_get_priority_max(policy[0]);
      if ( priority_max > 30 )
      {
        if ( priority_min < 31 )
          priority_max = 31;
        else
          priority_max = priority_min;
      }
      v11 = *((_DWORD *)this + 24);
      v12.__sched_priority = priority_max;
      pthread_setschedparam(v11, policy[0], &v12);
      pthread_getschedparam(*((_DWORD *)this + 24), policy, &param);
    }
  }
  return this;
}


// ===== 8938b4 vox::VoxThread::VoxThread(void (*)(void *,void *),void *,void *,char *) =====
vox::VoxThread *__fastcall vox::VoxThread::VoxThread(
        vox::VoxThread *this,
        void (*a2)(void *, void *),
        void *a3,
        void *a4,
        char *a5)
{
  pthread_mutex_t v6; // r2
  bool v7; // zf
  int priority_min; // r7
  int priority_max; // r3
  pthread_t v11; // r0
  struct sched_param v12; // [sp+4h] [bp-10h] BYREF
  struct sched_param param; // [sp+8h] [bp-Ch] BYREF
  int policy[2]; // [sp+Ch] [bp-8h] BYREF

  *(_DWORD *)this = a2;
  *((_DWORD *)this + 1) = a3;
  *((_DWORD *)this + 2) = a4;
  vox::Mutex::Mutex((pthread_mutex_t *)this + 3);
  v6.value = *(_DWORD *)this;
  v7 = *(_DWORD *)this == 0;
  *((_BYTE *)this + 17) = 1;
  *((_QWORD *)this + 3) = 0;
  *((_BYTE *)this + 16) = 1;
  if ( v7 )
  {
    *((_BYTE *)this + 17) = v6.value;
  }
  else
  {
    if ( a5 )
    {
      LC_API_STRNCPY_0((char *)this + 32, a5, 0x3Fu);
      *((_BYTE *)this + 95) = 0;
    }
    else
    {
      strcpy((char *)this + 32, "VoxThread");
    }
    if ( !pthread_create((pthread_t *)this + 24, nullptr, (void *(*)(void *))vox::funcUpdate, this) )
    {
      pthread_getschedparam(*((_DWORD *)this + 24), policy, &param);
      priority_min = sched_get_priority_min(policy[0]);
      priority_max = sched_get_priority_max(policy[0]);
      if ( priority_max > 30 )
      {
        if ( priority_min < 31 )
          priority_max = 31;
        else
          priority_max = priority_min;
      }
      v11 = *((_DWORD *)this + 24);
      v12.__sched_priority = priority_max;
      pthread_setschedparam(v11, policy[0], &v12);
      pthread_getschedparam(*((_DWORD *)this + 24), policy, &param);
    }
  }
  return this;
}


// ===== 8939e4 vox::FileInterface::~FileInterface() =====
void __fastcall vox::FileInterface::~FileInterface(vox::FileInterface *this)
{
  ;
}


// ===== 8939e8 vox::FileInterface::GetFilePtr(void) =====
int __fastcall vox::FileInterface::GetFilePtr(vox::FileInterface *this)
{
  return *((_DWORD *)this + 1);
}


// ===== 8939f0 vox::FileLimited::~FileLimited() =====
void __fastcall vox::FileLimited::~FileLimited(vox::FileLimited *this)
{
  ;
}


// ===== 8939f4 vox::FileLimited::Write(void const*,int,int) =====
int __fastcall vox::FileLimited::Write(vox::FileLimited *this, const void *a2, int a3, int a4)
{
  return 0;
}


// ===== 8939fc vox::FileInterface::Read(void *,int,int) =====
int __fastcall vox::FileInterface::Read(vox::FileInterface *this, void *a2, int a3, int a4)
{
  int v4; // r12
  bool v5; // zf

  v4 = *((_DWORD *)this + 1);
  v5 = a2 == nullptr;
  if ( a2 )
    v5 = v4 == 0;
  if ( v5 || !vox::FileSystemInterface::m_IOFunc )
    return 0;
  else
    return ((int (__fastcall *)(void *, int, int, int))vox::FileSystemInterface::m_IOFunc)(a2, a3, a4, v4);
}


// ===== 893a54 vox::FileInterface::Seek(int,vox::VoxFileSeekOrigin) =====
int __fastcall vox::FileInterface::Seek(int a1)
{
  if ( *(_DWORD *)(a1 + 4) && off_A33EB4 )
    return ((int (*)(void))off_A33EB4)();
  else
    return -1;
}


// ===== 893a98 vox::FileInterface::Tell(void) =====
int __fastcall vox::FileInterface::Tell(vox::FileInterface *this)
{
  if ( *((_DWORD *)this + 1) && off_A33EB8 )
    return ((int (*)(void))off_A33EB8)();
  else
    return -1;
}


// ===== 893adc vox::FileInterface::Write(void const*,int,int) =====
int __fastcall vox::FileInterface::Write(vox::FileInterface *this, const void *a2, int a3, int a4)
{
  int v4; // r12
  bool v5; // zf

  v4 = *((_DWORD *)this + 1);
  v5 = a2 == nullptr;
  if ( a2 )
    v5 = v4 == 0;
  if ( v5 || !off_A33EB0 )
    return 0;
  else
    return ((int (__fastcall *)(const void *, int, int, int))off_A33EB0)(a2, a3, a4, v4);
}


// ===== 893b34 vox::FileLimited::FileLimited(void) =====
_DWORD *__fastcall vox::FileLimited::FileLimited(_DWORD *this)
{
  *(this + 2) = 1;
  *this = off_993D18;
  *(this + 5) = 0;
  *(this + 1) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

