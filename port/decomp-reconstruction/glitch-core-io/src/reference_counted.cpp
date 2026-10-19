// glitch::IReferenceCounted is header-only (glitch-core-io/core/reference_counted.hpp): drop() is inline there.
// 0x31d584 _ZNK6glitch17IReferenceCounted4dropEv and 0x31d5cc ..8onDeleteEv are defined in the header.
// This translation unit only checks that the header is self-contained.
#include "glitch-core-io/core/reference_counted.hpp"
