// Batch e2-glitch-core-io-pack0-c0188b-0 (glitch::core::CMatrix4<float>, 3 functions).
//
// All three addresses are GCC clones of the EM4CONST_COPY copy constructor
//   CMatrix4<float>::CMatrix4(const CMatrix4<float>&, CMatrix4<float>::eConstructor)
// Their Hex-Rays body is `a1[64] = 0; memcpy(a1, a2, 0x41);`. The memcpy copies 65 bytes
// (16 values plus the identity flag at +0x40), so the flag store is overwritten and the
// result is the same as the definition below: values and flag copied from the source.
//
// That definition is already in glitch-core-io/src/tb_core-io-glitch_core_CMatrix4_float-0.cpp
// (batch e1, which lists the same clone at twelve other addresses). A second definition of the
// same specialisation would not link, so this file defines nothing. The clone rows point there.
//
// 0x66bf24, 0x66fb64, 0x6f6f68: see the e1 file for the body and tests/e2-glitch-core-io-pack0-c0188b-0_test.cpp
// for a check that the clone semantics hold.
#include "glitch-shared/glitch_core.hpp"
