// vox::CreateDriver: builds the Android driver the platform layer asks for.
#include "vox-audio/vox/driver_android.hpp"

namespace vox {

// 0x88fac4 _ZN3vox12CreateDriverEv. The original allocates 0x6c bytes with VoxAlloc
// and runs the DriverAndroid constructor on them; the port uses new.
DriverAndroid* CreateDriver() { return new DriverAndroid(); }

}  // namespace vox
