// Owner M typed rows: IMaterialParametersTyped<IMaterialParameters<CMaterial, true>>.
//
// The member bodies and dispatchers of the mixin are generic and live in material_parameters_typed_impl.hpp.
// This file keeps the M backend (MixinBackend<MaterialOwner>), the class members that are not mixin members, and
// the explicit instances at the end of the file. The backend routes a value type to the row that holds it (the
// split is the one of the address comments in the part 1b and part 1c headers):
//   - part 1b (MaterialParameterStore): the numeric rows that part 1b has. The owner does not keep a 1b record.
//     ShadowRecord builds one for each call from the owner's table: the entries are copied from the block header,
//     and the value bytes up to the bytes the entries reach. A setter writes the bytes and the dirty words back.
//   - part 1c (SParameterTable, in place): every pointer row and the numeric rows that part 1b does not have.
// The four rows that are not mixin members (setParameterElement x3, setParameterAt<SColorf>) are members of the
// class and are defined at the end of this file.
//
// Stride of the pointer forms: bytes (0 means contiguous), as in parts 1b and 1c. The value area is the owner's
// value buffer (valueBuffer()); it must cover the bytes of every entry, as the 1c rows do not check bounds.
// Dispatcher code 11 is the matrix overload. It goes to the class matrix accessors where the class has one. The
// class has no matrix accessor for the pointer Cvt getter or for either Cvt setter, so those dispatchers return 0
// for code 11.
//
// Pointer rows (codes 12..15 and 18) hold their slots in the owner's SPointerSlots map, keyed by the original
// byte offset. Reference counts are not kept (see the ledger notes).
#include <algorithm>
#include <cstddef>
#include <cstdint>
#include <cstring>
#include <memory>
#include <type_traits>
#include <utility>

#include "glitch-video/material_parameters.hpp"
#include "glitch-video/material_parameters_part_1b.hpp"
#include "glitch-video/material_parameters_part_1c.hpp"
#include "glitch-video/material_parameters_typed.hpp"
#include "glitch-video/material_parameters_typed_impl.hpp"

namespace glitch::video::detail {
namespace {

using MaterialOwner = IMaterialParameters<CMaterial, true>;
using MaterialTyped = IMaterialParametersTyped<MaterialOwner>;
using CMatrix = core::CMatrix4<float>;
using V2i = core::vector2d<int>;
using V3i = core::vector3d<int>;
using V4i = core::vector4d<int>;
using V2f = core::vector2d<float>;
using V3f = core::vector3d<float>;
using V4f = core::vector4d<float>;
using TexturePtr = boost::intrusive_ptr<ITexture>;
using LightPtr = boost::intrusive_ptr<CLight>;

// Bytes of one stored element of value type code (the element size of the value area).
std::size_t elementBytes(std::uint8_t code) {
    switch (code) {
        case 1: case 5: case 16: case 12: case 13: case 14: case 15: case 18: return 4;
        case 2: case 6: return 8;
        case 3: case 7: return 12;
        case 4: case 8: case 17: return 16;
        default: return 0;
    }
}

// Bytes of the value area that the entries of a block reach: the largest valueOffset + count * element size.
// Part 1b reads and writes element bytes only inside an entry, so a copy of this many bytes is exact for its rows.
std::size_t reachedBytes(const SParameterBlockHeader* header) {
    if (header == nullptr || header->entries == nullptr) return 0;
    std::size_t bytes = 0;
    for (std::uint32_t i = 0; i < header->count; ++i) {
        const SParameterEntry& e = header->entries[i];
        bytes = std::max(bytes, std::size_t(e.valueOffset) + std::size_t(e.count) * elementBytes(e.type));
    }
    return bytes;
}

// Part 1b's record of the owner, for one call. The entries are copied from the block header and the value bytes
// from the owner's value area. commit() writes the value bytes and the dirty words back; only setters call it.
class ShadowRecord {
public:
    template <class Owner>
    explicit ShadowRecord(Owner& owner) : m_table(owner.table()) {
        const SParameterBlockHeader* header = m_table.header;
        if (header != nullptr && header->entries != nullptr) {
            m_block.count = header->count;
            m_block.entries.reserve(header->count);
            for (std::uint32_t i = 0; i < header->count; ++i) {
                m_block.entries.push_back(header->entries[i]);
            }
        }
        m_store.block = &m_block;
        m_store.values.assign(m_table.values, m_table.values + reachedBytes(header));
        if (m_table.dirtyFirst != nullptr) {
            m_store.dirtyFirst = *m_table.dirtyFirst;
            m_store.dirtyLast = *m_table.dirtyLast;
        }
    }

    ShadowRecord(const ShadowRecord&) = delete;
    ShadowRecord& operator=(const ShadowRecord&) = delete;

