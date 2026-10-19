// Group (context) tree of glitch::io::CAttributes: SContext, the container
// lifetime, and push / pop / setGroup navigation.
#include <string>

#include "glitch-core-io/io/attributes.hpp"

#include "glitch-video/video_driver.hpp"

namespace glitch::io {

// 0x562b10 _ZN6glitch2io11CAttributes8SContextC1EPKc
// 0x562c80 _ZN6glitch2io11CAttributes8SContextC2EPKc
CAttributes::SContext::SContext(const std::string& groupName) : name(groupName) {}

// 0x5643a8 _ZN6glitch2io11CAttributes8SContextD1Ev
// 0x5644f8 _ZN6glitch2io11CAttributes8SContextD2Ev
CAttributes::SContext::~SContext() {
    clear();
}

// 0x562964 _ZNK6glitch2io11CAttributes8SContext10hasContextEPKc
CAttributes::SContext* CAttributes::SContext::hasContext(const char* groupName) const {
    for (SContext* child : children) {
        if (child->name == groupName) return child;
    }
    return nullptr;
}

// 0x563690 _ZN6glitch2io11CAttributes8SContext10getContextEPKcb
CAttributes::SContext* CAttributes::SContext::getContext(const char* groupName, bool create) {
    if (SContext* found = hasContext(groupName)) return found;
    if (!create) return nullptr;
    SContext* child = new SContext(groupName);
    children.push_back(child);
    child->parent = this;
    return child;
}

// 0x563a54 _ZN6glitch2io11CAttributes8SContext5clearEv
void CAttributes::SContext::clear() {
    // Index loop: dropping a child may run its destructor, which must not
    // invalidate the walk.
    for (std::size_t i = 0; i < children.size(); ++i) children[i]->drop();
    children.clear();
    for (std::size_t i = 0; i < attributes.size(); ++i) attributes[i]->drop();
    attributes.clear();
}

// 0x562b78 _ZN6glitch2io11CAttributesC1EPNS_5video12IVideoDriverE
// 0x562bfc _ZN6glitch2io11CAttributesC2EPNS_5video12IVideoDriverE
CAttributes::CAttributes(glitch::video::IVideoDriver* driverPtr) : driver(driverPtr) {
    if (driver) ++driver->referenceCounter;
}

// 0x564418 _ZN6glitch2io11CAttributesD1Ev
// 0x564488 _ZN6glitch2io11CAttributesD2Ev
CAttributes::~CAttributes() {
    clear();
    if (driver) driver->drop();
    // The root group is a member and is destroyed after this body, as the
    // original does with ~SContext on the embedded object.
}

// 0x563b30 _ZN6glitch2io11CAttributes5clearEv
void CAttributes::clear() {
    root.clear();
    group = &root;
}

// 0x564314 _ZN6glitch2io11CAttributes4pushEPKc
void CAttributes::push(const char* groupName) {
    group = group->getContext(groupName, true);
}

// 0x564568 _ZN6glitch2io11CAttributes4pushEi
void CAttributes::push(int groupIndex) {
    group = group->getContext(("group" + std::to_string(groupIndex)).c_str(), true);
}

// 0x564644 _ZN6glitch2io11CAttributes4pushEPKci
void CAttributes::push(const char* groupName, int groupIndex) {
    std::string full = std::string(groupName) + std::to_string(groupIndex);
    group = group->getContext(full.c_str(), true);
}

// 0x5618d8 _ZN6glitch2io11CAttributes3popEv
// PARTIAL: the original has no root check. It sets the group to the root's null parent, so the next
// attribute access reads through a null group. This reconstruction keeps the root instead, and
// attributes_context_test asserts that.
void CAttributes::pop() {
    if (group->parent) group = group->parent;
}

// 0x561908 _ZN6glitch2io11CAttributes8setGroupEj
// Re-decompiled 0x561908: v = *(*(this + 0x44) + 4 * index); *(this + 0x48) = v + 0x20;
// *(this + 0x44) = v - i.e. group = group->children[index] and action = group + 32, with no bounds
// test (the +0x44 object is the current SContext, its children at +44 and its action at +32, the
// same members pop reads at 0x5618d8). The port's in-range path is that. PARTIAL: an out-of-range
// index reads past the child vector in the original (undefined), which the port's range check
// suppresses; named here as the only deviation.
void CAttributes::setGroup(unsigned int index) {
    if (index < group->children.size()) group = group->children[index];
}

// 0x561924 _ZN6glitch2io11CAttributes12getGroupNameEv
const std::string& CAttributes::getGroupName() const {
    return group->name;
}

// 0x5618f0 _ZN6glitch2io11CAttributes14getGroupsCountEv
int CAttributes::getGroupsCount() const {
    return static_cast<int>(group->children.size());
}

}  // namespace glitch::io
