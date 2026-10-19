// Batch g1-game-app-pack13-4d9327-0 (TestUD, TestUD2, VectorSet, lstr, and the value reads unsigned int and unsigned char
// of StreamReader). The bodies follow the Hex-Rays pseudocode of libDungeonHunter2.so, checked against the assembly where
// the pseudocode was unclear.
//   - TestUD and TestUD2 are the Lua test user-data objects. Their Lua-bound bodies need sfc::script::lua::Arguments,
//     ReturnValues and Binder, which have no headers in the tree yet, so those functions are partial.
//   - VectorSet<T>::push_back_unique: the search, the growth (1 when empty, else twice the size, capped at 0x3fffffff), and
//     the element capacity the original reports. The original's node allocator rounds a request of 0x80 bytes or less up
//     to 8 bytes (asm of std::__node_alloc_impl::_M_allocate), so a 4-byte element request is granted an even count.
//     Storage is std::allocator<T>.
//   - lstr::operator() is strcmp (LC_API_STRCMP_0), with the sign bit of the result taken.
//   - StreamReader::readAs<unsigned int> (0x313a90) and readAs<unsigned char> (0x3365a4): one 64-bit read whose count must
//     be exactly the size of T (asm: CMP R0,#n then CMP R1,#0), with the original ASSERT. Same shape as readAs<int>.
#include <algorithm>
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <memory>

#include "dh2/IStreamBase.hpp"
#include "dh2/StreamReader.hpp"
#include "dh2/TestUD.hpp"
#include "dh2/TestUD2.hpp"
#include "dh2/sfc/script/lua/Arguments.hpp"
#include "dh2/sfc/script/lua/Binder.hpp"
#include "dh2/sfc/script/lua/ReturnValues.hpp"
#include "dh2/VectorSet.hpp"
#include "dh2/lstr.hpp"

// Global assert level (libDungeonHunter2.so gAssertLevel). The other game-app sources declare it the same way.
extern int gAssertLevel;

// ---------------------------------------------------------------------------------------------------------------
// TestUD
// ---------------------------------------------------------------------------------------------------------------

// 0x386ab4 const char* TestUD::getUDTypeName() const
const char* TestUD::getUDTypeName() const {
    return "TestUD";
}

// 0x386ad8 TestUD::~TestUD() (D1, complete object)
// The body is empty (asm BX LR). The base destructor is declared out of line in dh2/sfc/script/lua/UserData.hpp, and the
// original inlined it, so the call to it here is the only difference. Its definition is outside this batch.
TestUD::~TestUD() {}

// 0x386b18 TestUD::~TestUD() (D0, deleting destructor): skipped.
// Compiler-generated. It stores TestUD's vtable (off_95C650) into the object and calls CustomFree(this). The compiler
// emits it from the virtual destructor declared in dh2/TestUD.hpp.

// 0x386d00 void TestUD::createBindings(sfc::script::lua::Binder&)
// Prints the object, then binds TestFunc as a function with this as the user pointer, TestMethod as a method, and
// TestStaticMethod as a plain callback method (the calls of the listing, in order).
void TestUD::createBindings(sfc::script::lua::Binder& binder) {
    std::printf("Bindings for %p\n", static_cast<void*>(this));
    binder.bindFunction("TestFunc", TestFunc, this);
    binder.bindMethod("TestMethod", &TestUD::TestMethod);
    binder.bindMethod("TestStaticMethod", TestStaticMethod);
}

// 0x386e08 void TestUD::TestStaticMethod(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Prints the user pointer and the argument count, then pushes the user pointer as userdata.
void TestUD::TestStaticMethod(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* user) {
    std::printf("In TestStaticMethod(), This|Ref=%p, Args=%u\n", user, static_cast<unsigned int>(args.m_values->size()));
    ret.pushUserData(static_cast<UserData*>(user));
}

// 0x386e64 void TestUD::TestMethod(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&)
// Prints this and the argument count, then pushes this as userdata.
void TestUD::TestMethod(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret) {
    std::printf("In TestMethod(), This=%p, Args=%u\n", static_cast<void*>(this), static_cast<unsigned int>(args.m_values->size()));
    ret.pushUserData(this);
}