    part1b::MaterialParameterStore& store() { return m_store; }
    const part1b::MaterialParameterStore& store() const { return m_store; }

    void commit() const {
        if (!m_store.values.empty()) std::memcpy(m_table.values, m_store.values.data(), m_store.values.size());
        if (m_table.dirtyFirst != nullptr) {
            *m_table.dirtyFirst = m_store.dirtyFirst;
            *m_table.dirtyLast = m_store.dirtyLast;
        }
    }

private:
    part1c::SParameterTable m_table;
    part1b::MaterialParameterBlock m_block;
    part1b::MaterialParameterStore m_store;
};

// Whether part 1b has the overload of each family for T. A row goes to part 1b when the overload exists, and to
// part 1c otherwise (the address table of the typed header gives the same split).
template <class T, class = void>
struct Part1bArrayGet : std::false_type {};
template <class T>
struct Part1bArrayGet<T, std::void_t<decltype(part1b::getParameterArray(
                             std::declval<const part1b::MaterialParameterStore&>(), std::declval<std::uint16_t>(),
                             std::declval<T*>(), std::declval<int>()))>> : std::true_type {};

template <class T, class = void>
struct Part1bArrayGetCvt : std::false_type {};
template <class T>
struct Part1bArrayGetCvt<T, std::void_t<decltype(part1b::getParameterArrayCvt(
                                std::declval<const part1b::MaterialParameterStore&>(), std::declval<std::uint16_t>(),
                                std::declval<T*>(), std::declval<int>()))>> : std::true_type {};

template <class T, class = void>
struct Part1bGet : std::false_type {};
template <class T>
struct Part1bGet<T, std::void_t<decltype(part1b::getParameter(
                        std::declval<const part1b::MaterialParameterStore&>(), std::declval<std::uint16_t>(),
                        std::declval<std::uint32_t>(), std::declval<T&>()))>> : std::true_type {};

template <class T, class = void>
struct Part1bSet : std::false_type {};
template <class T>
struct Part1bSet<T, std::void_t<decltype(part1b::setParameter(
                        std::declval<part1b::MaterialParameterStore&>(), std::declval<std::uint16_t>(),
                        std::declval<std::uint32_t>(), std::declval<const T&>()))>> : std::true_type {};

template <class T, class = void>
struct Part1bGetCvt : std::false_type {};
template <class T>
struct Part1bGetCvt<T, std::void_t<decltype(part1b::getParameterCvt(
                           std::declval<const part1b::MaterialParameterStore&>(), std::declval<std::uint16_t>(),
                           std::declval<std::uint32_t>(), std::declval<T&>()))>> : std::true_type {};

template <class T, class = void>
struct Part1bSetCvt : std::false_type {};
template <class T>
struct Part1bSetCvt<T, std::void_t<decltype(part1b::setParameterCvt(
                           std::declval<part1b::MaterialParameterStore&>(), std::declval<std::uint16_t>(),
                           std::declval<std::uint32_t>(), std::declval<const T&>()))>> : std::true_type {};

}  // namespace

// ---- M backend of the generic mixin bodies (material_parameters_typed_impl.hpp).

template <>
struct MixinBackend<MaterialOwner> {
    // Pointer rows (codes 12..15 and 18) are dispatched. Code 11 goes to the class matrix accessor in every dispatcher: the class
    // has no matrix Cvt accessor, and the Cvt dispatchers of the binary call the plain matrix accessor (see the typed_impl header).
    static constexpr bool kPointerRows = true;
    static constexpr bool kMatrixPtrGet = true;
    static constexpr bool kMatrixPtrSet = true;
    static constexpr bool kMatrixPtrGetCvt = true;
    static constexpr bool kMatrixPtrSetCvt = true;
    static constexpr bool kMatrixIdxGet = true;
    static constexpr bool kMatrixIdxSet = true;
    static constexpr bool kMatrixIdxGetCvt = true;
    static constexpr bool kMatrixIdxSetCvt = true;

    // ---- Pointer forms: stride in bytes. Part 1b has the numeric rows of the getter forms for some types.

    template <class T>
    static int arrayGet(const MaterialOwner& owner, std::uint16_t id, T* out, int stride) {
        if constexpr (Part1bArrayGet<T>::value) {
            const ShadowRecord shadow(owner);
            return part1b::getParameterArray(shadow.store(), id, out, stride);
        } else {
            return part1c::getParameter(owner.table(), id, out, stride);
        }
    }

    template <class T>
    static int arrayGetCvt(const MaterialOwner& owner, std::uint16_t id, T* out, int stride) {
        if constexpr (Part1bArrayGetCvt<T>::value) {
            const ShadowRecord shadow(owner);
            return part1b::getParameterArrayCvt(shadow.store(), id, out, stride);
        } else {
            return part1c::getParameterCvt(owner.table(), id, out, stride);
        }
    }

