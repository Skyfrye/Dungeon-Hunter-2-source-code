// Batch g1-game-anim-AnimationSet-4fa4a6-1 (part 2 of 2): AnimationSet::GetAnimation(int) and the
// name overload. Declarations come from dh2/AnimationSet.hpp. The lookup walks m_animations, which is
// the original STLport _Rb_tree (a lower_bound on the AnimDict id), and a miss goes through the cache
// rules (LoadAnimation or ReplaceAnimation, with s_invalidAnim as the "no entry" result).

#include "dh2/AnimationSet.hpp"

#include <cstdint>

#include "dh2/Animation.hpp"
#include "dh2/global/AnimationSet_GetAnimation.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "pydata-accessors/member_names.hpp"

// 0x3660f4 _ZN12AnimationSet12GetAnimationEi
// Lookup: lower_bound on animId in m_animations (the original walks its tree at +0x08), and a hit needs an exact
// key. A hit stamps the entry's last-use time (+0x28, m_lastUseTime) from glitch::os::Timer::getRealTime() and
// returns the entry. On a miss, the entry is returned as s_invalidAnim when the flag at +0x3c (unk_3c) is clear and
// LG_DEVICES is set. Otherwise the miss goes through the cache: LoadAnimation when m_cacheSize (+0x30) is above
// the entry count (+0x18), else ReplaceAnimation(animId), with LoadAnimation as the fallback when that returns
// s_invalidAnim. Both loaders are partial (their stubs return s_invalidAnim), so a miss that reaches them ends
// in s_invalidAnim until they are complete.
Animation* AnimationSet::GetAnimation(int animId) {
    // lower_bound: the first entry whose key is not less than animId (the original walk at +0x08).
    auto it = m_animations.lower_bound(animId);
    if (it != m_animations.end() && it->first == animId) {
        it->second.m_lastUseTime = glitch::os::Timer::getRealTime();
        return &it->second;
    }
    if (!unk_3c && LG_DEVICES) {
        return &s_invalidAnim;
    }
    // The original compares the two _DWORD fields as unsigned, so this is an unsigned comparison.
    if (static_cast<std::uint32_t>(m_cacheSize) > static_cast<std::uint32_t>(m_animations.size())) {
        return LoadAnimation(animId);
    }
    Animation* result = ReplaceAnimation(animId);
    if (result == &s_invalidAnim) {
        return LoadAnimation(animId);
    }
    return result;
}

// 0x3661f4 _ZN12AnimationSet12GetAnimationEPKc
Animation* AnimationSet::GetAnimation(const char* name) {
    int animId = Arrays::GetMemberIDByString<Arrays::AnimDict>(name);
    return GetAnimation(animId);
}
