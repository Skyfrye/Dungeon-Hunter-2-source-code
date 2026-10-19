// IMaterialParameters<Owner, Header> member bodies. Each body is shared by the
// three instances; the address comments name the instance that each address
// belongs to.
#include "glitch-video/material_parameters.hpp"

#include <cstddef>
#include <type_traits>
#include <vector>

namespace glitch::video::detail {

// setDirty. G 0x5ba0d0 and R 0x5cef90 are empty; M 0x5c60c8 writes the dirty words.
template <typename Owner, bool kTrackDirty>
void IMaterialParameters<Owner, kTrackDirty>::setDirty() {
    if constexpr (kTrackDirty) {
        m_dirty0 = 0xffffffffu;
        m_dirty1 = 0xffffffffu;
        if (m_ext0 != nullptr) *m_ext0 = 0xffffffffu;
        if (m_ext1 != nullptr) *m_ext1 = 0xffffffffu;
    }
}

// setParameterAt(int*, float). G 0x5ba0d4 and R 0x5cef94 store only.
// M 0x5c60d8 marks the dirty words when the stored int changes.
template <typename Owner, bool kTrackDirty>
void IMaterialParameters<Owner, kTrackDirty>::setParameterAt(int32_t* dst, float value) {
    int32_t next = static_cast<int32_t>(value);
    if constexpr (kTrackDirty) {
        if (next != *dst) setDirty();
    }
    *dst = next;
}

// setParameterAt(float*, int). G 0x5ba0ec and R 0x5cefac store only.
// M 0x5c6108 marks the dirty words when the stored float changes.
template <typename Owner, bool kTrackDirty>
void IMaterialParameters<Owner, kTrackDirty>::setParameterAt(float* dst, int32_t value) {
    float next = static_cast<float>(value);
    if constexpr (kTrackDirty) {
        if (!(next == *dst)) setDirty();
    }
    *dst = next;
}

// setParameterAt(vector4d*, SColorf const&). G 0x5ba114 and R 0x5cefd4 copy only.
// M 0x5c6140 compares the four words exactly, marks the dirty words on any change,
// then copies.
template <typename Owner, bool kTrackDirty>
void IMaterialParameters<Owner, kTrackDirty>::setParameterAt(core::vector4d<float>* dst, const SColorf& value) {
    if constexpr (kTrackDirty) {
        if (!(dst->X == value.r && dst->Y == value.g && dst->Z == value.b && dst->W == value.a)) setDirty();
    }
    dst->X = value.r;
    dst->Y = value.g;
    dst->Z = value.b;
    dst->W = value.a;
}

// setParameterAt(SColorf*, vector4d const&). G 0x5ba104 and R 0x5cefc4 copy only.
// M 0x5caf10 compares with SColorf::equals (0x5caa98, the 3-argument clone that binds the constant
// tolerance 1e-6, bits 0x358637BD) and marks the dirty words when a channel is outside it; the same
// tolerance comparison is what part 1c's setParameterAt<SColorf> (0x5cac8c) uses, so the two agree.
// The four stores are the listing's four word stores.
namespace {
bool sameColorfChannel(float stored, float value) {
    const float tolerance = 1e-6f;  // the clone's constant, bits 0x358637BD
    return value <= stored + tolerance && value >= stored - tolerance;
}
}  // namespace

template <typename Owner, bool kTrackDirty>
void IMaterialParameters<Owner, kTrackDirty>::setParameterAt(SColorf* dst, const core::vector4d<float>& value) {
    if constexpr (kTrackDirty) {
        if (!(sameColorfChannel(dst->r, value.X) && sameColorfChannel(dst->g, value.Y) &&
              sameColorfChannel(dst->b, value.Z) && sameColorfChannel(dst->a, value.W))) {
            setDirty();
        }
    }
    dst->r = value.X;
    dst->g = value.Y;
    dst->b = value.Z;
    dst->a = value.W;
}

// getParameterAt(int const*, float&). G 0x5ba138, M 0x5c61d8, R 0x5ceff8.
template <typename Owner, bool kTrackDirty>
void IMaterialParameters<Owner, kTrackDirty>::getParameterAt(const int32_t* src, float& value) const {
    value = static_cast<float>(*src);
}

// getParameterAt(float const*, int&). G 0x5ba150, M 0x5c61f0, R 0x5cf010.
template <typename Owner, bool kTrackDirty>
void IMaterialParameters<Owner, kTrackDirty>::getParameterAt(const float* src, int32_t& value) const {
    value = static_cast<int32_t>(*src);
}

// getParameterAt(SColorf const*, vector4d&). G 0x5ba168, M 0x5c6208, R 0x5cf028.
template <typename Owner, bool kTrackDirty>
void IMaterialParameters<Owner, kTrackDirty>::getParameterAt(const SColorf* src, core::vector4d<float>& value) const {
    value.X = src->r;
    value.Y = src->g;
    value.Z = src->b;
    value.W = src->a;
}

// getParameterAt(vector4d const*, SColorf&). G 0x5ba18c, M 0x5c622c, R 0x5cf04c.
template <typename Owner, bool kTrackDirty>
void IMaterialParameters<Owner, kTrackDirty>::getParameterAt(const core::vector4d<float>* src, SColorf& value) const {
    value.r = src->X;
    value.g = src->Y;
    value.b = src->Z;
    value.a = src->W;
}

// ---------------------------------------------------------------------------
// Matrix parameters. Shared by the CMaterial and CMaterialRenderer accessors.
// ---------------------------------------------------------------------------
namespace {

using Matrix = core::CMatrix4<float>;
using SlotMap = std::map<uint32_t, Matrix*>;

// Type code of a matrix parameter in SParameterEntry::type (0x5ba62c, 0x5badb8 check).
constexpr uint8_t kMatrixType = 11;

// Stride used when the caller passes 0: one matrix, the original's 68 bytes.
constexpr int kDefaultMatrixStride = 68;

// The identity matrix returned for a null slot. Values as the identity constructor
// (0x631c14) builds them, with the flag set. The IdentityMatrix global address is not
// recovered; this local copy holds the same values.
const Matrix& identityMatrix() {
    static const Matrix kIdentity = [] {
        Matrix m{};
        m.M[0] = m.M[5] = m.M[10] = m.M[15] = 1.0f;
        m.flag = true;
        return m;
    }();
    return kIdentity;
}

// Matrix4Pool: matrices released by setMatrixParameter are kept here and reused. The
// original pool grows through boost::pool; when the list is empty this port uses new.
// Never destroyed: materials held by static-lifetime objects (the VisualFXManager animation dictionary) are released during static destruction and
// push their matrices here; a function-local static vector that was already gone made that a use after free at exit (host runner, guard-page heap).
std::vector<Matrix*>& matrixPool() {
    static std::vector<Matrix*>* pool = new std::vector<Matrix*>;
    return *pool;
}

// Entry for id in a table with count entries, or null when id is out of range.
const SParameterEntry* lookupEntry(uint16_t count, const SParameterEntry* entries, uint16_t id) {
    if (id >= count || entries == nullptr) return nullptr;
    return &entries[id];
}

// Slot for a byte offset of the value area. A slot never written reads as null.
const Matrix* slotAt(const SlotMap& slots, uint32_t key) {
    auto it = slots.find(key);
    return it == slots.end() ? nullptr : it->second;
}

Matrix*& slotAt(SlotMap& slots, uint32_t key) { return slots[key]; }

// Destination element i of a caller array with a byte stride.
Matrix* elementAt(void* base, int index, int stride) {
    unsigned char* bytes = static_cast<unsigned char*>(base);
    return reinterpret_cast<Matrix*>(bytes + static_cast<std::ptrdiff_t>(index) * stride);
}

const Matrix* elementAt(const void* base, int index, int stride) {
    return elementAt(const_cast<void*>(base), index, stride);
}

int strideOrDefault(int stride) { return stride ? stride : kDefaultMatrixStride; }

// Reads count matrices of an entry, from the slot of the first element on.
void readMatrices(const SlotMap& slots, const SParameterEntry& entry, Matrix* out, int stride) {
    const int step = strideOrDefault(stride);
    for (uint32_t i = 0; i < entry.count; ++i) {
        getMatrixParameter(slotAt(slots, entry.valueOffset + 4u * i), *elementAt(out, static_cast<int>(i), step));
    }
}

// Writes count matrices of an entry from a caller array with a byte stride.
void writeMatrices(SlotMap& slots, const SParameterEntry& entry, const Matrix* src, int stride) {
    const int step = strideOrDefault(stride);
    for (uint32_t i = 0; i < entry.count; ++i) {
        setMatrixParameter(slotAt(slots, entry.valueOffset + 4u * i), *elementAt(src, static_cast<int>(i), step));
    }
}

}  // namespace

// getMatrixParameter. The original copies 0x41 bytes from the slot, or from the identity.
void getMatrixParameter(const core::CMatrix4<float>* slot, core::CMatrix4<float>& out) {
    out = slot ? *slot : identityMatrix();
}

// setMatrixParameter. A flagged source (identity) releases a set slot to the pool and
// leaves it null. A non-identity source copies into a set slot, or takes a pool matrix
// for a null slot.
void setMatrixParameter(core::CMatrix4<float>*& slot, const core::CMatrix4<float>& src) {
    if (slot) {
        if (src.flag) {
            matrixPool().push_back(slot);
            slot = nullptr;
        } else {
            *slot = src;
        }
    } else if (!src.flag) {
        Matrix* fresh = nullptr;
        if (!matrixPool().empty()) {
            fresh = matrixPool().back();
            matrixPool().pop_back();
        } else {
            fresh = new Matrix;
        }
        *fresh = src;
        slot = fresh;
    }
}

// 0x5badb8 _ZN6glitch5video6detail18setMatrixParameterEPPNS_4core8CMatrix4IfEERKS4_NS2_10SAllocatorIS4_LNS_6memory13E_MEMORY_HINTE0EEE
// The original's entry takes the slot's address and the (empty) allocator of the matrix pool by value; the tree keeps the
// slot as a reference and the pool as the file-local matrixPool(), so this overload only adapts the call.
void setMatrixParameter(core::CMatrix4<float>** slot, const core::CMatrix4<float>& src,
                        core::SAllocator<core::CMatrix4<float>> /*poolAllocator*/) {
    setMatrixParameter(*slot, src);
}

// ---------------------------------------------------------------------------
// CMaterial (kTrackDirty = true). The table is reached through the block pointer.
// ---------------------------------------------------------------------------

// 0x5c60ac _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterDefEt
template <>
const SParameterEntry* IMaterialParameters<CMaterial, true>::getParameterDef(uint16_t id) const {
    if (!m_block) return nullptr;
    return lookupEntry(m_block->count, m_block->entries, id);
}

// 0x5ca30c _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterEtPNS_4core8CMatrix4IfEEi
template <>
bool IMaterialParameters<CMaterial, true>::getParameter(uint16_t id, core::CMatrix4<float>* out, int stride) const {
    const SParameterEntry* entry = getParameterDef(id);
    if (!entry || entry->type != kMatrixType) return false;
    readMatrices(m_matrixSlots, *entry, out, stride);
    return true;
}

// 0x5ca39c _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterEtjRNS_4core8CMatrix4IfEE
template <>
bool IMaterialParameters<CMaterial, true>::getParameter(uint16_t id, uint32_t index, core::CMatrix4<float>& out) const {
    const SParameterEntry* entry = getParameterDef(id);
    if (!entry || entry->type != kMatrixType || index >= entry->count) return false;
    getMatrixParameter(slotAt(m_matrixSlots, entry->valueOffset + 4u * index), out);
    return true;
}

// 0x5cb43c _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterEtPKNS_4core8CMatrix4IfEEi
template <>
bool IMaterialParameters<CMaterial, true>::setParameter(uint16_t id, const core::CMatrix4<float>* src, int stride) {
    const SParameterEntry* entry = getParameterDef(id);
    if (!entry || entry->type != kMatrixType) return false;
    setDirty();
    writeMatrices(m_matrixSlots, *entry, src, stride);
    return true;
}

// 0x5cb4dc _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterEtjRKNS_4core8CMatrix4IfEE
template <>
bool IMaterialParameters<CMaterial, true>::setParameter(uint16_t id, uint32_t index, const core::CMatrix4<float>& src) {
    const SParameterEntry* entry = getParameterDef(id);
    if (!entry || entry->type != kMatrixType || index >= entry->count) return false;
    setDirty();
    setMatrixParameter(slotAt(m_matrixSlots, entry->valueOffset + 4u * index), src);
    return true;
}

// 0x5cc764 _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterEtRNS_4core8CMatrix4IfEE
template <>
bool IMaterialParameters<CMaterial, true>::getParameter(uint16_t id, core::CMatrix4<float>& out) const {
    const SParameterEntry* entry = getParameterDef(id);
    if (!entry || entry->type != kMatrixType || entry->count == 0) return false;
    getMatrixParameter(slotAt(m_matrixSlots, entry->valueOffset), out);
    return true;
}

// 0x5cc7c0 _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtEtjRNS_4core8CMatrix4IfEE
template <>
bool IMaterialParameters<CMaterial, true>::getParameterCvt(uint16_t id, uint32_t index, core::CMatrix4<float>& out) const {
    const SParameterEntry* entry = getParameterDef(id);
    if (!entry || entry->type != kMatrixType || index >= entry->count) return false;
    getMatrixParameter(slotAt(m_matrixSlots, entry->valueOffset + 4u * index), out);
    return true;
}

// 0x5cd07c _ZNK6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtEtRNS_4core8CMatrix4IfEE
template <>
bool IMaterialParameters<CMaterial, true>::getParameterCvt(uint16_t id, core::CMatrix4<float>& out) const {
    const SParameterEntry* entry = getParameterDef(id);
    if (!entry || entry->type != kMatrixType || entry->count == 0) return false;
    getMatrixParameter(slotAt(m_matrixSlots, entry->valueOffset), out);
    return true;
}

// ---------------------------------------------------------------------------
// CMaterialRenderer (kTrackDirty = false). The table is held inline.
// ---------------------------------------------------------------------------

// 0x5cef78 _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterDefEt
template <>
const SParameterEntry* IMaterialParameters<CMaterialRenderer, false>::getParameterDef(uint16_t id) const {
    return lookupEntry(m_header.count, m_header.entries, id);
}

// 0x5d2f18 _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterEtPNS_4core8CMatrix4IfEEi
template <>
bool IMaterialParameters<CMaterialRenderer, false>::getParameter(uint16_t id, core::CMatrix4<float>* out, int stride) const {
    const SParameterEntry* entry = getParameterDef(id);
    if (!entry || entry->type != kMatrixType) return false;
    readMatrices(m_matrixSlots, *entry, out, stride);
    return true;
}

// 0x5d2fa4 _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterEtjRNS_4core8CMatrix4IfEE
template <>
bool IMaterialParameters<CMaterialRenderer, false>::getParameter(uint16_t id, uint32_t index, core::CMatrix4<float>& out) const {
    const SParameterEntry* entry = getParameterDef(id);
    if (!entry || entry->type != kMatrixType || index >= entry->count) return false;
    getMatrixParameter(slotAt(m_matrixSlots, entry->valueOffset + 4u * index), out);
    return true;
}

// 0x5d4488 _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterEtPKNS_4core8CMatrix4IfEEi
template <>
bool IMaterialParameters<CMaterialRenderer, false>::setParameter(uint16_t id, const core::CMatrix4<float>* src, int stride) {
    const SParameterEntry* entry = getParameterDef(id);
    if (!entry || entry->type != kMatrixType) return false;
    writeMatrices(m_matrixSlots, *entry, src, stride);
    return true;
}

// 0x5d4518 _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterEtjRKNS_4core8CMatrix4IfEE
template <>
bool IMaterialParameters<CMaterialRenderer, false>::setParameter(uint16_t id, uint32_t index, const core::CMatrix4<float>& src) {
    const SParameterEntry* entry = getParameterDef(id);
    if (!entry || entry->type != kMatrixType || index >= entry->count) return false;
    setMatrixParameter(slotAt(m_matrixSlots, entry->valueOffset + 4u * index), src);
    return true;
}

// 0x5d51f8 _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterEtRNS_4core8CMatrix4IfEE
template <>
bool IMaterialParameters<CMaterialRenderer, false>::getParameter(uint16_t id, core::CMatrix4<float>& out) const {
    const SParameterEntry* entry = getParameterDef(id);
    if (!entry || entry->type != kMatrixType || entry->count == 0) return false;
    getMatrixParameter(slotAt(m_matrixSlots, entry->valueOffset), out);
    return true;
}

// 0x5d5250 _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtEtjRNS_4core8CMatrix4IfEE
template <>
bool IMaterialParameters<CMaterialRenderer, false>::getParameterCvt(uint16_t id, uint32_t index, core::CMatrix4<float>& out) const {
    const SParameterEntry* entry = getParameterDef(id);
    if (!entry || entry->type != kMatrixType || index >= entry->count) return false;
    getMatrixParameter(slotAt(m_matrixSlots, entry->valueOffset + 4u * index), out);
    return true;
}

// 0x5d5b30 _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtEtRNS_4core8CMatrix4IfEE
template <>
bool IMaterialParameters<CMaterialRenderer, false>::getParameterCvt(uint16_t id, core::CMatrix4<float>& out) const {
    const SParameterEntry* entry = getParameterDef(id);
    if (!entry || entry->type != kMatrixType || entry->count == 0) return false;
    getMatrixParameter(slotAt(m_matrixSlots, entry->valueOffset), out);
    return true;
}

// Instances: G = CGlobalMaterialParameterManager (no tracking), M = CMaterial (tracking),
// R = CMaterialRenderer (no tracking). The matrix specializations above are declared in
// the header, so they are defined before the explicit instantiations below.
template class IMaterialParameters<CGlobalMaterialParameterManager, false>;
template class IMaterialParameters<CMaterial, true>;
template class IMaterialParameters<CMaterialRenderer, false>;

}  // namespace glitch::video::detail
