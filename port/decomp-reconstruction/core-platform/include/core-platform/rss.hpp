// rss: the RSS feed reader. The object is the list of channels read from the "channel" children of an
// XML document. The channel is net-session-online's real class (net-session-online/channel.hpp), the one
// the port's feeds use (GLXPlayerUser advRss_ and promoRss_), so there is one channel definition.
#pragma once

#include <vector>

#include "core-platform/slim_xml.hpp"
#include "net-session-online/channel.hpp"

class rss : public std::vector<channel> {
public:
    void write(slim::XmlNode* node) const;       // 0x842464: empty in the original
    void read(const slim::XmlNode* node);        // 0x844050
};
