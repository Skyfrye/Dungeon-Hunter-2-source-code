// Owner G typed rows added by K1b: IMaterialParameters<CGlobalMaterialParameterManager, SEmptyBase> texture, light-array, matrix and
// setParameterElement rows over the manager's table (GlobalParameterStore: the part 1a entry records and the value buffer), plus
// CGlobalMaterialParameterManager::getParameterDef / grabParameters / initParametersToIdentity. Transcribed from Hex-Rays.
//
// Stored pointers (textures, lights, matrices) are sizeof(void*) raw slots in the value buffer (the original's are 4 bytes), with the
// reference counts of the listings. Matrix slots hold a heap matrix or null (identity).
#include <cstdint>
#include <cstring>

#include "glitch-core-io/os/logging.hpp"
#include "glitch-video/global_parameter_manager.hpp"
#include "glitch-video/light.hpp"
#include "glitch-video/material_parameters_part_1b.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/video_names.hpp"

namespace glitch::video::detail::part1b {

namespace {

using Matrix = core::CMatrix4<float>;

template <class T>
T loadAs(const std::uint8_t* p) {
    T v;
    std::memcpy(&v, p, sizeof(T));
    return v;
}

template <class T>
void storeAs(std::uint8_t* p, const T& v) {
    std::memcpy(p, &v, sizeof(T));
}

const part1a::SParamEntry* findEntry(const GlobalParameterStore& s, std::uint16_t id) {
    if (id >= s.entries.size()) return nullptr;
    const part1a::SParamEntry& e = s.entries[id];
    return e.ref != 0 ? &e : nullptr;
}

bool fits(const GlobalParameterStore& s, std::uint64_t position, std::uint64_t size) { return position + size <= s.values.size(); }

bool isTextureType(std::uint8_t type) { return static_cast<std::uint32_t>(type) - 12u <= 3u; }

void addRefLight(CLight* light) {
    if (light) ++light->m_refCount;
}
void releaseLight(CLight* light) {
    if (light && light->m_refCount-- == 1) destroyLight(light);
}

// The counted assign of a texture pointer slot: the new value gets a use, the old one is dropped.
void assignTexture(ITexture*& dst, ITexture* src) {
    if (src) textureAddRef(src);
    ITexture* old = dst;
    dst = src;
    if (old) textureDrop(old);
}
void assignLight(CLight*& dst, CLight* src) {
    addRefLight(src);
    CLight* old = dst;
    dst = src;
    releaseLight(old);
}

// 0x5bb7ec detail::setArrayParameter(SShaderParameterDef const*, intrusive_ptr<ITexture>*, intrusive_ptr<ITexture> const*, int), port
// form: `count` slots at `slots`, the definition's value type, and the caller's array stepped by `stride` bytes. A texture whose type
// is not the one the parameter holds (its state word's low bits + 12) is refused with an error log and its slot is left alone; any
// other element (including a null one) takes a use and replaces the slot, whose old texture is dropped. The log names the parameter
// by its id in the port (the manager's name table is not reachable from the store).
void setArrayParameter(std::uint16_t id, std::uint8_t valueType, std::uint32_t count, std::uint8_t* slots, ITexture* const* src, int stride) {
    const std::uint8_t* from = reinterpret_cast<const std::uint8_t*>(src);
    for (std::uint32_t i = 0; i < count; ++i, from += stride) {
        ITexture* texture = *reinterpret_cast<ITexture* const*>(from);
        if (texture != nullptr) {
            const std::uint32_t expected = (textureStateWord(texture) & 3u) + 12u;
            if (expected != valueType) {
                const char* const* names = shaderParameterValueTypeNames();
                const char* have = valueType == 255 ? "unknown" : names[valueType];
                os::Printer::logf(glitch::ELL_ERROR, "Material Parameter Error: trying to set parameter %u of type %s from type %s",
                                  static_cast<unsigned>(id), have, names[expected]);
                continue;
            }
        }
        ITexture* old = loadAs<ITexture*>(slots + i * sizeof(void*));
        if (texture != nullptr) textureAddRef(texture);
        storeAs<ITexture*>(slots + i * sizeof(void*), texture);
        if (old != nullptr) textureDrop(old);
    }
}

constexpr std::uint8_t kValueTypeBaseType[19] = {0, 1, 1, 1, 1, 5, 5, 5, 5, 5, 5, 5, 0xc, 0xd, 0xe, 0xf, 0, 5, 0x12};
constexpr std::uint8_t kValueTypeArraySize[19] = {1, 1, 2, 3, 4, 1, 2, 3, 4, 4, 9, 0x10, 1, 1, 1, 1, 4, 4, 1};

}  // namespace

// 0x5c24d8 getParameter<boost::intrusive_ptr<ITexture>>(unsigned short, ITexture**, int) const
// A texture entry (types 12..15): every element is copied to the caller's array (stepped by `stride`, the pointer size when 0) with a
// use taken and the caller's old texture dropped.
int getParameterArray(const GlobalParameterStore& s, std::uint16_t id, ITexture** out, int stride) {
    const part1a::SParamEntry* e = findEntry(s, id);
    if (!e || !isTextureType(e->type) || !fits(s, e->offset, std::uint64_t(e->count) * sizeof(void*))) return 0;
    std::uint8_t* to = reinterpret_cast<std::uint8_t*>(out);
    const int step = stride == 0 ? static_cast<int>(sizeof(void*)) : stride;
    for (std::uint32_t i = 0; i < e->count; ++i, to += step) {
        assignTexture(*reinterpret_cast<ITexture**>(to), loadAs<ITexture*>(s.values.data() + e->offset + i * sizeof(void*)));
    }
    return 1;
}

// 0x5c2198 getParameter<boost::intrusive_ptr<CLight>>(unsigned short, CLight**, int) const (light entries, type 18)
int getParameterArray(const GlobalParameterStore& s, std::uint16_t id, CLight** out, int stride) {
    const part1a::SParamEntry* e = findEntry(s, id);
    if (!e || e->type != 18 || !fits(s, e->offset, std::uint64_t(e->count) * sizeof(void*))) return 0;
    std::uint8_t* to = reinterpret_cast<std::uint8_t*>(out);
    const int step = stride == 0 ? static_cast<int>(sizeof(void*)) : stride;
    for (std::uint32_t i = 0; i < e->count; ++i, to += step) {
        assignLight(*reinterpret_cast<CLight**>(to), loadAs<CLight*>(s.values.data() + e->offset + i * sizeof(void*)));
    }
    return 1;
}

// 0x5c0c94 setParameter<boost::intrusive_ptr<ITexture>>(unsigned short, intrusive_ptr<ITexture> const*, int)
// A texture entry: setArrayParameter over its slots (a stride of 0 means the pointer size).
int setParameterArray(GlobalParameterStore& s, std::uint16_t id, ITexture* const* src, int stride) {
    const part1a::SParamEntry* e = findEntry(s, id);
    if (!e || !isTextureType(e->type) || !fits(s, e->offset, std::uint64_t(e->count) * sizeof(void*))) return 0;
    setArrayParameter(id, e->type, e->count, s.values.data() + e->offset, src, stride == 0 ? static_cast<int>(sizeof(void*)) : stride);
    return 1;
}

// 0x5c0bd4 setParameterCvt<boost::intrusive_ptr<ITexture>>(unsigned short, intrusive_ptr<ITexture> const*, int)
// The same, but a stride of 0 stores nothing (and reports success).
int setParameterArrayCvt(GlobalParameterStore& s, std::uint16_t id, ITexture* const* src, int stride) {
    const part1a::SParamEntry* e = findEntry(s, id);
    if (!e || !isTextureType(e->type)) return 0;
    if (stride == 0) return 1;
    if (!fits(s, e->offset, std::uint64_t(e->count) * sizeof(void*))) return 0;
    setArrayParameter(id, e->type, e->count, s.values.data() + e->offset, src, stride);
    return 1;
}

// 0x5bf7dc getParameter<boost::intrusive_ptr<ITexture>>(unsigned short, unsigned int, intrusive_ptr<ITexture>&) const
int getParameter(const GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, ITexture*& out) {
    const part1a::SParamEntry* e = findEntry(s, id);
    if (!e || !isTextureType(e->type) || index >= e->count) return 0;
    const std::uint64_t position = e->offset + std::uint64_t(index) * sizeof(void*);
    if (!fits(s, position, sizeof(void*))) return 0;
    assignTexture(out, loadAs<ITexture*>(s.values.data() + position));
    return 1;
}

// 0x5beaa4 getParameterCvt<boost::intrusive_ptr<ITexture>>(unsigned short, unsigned int, intrusive_ptr<ITexture>&) const
// The index is only checked against the count; the element read is the first one (as in the listing).
int getParameterCvt(const GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, ITexture*& out) {
    const part1a::SParamEntry* e = findEntry(s, id);
    if (!e || !isTextureType(e->type) || index >= e->count) return 0;
    if (!fits(s, e->offset, sizeof(void*))) return 0;
    assignTexture(out, loadAs<ITexture*>(s.values.data() + e->offset));
    return 1;
}

// 0x5c3f40 setParameterCvt<boost::intrusive_ptr<ITexture>>(unsigned short, unsigned int, intrusive_ptr<ITexture> const&)
// The entry must hold the texture type of the value (any texture type for a null one) and the index must be below the count; the first
// element takes the value (a use is taken, the old texture dropped).
int setParameterCvt(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, ITexture* const& src) {
    const part1a::SParamEntry* e = findEntry(s, id);
    if (!e) return 0;
    const bool typeOk = src != nullptr ? e->type == (textureStateWord(src) & 3u) + 12u : isTextureType(e->type);
    if (!typeOk || index >= e->count || !isTextureType(e->type) || !fits(s, e->offset, sizeof(void*))) return 0;
    std::uint8_t* slot = s.values.data() + e->offset;
    ITexture* current = loadAs<ITexture*>(slot);
    assignTexture(current, src);
    storeAs<ITexture*>(slot, current);
    return 1;
}

// 0x5c091c getParameter(unsigned short, CMatrix4<float>*, int) const
// A matrix entry (type 11): every element's matrix (the identity for an empty slot) is copied to the caller's array, stepped by `stride`
// bytes (one matrix when 0).
int getParameterArray(const GlobalParameterStore& s, std::uint16_t id, Matrix* out, int stride) {
    const part1a::SParamEntry* e = findEntry(s, id);
    if (!e || e->type != 11 || !fits(s, e->offset, std::uint64_t(e->count) * sizeof(void*))) return 0;
    const std::ptrdiff_t step = stride == 0 ? static_cast<std::ptrdiff_t>(sizeof(Matrix)) : stride;
    std::uint8_t* to = reinterpret_cast<std::uint8_t*>(out);
    for (std::uint32_t i = 0; i < e->count; ++i, to += step) {
        getMatrixParameter(loadAs<const Matrix*>(s.values.data() + e->offset + i * sizeof(void*)), *reinterpret_cast<Matrix*>(to));
    }
    return 1;
}

// 0x5c09ec getParameter(unsigned short, unsigned int, CMatrix4<float>&) const
int getParameter(const GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, Matrix& out) {
    const part1a::SParamEntry* e = findEntry(s, id);
    if (!e || e->type != 11 || index >= e->count) return 0;
    const std::uint64_t position = e->offset + std::uint64_t(index) * sizeof(void*);
    if (!fits(s, position, sizeof(void*))) return 0;
    getMatrixParameter(loadAs<const Matrix*>(s.values.data() + position), out);
    return 1;
}

// 0x5bee04 setParameter(unsigned short, CMatrix4<float> const*, int)
// Every element's slot takes the caller's matrix through setMatrixParameter (an identity releases the slot).
int setParameterArray(GlobalParameterStore& s, std::uint16_t id, const Matrix* src, int stride) {
    const part1a::SParamEntry* e = findEntry(s, id);
    if (!e || e->type != 11 || !fits(s, e->offset, std::uint64_t(e->count) * sizeof(void*))) return 0;
    const std::ptrdiff_t step = stride == 0 ? static_cast<std::ptrdiff_t>(sizeof(Matrix)) : stride;
    const std::uint8_t* from = reinterpret_cast<const std::uint8_t*>(src);
    for (std::uint32_t i = 0; i < e->count; ++i, from += step) {
        std::uint8_t* slotAddress = s.values.data() + e->offset + i * sizeof(void*);
        Matrix* slot = loadAs<Matrix*>(slotAddress);
        setMatrixParameter(slot, *reinterpret_cast<const Matrix*>(from));
        storeAs<Matrix*>(slotAddress, slot);
    }
    return 1;
}

// 0x5beed8 setParameter(unsigned short, unsigned int, CMatrix4<float> const&)
int setParameter(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const Matrix& src) {
    const part1a::SParamEntry* e = findEntry(s, id);
    if (!e || e->type != 11 || index >= e->count) return 0;
    const std::uint64_t position = e->offset + std::uint64_t(index) * sizeof(void*);
    if (!fits(s, position, sizeof(void*))) return 0;
    std::uint8_t* slotAddress = s.values.data() + position;
    Matrix* slot = loadAs<Matrix*>(slotAddress);
    setMatrixParameter(slot, src);
    storeAs<Matrix*>(slotAddress, slot);
    return 1;
}

namespace {

// The shared body of the three setParameterElement rows. `base` is the value-type base the row accepts (0 byte, 1 int, 5 float). A
// matrix entry takes the component into its first matrix (made as an identity when the slot is empty; the flag is cleared); any other
// entry stores at index + component bytes (byte form) or 4 * (component + index) bytes.
template <class T>
int setElement(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, std::uint32_t component, T value, std::uint8_t base) {
    const part1a::SParamEntry* e = findEntry(s, id);
    if (!e) return 0;
    const std::uint8_t type = e->type;
    if (type >= 19 || kValueTypeBaseType[type] != base || component >= kValueTypeArraySize[type] || index >= e->count) return 0;
    if (type == 11) {
        if (!fits(s, e->offset, sizeof(void*))) return 0;
        std::uint8_t* slotAddress = s.values.data() + e->offset;
        Matrix* matrix = loadAs<Matrix*>(slotAddress);
        if (matrix == nullptr) {
            matrix = new Matrix(Matrix::EM4CONST_IDENTITY);
            storeAs<Matrix*>(slotAddress, matrix);
        }
        matrix->flag = false;
        if constexpr (std::is_same_v<T, float>) {
            matrix->M[component] = value;
        } else {
            matrix->M[component] = static_cast<float>(value);
        }
        return 1;
    }
    if constexpr (std::is_same_v<T, std::uint8_t>) {
        const std::uint64_t position = std::uint64_t(e->offset) + index + component;
        if (!fits(s, position, 1)) return 0;
        s.values[position] = value;
    } else {
        const std::uint64_t position = std::uint64_t(e->offset) + 4u * (std::uint64_t(component) + index);
        if (!fits(s, position, 4)) return 0;
        std::memcpy(s.values.data() + position, &value, 4);
    }
    return 1;
}

}  // namespace

// 0x5becc4 setParameterElement<unsigned char>(unsigned short, unsigned int, unsigned char, unsigned char)
int setParameterElement(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, std::uint32_t component, std::uint8_t value) {
    return setElement<std::uint8_t>(s, id, index, component, value, 0);
}

// 0x5beb84 setParameterElement<int>(unsigned short, unsigned int, unsigned char, int)
int setParameterElement(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, std::uint32_t component, int value) {
    return setElement<int>(s, id, index, component, value, 1);
}

// 0x5c0aa8 setParameterElement<float>(unsigned short, unsigned int, unsigned char, float)
int setParameterElement(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, std::uint32_t component, float value) {
    return setElement<float>(s, id, index, component, value, 5);
}

}  // namespace glitch::video::detail::part1b

