// Test for batch v1-vendor-gameswf-pack17-c88d12-0.
// (container.cpp, utf8.cpp and the tu_string batch give tu_string its out-of-line members; the membuf batch is the counted
// buffer's base; the pack2 source has counted_buffer's destructor and drop_ref; the stubs file defines the object runtime that
// the batch's as_function members reach as weak aborting functions.)
//
// Covers:
//   the bucket-count rule of hash<>::set_raw_capacity that the tu_loadlib table (0x7bb580) uses
//   (gameswf::dh2_hash::bucket_count in vendor-gameswf/gameswf_hash_dh2.hpp, inline);
//   gameswf::action_buffer: the constructor state (0x7bae08), operator= (0x7bb1e4, the shared counted buffer and its count),
//   read (0x7bafa4, from a fake stream whose four members the test defines), process_decl_dict (0x7bb9a0, against a fake
//   permanent string cache) and the destructor of the owner (do_action, 0x7bb234);
//   gameswf::event_id::get_function_name (0x7baef8);
//   gameswf::call_method (0x7ba904) for a method that is not a function: the result stays undefined and nothing is called.
// Values are chosen away from the powers of two, where the single-precision log can round either way (see that header).
//
// Link line (run from the repository root; <this file> is this test file):
//   bash tools/trackb/check_tu.sh --test <this file>
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-pack17-c88d12-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-pack2-6d7f71-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_membuf-3351d8-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_as_value-794e76-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/container.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/utf8.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/membuf.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_tu_string-39e5bd-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/test-support/dh2_test_support.cpp
//     port/decomp-reconstruction/vendor-gameswf/test-support/dh2_as_runtime_stubs.cpp

#include <cstdio>
#include <cstring>
#include <map>
#include <string>

#include "base/container.h"
#include "gameswf/gameswf.h"

// process_decl_dict is a private member (the interpreter calls it on itself); the test reaches it by opening the access
// specifiers for the headers below.
#define private public
#include "gameswf/gameswf_action.h"
#include "gameswf/gameswf_player.h"
#include "gameswf/gameswf_stream.h"
#include "vendor-gameswf/action_buffer.hpp"
#include "vendor-gameswf/do_action.hpp"
#include "vendor-gameswf/gameswf_hash_dh2.hpp"
#include "vendor-gameswf/permanent_string.hpp"
#include "vendor-gameswf/permanent_string_cache.hpp"
#undef private

// ---- stand-ins for the callees outside the batch ----------------------------------------------------------------------

namespace {

// The fake stream: a byte array and a position. The four stream members the batch calls read from it.
const unsigned char* g_stream_bytes = nullptr;
int g_stream_size = 0;
int g_stream_pos = 0;
int g_log_errors = 0;
std::map<std::string, gameswf::permanent_string*> g_interned;

}  // namespace

namespace gameswf {

int stream::get_position() { return g_stream_pos; }
int stream::get_tag_end_position() { return g_stream_size; }
Uint8 stream::read_u8() { return g_stream_bytes[g_stream_pos++]; }
Uint16 stream::read_u16() {
    Uint16 v = static_cast<Uint16>(g_stream_bytes[g_stream_pos] | (g_stream_bytes[g_stream_pos + 1] << 8));
    g_stream_pos += 2;
    return v;
}

void log_error(const char*, ...) { ++g_log_errors; }

// The interned (permanent) copy of a text: one object per text, with the interned flag set.
permanent_string* permanent_string_cache::get(const ::tu_string& name) {
    permanent_string*& slot = g_interned[name.c_str()];
    if (slot == nullptr) {
        slot = new permanent_string(name);
    }
    return slot;
}

}  // namespace gameswf

