// Batch v1-vendor-gameswf-gameswf_tu_string-39e5bd-0: DH2 bodies for gameswf::tu_string.
//
// The vendored header base/container.h declares tu_string at global scope (the binary's symbols are
// gameswf::tu_string, see the ledger notes). The bodies below are members of that global class.
//
// DH2 binary layout (ARM32 listings of the functions below; 20 bytes; offsets in hex). base/container.h
// now declares it (see the DH2 comment on the union there):
//   +00 byte: 0xFF = heap text; otherwise length + 1, and the inline text starts at +01
//   +04 int: heap length + 1
//   +08 int: heap capacity (a multiple of 16)
//   +0C char*: heap text
//   +10 uint32: hash cache. Low 24 bits: hash, 0xFFFFFF = not computed. Top byte: flags
//       (the constructors clear bit 0 of byte +13, the interned bit).
// Every mutator writes 0xFFFFFF into the low 24 bits (invalidate_hash). resize (0x751d14) does not, as in the
// binary; it lives in base/container.cpp (DH2 body there).
//
// Upstream rows with no body here (ledger.d/v1-vendor-gameswf-gameswf_tu_string-39e5bd-0.csv):
// 0x751d10 stricmp, 0x7520e0 and 0x7521c8 encode_utf8_from_wchar (thunks to the generic encoder),
// 0x78aebc operator==(char const*). Their bodies are the upstream ones in base/container.cpp and container.h.

#include <cstddef>
#include <cstring>

#include "base/container.h"

// 0x7521cc gameswf::tu_string::operator+=(char const*)   (_ZN7gameswf9tu_stringpLEPKc)
// Binary: n = strlen(src); old = length(); resize(old + n); strcpy(text + old, src); then the hash
// cache at +10 gets its low 24 bits set to 0xFFFFFF. The binary returns strcpy's result; the header
// declares void, as upstream.
void tu_string::operator+=(const char* str)
{
	const int add_length = static_cast<int>(std::strlen(str));
	const int old_length = length();
	resize(old_length + add_length);
	// strcpy also copies the terminator. get_buffer() is read after resize(), as in the binary.
	std::memcpy(get_buffer() + old_length, str, static_cast<std::size_t>(add_length) + 1);
	invalidate_hash();
}

// 0x7a3cf4 gameswf::tu_string::operator+=(char)   (_ZN7gameswf9tu_stringpLEc)
// Binary: a zero character does nothing (no resize, no cache write). Otherwise old = length();
// resize(old + 1); strncpy(text + old, &ch, 1); then the cache is invalidated as in 0x7521cc.
// The binary returns char* (this, or the strncpy result); here void.
void tu_string::operator+=(char ch)
{
	if (ch == 0) {
		return;
	}
	const int old_length = length();
	resize(old_length + 1);
	get_buffer()[old_length] = ch;
	invalidate_hash();
}

// 0x753120 gameswf::tu_string::operator+=(gameswf::tu_string const&)   (_ZN7gameswf9tu_stringpLERKS0_)
// Binary: n = length(src); old = length(); resize(old + n); then the source text is read again, after
// the resize, and strcpy'd to text + old. The cache is invalidated as in 0x7521cc.
// strcpy stops at the first NUL of the source, so memcpy of strlen + 1 bytes keeps that rule.
// Appending a string to itself overlaps the copy, as with the binary's strcpy.
void tu_string::operator+=(const tu_string& str)
{
	const int add_length = str.length();
	const int old_length = length();
	resize(old_length + add_length);
	const char* src = str.c_str();
	std::memcpy(get_buffer() + old_length, src, std::strlen(src) + 1);
	invalidate_hash();
}

// 0x796f18 gameswf::tu_string::operator==(gameswf::tu_string const&) const   (_ZNK7gameswf9tu_stringeqERKS0_)
// Binary: the same object compares equal. Otherwise strcmp of the two texts == 0, so the comparison
// stops at the first NUL. The vendored upstream body (size check, then memcmp) differs only for texts
// with embedded NULs. Reconstructed.
bool tu_string::operator==(const tu_string& str) const
{
	if (this == &str) {
		return true;
	}
	return std::strcmp(c_str(), str.c_str()) == 0;
}

// 0x7635c8 gameswf::tu_string::get_hashi() const   (_ZNK7gameswf9tu_string9get_hashiEv)
// Gameloft addition (no upstream counterpart). The body is inline in base/container.h, because the binary also computes
// the hash inside the copy constructor and operator=. If the cache at +10 holds a computed hash (low 24 bits not
// 0xFFFFFF) it returns those 24 bits sign-extended. Otherwise, for length > 0:
//   h = 5381; for each byte from the last to the first: c = byte with 'A'..'Z' folded to 'a'..'z';
//             h = c ^ (33 * h)                       (32-bit wrap-around)
// takes h's low 24 bits (the empty string gives 5381), stores them in the cache keeping the flag byte, and returns the
// sign-extended value. The cache is mutable.
