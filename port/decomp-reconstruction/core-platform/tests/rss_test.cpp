#include "core-platform/rss.hpp"
#include "core-platform/slim_xml.hpp"

#include <cstdio>
#include <cstring>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    const char xml[] =
        "<rss><channel><title>one</title></channel><item/><channel><title>two</title></channel></rss>";
    slim::XmlDocument doc;
    CHECK(doc.loadFromMemory(xml, static_cast<unsigned>(std::strlen(xml))));
    const slim::XmlNode* rssNode = doc.findChild("rss");
    CHECK(rssNode != nullptr);

    // One channel per "channel" child, in document order (the channel body is a stand-in).
    rss feed;
    if (rssNode != nullptr) {
        feed.read(rssNode);
    }
    CHECK(feed.size() == 2);

    // Writing the feed is a no-op in the original.
    feed.write(nullptr);
    CHECK(feed.size() == 2);

    std::printf("%s\n", failures ? "rss: FAILED" : "rss: ok");
    return failures != 0;
}
