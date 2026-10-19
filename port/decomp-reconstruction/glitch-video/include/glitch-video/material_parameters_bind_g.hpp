// Owner G binding: IMaterialParameters<CGlobalMaterialParameterManager, SEmptyBase>.
//
// The port has no class of that name. material_parameters.hpp declares a different template
// (IMaterialParameters<Owner, bool>) for owners M and R. SGlobalParameterOwner is the Derived type of the
// typed mixin for G. It owns the global manager's table: the entry list of part1b::GlobalParameterStore, whose
// records are part1a::SParamEntry (20 bytes). Part 1a reads that list through the GlobalParamTable view, part 1b
// through the store. The value buffer is shared: the view points at store().values. defineEntry is the only way
// to change an entry.
#pragma once

#include <cstddef>
#include <cstdint>
#include <vector>

#include "glitch-core-io/core/sided_collection.hpp"
#include "glitch-video/material_parameters_part_1a.hpp"
#include "glitch-video/material_parameters_part_1b.hpp"
#include "glitch-video/material_parameters_typed.hpp"
#include "glitch-video/shader_parameter_def.hpp"

namespace glitch::video {
namespace detail {

// Property record and value traits of the collection instance that stores the global manager's parameter
// definitions: glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef, unsigned short, false,
// globalmaterialparametermanager::SPropeties, globalmaterialparametermanager::SValueTraits> (the object at the
// global manager's +0x00..+0x27, see global_parameter_manager.hpp). Namespace and spelling are the binary's
// (one 'r' in SPropeties).
namespace globalmaterialparametermanager {

// Props record of that instance; SIdValue derives from it and puts the uint16 id after it. The SIdValue
// constructors 0x5b9f64 (C2) and 0x5b9f74 (C1) are three instructions and share their body:
// STRH R2,[R0,#4] (the id) and STR R0,#1,[R0] (the literal 1), an 8-byte SIdValue record whose single Props word
// is the 1. Verified in both instantiations and against the getProperties 0x5b9f04/0x5b9f1c offsets.
// SPropeties itself is defined with the traits in shader_parameter_def.hpp (unk00 = the user count, 1 after construction).

// Value traits of the same instance: shader_parameter_def.hpp (a definition is set when it holds a name, its use count is the
// name record's count).
}  // namespace globalmaterialparametermanager

struct SGlobalParameterOwner : IMaterialParametersTyped<SGlobalParameterOwner> {
    using Base = IMaterialParametersTyped<SGlobalParameterOwner>;
    // The typed templates and dispatchers of the mixin, and the matrix accessors below (they must not hide each other).
    using Base::getParameter;
    using Base::getParameterCvt;
    using Base::setParameter;
    using Base::setParameterCvt;

    // Matrix accessors (G 0x5c091c / 0x5c09ec / 0x5bee04 / 0x5beed8; src/ok1b-GlobalMaterialParameters.cpp). The value slot of a matrix
    // entry holds a pointer to a heap matrix, null for the identity.
    bool getParameter(std::uint16_t id, core::CMatrix4<float>* out, int stride) const;
    bool getParameter(std::uint16_t id, std::uint32_t index, core::CMatrix4<float>& out) const;
    bool setParameter(std::uint16_t id, const core::CMatrix4<float>* src, int stride);
    bool setParameter(std::uint16_t id, std::uint32_t index, const core::CMatrix4<float>& src);
    // setParameterElement (G 0x5becc4 / 0x5beb84 / 0x5c0aa8): one component of an element.
    template <typename T>
    bool setParameterElement(std::uint16_t id, std::uint32_t index, std::uint32_t component, T value);

    // getThis (0x5ba0b8, const 0x5ba0bc: empty, leaves this) and getParameterBlock (0x5ba0c0, const 0x5ba0c8: the value buffer at +0x2c).
    SGlobalParameterOwner* getThis() { return this; }
    const SGlobalParameterOwner* getThis() const { return this; }
    std::uint8_t* getParameterBlock() { return m_store.values.data(); }
    const std::uint8_t* getParameterBlock() const { return m_store.values.data(); }

    // Defines entry id: value type code, element count and byte offset of element 0 in the value buffer.
    // Entries are never removed. Ids below id are created unset.
    void defineEntry(std::uint16_t id, std::uint8_t type, std::uint32_t count, std::uint32_t offset);

    // Non-owning view for the part 1a rows. The const getters never write through the value pointer.
    part1a::GlobalParamTable table() const;

    // Store for the part 1b rows. The value buffer is store().values. Change the entries only through defineEntry.
    part1b::GlobalParameterStore& store() { return m_store; }
    const part1b::GlobalParameterStore& store() const { return m_store; }

private:
    part1b::GlobalParameterStore m_store;
};

}  // namespace detail
}  // namespace glitch::video
