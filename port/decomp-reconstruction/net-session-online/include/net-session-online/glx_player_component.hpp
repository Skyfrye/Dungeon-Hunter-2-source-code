// GLXPlayerComponent: base of the GLX player services. It holds the observer,
// the GGI (game identifier) and the user id string.
//
// Layout (original 32-bit offsets, kept as comments):
//   +0x00 vptr (virtual destructor)  +0x04 observer (GLXPlayerObserver*)
//   +0x08 GGI (unsigned long, 32 bits in the original)  +0x0c user id (owned string)
#pragma once

#include <memory>

class GLXPlayerObserver;

class GLXPlayerComponent {
public:
    GLXPlayerComponent();                                      // 0x82cc90 C2, 0x82ccc4 C1
    virtual ~GLXPlayerComponent();                             // 0x82cd18 D1, 0x82cd80 D2
    GLXPlayerComponent(const GLXPlayerComponent&) = delete;
    GLXPlayerComponent& operator=(const GLXPlayerComponent&) = delete;

    // 0x82ccf8 _ZN18GLXPlayerComponent16RegisterObserverEP17GLXPlayerObserver
    void RegisterObserver(GLXPlayerObserver* observer);
    // 0x82cd00 _ZN18GLXPlayerComponent6SetGGIEm
    void SetGGI(unsigned long ggi);
    // 0x82cd08 _ZN18GLXPlayerComponent6GetGGIEv
    unsigned long GetGGI() const;
    // 0x82cd10 _ZN18GLXPlayerComponent6GetUIDEv
    const char* GetUID() const;
    // 0x82cdcc _ZN18GLXPlayerComponent6SetUIDEPc
    // Frees the old id and stores a copy of the new one. A null id clears it.
    void SetUID(const char* uid);

protected:
    GLXPlayerObserver* observer_ = nullptr;   // +0x04
    unsigned long ggi_ = 0;                   // +0x08
    std::unique_ptr<char[]> uid_;             // +0x0c
};
