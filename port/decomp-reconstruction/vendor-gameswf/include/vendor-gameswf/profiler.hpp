// gameswf::profiler (Gameloft addition; not in gameswf r1714).
//
// Binary: four member functions at 0x7b793c..0x7b7948, each a bare `bx lr` (4 bytes). No body reads
// `this` or the arguments, and the binary keeps no state for the class. The bodies are in
// vendor-gameswf/src/v1-vendor-gameswf-pack16-133bd3-0.cpp.

#pragma once

namespace gameswf {

class profiler {
public:
	void set_enabled(bool enabled);       // 0x7b793c, empty
	void begin_event(const char* name);   // 0x7b7940, empty
	void end_event();                     // 0x7b7944, empty
	void dump();                          // 0x7b7948, empty
};

}  // namespace gameswf
