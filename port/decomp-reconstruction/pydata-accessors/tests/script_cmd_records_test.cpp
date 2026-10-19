// Reads through ScriptCmd::read, AIChangeScript::read (two string buffers), AIDoSkill::read
// (one string buffer, freed then read; read twice on one object), CloseDoor and MoveActor, plus
// the destructors that free them.
#include "pydata-accessors/script_cmd.hpp"
#include "read_bytes_stream.hpp"

#include <cstdio>
#include <cstring>
#include <vector>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

// Serves a fixed byte sequence; ReadBytes fails once it runs out.
class ByteStream : public ReadBytesStream {
public:
    explicit ByteStream(std::vector<unsigned char> bytes) : m_bytes(std::move(bytes)) {}
    bool ReadBytes(void* dst, std::size_t n) override {
        if (m_pos + n > m_bytes.size()) return false;
        std::memcpy(dst, m_bytes.data() + m_pos, n);
        m_pos += n;
        return true;
    }
private:
    std::vector<unsigned char> m_bytes;
    std::size_t m_pos = 0;
};

static void putWord(std::vector<unsigned char>& out, std::uint32_t v) {
    for (int i = 0; i < 4; ++i) out.push_back(static_cast<unsigned char>(v >> (8 * i)));
}

static void putText(std::vector<unsigned char>& out, const char* s) {
    for (std::size_t i = 0; s[i]; ++i) out.push_back(static_cast<unsigned char>(s[i]));
}

int main() {
    // ScriptCmd::read stores one little-endian int32 at +0x4.
    {
        std::vector<unsigned char> b;
        putWord(b, 0xfffffffeu);  // -2
        ByteStream s(b);
        Structs::ScriptCmd base;
        base.read(&s);
        CHECK(base.ID == -2);
    }

    // AIChangeScript: int32 base word, then length 3 and "abc", then length 2 and "xy".
    {
        std::vector<unsigned char> b;
        putWord(b, 7);
        putWord(b, 3);
        putText(b, "abc");
        putWord(b, 2);
        putText(b, "xy");
        ByteStream s(b);
        Structs::AIChangeScript* c = new Structs::AIChangeScript();
        c->read(&s);
        CHECK(c->ID == 7);
        CHECK(c->ScriptSize == 3);
        CHECK(c->TargetSize == 2);
        CHECK(c->Script != nullptr && std::strcmp(c->Script, "abc") == 0);
        CHECK(c->Target != nullptr && std::strcmp(c->Target, "xy") == 0);
        delete c;  // frees both buffers
    }

    // AIDoSkill: int32 (+0x8), length 2 (+0xc) and "hi" at +0x10 (the buffer is freed if set, then read).
    {
        std::vector<unsigned char> b;
        putWord(b, 9);            // ScriptCmd word at +0x4
        putWord(b, 0xfffffffbu);  // -5 at +0x8
        putWord(b, 2);            // length at +0xc
        putText(b, "hi");
        ByteStream s(b);
        Structs::AIDoSkill* d = new Structs::AIDoSkill();
        d->read(&s);
        CHECK(d->ID == 9);
        CHECK(d->Skill == -5);
        CHECK(d->TargetSize == 2);
        CHECK(d->Target != nullptr && std::strcmp(d->Target, "hi") == 0);
        d->finalize();  // frees the buffer at +0x10 and clears it with its length at +0xc (the listing does both)
        CHECK(d->Target == nullptr && d->TargetSize == 0);
        delete d;
    }

    // AIDoSkill read twice on one object (Hex-Rays free-then-read): the second read frees "hi",
    // reads the new int32, length and string, and consumes the stream to its end.
    {
        std::vector<unsigned char> b;
        putWord(b, 1);            // ScriptCmd word, first read
        putWord(b, 0xfffffffdu);  // -3 at +0x8
        putWord(b, 2);            // length at +0xc
        putText(b, "hi");
        putWord(b, 4);            // ScriptCmd word, second read
        putWord(b, 7);            // +0x8
        putWord(b, 3);            // length at +0xc
        putText(b, "xyz");
        ByteStream s(b);
        Structs::AIDoSkill* d = new Structs::AIDoSkill();
        d->read(&s);
        CHECK(d->Target != nullptr && std::strcmp(d->Target, "hi") == 0);
        d->read(&s);
        CHECK(d->ID == 4);
        CHECK(d->Skill == 7);
        CHECK(d->TargetSize == 3);
        CHECK(d->Target != nullptr && std::strcmp(d->Target, "xyz") == 0);
        unsigned char extra = 0;
        CHECK(!s.ReadBytes(&extra, 1));  // every byte was consumed
        delete d;  // frees "xyz"
    }

    // CloseDoor read twice on one object (Hex-Rays free-then-read): the second read frees the first
    // buffer, reads the new length, string and bool, and consumes the stream in order.
    {
        std::vector<unsigned char> b;
        putWord(b, 0);            // ScriptCmd word, first read
        putWord(b, 3);            // length
        putText(b, "abc");
        b.push_back(1);           // bool at +0x10
        putWord(b, 0);            // ScriptCmd word, second read
        putWord(b, 2);            // length
        putText(b, "xy");
        b.push_back(0);
        ByteStream s(b);
        Structs::CloseDoor* c = new Structs::CloseDoor();
        c->read(&s);
        CHECK(c->Target != nullptr && std::strcmp(c->Target, "abc") == 0);
        CHECK(c->Wait == true);
        c->read(&s);
        CHECK(c->TargetSize == 2);
        CHECK(c->Target != nullptr && std::strcmp(c->Target, "xy") == 0);
        CHECK(c->Wait == false);
        delete c;  // frees "xy"
    }

    // MoveActor: length 2 "hi", bool, length 3 "xyz", bool. Both buffers are read unconditionally.
    {
        std::vector<unsigned char> b;
        putWord(b, 0);            // ScriptCmd word
        putWord(b, 2);            // length at +0x8
        putText(b, "hi");
        b.push_back(1);           // bool at +0x10
        putWord(b, 3);            // length at +0x14
        putText(b, "xyz");
        b.push_back(0);           // bool at +0x1c
        ByteStream s(b);
        Structs::MoveActor* m = new Structs::MoveActor();
        m->read(&s);
        CHECK(m->DestinationSize == 2);
        CHECK(m->Destination != nullptr && std::strcmp(m->Destination, "hi") == 0);
        CHECK(m->Forced == true);
        CHECK(m->TargetSize == 3);
        CHECK(m->Target != nullptr && std::strcmp(m->Target, "xyz") == 0);
        CHECK(m->Wait == false);
        delete m;  // frees both buffers
    }

    // A short stream stops the read: ScriptCmd::read leaves the word at zero when no bytes arrive.
    {
        ByteStream s(std::vector<unsigned char>{1, 2});
        Structs::ScriptCmd base;
        base.read(&s);
        CHECK(base.ID == 0);
    }

    std::printf("%s\n", failures ? "script_cmd_records: FAILED" : "script_cmd_records: ok");
    return failures != 0;
}
