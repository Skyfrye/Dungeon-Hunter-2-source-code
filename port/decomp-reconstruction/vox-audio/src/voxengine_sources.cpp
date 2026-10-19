// VoxEngine facade entry points for data sources and emitter creation. With an engine
// object each call forwards to VoxEngineInternal; without one the call returns an
// invalid handle (id -1, no engine, no object), which is what the original builds on
// the stack. The VoxEngineInternal targets are declared but not reconstructed yet.
#include "vox-audio/vox/engine_handles.hpp"
#include "vox-audio/vox/voxengine.hpp"

namespace vox {

// 0x8622e8 _ZN3vox9VoxEngine7GetDataERNS_13EmitterHandleE
DataHandle VoxEngine::GetData(EmitterHandle& emitter) {
    if (m_internal != nullptr) {
        return m_internal->GetData(emitter);
    }
    return DataHandle(-1, nullptr, nullptr, 0, 0);
}

// 0x8623d0 _ZN3vox9VoxEngine18CreateEmitterAsyncERNS_10DataHandleEiPv
EmitterHandle VoxEngine::CreateEmitterAsync(DataHandle& data, int flags, void* user) {
    if (m_internal != nullptr) {
        return m_internal->CreateEmitterAsync(data, flags, user);
    }
    return EmitterHandle(-1, nullptr, nullptr, 0, 0);
}

// 0x862438 _ZN3vox9VoxEngine13CreateEmitterERNS_10DataHandleEiPv
EmitterHandle VoxEngine::CreateEmitter(DataHandle& data, int flags, void* user) {
    if (m_internal != nullptr) {
        return m_internal->CreateEmitter(data, flags, user);
    }
    return EmitterHandle(-1, nullptr, nullptr, 0, 0);
}

// 0x8626a0 _ZN3vox9VoxEngine24ConvertToRamBufferSourceERNS_10DataHandleE
DataHandle VoxEngine::ConvertToRamBufferSource(DataHandle& data) {
    if (m_internal != nullptr) {
        return m_internal->ConvertToRamBufferSource(data);
    }
    return DataHandle(-1, nullptr, nullptr, 0, 0);
}

// 0x862700 _ZN3vox9VoxEngine18ConvertToRawSourceERNS_10DataHandleE
DataHandle VoxEngine::ConvertToRawSource(DataHandle& data) {
    if (m_internal != nullptr) {
        return m_internal->ConvertToRawSource(data);
    }
    return DataHandle(-1, nullptr, nullptr, 0, 0);
}

// 0x862760 _ZN3vox9VoxEngine19LoadDataSourceAsyncEiPviS1_iNS_21VoxSourceLoadingFlagsE
DataHandle VoxEngine::LoadDataSourceAsync(int a, void* b, int c, void* d, int e, VoxSourceLoadingFlags flags) {
    if (m_internal != nullptr) {
        return m_internal->LoadDataSourceAsync(a, b, c, d, e, flags);
    }
    return DataHandle(-1, nullptr, nullptr, 0, 0);
}

// 0x8627e0 _ZN3vox9VoxEngine14LoadDataSourceEiPviS1_i
DataHandle VoxEngine::LoadDataSource(int a, void* b, int c, void* d, int e) {
    if (m_internal != nullptr) {
        return m_internal->LoadDataSource(a, b, c, d, e);
    }
    return DataHandle(-1, nullptr, nullptr, 0, 0);
}

}  // namespace vox