    // The setter pointer forms are part 1c rows for every value type.
    template <class T>
    static int arraySet(MaterialOwner& owner, std::uint16_t id, const T* src, int stride) {
        return part1c::setParameter(owner.table(), id, src, stride);
    }

    template <class T>
    static int arraySetCvt(MaterialOwner& owner, std::uint16_t id, const T* src, int stride) {
        return part1c::setParameterCvt(owner.table(), id, src, stride);
    }

    // ---- Indexed forms: one element.

    template <class T>
    static int indexGet(const MaterialOwner& owner, std::uint16_t id, std::uint32_t index, T& out) {
        if constexpr (Part1bGet<T>::value) {
            const ShadowRecord shadow(owner);
            return part1b::getParameter(shadow.store(), id, index, out);
        } else {
            return part1c::getParameter(owner.table(), id, index, out);
        }
    }

    template <class T>
    static int indexSet(MaterialOwner& owner, std::uint16_t id, std::uint32_t index, const T& value) {
        if constexpr (Part1bSet<T>::value) {
            ShadowRecord shadow(owner);
            const int result = part1b::setParameter(shadow.store(), id, index, value);
            shadow.commit();
            return result;
        } else {
            return part1c::setParameter(owner.table(), id, index, value);
        }
    }

    template <class T>
    static int indexGetCvt(const MaterialOwner& owner, std::uint16_t id, std::uint32_t index, T& out) {
        if constexpr (Part1bGetCvt<T>::value) {
            const ShadowRecord shadow(owner);
            return part1b::getParameterCvt(shadow.store(), id, index, out);
        } else {
            return part1c::getParameterCvt(owner.table(), id, index, out);
        }
    }

