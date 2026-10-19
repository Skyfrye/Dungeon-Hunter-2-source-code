// Batch v1-vendor-gameswf-pack13-ea1503-0: gameswf::as_netconnection, as_point, as_selection, as_sound and
// as_textformat (gameswf r1714 upstream, Gameloft build). 17 functions: constructors C1/C2 and destructors D1/D0.
//
// Every function here is upstream code. Each binary body matches the gameswf r1714 source:
//   - constructors: the bodies in upstream/gameswf-r1714/gameswf/gameswf_as_classes/as_*.cpp;
//   - destructors: compiler-generated (the headers declare none), or the inline body in as_sound.h.
// Nothing is defined in this file. A second definition would collide with the upstream unit in the DH2 build,
// so the ledger rows are `upstream` and name the upstream source (vendor-gameswf/ledger.csv).
//
// Checked against the binary (Hex-Rays and ARM listings):
//   - as_netconnection C2 0x7a3acc: the constant-folded tu_string clone at 0x7a3a64 holds "connect", so the
//     member name matches upstream set_member("connect", as_netconnection_connect).
//   - as_point C2 0x7a48c0 and C1 0x7a444c: x is stored at +0x38 and y at +0x3c before the vtable, then
//     builtin_member for "add", "subtract" and "normalize", in that order. Matches upstream.
//   - as_sound D1 0x7a4df8: clear(), then the proxy at +0x40 is released (count minus one, free_internal(proxy, 0)
//     at zero), then ~as_object. The release is the DH2 smart_ptr_proxy release, not upstream's delete. It comes
//     from the member type (weak_ptr<character> with a smart_ptr_proxy), not from this body. Same situation as
//     character_def D1 0x75e180 in the character batch.
//
// Deleting destructors (D0) store the vtable, run D1 and then call LC_API_FREE_0 (operator delete). They are
// not reconstructed on their own.
//
// No test: none of these functions has logic that runs without a constructed gameswf::as_object (their only effects are the
// as_object base, the vtable and the built-in members). Layouts (see the headers): as_netconnection, as_selection and
// as_textformat add no members (0x38 bytes); as_point adds gameswf::point m_point at +0x38 (0x40 bytes); as_sound adds
// m_id +0x38, m_is_loaded_sound +0x3c and the weak m_target +0x40 (0x48 bytes).
//
// Address map:
//   0x7a39b4  ~as_netconnection D1   as_netconnection.h (implicit)
//   0x7a3acc  as_netconnection C2    as_netconnection.cpp
//   0x7a3b98  as_netconnection C1    as_netconnection.cpp (same body as C2)
//   0x7a3ca4  ~as_netconnection D0   as_netconnection.h (implicit, deleting)
//   0x7a41b4  ~as_point D1           as_point.h (implicit)
//   0x7a4410  ~as_point D0           as_point.h (implicit, deleting)
//   0x7a444c  as_point C1            as_point.cpp
//   0x7a48c0  as_point C2            as_point.cpp (same body as C1)
//   0x7a4aa0  as_selection C1        as_selection.cpp
//   0x7a4ad4  as_selection C2        as_selection.cpp (same body as C1)
//   0x7a4b08  ~as_selection D1       as_selection.h (implicit)
//   0x7a4d20  ~as_selection D0       as_selection.h (implicit, deleting)
//   0x7a4df8  ~as_sound D1           as_sound.h (inline body)
//   0x7a681c  as_textformat C1       as_textformat.cpp
//   0x7a6850  as_textformat C2       as_textformat.cpp (same body as C1)
//   0x7a6884  ~as_textformat D1      as_textformat.h (implicit)
//   0x7a6b40  ~as_textformat D0      as_textformat.h (implicit, deleting)