namespace glitch::video::detail {

// 0x5bb280 / 0x5bb5b0 grabParameter<boost::intrusive_ptr<T>>(intrusive_ptr<T>*, unsigned int): each slot is rebuilt as a copy of itself,
// which takes one more use on its object (a null slot stays null).
template <>
void grabParameter<boost::intrusive_ptr<ITexture>>(boost::intrusive_ptr<ITexture>* slots, unsigned int count) {
    for (unsigned int i = 0; i < count; ++i) {
        if (slots[i]) part1b::textureAddRef(slots[i].get());
    }
}

template <>
void grabParameter<boost::intrusive_ptr<CLight>>(boost::intrusive_ptr<CLight>* slots, unsigned int count) {
    for (unsigned int i = 0; i < count; ++i) {
        if (slots[i]) ++slots[i]->m_refCount;
    }
}

}  // namespace glitch::video::detail

namespace glitch::video {

namespace {

using Matrix = core::CMatrix4<float>;

template <class T>
T loadAs(const std::uint8_t* p) {
    T v;
    std::memcpy(&v, p, sizeof(T));
    return v;
}

template <class T>
void storeAs(std::uint8_t* p, const T& v) {
    std::memcpy(p, &v, sizeof(T));
}

void storeWord(std::uint8_t* at, std::uint32_t word) { std::memcpy(at, &word, sizeof word); }

}  // namespace

// 0x5bafec IMaterialParameters<CGlobalMaterialParameterManager, SEmptyBase>::getParameterDef(unsigned short) const
// The definition of parameter `id` in the manager's collection, or null when the id is past the collection or the entry is unset.
const SShaderParameterDef* CGlobalMaterialParameterManager::getParameterDef(uint16_t id) const {
    const auto* entry = m_defs.get(id);
    return detail::globalmaterialparametermanager::SValueTraits::isSet(entry->value) ? &entry->value : nullptr;
}

// 0x5bd8d4 IMaterialParameters<CGlobalMaterialParameterManager, SEmptyBase>::grabParameters()
// In name order: a matrix entry replaces each non-null slot by a new matrix copied from it; a texture entry takes a use on its
// slots (the type 12..15 grab) and a light entry on its light slots. (The original runs this after the value bytes were copied from
// another manager, so the uses it takes are the copy's own.)
void CGlobalMaterialParameterManager::grabParameters() {
    std::vector<std::uint8_t>& values = store().values;
    for (auto it = m_defs.idBegin(); it != m_defs.idEnd(); ++it) {
        const auto* entry = m_defs.get(it->second.id);
        if (!detail::globalmaterialparametermanager::SValueTraits::isSet(entry->value)) continue;
        const SShaderParameterDef& def = entry->value;
        if (static_cast<std::uint64_t>(def.offset) + std::uint64_t(def.count) * sizeof(void*) > values.size()) continue;
        std::uint8_t* base = values.data() + def.offset;
        for (std::uint32_t i = 0; i < def.count; ++i) {
            std::uint8_t* slot = base + i * sizeof(void*);
            switch (def.valueType) {
                case 0xb: {
                    Matrix* matrix = loadAs<Matrix*>(slot);
                    if (matrix != nullptr) storeAs<Matrix*>(slot, new Matrix(*matrix));
                    break;
                }
                case 0xc: case 0xd: case 0xe: case 0xf:
                    detail::grabParameter(reinterpret_cast<boost::intrusive_ptr<ITexture>*>(slot), 1u);
                    break;
                case 0x12:
                    detail::grabParameter(reinterpret_cast<boost::intrusive_ptr<CLight>*>(slot), 1u);
                    break;
                default:
                    break;
            }
        }
    }
}

// 0x5be3ec IMaterialParameters<CGlobalMaterialParameterManager, SEmptyBase>::initParametersToIdentity()
// In name order the first element of every parameter takes its identity value: type 0 a zero byte, 1..7 zero words, 8 and 17 four floats
// of 1.0, 16 four 0xff bytes; a matrix goes back to the pool (the original leaves the slot pointing at it, the port clears it); a
// texture or light slot is emptied and the reference released.
void CGlobalMaterialParameterManager::initParametersToIdentity() {
    std::vector<std::uint8_t>& values = store().values;
    constexpr std::uint32_t kOne = 0x3f800000u;
    for (auto it = m_defs.idBegin(); it != m_defs.idEnd(); ++it) {
        const auto* entry = m_defs.get(it->second.id);
        if (!detail::globalmaterialparametermanager::SValueTraits::isSet(entry->value)) continue;
        const SShaderParameterDef& def = entry->value;
        if (static_cast<std::uint64_t>(def.offset) + sizeof(void*) > values.size()) continue;
        std::uint8_t* at = values.data() + def.offset;
        switch (def.valueType) {
            case 0: *at = 0; break;
            case 1: case 5: storeWord(at, 0); break;
            case 2: case 6: storeWord(at, 0); storeWord(at + 4, 0); break;
            case 3: case 7: storeWord(at, 0); storeWord(at + 4, 0); storeWord(at + 8, 0); break;
            case 4: storeWord(at, 0); storeWord(at + 4, 0); storeWord(at + 8, 0); storeWord(at + 12, 0); break;
            case 8: case 17:
                storeWord(at, kOne); storeWord(at + 4, kOne); storeWord(at + 8, kOne); storeWord(at + 12, kOne);
                break;
            case 11: {
                Matrix* matrix = loadAs<Matrix*>(at);
                if (matrix != nullptr) {
                    const Matrix identity(Matrix::EM4CONST_IDENTITY);
                    detail::setMatrixParameter(matrix, identity);
                    storeAs<Matrix*>(at, matrix);
                }
                break;
            }
            case 12: case 13: case 14: case 15: {
                ITexture* texture = loadAs<ITexture*>(at);
                storeAs<ITexture*>(at, nullptr);
                if (texture != nullptr) detail::part1b::textureDrop(texture);
                break;
            }
            case 16: std::memset(at, 0xff, 4); break;
            case 18: {
                CLight* light = loadAs<CLight*>(at);
                storeAs<CLight*>(at, nullptr);
                if (light != nullptr && light->m_refCount-- == 1) detail::part1b::destroyLight(light);
                break;
            }
            default: break;
        }
    }
}

}  // namespace glitch::video
