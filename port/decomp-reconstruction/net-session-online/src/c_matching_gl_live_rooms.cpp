#include "net-session-online/c_matching_gl_live.hpp"

// 0x820318 _ZN15CMatchingGLLive23GetSearchRoomAttributesEy
// The original walks the std::map by hand (lower_bound), then copies the value when the key is
// present. When the key is absent it returns the default-constructed settings it started with.
// The map keeps its entries across calls; a lookup never inserts.
CRoomAttributes CMatchingGLLive::GetSearchRoomAttributes(std::uint64_t key) {
    CRoomAttributes result;
    const auto found = roomAttributes_.find(key);
    if (found != roomAttributes_.end()) {
        result = found->second;
    }
    return result;
}
