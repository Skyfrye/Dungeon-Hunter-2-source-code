#include "net-session-online/glx_player_component.hpp"

#include <cstring>

#include "net-session-online/glx_player_observer.hpp"

// 0x82cc90 _ZN18GLXPlayerComponentC2Ev, 0x82ccc4 _ZN18GLXPlayerComponentC1Ev
GLXPlayerComponent::GLXPlayerComponent() = default;

// 0x82cd18 _ZN18GLXPlayerComponentD1Ev, 0x82cd80 _ZN18GLXPlayerComponentD2Ev
// The original frees the user id with scalar delete. It is freed by the
// unique_ptr here.
GLXPlayerComponent::~GLXPlayerComponent() = default;

// 0x82ccf8 _ZN18GLXPlayerComponent16RegisterObserverEP17GLXPlayerObserver
void GLXPlayerComponent::RegisterObserver(GLXPlayerObserver* observer) { observer_ = observer; }

// 0x82cd00 _ZN18GLXPlayerComponent6SetGGIEm
void GLXPlayerComponent::SetGGI(unsigned long ggi) { ggi_ = ggi; }

// 0x82cd08 _ZN18GLXPlayerComponent6GetGGIEv
unsigned long GLXPlayerComponent::GetGGI() const { return ggi_; }

// 0x82cd10 _ZN18GLXPlayerComponent6GetUIDEv
const char* GLXPlayerComponent::GetUID() const { return uid_.get(); }

// 0x82cdcc _ZN18GLXPlayerComponent6SetUIDEPc
void GLXPlayerComponent::SetUID(const char* uid) {
    uid_.reset();
    if (uid != nullptr) {
        const std::size_t length = std::strlen(uid) + 1;
        uid_.reset(new char[length]);
        std::memcpy(uid_.get(), uid, length);
    }
}
