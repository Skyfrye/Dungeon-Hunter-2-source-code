// VoxEngineInternal general 3D and listener accessors. Each takes the engine mutex
// (+0x3f4), reads or writes its block and returns. The setters also set the dirty
// byte for the block so the driver picks the change up on its next update.
#include "vox-audio/vox/voxengine_internal.hpp"

namespace vox {

// 0x865d2c _ZN3vox17VoxEngineInternal22Get3DGeneralParameteriEiRi
// Only parameter 2 is an int; other indices leave the value untouched.
void VoxEngineInternal::Get3DGeneralParameteri(int param, int& value) {
    mutex_.Lock();
    if (param == 2) {
        value = general_3d_.param2;
    }
    mutex_.Unlock();
}

// 0x865d60 _ZN3vox17VoxEngineInternal22Get3DGeneralParameterfEiRf
// Parameters 0 and 1 are floats; other indices leave the value untouched.
void VoxEngineInternal::Get3DGeneralParameterf(int param, float& value) {
    mutex_.Lock();
    if (param == 0) {
        value = general_3d_.param0;
    } else if (param == 1) {
        value = general_3d_.param1;
    }
    mutex_.Unlock();
}

// 0x865da8 _ZN3vox17VoxEngineInternal21Get3DGeneralParameterERNS_22Vox3DGeneralParametersE
void VoxEngineInternal::Get3DGeneralParameter(Vox3DGeneralParameters& params) {
    mutex_.Lock();
    params = general_3d_;
    mutex_.Unlock();
}

// 0x865de8 _ZN3vox17VoxEngineInternal24Get3DListenerOrientationERfS1_S1_S1_S1_S1_
void VoxEngineInternal::Get3DListenerOrientation(float& fx, float& fy, float& fz, float& ux, float& uy,
                                                 float& uz) {
    mutex_.Lock();
    fx = listener_orientation_[0];
    fy = listener_orientation_[1];
    fz = listener_orientation_[2];
    ux = listener_orientation_[3];
    uy = listener_orientation_[4];
    uz = listener_orientation_[5];
    mutex_.Unlock();
}

// 0x865e58 _ZN3vox17VoxEngineInternal21Get3DListenerVelocityERfS1_S1_
void VoxEngineInternal::Get3DListenerVelocity(float& x, float& y, float& z) {
    mutex_.Lock();
    x = listener_velocity_[0];
    y = listener_velocity_[1];
    z = listener_velocity_[2];
    mutex_.Unlock();
}

// 0x865e9c _ZN3vox17VoxEngineInternal21Get3DListenerPositionERfS1_S1_
void VoxEngineInternal::Get3DListenerPosition(float& x, float& y, float& z) {
    mutex_.Lock();
    x = listener_position_[0];
    y = listener_position_[1];
    z = listener_position_[2];
    mutex_.Unlock();
}

// 0x865ee0 _ZN3vox17VoxEngineInternal22Set3DGeneralParameteriEii
void VoxEngineInternal::Set3DGeneralParameteri(int param, int value) {
    mutex_.Lock();
    if (param == 2) {
        general_dirty_[2] = true;
        general_3d_.param2 = value;
    }
    mutex_.Unlock();
}

// 0x865f18 _ZN3vox17VoxEngineInternal22Set3DGeneralParameterfEif
void VoxEngineInternal::Set3DGeneralParameterf(int param, float value) {
    mutex_.Lock();
    if (param == 0) {
        general_dirty_[0] = true;
        general_3d_.param0 = value;
    } else if (param == 1) {
        general_dirty_[1] = true;
        general_3d_.param1 = value;
    }
    mutex_.Unlock();
}

// 0x865f68 _ZN3vox17VoxEngineInternal21Set3DGeneralParameterERKNS_22Vox3DGeneralParametersE
void VoxEngineInternal::Set3DGeneralParameter(const Vox3DGeneralParameters& params) {
    mutex_.Lock();
    general_3d_ = params;
    general_dirty_[0] = true;
    general_dirty_[1] = true;
    general_dirty_[2] = true;
    mutex_.Unlock();
}

// 0x865fb8 _ZN3vox17VoxEngineInternal24Set3DListenerOrientationEffffff
void VoxEngineInternal::Set3DListenerOrientation(float fx, float fy, float fz, float ux, float uy, float uz) {
    mutex_.Lock();
    listener_orientation_[0] = fx;
    listener_orientation_[1] = fy;
    listener_orientation_[2] = fz;
    listener_orientation_[3] = ux;
    listener_orientation_[4] = uy;
    listener_orientation_[5] = uz;
    listener_dirty_[2] = true;
    mutex_.Unlock();
}

// 0x866018 _ZN3vox17VoxEngineInternal21Set3DListenerVelocityEfff
void VoxEngineInternal::Set3DListenerVelocity(float x, float y, float z) {
    mutex_.Lock();
    listener_velocity_[0] = x;
    listener_velocity_[1] = y;
    listener_velocity_[2] = z;
    listener_dirty_[1] = true;
    mutex_.Unlock();
}

// 0x866058 _ZN3vox17VoxEngineInternal21Set3DListenerPositionEfff
void VoxEngineInternal::Set3DListenerPosition(float x, float y, float z) {
    mutex_.Lock();
    listener_position_[0] = x;
    listener_position_[1] = y;
    listener_position_[2] = z;
    listener_dirty_[0] = true;
    mutex_.Unlock();
}

}  // namespace vox