// 0x386ec0 void TestUD::TestFunc(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Prints the user pointer and the argument count, then pushes the user pointer as userdata twice.
void TestUD::TestFunc(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* user) {
    std::printf("In TestFunc(), Ref=%p, Args=%u\n", user, static_cast<unsigned int>(args.m_values->size()));
    ret.pushUserData(static_cast<UserData*>(user));
    ret.pushUserData(static_cast<UserData*>(user));
}

// ---------------------------------------------------------------------------------------------------------------
// TestUD2
// ---------------------------------------------------------------------------------------------------------------

// 0x386ac4 const char* TestUD2::getUDTypeName() const
const char* TestUD2::getUDTypeName() const {
    return "TestUD2";
}

// 0x386ad4 void TestUD2::Test2(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Empty body (asm BX LR). The arguments are ignored.
void TestUD2::Test2(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* user) {
    (void)args;
    (void)ret;
    (void)user;
}

// 0x386ae0 TestUD2::~TestUD2() (D1, complete object)
// Empty (asm BX LR). As for TestUD, the base destructor call is the only difference from the original.
TestUD2::~TestUD2() {}

// 0x386ae4 TestUD2::~TestUD2() (D0, deleting destructor): skipped.
// Compiler-generated. It stores TestUD's vtable into the object (the base's store, which the optimizer kept as the last
// store) and calls CustomFree(this).

// 0x386da4 void TestUD2::createBindings(sfc::script::lua::Binder&)
// The base bindings first, then Test2 as a function and as a plain callback method.
void TestUD2::createBindings(sfc::script::lua::Binder& binder) {
    TestUD::createBindings(binder);
    binder.bindFunction("Test2", Test2, this);
    binder.bindMethod("Test2", Test2);
}

// ---------------------------------------------------------------------------------------------------------------
// VectorSet<T>::push_back_unique (0x49437c, 0x494550, 0x49777c)
// ---------------------------------------------------------------------------------------------------------------

namespace {

// The original holds 4-byte values in every instantiation here (int, AnimatedFX*, SWFAnim*), so the capacity arithmetic
// uses the 4-byte element size.
constexpr std::size_t kOriginalElementBytes = 4;

// The largest element count the original allows (std::allocator::_M_allocate: "out of memory" above 0x3fffffff).
constexpr std::size_t kMaxElementCount = 0x3FFFFFFF;

// A request of this many bytes or less goes to the node allocator, which rounds the byte count up to a multiple of 8.
// Larger requests go to CustomAlloc with the byte count unchanged.
constexpr std::size_t kNodeAllocMaxBytes = 0x80;

// The element capacity the original grants for a request of n elements.
std::size_t GrantedCapacity(std::size_t n) {
    std::size_t bytes = n * kOriginalElementBytes;
    if (bytes <= kNodeAllocMaxBytes) {
        bytes = (bytes + 7) & ~static_cast<std::size_t>(7);
    }
    return bytes / kOriginalElementBytes;
}

// Appends value only when it is absent. When the storage is full, the capacity grows to 1 (empty) or twice the size,
// capped at kMaxElementCount. The old elements are copied in order and the old block is released.
template <typename T>
void PushBackUnique(VectorSet<T>& set, const T& value) {
    if (std::find(set.m_start, set.m_finish, value) != set.m_finish) {
        return;
    }
    if (set.m_finish != set.m_endOfStorage) {
        *set.m_finish = value;
        ++set.m_finish;
        return;
    }

    const std::size_t size = static_cast<std::size_t>(set.m_finish - set.m_start);
    std::size_t requested = size != 0 ? 2 * size : 1;
    if (requested > kMaxElementCount || size > requested) {
        requested = kMaxElementCount;
    }
    const std::size_t capacity = GrantedCapacity(requested);

    std::allocator<T> allocator;
    T* storage = allocator.allocate(capacity);
    std::copy(set.m_start, set.m_finish, storage);
    storage[size] = value;
    if (set.m_start != nullptr) {
        allocator.deallocate(set.m_start, static_cast<std::size_t>(set.m_endOfStorage - set.m_start));
    }
    set.m_start = storage;
    set.m_finish = storage + size + 1;
    set.m_endOfStorage = storage + capacity;
}

}  // namespace

