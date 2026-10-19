// glitch::res::String: a string that lives in a resource (COLLADA) file. The object is one word, the address of the text (an offset in the
// file that the loader fixes up); the constructors and the lookups pass it by const reference and read the word.
//
// Evidence: CRootSceneNode::addURLToResolve (0x65b08c) copies the word `*string` into its list node; resolveURLs (0x65c874) compares the
// first character of that word with '#'. Canonical header of the scene-owner wave (the forward declaration in deps/video_stand_ins.hpp
// stays valid).
#pragma once

namespace glitch::res {

class String {
public:
    String() = default;
    explicit String(const char* chars) : text(chars) {}
    const char* c_str() const { return text; }

    const char* text = nullptr;  // +0x00
};

}  // namespace glitch::res
