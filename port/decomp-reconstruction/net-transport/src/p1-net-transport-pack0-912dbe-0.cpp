// p1-net-transport-pack0-912dbe-0: platform pass over the CAndroidSocket and LCAndroidSocket
// destructors and constructors that were ledgered as skipped.
//
// No function is defined in this file. Each C++ class has one constructor and one destructor, and
// the binary's extra symbols are the same code, or the compiler's deleting variant, under other names:
//
//   0x8422b8 _ZN14CAndroidSocketD0Ev   deleting destructor (compiler-generated): calls D1, then releases
//                                       the object. Its body is ~CAndroidSocket in android_socket.cpp
//                                       (ledgered at 0x842260); `delete` supplies the release.
//   0x89ffac _ZN15LCAndroidSocketD0Ev  deleting destructor (compiler-generated): calls D1, then releases
//                                       the object. Its body is ~LCAndroidSocket in lc_android_socket.cpp
//                                       (ledgered at 0x89ff54); `delete` supplies the release.
//   0x89ffc8 _ZN15LCAndroidSocketD2Ev  base-object destructor, same ARM listing as D1 0x89ff54; defined
//                                       once, as ~LCAndroidSocket in lc_android_socket.cpp.
//   0x8a013c _ZN15LCAndroidSocketC2EPciP23LCXPlayerSocketObserver
//                                       complete-object constructor, same ARM listing as C1 0x8a0020;
//                                       defined once, as LCAndroidSocket::LCAndroidSocket in
//                                       lc_android_socket.cpp.
//
// Defining the D1 and C1 bodies here as well would give the symbols two definitions, so they stay in
// the files above. The headers are included so this translation unit also checks that they compile.

#include "net-transport/android_socket.hpp"
#include "net-transport/lc_android_socket.hpp"