    template <class T>
    static int indexSetCvt(MaterialOwner& owner, std::uint16_t id, std::uint32_t index, const T& value) {
        if constexpr (Part1bSetCvt<T>::value) {
            ShadowRecord shadow(owner);
            const int result = part1b::setParameterCvt(shadow.store(), id, index, value);
            shadow.commit();
            return result;
        } else {
            return part1c::setParameterCvt(owner.table(), id, index, value);
        }
    }
};

// ---- The part 1c views of the CMaterial instance (declared in material_parameters.hpp).

// Non-const view: block header, value area, dirty words (CMaterial's +0x0c and +0x10) and pointer slots.
template <>
part1c::SParameterTable IMaterialParameters<CMaterial, true>::table() {
    part1c::SParameterTable t;
    t.header = m_block;
    t.values = m_values;
    t.dirtyFirst = reinterpret_cast<std::int32_t*>(m_ext0 != nullptr ? m_ext0 : &m_dirty0);
    t.dirtyLast = reinterpret_cast<std::int32_t*>(m_ext1 != nullptr ? m_ext1 : &m_dirty1);
    if (!m_pointers) m_pointers = std::make_shared<part1c::SPointerSlots>();
    t.pointers = m_pointers.get();
    return t;
}

// Const view: the same pointers. Const callers only read through it; the setters are non-const and take the
// view above.
template <>
part1c::SParameterTable IMaterialParameters<CMaterial, true>::table() const {
    return const_cast<IMaterialParameters*>(this)->table();
}

// setParameterAt<SColorf>(SColorf*, SColor const&): part 1c, with the dirty mark.
template <>
void IMaterialParameters<CMaterial, true>::setParameterAt(SColorf* dst, const SColor& src) {
    part1c::setParameterAt(table(), dst, src);
}

// setParameterElement(id, index, component, value): part 1c. Instances at the end of the file.
template <typename Owner, bool kTrackDirty>
template <typename T>
int IMaterialParameters<Owner, kTrackDirty>::setParameterElement(uint16_t id, uint32_t index, uint8_t component, T value) {
    return part1c::setParameterElement(table(), id, index, component, value);
}

// ---- Instances. The mixin class (the dispatchers), the member templates of each value type, and the two class
// members that are not mixin members. The address of each row is the one in material_parameters_typed.hpp.

template class IMaterialParametersTyped<MaterialOwner>;

// ---- getParameter, pointer form.
// 0x5c8d8c getParameter<int>(unsigned short, int*, int) const
template bool MaterialTyped::getParameter<int>(uint16_t, int*, int) const;
// 0x5c8cdc getParameter<vector2d<int>>(unsigned short, core::vector2d<int>*, int) const
template bool MaterialTyped::getParameter<core::vector2d<int>>(uint16_t, core::vector2d<int>*, int) const;
// 0x5c8c28 getParameter<vector3d<int>>(unsigned short, core::vector3d<int>*, int) const
template bool MaterialTyped::getParameter<core::vector3d<int>>(uint16_t, core::vector3d<int>*, int) const;
// 0x5c8b74 getParameter<vector4d<int>>(unsigned short, core::vector4d<int>*, int) const
template bool MaterialTyped::getParameter<core::vector4d<int>>(uint16_t, core::vector4d<int>*, int) const;
// 0x5c8ad4 getParameter<float>(unsigned short, float*, int) const
template bool MaterialTyped::getParameter<float>(uint16_t, float*, int) const;
// 0x5c8a24 getParameter<vector2d<float>>(unsigned short, core::vector2d<float>*, int) const
template bool MaterialTyped::getParameter<core::vector2d<float>>(uint16_t, core::vector2d<float>*, int) const;
// 0x5c8970 getParameter<vector3d<float>>(unsigned short, core::vector3d<float>*, int) const
template bool MaterialTyped::getParameter<core::vector3d<float>>(uint16_t, core::vector3d<float>*, int) const;
// 0x5c88bc getParameter<vector4d<float>>(unsigned short, core::vector4d<float>*, int) const
template bool MaterialTyped::getParameter<core::vector4d<float>>(uint16_t, core::vector4d<float>*, int) const;
// 0x5c8804 getParameter<SColor>(unsigned short, SColor*, int) const
template bool MaterialTyped::getParameter<SColor>(uint16_t, SColor*, int) const;
// 0x5c874c getParameter<SColorf>(unsigned short, SColorf*, int) const
template bool MaterialTyped::getParameter<SColorf>(uint16_t, SColorf*, int) const;
// 0x5cc43c getParameter<intrusive_ptr<ITexture>>(unsigned short, boost::intrusive_ptr<ITexture>*, int) const
template bool MaterialTyped::getParameter<boost::intrusive_ptr<ITexture>>(uint16_t, boost::intrusive_ptr<ITexture>*, int) const;
// 0x5cc50c getParameter<intrusive_ptr<CLight>>(unsigned short, boost::intrusive_ptr<CLight>*, int) const
template bool MaterialTyped::getParameter<boost::intrusive_ptr<CLight>>(uint16_t, boost::intrusive_ptr<CLight>*, int) const;

// ---- setParameter, pointer form.
// 0x5ca260 setParameter<int>(unsigned short, int const*, int)
template bool MaterialTyped::setParameter<int>(uint16_t, const int*, int);
// 0x5ca1a4 setParameter<vector2d<int>>(unsigned short, core::vector2d<int> const*, int)
template bool MaterialTyped::setParameter<core::vector2d<int>>(uint16_t, const core::vector2d<int>*, int);
// 0x5ca0e4 setParameter<vector3d<int>>(unsigned short, core::vector3d<int> const*, int)
template bool MaterialTyped::setParameter<core::vector3d<int>>(uint16_t, const core::vector3d<int>*, int);
// 0x5ca024 setParameter<vector4d<int>>(unsigned short, core::vector4d<int> const*, int)
template bool MaterialTyped::setParameter<core::vector4d<int>>(uint16_t, const core::vector4d<int>*, int);
// 0x5c9f78 setParameter<float>(unsigned short, float const*, int)
template bool MaterialTyped::setParameter<float>(uint16_t, const float*, int);
// 0x5c9ebc setParameter<vector2d<float>>(unsigned short, core::vector2d<float> const*, int)
template bool MaterialTyped::setParameter<core::vector2d<float>>(uint16_t, const core::vector2d<float>*, int);
// 0x5c9dfc setParameter<vector3d<float>>(unsigned short, core::vector3d<float> const*, int)
template bool MaterialTyped::setParameter<core::vector3d<float>>(uint16_t, const core::vector3d<float>*, int);
// 0x5c9d3c setParameter<vector4d<float>>(unsigned short, core::vector4d<float> const*, int)
template bool MaterialTyped::setParameter<core::vector4d<float>>(uint16_t, const core::vector4d<float>*, int);
// 0x5c9c78 setParameter<SColor>(unsigned short, SColor const*, int)
template bool MaterialTyped::setParameter<SColor>(uint16_t, const SColor*, int);
// 0x5c9bb4 setParameter<SColorf>(unsigned short, SColorf const*, int)
template bool MaterialTyped::setParameter<SColorf>(uint16_t, const SColorf*, int);
// 0x5cc8b4 setParameter<intrusive_ptr<ITexture>>(unsigned short, boost::intrusive_ptr<ITexture> const*, int)
template bool MaterialTyped::setParameter<boost::intrusive_ptr<ITexture>>(uint16_t, const boost::intrusive_ptr<ITexture>*, int);
// 0x5cc2b8 setParameter<intrusive_ptr<CLight>>(unsigned short, boost::intrusive_ptr<CLight> const*, int)
template bool MaterialTyped::setParameter<boost::intrusive_ptr<CLight>>(uint16_t, const boost::intrusive_ptr<CLight>*, int);

// ---- getParameterCvt, pointer form.
// 0x5c8670 getParameterCvt<int>(unsigned short, int*, int) const
template bool MaterialTyped::getParameterCvt<int>(uint16_t, int*, int) const;
// 0x5c8584 getParameterCvt<vector2d<int>>(unsigned short, core::vector2d<int>*, int) const
template bool MaterialTyped::getParameterCvt<core::vector2d<int>>(uint16_t, core::vector2d<int>*, int) const;
// 0x5c8490 getParameterCvt<vector3d<int>>(unsigned short, core::vector3d<int>*, int) const
template bool MaterialTyped::getParameterCvt<core::vector3d<int>>(uint16_t, core::vector3d<int>*, int) const;
// 0x5c839c getParameterCvt<vector4d<int>>(unsigned short, core::vector4d<int>*, int) const
template bool MaterialTyped::getParameterCvt<core::vector4d<int>>(uint16_t, core::vector4d<int>*, int) const;
// 0x5c8284 getParameterCvt<float>(unsigned short, float*, int) const
template bool MaterialTyped::getParameterCvt<float>(uint16_t, float*, int) const;
// 0x5c8198 getParameterCvt<vector2d<float>>(unsigned short, core::vector2d<float>*, int) const
template bool MaterialTyped::getParameterCvt<core::vector2d<float>>(uint16_t, core::vector2d<float>*, int) const;
// 0x5c80a4 getParameterCvt<vector3d<float>>(unsigned short, core::vector3d<float>*, int) const
template bool MaterialTyped::getParameterCvt<core::vector3d<float>>(uint16_t, core::vector3d<float>*, int) const;
// 0x5c7e90 getParameterCvt<vector4d<float>>(unsigned short, core::vector4d<float>*, int) const
template bool MaterialTyped::getParameterCvt<core::vector4d<float>>(uint16_t, core::vector4d<float>*, int) const;
// 0x5c7c64 getParameterCvt<SColor>(unsigned short, SColor*, int) const
template bool MaterialTyped::getParameterCvt<SColor>(uint16_t, SColor*, int) const;
// 0x5c7a90 getParameterCvt<SColorf>(unsigned short, SColorf*, int) const
template bool MaterialTyped::getParameterCvt<SColorf>(uint16_t, SColorf*, int) const;
// 0x5ccc7c getParameterCvt<intrusive_ptr<ITexture>>(unsigned short, boost::intrusive_ptr<ITexture>*, int) const
template bool MaterialTyped::getParameterCvt<boost::intrusive_ptr<ITexture>>(uint16_t, boost::intrusive_ptr<ITexture>*, int) const;
// 0x5cd0d8 getParameterCvt<intrusive_ptr<CLight>>(unsigned short, boost::intrusive_ptr<CLight>*, int) const
template bool MaterialTyped::getParameterCvt<boost::intrusive_ptr<CLight>>(uint16_t, boost::intrusive_ptr<CLight>*, int) const;

// ---- setParameterCvt, pointer form.
// 0x5c9a88 setParameterCvt<int>(unsigned short, int const*, int)
template bool MaterialTyped::setParameterCvt<int>(uint16_t, const int*, int);
// 0x5c9988 setParameterCvt<vector2d<int>>(unsigned short, core::vector2d<int> const*, int)
template bool MaterialTyped::setParameterCvt<core::vector2d<int>>(uint16_t, const core::vector2d<int>*, int);
// 0x5c9880 setParameterCvt<vector3d<int>>(unsigned short, core::vector3d<int> const*, int)
template bool MaterialTyped::setParameterCvt<core::vector3d<int>>(uint16_t, const core::vector3d<int>*, int);
// 0x5c9778 setParameterCvt<vector4d<int>>(unsigned short, core::vector4d<int> const*, int)
template bool MaterialTyped::setParameterCvt<core::vector4d<int>>(uint16_t, const core::vector4d<int>*, int);
// 0x5c964c setParameterCvt<float>(unsigned short, float const*, int)
template bool MaterialTyped::setParameterCvt<float>(uint16_t, const float*, int);
// 0x5c954c setParameterCvt<vector2d<float>>(unsigned short, core::vector2d<float> const*, int)
template bool MaterialTyped::setParameterCvt<core::vector2d<float>>(uint16_t, const core::vector2d<float>*, int);
// 0x5c9444 setParameterCvt<vector3d<float>>(unsigned short, core::vector3d<float> const*, int)
template bool MaterialTyped::setParameterCvt<core::vector3d<float>>(uint16_t, const core::vector3d<float>*, int);
// 0x5c9258 setParameterCvt<vector4d<float>>(unsigned short, core::vector4d<float> const*, int)
template bool MaterialTyped::setParameterCvt<core::vector4d<float>>(uint16_t, const core::vector4d<float>*, int);
// 0x5c9020 setParameterCvt<SColor>(unsigned short, SColor const*, int)
template bool MaterialTyped::setParameterCvt<SColor>(uint16_t, const SColor*, int);
// 0x5c8e2c setParameterCvt<SColorf>(unsigned short, SColorf const*, int)
template bool MaterialTyped::setParameterCvt<SColorf>(uint16_t, const SColorf*, int);
// 0x5cc820 setParameterCvt<intrusive_ptr<ITexture>>(unsigned short, boost::intrusive_ptr<ITexture> const*, int)
template bool MaterialTyped::setParameterCvt<boost::intrusive_ptr<ITexture>>(uint16_t, const boost::intrusive_ptr<ITexture>*, int);
// 0x5cce20 setParameterCvt<intrusive_ptr<CLight>>(unsigned short, boost::intrusive_ptr<CLight> const*, int)
template bool MaterialTyped::setParameterCvt<boost::intrusive_ptr<CLight>>(uint16_t, const boost::intrusive_ptr<CLight>*, int);

// ---- getParameter, indexed form.
// 0x5c6e24 getParameter<int>(unsigned short, unsigned int, int&) const
template bool MaterialTyped::getParameter<int>(uint16_t, uint32_t, int&) const;
// 0x5c6e84 getParameter<vector2d<int>>(unsigned short, unsigned int, core::vector2d<int>&) const
template bool MaterialTyped::getParameter<core::vector2d<int>>(uint16_t, uint32_t, core::vector2d<int>&) const;
// 0x5c6ef0 getParameter<vector3d<int>>(unsigned short, unsigned int, core::vector3d<int>&) const
template bool MaterialTyped::getParameter<core::vector3d<int>>(uint16_t, uint32_t, core::vector3d<int>&) const;
// 0x5c6f68 getParameter<vector4d<int>>(unsigned short, unsigned int, core::vector4d<int>&) const
template bool MaterialTyped::getParameter<core::vector4d<int>>(uint16_t, uint32_t, core::vector4d<int>&) const;
// 0x5c6fe4 getParameter<float>(unsigned short, unsigned int, float&) const
template bool MaterialTyped::getParameter<float>(uint16_t, uint32_t, float&) const;
// 0x5c7044 getParameter<vector2d<float>>(unsigned short, unsigned int, core::vector2d<float>&) const
template bool MaterialTyped::getParameter<core::vector2d<float>>(uint16_t, uint32_t, core::vector2d<float>&) const;
// 0x5c70b0 getParameter<vector3d<float>>(unsigned short, unsigned int, core::vector3d<float>&) const
template bool MaterialTyped::getParameter<core::vector3d<float>>(uint16_t, uint32_t, core::vector3d<float>&) const;
// 0x5c7128 getParameter<vector4d<float>>(unsigned short, unsigned int, core::vector4d<float>&) const
template bool MaterialTyped::getParameter<core::vector4d<float>>(uint16_t, uint32_t, core::vector4d<float>&) const;
// 0x5c71a4 getParameter<SColor>(unsigned short, unsigned int, SColor&) const
template bool MaterialTyped::getParameter<SColor>(uint16_t, uint32_t, SColor&) const;
// 0x5c7208 getParameter<SColorf>(unsigned short, unsigned int, SColorf&) const
template bool MaterialTyped::getParameter<SColorf>(uint16_t, uint32_t, SColorf&) const;
// 0x5cdabc getParameter<intrusive_ptr<ITexture>>(unsigned short, unsigned int, boost::intrusive_ptr<ITexture>&) const
template bool MaterialTyped::getParameter<boost::intrusive_ptr<ITexture>>(uint16_t, uint32_t, boost::intrusive_ptr<ITexture>&) const;
// 0x5ceae0 getParameter<intrusive_ptr<CLight>>(unsigned short, unsigned int, boost::intrusive_ptr<CLight>&) const
template bool MaterialTyped::getParameter<boost::intrusive_ptr<CLight>>(uint16_t, uint32_t, boost::intrusive_ptr<CLight>&) const;

// ---- setParameter, indexed form.
// 0x5c623c setParameter<int>(unsigned short, unsigned int, int const&)
template bool MaterialTyped::setParameter<int>(uint16_t, uint32_t, const int&);
// 0x5c62b4 setParameter<vector2d<int>>(unsigned short, unsigned int, core::vector2d<int> const&)
template bool MaterialTyped::setParameter<core::vector2d<int>>(uint16_t, uint32_t, const core::vector2d<int>&);
// 0x5c6350 setParameter<vector3d<int>>(unsigned short, unsigned int, core::vector3d<int> const&)
template bool MaterialTyped::setParameter<core::vector3d<int>>(uint16_t, uint32_t, const core::vector3d<int>&);
// 0x5c6408 setParameter<vector4d<int>>(unsigned short, unsigned int, core::vector4d<int> const&)
template bool MaterialTyped::setParameter<core::vector4d<int>>(uint16_t, uint32_t, const core::vector4d<int>&);
// 0x5c64d4 setParameter<float>(unsigned short, unsigned int, float const&)
template bool MaterialTyped::setParameter<float>(uint16_t, uint32_t, const float&);
// 0x5c6564 setParameter<vector2d<float>>(unsigned short, unsigned int, core::vector2d<float> const&)
template bool MaterialTyped::setParameter<core::vector2d<float>>(uint16_t, uint32_t, const core::vector2d<float>&);
// 0x5c660c setParameter<vector3d<float>>(unsigned short, unsigned int, core::vector3d<float> const&)
template bool MaterialTyped::setParameter<core::vector3d<float>>(uint16_t, uint32_t, const core::vector3d<float>&);
// 0x5c66d4 setParameter<vector4d<float>>(unsigned short, unsigned int, core::vector4d<float> const&)
template bool MaterialTyped::setParameter<core::vector4d<float>>(uint16_t, uint32_t, const core::vector4d<float>&);
// 0x5c67b4 setParameter<SColor>(unsigned short, unsigned int, SColor const&)
template bool MaterialTyped::setParameter<SColor>(uint16_t, uint32_t, const SColor&);
// 0x5cabf8 setParameter<SColorf>(unsigned short, unsigned int, SColorf const&)
template bool MaterialTyped::setParameter<SColorf>(uint16_t, uint32_t, const SColorf&);
// 0x5cd324 setParameter<intrusive_ptr<ITexture>>(unsigned short, unsigned int, boost::intrusive_ptr<ITexture> const&)
template bool MaterialTyped::setParameter<boost::intrusive_ptr<ITexture>>(uint16_t, uint32_t, const boost::intrusive_ptr<ITexture>&);
// 0x5ce95c setParameter<intrusive_ptr<CLight>>(unsigned short, unsigned int, boost::intrusive_ptr<CLight> const&)
template bool MaterialTyped::setParameter<boost::intrusive_ptr<CLight>>(uint16_t, uint32_t, const boost::intrusive_ptr<CLight>&);

// ---- getParameterCvt, indexed form.
// 0x5c7274 getParameterCvt<int>(unsigned short, unsigned int, int&) const
template bool MaterialTyped::getParameterCvt<int>(uint16_t, uint32_t, int&) const;
// 0x5c7310 getParameterCvt<vector2d<int>>(unsigned short, unsigned int, core::vector2d<int>&) const
template bool MaterialTyped::getParameterCvt<core::vector2d<int>>(uint16_t, uint32_t, core::vector2d<int>&) const;
// 0x5c739c getParameterCvt<vector3d<int>>(unsigned short, unsigned int, core::vector3d<int>&) const
template bool MaterialTyped::getParameterCvt<core::vector3d<int>>(uint16_t, uint32_t, core::vector3d<int>&) const;
// 0x5c7430 getParameterCvt<vector4d<int>>(unsigned short, unsigned int, core::vector4d<int>&) const
template bool MaterialTyped::getParameterCvt<core::vector4d<int>>(uint16_t, uint32_t, core::vector4d<int>&) const;
// 0x5c74d0 getParameterCvt<float>(unsigned short, unsigned int, float&) const
template bool MaterialTyped::getParameterCvt<float>(uint16_t, uint32_t, float&) const;
// 0x5c7574 getParameterCvt<vector2d<float>>(unsigned short, unsigned int, core::vector2d<float>&) const
template bool MaterialTyped::getParameterCvt<core::vector2d<float>>(uint16_t, uint32_t, core::vector2d<float>&) const;
// 0x5c7600 getParameterCvt<vector3d<float>>(unsigned short, unsigned int, core::vector3d<float>&) const
template bool MaterialTyped::getParameterCvt<core::vector3d<float>>(uint16_t, uint32_t, core::vector3d<float>&) const;
// 0x5c7694 getParameterCvt<vector4d<float>>(unsigned short, unsigned int, core::vector4d<float>&) const
template bool MaterialTyped::getParameterCvt<core::vector4d<float>>(uint16_t, uint32_t, core::vector4d<float>&) const;
// 0x5c77c8 getParameterCvt<SColor>(unsigned short, unsigned int, SColor&) const
template bool MaterialTyped::getParameterCvt<SColor>(uint16_t, uint32_t, SColor&) const;
// 0x5c7954 getParameterCvt<SColorf>(unsigned short, unsigned int, SColorf&) const
template bool MaterialTyped::getParameterCvt<SColorf>(uint16_t, uint32_t, SColorf&) const;
// 0x5cedd0 getParameterCvt<intrusive_ptr<ITexture>>(unsigned short, unsigned int, boost::intrusive_ptr<ITexture>&) const
template bool MaterialTyped::getParameterCvt<boost::intrusive_ptr<ITexture>>(uint16_t, uint32_t, boost::intrusive_ptr<ITexture>&) const;
// 0x5cc3b4 getParameterCvt<intrusive_ptr<CLight>>(unsigned short, unsigned int, boost::intrusive_ptr<CLight>&) const
template bool MaterialTyped::getParameterCvt<boost::intrusive_ptr<CLight>>(uint16_t, uint32_t, boost::intrusive_ptr<CLight>&) const;

// ---- setParameterCvt, indexed form.
// 0x5c6834 setParameterCvt<int>(unsigned short, unsigned int, int const&)
template bool MaterialTyped::setParameterCvt<int>(uint16_t, uint32_t, const int&);
// 0x5c6904 setParameterCvt<vector2d<int>>(unsigned short, unsigned int, core::vector2d<int> const&)
template bool MaterialTyped::setParameterCvt<core::vector2d<int>>(uint16_t, uint32_t, const core::vector2d<int>&);
// 0x5c69c4 setParameterCvt<vector3d<int>>(unsigned short, unsigned int, core::vector3d<int> const&)
template bool MaterialTyped::setParameterCvt<core::vector3d<int>>(uint16_t, uint32_t, const core::vector3d<int>&);
// 0x5c6a9c setParameterCvt<vector4d<int>>(unsigned short, unsigned int, core::vector4d<int> const&)
template bool MaterialTyped::setParameterCvt<core::vector4d<int>>(uint16_t, uint32_t, const core::vector4d<int>&);
// 0x5c6b8c setParameterCvt<float>(unsigned short, unsigned int, float const&)
template bool MaterialTyped::setParameterCvt<float>(uint16_t, uint32_t, const float&);
// 0x5c6c60 setParameterCvt<vector2d<float>>(unsigned short, unsigned int, core::vector2d<float> const&)
template bool MaterialTyped::setParameterCvt<core::vector2d<float>>(uint16_t, uint32_t, const core::vector2d<float>&);
// 0x5c6d34 setParameterCvt<vector3d<float>>(unsigned short, unsigned int, core::vector3d<float> const&)
template bool MaterialTyped::setParameterCvt<core::vector3d<float>>(uint16_t, uint32_t, const core::vector3d<float>&);
// 0x5ce768 setParameterCvt<vector4d<float>>(unsigned short, unsigned int, core::vector4d<float> const&)
template bool MaterialTyped::setParameterCvt<core::vector4d<float>>(uint16_t, uint32_t, const core::vector4d<float>&);
// 0x5cad38 setParameterCvt<SColor>(unsigned short, unsigned int, SColor const&)
template bool MaterialTyped::setParameterCvt<SColor>(uint16_t, uint32_t, const SColor&);
// 0x5cb6e8 setParameterCvt<SColorf>(unsigned short, unsigned int, SColorf const&)
template bool MaterialTyped::setParameterCvt<SColorf>(uint16_t, uint32_t, const SColorf&);
// 0x5cec4c setParameterCvt<intrusive_ptr<ITexture>>(unsigned short, unsigned int, boost::intrusive_ptr<ITexture> const&)
template bool MaterialTyped::setParameterCvt<boost::intrusive_ptr<ITexture>>(uint16_t, uint32_t, const boost::intrusive_ptr<ITexture>&);
// 0x5cc1b8 setParameterCvt<intrusive_ptr<CLight>>(unsigned short, unsigned int, boost::intrusive_ptr<CLight> const&)
template bool MaterialTyped::setParameterCvt<boost::intrusive_ptr<CLight>>(uint16_t, uint32_t, const boost::intrusive_ptr<CLight>&);

// setParameterElement(id, index, component, value): part 1c, one instance per value type of the table.
// 0x5caf68 setParameterElement<unsigned char>(unsigned short, unsigned int, unsigned char, unsigned char)
template int MaterialOwner::setParameterElement<std::uint8_t>(uint16_t, uint32_t, uint8_t, std::uint8_t);
// 0x5cb098 setParameterElement<int>(unsigned short, unsigned int, unsigned char, int)
template int MaterialOwner::setParameterElement<int>(uint16_t, uint32_t, uint8_t, int);
// 0x5cb1c4 setParameterElement<float>(unsigned short, unsigned int, unsigned char, float)
template int MaterialOwner::setParameterElement<float>(uint16_t, uint32_t, uint8_t, float);
// 0x5cac8c setParameterAt<SColorf>(SColorf*, SColor const&): explicit specialization above.

}  // namespace glitch::video::detail
