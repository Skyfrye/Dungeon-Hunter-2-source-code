// Platform output driver base interfaces (vox::DriverInterface, vox::DriverSourceInterface).
#include "vox-audio/vox/driver.hpp"

namespace vox {

// 0x88fcdc _ZN3vox15DriverInterfaceD1Ev
DriverInterface::~DriverInterface() = default;

// 0x891000 _ZN3vox15DriverInterfaceD0Ev
// Deleting destructor variant: the compiler emits it for the class above.

// 0x88fce0 _ZN3vox15DriverInterface6UpdateEf
void DriverInterface::Update(float dt) {
    (void)dt;
}

// 0x88ed40 _ZN3vox15DriverInterface7RampOutEv
void DriverInterface::RampOut() {}

// 0x88ed44 _ZN3vox15DriverInterface6RampInEv
void DriverInterface::RampIn() {}

// 0x88ed48 _ZN3vox15DriverInterface15SetDSPParameterEiPv
void DriverInterface::SetDSPParameter(int param, void* value) {
    (void)param;
    (void)value;
}

// 0x88ed4c _ZN3vox15DriverInterface19SetStaticBusRoutingEPc
void DriverInterface::SetStaticBusRouting(char* name) {
    (void)name;
}

// 0x88ed50 _ZN3vox15DriverInterface20SetDynamicBusRoutingEPc
void DriverInterface::SetDynamicBusRouting(char* name) {
    (void)name;
}

// 0x88ed54 _ZN3vox15DriverInterface18SetSFXPresetActiveEibf
void DriverInterface::SetSFXPresetActive(int preset, bool active, float level) {
    (void)preset;
    (void)active;
    (void)level;
}

// 0x88ed58 _ZN3vox15DriverInterface13SetOutputModeENS_13VoxOutputModeE
int DriverInterface::SetOutputMode(VoxOutputMode mode) {
    (void)mode;
    return 0;
}

// 0x88ed60 _ZN3vox15DriverInterface13GetOutputModeEv
int DriverInterface::GetOutputMode() {
    return 1;
}

// 0x88fcc8 _ZN3vox21DriverSourceInterfaceD1Ev
DriverSourceInterface::~DriverSourceInterface() = default;

// 0x891014 _ZN3vox21DriverSourceInterfaceD0Ev
// Deleting destructor variant: the compiler emits it for the class above.

// 0x88fccc _ZN3vox21DriverSourceInterface6UpdateEf
void DriverSourceInterface::Update(float dt) {
    (void)dt;
}

// 0x88ed3c _ZN3vox21DriverSourceInterface15SetDSPParameterEiPv
void DriverSourceInterface::SetDSPParameter(int param, void* value) {
    (void)param;
    (void)value;
}

// 0x88fcd0 _ZN3vox21DriverSourceInterface20AllowBufferReferenceEv
int DriverSourceInterface::AllowBufferReference() {
    return 0;
}

// 0x88fcd8 _ZN3vox21DriverSourceInterface18FreeDisposableDataEiRiS1_
int DriverSourceInterface::FreeDisposableData(int id, int& first, int& second) {
    (void)id;
    (void)first;
    (void)second;
    return 0;
}

// DriverInterface::CreateDriverSource (+0x44): null in the base vtable, so the base body is the
// port's null result.
DriverSourceInterface* DriverInterface::CreateDriverSource(const std::int32_t* params, void* user, int flags) {
    (void)params;
    (void)user;
    (void)flags;
    return nullptr;
}

// DriverInterface::DestroyDriverSource (+0x48) is pure in the base vtable; DriverAndroid defines it.

}  // namespace vox
