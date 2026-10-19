// 0x7d0fe4 gameswf::get_fontfile(char const*, gameswf::tu_string&, bool, bool)
//
// The DH2 binary does not use r1714's gameswf_freetype.cpp version (registry on Windows, fontconfig-free search on Linux;
// that file is compiled out here, TU_CONFIG_LINK_TO_FREETYPE is 0). The DH2 function asks the platform's global
// get_fontfile (0x42b38c, core-platform/src/get_fontfile.cpp) for the font file; when that finds nothing, "Times New Roman"
// gets a fixed path on the Linux font directory. The tree's tu_string is the global one (base/container.h), so the symbol
// differs from the binary's gameswf::tu_string only in that parameter type.

#include <cstring>

#include "base/container.h"                          // tu_string
#include "vendor-gameswf/bitmap_glyph_provider.hpp"  // ::get_fontfile(const char*, bool, bool, char*, int)
#include "vendor-gameswf/glyph_provider.hpp"         // gameswf::get_fontfile(const char*, tu_string&, bool, bool)

namespace gameswf {

// A null name finds nothing. The platform lookup fills a zeroed 256-byte buffer; on success the file name is that buffer.
// On failure only "Times New Roman" (anywhere in the name) is answered: /usr/share/fonts/truetype/times, then "bi" for bold
// italic, "b" for bold or for italic alone (the listing tests italic only when the face is not bold, and appends "b"
// there), nothing for the plain face, then ".ttf".
bool get_fontfile(const char* name, ::tu_string& fontfile, bool is_bold, bool is_italic) {
	if (name == nullptr) {
		return false;
	}
	char buffer[256];
	std::memset(buffer, 0, sizeof(buffer));
	if (!::get_fontfile(name, is_bold, is_italic, buffer, 256)) {
		if (std::strstr(name, "Times New Roman") != nullptr) {
			fontfile = "/usr/share/fonts/truetype/times";
			if (is_bold) {
				if (is_italic) {
					fontfile += "bi";
				} else {
					fontfile += "b";
				}
			} else if (is_italic) {
				fontfile += "b";
			}
			fontfile += ".ttf";
			return true;
		}
		return false;
	}
	fontfile = buffer;
	return true;
}

}  // namespace gameswf
