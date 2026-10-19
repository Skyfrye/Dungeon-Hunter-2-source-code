#include "glitch-core-io/boost/shared_count.hpp"

#include <chrono>
#include <thread>

namespace boost::detail {

// 0x56eb4c _ZN5boost6detail15sp_counted_base7destroyEv
void sp_counted_base::destroy() { delete this; }

// 0x56f050 _ZN5boost6detail15sp_counted_base7releaseEv
void sp_counted_base::release() {
    if (useCount.fetch_sub(1) != 1) return;
    dispose();
    weak_release();
}

// 0x56efb0 _ZN5boost6detail15sp_counted_base12weak_releaseEv
void sp_counted_base::weak_release() {
    if (weakCount.fetch_sub(1) != 1) return;
    destroy();
}

// 0x56ef50 _ZN5boost6detail17sp_counted_impl_pIcE7disposeEv (and the same body for other T)
template <typename T>
void sp_counted_impl_p<T>::dispose() { delete ptr; }

// 0x56ec9c _ZN5boost6detail17sp_counted_impl_pIcE11get_deleterERKPv
template <typename T>
void* sp_counted_impl_p<T>::get_deleter(void* const&) const { return nullptr; }

template class sp_counted_impl_p<char>;

// 0x56ee7c _ZN5boost6detail12shared_countC1ERKS1_
shared_count::shared_count(const shared_count& other) : pi(other.pi) {
    if (pi) pi->useCount.fetch_add(1);
}

shared_count& shared_count::operator=(const shared_count& other) {
    sp_counted_base* old = pi;
    pi = other.pi;
    if (pi) pi->useCount.fetch_add(1);
    if (old) old->release();
    return *this;
}

shared_count::~shared_count() {
    if (pi) pi->release();
}

// 0x56f0f8 _ZN5boost10shared_ptrIcEaSERKS1_
shared_ptr_char& shared_ptr_char::operator=(const shared_ptr_char& other) {
    shared_count fresh(other.pn);  // takes the use for the new counter
    sp_counted_base* old = pn.pi;
    px = other.px;
    pn.pi = fresh.pi;
    fresh.pi = nullptr;            // ownership moved to pn
    if (old) old->release();
    return *this;
}

shared_ptr_char::~shared_ptr_char() = default;

// 0x56f288 _ZN5boost10shared_ptrIcE5resetIcEEvPT_
// The new counter takes p with one use; the old counter, when there was one, is released.
void shared_ptr_char::reset(char* p) {
    shared_count fresh(p);
    sp_counted_base* old = pn.pi;
    px = p;
    pn.pi = fresh.pi;
    fresh.pi = nullptr;  // ownership moved to pn
    if (old != nullptr) old->release();
}

// 0x56ee34 _ZN5boost6detail5yieldEj
// Counts up to 3 return at once. Above that, odd counts and counts below 0x20 call sched_yield
// (std::this_thread::yield here), and larger even counts sleep for 1000 ns (nanosleep in the
// original). The original returns the call's result (0 on success); the portable calls report
// no error, so 0 is returned here.
unsigned int yield(unsigned count) {
    if (count <= 3) return count;
    if (count < 0x20 || (count & 1)) {
        std::this_thread::yield();
    } else {
        std::this_thread::sleep_for(std::chrono::microseconds(1));
    }
    return 0;
}

// 0x56eb68 _ZN5boost6detail26sp_enable_shared_from_thisEz
void sp_enable_shared_from_this(...) {}

}  // namespace boost::detail
