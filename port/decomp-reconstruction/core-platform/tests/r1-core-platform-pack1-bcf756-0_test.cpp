// Batch r1-core-platform-pack1-bcf756-0: rss::read, slim::utf16toutf8, sys::print family.
#include "core-platform/rss.hpp"
#include "core-platform/slim_text.hpp"
#include "core-platform/slim_xml.hpp"
#include "core-platform/sys_print.hpp"

#include <cstdint>
#include <cstdio>
#include <cstring>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // utf16toutf8: 1, 2 and 3 byte forms, and the bytes written are returned.
    {
        const std::uint32_t cps[] = {0x41, 0xE9, 0x20AC};  // 'A', e-acute, euro sign
        char out[16] = {};
        CHECK(slim::utf16toutf8(cps, 3, out, sizeof out) == 6);
        CHECK(std::memcmp(out, "A\xC3\xA9\xE2\x82\xAC", 6) == 0);
    }
    // A zero count writes nothing and returns 0.
    {
        char out[4] = {};
        CHECK(slim::utf16toutf8(nullptr, 0, out, sizeof out) == 0);
    }
    // Truncation: the euro sign needs 3 bytes after the 'A', so dstMax 3 stops after 'A'.
    {
        const std::uint32_t cps[] = {0x41, 0x20AC};
        char out[8] = {};
        CHECK(slim::utf16toutf8(cps, 2, out, 3) == 1);
        CHECK(out[0] == 'A');
        CHECK(slim::utf16toutf8(cps, 2, out, 4) == 4);
    }
    // A 2-byte character that does not fit writes nothing.
    {
        const std::uint32_t cps[] = {0xE9};
        char out[4] = {};
        CHECK(slim::utf16toutf8(cps, 1, out, 1) == 0);
    }
    // Above 0xFFFF the listing still writes three bytes, the lead masked to 5 bits:
    // 0xE0 | ((0x10000 >> 12) & 0x1F) = 0xF0, then 0x80, 0x80.
    {
        const std::uint32_t cps[] = {0x10000};
        char out[4] = {};
        CHECK(slim::utf16toutf8(cps, 1, out, sizeof out) == 3);
        CHECK(static_cast<unsigned char>(out[0]) == 0xF0);
        CHECK(static_cast<unsigned char>(out[1]) == 0x80);
        CHECK(static_cast<unsigned char>(out[2]) == 0x80);
    }

    // sys::printNoFormat forwards to printf and returns its count.
    CHECK(sys::printNoFormat("abc\n") == 4);
    // sys::print returns the count of the message (the timestamp is not counted).
    CHECK(sys::print("%d", 42) == 2);
    // sys::println returns the count of the newline.
    CHECK(sys::println("x%d", 5) == 1);

    // rss::read appends one channel per "channel" child on every call (channel body is a stand-in).
    {
        slim::XmlDocument doc;
        const char xml[] = "<rss><channel/><item/><channel/></rss>";
        CHECK(doc.loadFromMemory(xml, static_cast<unsigned>(sizeof xml - 1)));
        const slim::XmlNode* root = doc.findChild("rss");
        CHECK(root != nullptr);
        if (root != nullptr) {
            rss feed;
            feed.read(root);
            CHECK(feed.size() == 2);
            feed.read(root);
            CHECK(feed.size() == 4);
        }
    }
    {
        slim::XmlDocument doc;
        const char xml[] = "<rss><item/></rss>";
        CHECK(doc.loadFromMemory(xml, static_cast<unsigned>(sizeof xml - 1)));
        const slim::XmlNode* root = doc.findChild("rss");
        CHECK(root != nullptr);
        if (root != nullptr) {
            rss feed;
            feed.read(root);
            CHECK(feed.empty());
        }
    }

    std::printf("%s\n", failures ? "r1-core-platform-pack1-bcf756-0: FAILED" : "r1-core-platform-pack1-bcf756-0: ok");
    return failures != 0;
}
