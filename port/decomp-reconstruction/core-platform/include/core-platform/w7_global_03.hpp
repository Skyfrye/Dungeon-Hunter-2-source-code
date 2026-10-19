// Declarations for the global_03 reconstruction slice (src/w7_global_03.cpp).
// Vec2 and ClipVertex stand in for the b2Vec2 / ClipVertex layouts, which are
// not declared anywhere in this tree yet; they match the 2-float and 3-word
// (x, y, id) layouts the pseudocode uses.
#pragma once

namespace gameswf {
class character;
}  // namespace gameswf

namespace w7g3 {
struct Vec2 {
    float x;
    float y;
};

struct ClipVertex {
    Vec2 v;
    int id;
};
}  // namespace w7g3

// 0x7a7c30 fs_callback(gameswf::character*, char const*, char const*)
void fs_callback(gameswf::character* a1, const char* a2, const char* a3);
// 0x7a8420 message_log(char const*)
int message_log(const char* msg);
// 0x7a846c log_callback(bool, char const*)
int log_callback(bool to_stderr, const char* msg);
// 0x7a9954 file_opener(char const*) is defined in the source only. The binary's symbol is
// internal (_ZL11file_openerPKc) and game-ui/src/n2-game-ui-RenderFX-849cdc-2.cpp carries the
// same function with internal linkage, so declaring it here would make every TU that has its own
// copy ambiguous: its type is tu_file* (*)(char const*), in the global namespace, and the vendored
// class it returns is base/tu_file.h's tu_file (the binary's gameswf::tu_file).
// 0x7dcb6c LongAxis(double*)
int LongAxis(double* a);
// 0x7f5038 ClipSegmentToLine(ClipVertex*, ClipVertex*, b2Vec2 const&, float)
int ClipSegmentToLine(w7g3::ClipVertex* out, w7g3::ClipVertex* in,
                      const w7g3::Vec2& normal, float offset);
// 0x7f881c InPoints(b2Vec2 const&, b2Vec2 const*, int)
int InPoints(const w7g3::Vec2& p, const w7g3::Vec2* pts, int count);
// 0x7f89e0 ProcessTwo(b2Vec2*, b2Vec2*, b2Vec2*, b2Vec2*, b2Vec2*)
int ProcessTwo(w7g3::Vec2* a1, w7g3::Vec2* a2, w7g3::Vec2* a3, w7g3::Vec2* a4,
               w7g3::Vec2* a5);
// 0x7f8018 ProcessThree(b2Vec2*, b2Vec2*, b2Vec2*, b2Vec2*, b2Vec2*)
int ProcessThree(w7g3::Vec2* a1, w7g3::Vec2* a2, w7g3::Vec2* a3,
                 w7g3::Vec2* a4, w7g3::Vec2* a5);