namespace {

int g_failures = 0;

#define CHECK(cond)                                                    \
    do {                                                               \
        if (!(cond)) {                                                 \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                              \
        }                                                              \
    } while (0)

// The rule returns at least 4 buckets for every request, including zero and one.
void test_minimum() {
    CHECK(gameswf::dh2_hash::bucket_count(0) == 4);
    CHECK(gameswf::dh2_hash::bucket_count(1) == 4);
    CHECK(gameswf::dh2_hash::bucket_count(2) == 4);
    CHECK(gameswf::dh2_hash::bucket_count(4) == 4);
}

// Away from the boundaries: 1 << (int)(log2(n - 1) + 1).
void test_values() {
    CHECK(gameswf::dh2_hash::bucket_count(6) == 8);     // log2(5) = 2.32 -> 3 -> 8
    CHECK(gameswf::dh2_hash::bucket_count(10) == 16);   // log2(9) = 3.17 -> 4 -> 16
    CHECK(gameswf::dh2_hash::bucket_count(20) == 32);   // log2(19) = 4.25 -> 5 -> 32
    CHECK(gameswf::dh2_hash::bucket_count(100) == 128); // log2(99) = 6.63 -> 7 -> 128
    CHECK(gameswf::dh2_hash::bucket_count(1000) == 1024);  // log2(999) = 9.96 -> 10 -> 1024
}

// Every result is a power of two, at least 4, and at least the requested size's bucket floor (never fewer buckets than
// requested entries would need at this rule, which is never more than twice the request).
void test_power_of_two() {
    for (int n = 0; n <= 300; ++n) {
        const int b = gameswf::dh2_hash::bucket_count(n);
        CHECK(b >= 4);
        CHECK((b & (b - 1)) == 0);
        if (n > 4) {
            CHECK(b < 2 * n + 4);
        }
    }
}

using gameswf::action_buffer;
using gameswf::counted_buffer;

// A player that is only a block of memory: the batch hands its m_permanent_strings address to the fake cache, which ignores it.
struct fake_player {
    alignas(16) unsigned char bytes[1024];
    gameswf::player* get() { return reinterpret_cast<gameswf::player*>(bytes); }
};

void test_action_buffer_state() {
    action_buffer ab;
    CHECK(ab.m_buffer != nullptr);
    CHECK(ab.m_buffer->m_ref_count == 1);
    CHECK(ab.m_buffer->size() == 0);
    CHECK(ab.m_buffer->m_dictionary.size() == 0);
    CHECK(ab.m_decl_dict_processed_at == -1);
    CHECK(ab.m_action_offset == 0);
    CHECK(ab.get_length() == 0);
}

void test_assignment() {
    action_buffer a;
    action_buffer b;
    counted_buffer* a_buffer = a.m_buffer;
    counted_buffer* b_buffer = b.m_buffer;
    CHECK(a_buffer != b_buffer);
    b.m_decl_dict_processed_at = 40;
    b.m_action_offset = 77;

    a = b;  // the old buffer of a loses its only reference and goes away; b's buffer is shared
    CHECK(a.m_buffer == b_buffer);
    CHECK(b_buffer->m_ref_count == 2);
    CHECK(a.m_decl_dict_processed_at == 40);
    CHECK(a.m_action_offset == 77);

    a = b;  // the same buffer again: no change
    CHECK(b_buffer->m_ref_count == 2);

    action_buffer c;
    c = a;
    CHECK(b_buffer->m_ref_count == 3);
    {
        action_buffer d;
        d = c;
        CHECK(b_buffer->m_ref_count == 4);
    }
    CHECK(b_buffer->m_ref_count == 3);  // the destructor of d dropped its reference
}

void test_read() {
    // Records: 0x07 (no data), 0x96 (push) with 2 data bytes, 0x00 (end). The tag starts at position 2.
    static const unsigned char tag[] = {0xEE, 0xEE, 0x07, 0x96, 0x02, 0x00, 0xAB, 0xCD, 0x00};
    g_stream_bytes = tag;
    g_stream_size = static_cast<int>(sizeof(tag));
    g_stream_pos = 2;

    alignas(8) unsigned char raw[64] = {0};  // a gameswf::stream starts with its flag byte (+0x00)
    gameswf::stream* in = reinterpret_cast<gameswf::stream*>(raw);

    action_buffer ab;
    ab.read(in);
    CHECK(ab.m_action_offset == 2);  // the position of the first record
    CHECK(ab.get_length() == 7);
    const unsigned char want[] = {0x07, 0x96, 0x02, 0x00, 0xAB, 0xCD, 0x00};
    CHECK(std::memcmp(ab.m_buffer->data(), want, sizeof(want)) == 0);
    CHECK(g_stream_pos == 9);

    // With the stream's flag set the offset is 8 bytes further.
    raw[0] = 1;
    g_stream_pos = 2;
    action_buffer flagged;
    flagged.read(in);
    CHECK(flagged.m_action_offset == 10);
    CHECK(flagged.get_length() == 7);

    gameswf::do_action da;
    da.m_buf = flagged;
    CHECK(da.get_action_offset() == 10);
    CHECK(da.is_action_tag());
}

// decl_dict opcode: 0x88, length (2 bytes), count (2 bytes), then the NUL-terminated strings.
void test_decl_dict() {
    fake_player player;
    static const unsigned char opcode[] = {0x88, 0x0B, 0x00, 0x03, 0x00, 'a', 'b', 0, 0, 'c', 'd', 'e', 0};
    // The length word is not read by the batch. stop_pc is the end of the opcode.
    const int stop_pc = static_cast<int>(sizeof(opcode));

    action_buffer ab;
    ab.m_buffer->append(opcode, static_cast<int>(sizeof(opcode)));

    g_log_errors = 0;
    ab.process_decl_dict(0, stop_pc, player.get());
    CHECK(ab.m_decl_dict_processed_at == 0);
    CHECK(ab.m_buffer->m_dictionary.size() == 3);
    CHECK(g_log_errors == 0);
    CHECK(std::strcmp(ab.m_buffer->m_dictionary[0]->c_str(), "ab") == 0);
    CHECK(std::strcmp(ab.m_buffer->m_dictionary[1]->c_str(), "") == 0);
    CHECK(std::strcmp(ab.m_buffer->m_dictionary[2]->c_str(), "cde") == 0);
    CHECK(ab.m_buffer->m_dictionary[0]->is_interned());

    // The same opcode again does nothing; another opcode logs an error and leaves the dictionary alone.
    const int first_entries = ab.m_buffer->m_dictionary.size();
    ab.process_decl_dict(0, stop_pc, player.get());
    CHECK(g_log_errors == 0);
    CHECK(ab.m_buffer->m_dictionary.size() == first_entries);
    ab.process_decl_dict(5, stop_pc, player.get());
    CHECK(g_log_errors == 1);
    CHECK(ab.m_decl_dict_processed_at == 0);

    // A string that runs past stop_pc: "action buffer dict length exceeded" and the rest of the entries are "<invalid>".
    static const unsigned char cut[] = {0x88, 0x08, 0x00, 0x03, 0x00, 'x', 'y', 'z', 'w'};
    action_buffer bad;
    bad.m_buffer->append(cut, static_cast<int>(sizeof(cut)));
    g_log_errors = 0;
    bad.process_decl_dict(0, 4, player.get());  // stop_pc inside the first string
    CHECK(g_log_errors == 1);
    CHECK(bad.m_buffer->m_dictionary.size() == 3);
    CHECK(std::strcmp(bad.m_buffer->m_dictionary[0]->c_str(), "<invalid>") == 0);
    CHECK(std::strcmp(bad.m_buffer->m_dictionary[2]->c_str(), "<invalid>") == 0);
}

void test_function_names() {
    CHECK(std::strcmp(gameswf::event_id(gameswf::event_id::PRESS).get_function_name().c_str(), "onPress") == 0);
    CHECK(std::strcmp(gameswf::event_id(gameswf::event_id::ROLL_OVER).get_function_name().c_str(), "onRoll_Over") == 0);
    CHECK(std::strcmp(gameswf::event_id(gameswf::event_id::ENTER_FRAME).get_function_name().c_str(), "onEnterFrame") == 0);
    CHECK(std::strcmp(gameswf::event_id(gameswf::event_id::ONLOAD_START).get_function_name().c_str(), "onLoadStart") == 0);
}

// A method value that does not hold a function: the result is undefined and no function is called (the environment is
// not touched, so a null one is fine).
void test_call_method_not_a_function() {
    gameswf::as_value this_value;
    gameswf::as_value undefined_method;
    CHECK(gameswf::call_method(undefined_method, nullptr, this_value, 0, 0, "test").is_undefined());
    gameswf::as_value number_method(5);
    CHECK(gameswf::call_method(number_method, nullptr, this_value, 2, 3, "test").is_undefined());
    gameswf::as_value null_method(static_cast<gameswf::as_object*>(nullptr));
    CHECK(gameswf::call_method(null_method, nullptr, this_value, 0, 0, "test").is_undefined());
}

}  // namespace

int main() {
    test_minimum();
    test_values();
    test_power_of_two();
    test_action_buffer_state();
    test_assignment();
    test_read();
    test_decl_dict();
    test_function_names();
    test_call_method_not_a_function();
    if (g_failures == 0) {
        std::printf("pack17 c88d12: all checks passed\n");
        return 0;
    }
    std::printf("pack17 c88d12: %d failure(s)\n", g_failures);
    return 1;
}