// 0x49437c void VectorSet<int>::push_back_unique(int const&)
template <>
void VectorSet<int>::push_back_unique(const int& value) {
    PushBackUnique(*this, value);
}

// 0x494550 void VectorSet<AnimatedFX*>::push_back_unique(AnimatedFX* const&)
template <>
void VectorSet<AnimatedFX*>::push_back_unique(AnimatedFX* const& value) {
    PushBackUnique(*this, value);
}

// 0x49777c void VectorSet<SWFAnim*>::push_back_unique(SWFAnim* const&)
template <>
void VectorSet<SWFAnim*>::push_back_unique(SWFAnim* const& value) {
    PushBackUnique(*this, value);
}

// ---------------------------------------------------------------------------------------------------------------
// lstr
// ---------------------------------------------------------------------------------------------------------------

// 0x3179ec unsigned int lstr::operator()(char const*, char const*) const
// The original is LC_API_STRCMP_0(lhs, rhs) >> 31, which is 1 exactly when strcmp is negative. The header reports bool.
bool lstr::operator()(const char* lhs, const char* rhs) const {
    return std::strcmp(lhs, rhs) < 0;
}

// ---------------------------------------------------------------------------------------------------------------
// StreamReader value reads
// ---------------------------------------------------------------------------------------------------------------

namespace {

// The source path passed to the StreamReader.h ASSERT by readAs<unsigned char> (0x3365a4).
constexpr const char* kStreamReaderSource = "..\\..\\project_vs2005\\Game/..\\..\\sources/Utils/StreamReader.h";

// The source path passed by readAs<unsigned int> (0x313a90). It is spelled with mixed separators, as in the original.
constexpr const char* kStreamReaderSourceMixed = "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\/StreamReader.h";

// The original ASSERT. gAssertLevel 2 stops the program (the original stores to address 0 to crash). gAssertLevel 1
// prints the message to stderr and execution continues. Any other level does nothing.
void ReportStreamReaderAssert(const char* expression, const char* source, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, source, line);
    }
}

}  // namespace

// 0x313a90 unsigned int StreamReader::readAs<unsigned int>(IStreamBase*)
// read() (vtable +0x18) gets (&value, 4). The 64-bit count must be exactly 4 (asm: CMP R0,#4, then CMP R1,#0). Otherwise
// ASSERT bytesRead == sizeof(T) at StreamReader.h:68. The value is returned whatever the count was. The original's local
// is not zeroed; it is zeroed here, so a short read gives 0 in the missing bytes, not stack data.
template <>
unsigned int StreamReader::readAs<unsigned int>(IStreamBase* stream) {
    unsigned int value = 0;
    const std::uint64_t got = stream->read(&value, sizeof(unsigned int));
    if (got != sizeof(unsigned int)) {
        ReportStreamReaderAssert("bytesRead == sizeof(T)", kStreamReaderSourceMixed, 68);
    }
    return value;
}

// 0x3365a4 unsigned char StreamReader::readAs<unsigned char>(IStreamBase*)
// read() (vtable +0x18) gets (&value, 1). The 64-bit count must be exactly 1 (asm: CMP R0,#1, then CMP R1,#0). Otherwise
// ASSERT bytesRead == sizeof(T) at StreamReader.h:68. The byte is returned whatever the count was. The local is zeroed
// here, as in readAs<unsigned int>.
template <>
unsigned char StreamReader::readAs<unsigned char>(IStreamBase* stream) {
    unsigned char value = 0;
    const std::uint64_t got = stream->read(&value, sizeof(unsigned char));
    if (got != sizeof(unsigned char)) {
        ReportStreamReaderAssert("bytesRead == sizeof(T)", kStreamReaderSource, 68);
    }
    return value;
}
