// boost::detail reference counting as instantiated by the io code (boost 1.4x layout):
// sp_counted_base (use count at +0x04, weak count at +0x08, vtable first), the
// sp_counted_impl_p<T> holder (pointer at +0x0c), shared_count and shared_ptr<char>.
// The original serialises count updates with a pool of spinlocks; std::atomic gives
// the same results and is what the port uses.
#pragma once

#include <atomic>
#include <cstdint>

namespace boost::detail {

class sp_counted_base {
public:
    sp_counted_base() = default;
    sp_counted_base(const sp_counted_base&) = delete;
    sp_counted_base& operator=(const sp_counted_base&) = delete;
    virtual ~sp_counted_base() = default;

    virtual void dispose() = 0;   // vtable +0x08
    virtual void destroy();       // delete this (0x56eb4c)

    // Drops a use. The last use disposes the object and drops the implicit weak use.
    void release();               // 0x56f050
    // Drops a weak use; the last one destroys the counter.
    void weak_release();          // 0x56efb0

    std::atomic<long> useCount{1};   // +0x04
    std::atomic<long> weakCount{1};  // +0x08
};

// Holder for a pointer owned through shared_count. The only instantiation in the
// binary is for char (0x56ef50 .. 0x56ec9c).
template <typename T>
class sp_counted_impl_p : public sp_counted_base {
public:
    explicit sp_counted_impl_p(T* p) : ptr(p) {}
    void dispose() override;                       // delete ptr (0x56ef50)
    void* get_deleter(void* const&) const;         // no deleter: null (0x56ec9c)
    T* ptr;                                        // +0x0c
};

class shared_count {
public:
    shared_count() = default;
    // Takes a new counter for p, with one use. (0x56ef58 for char)
    template <typename T>
    explicit shared_count(T* p) : pi(new sp_counted_impl_p<T>(p)) {}
    // Copies the counter and adds a use (0x56ee7c). A null counter stays null.
    shared_count(const shared_count& other);
    // Equivalent to boost's copy-and-swap: takes a use of the new counter, releases the old.
    shared_count& operator=(const shared_count& other);
    ~shared_count();

    sp_counted_base* pi = nullptr;  // +0x00
};

// Only the char instantiation is used by the io code.
class shared_ptr_char {
public:
    shared_ptr_char() = default;
    ~shared_ptr_char();
    // Copy-assigns: takes a use of the new counter, then releases the old one (0x56f0f8).
    shared_ptr_char& operator=(const shared_ptr_char& other);
    // 0x56f288 reset<char>(char*): owns p through a new counter, releasing the old one.
    void reset(char* p);

    char* px = nullptr;   // +0x00
    shared_count pn;      // +0x04
};

// Spin backoff used by the original's lock pool (0x56ee34). The port does not spin
// on the pool, but the helper keeps the same backoff for callers that do.
unsigned int yield(unsigned count);  // 0x56ee34

// Overload used as a no-op hook (0x56eb68).
void sp_enable_shared_from_this(...);

}  // namespace boost::detail
