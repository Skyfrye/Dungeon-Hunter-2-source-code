// glitch::core::detail::SIDedCollection<T, ushort, false, Props, Traits>: the original instance spelling of the
// id-keyed collection behind the texture, shader, shader-code, material-renderer and shader-parameter
// managers. The one definition of the template is glitch-shared/sid_collection.hpp (sid_layout::SIDedCollection,
// engine unification wave u1-core); this header only gives it the original names:
//   glitch::core::detail::SIDedCollection<T, IdT, Flag, Props, Traits>
//   glitch::core::detail::sidedcollection::SValueTraits, SEmptyProperties
// The id type is unsigned short in every instance and the bool (Flag) is false in every instance; the shared
// template fixes the id at uint16_t and does not model the flag (its use is not recovered).
// glitch-video's deps/sid_collection.hpp defines the same aliases; it is replaced by this header.
//
// Layout of the original, 32-bit offsets (see the shared header for the full account):
//   +0x00..+0x10  name -> SIdValue map (the rb-tree header; its node count is at +0x10)
//   +0x18..+0x20  vector<SEntry> (begin, end, end of storage)
//   +0x24         next free id (uint16)
//   +0x26         number of live entries (uint16)
// Address map: each queued body of this template, with its instance in parentheses.
// The status of each row is in ledger.csv.
//   ::size(                            0x5b9d8c(SShaderParameterDef), 0x5d7d78(CMaterialRenderer), 0x5e53d4(IShader), 0x5e83a4(ITexture), 0x6e07c0(IShaderCode)
//   ::idBegin(                         0x5b9d94(SShaderParameterDef), 0x5d7d34(CMaterialRenderer), 0x5e5390(IShader), 0x5e8398(ITexture), 0x6e0888(IShaderCode)
//   ::idEnd(                           0x5b9d9c(SShaderParameterDef), 0x5d7d3c(CMaterialRenderer), 0x5e5398(IShader), 0x5e83a0(ITexture), 0x6e0890(IShaderCode)
//   ::get(unsigned short) const        0x5b9da0(SShaderParameterDef), 0x5d7d40(CMaterialRenderer), 0x5e539c(IShader), 0x5e83ac(ITexture), 0x6e0788(IShaderCode)
//   SIDedCollection()                  0x5b9e1c(SShaderParameterDef), 0x5b9ec8(SShaderParameterDef), 0x5d7db0(CMaterialRenderer), 0x5d7de4(CMaterialRenderer), 0x5e5404(IShader), 0x5e5438(IShader), 0x5e840c(ITexture), 0x5e8440(ITexture), 0x6e07d0(IShaderCode), 0x6e082c(IShaderCode)
//   ::getNextId(                       0x5b9efc(SShaderParameterDef), 0x5d7e18(CMaterialRenderer), 0x5e546c(IShader), 0x5e8474(ITexture), 0x6e07c8(IShaderCode)
//   ::getProperties(                   0x5b9f04(SShaderParameterDef), 0x5b9f1c(SShaderParameterDef), 0x5d7d9c(CMaterialRenderer), 0x5d7e20(CMaterialRenderer), 0x5e53dc(IShader), 0x5e53f0(IShader), 0x5e83e4(ITexture), 0x5e83f8(ITexture), 0x6e0860(IShaderCode), 0x6e0874(IShaderCode)
//   ::getMaxID(                        0x5b9f34(SShaderParameterDef), 0x5d7d80(CMaterialRenderer), 0x5e5474(IShader), 0x5e847c(ITexture), 0x6e0894(IShaderCode)
//   SIdValue::SIdValue(                0x5b9f64(SShaderParameterDef), 0x5b9f74(SShaderParameterDef), 0x5d7e34(CMaterialRenderer), 0x5d7e54(CMaterialRenderer), 0x5e5490(IShader), 0x5e54a0(IShader), 0x5e85b4(ITexture), 0x5e85f0(ITexture), 0x6e08b0(IShaderCode), 0x6e08b8(IShaderCode)
//   SName::SName(                      0x5b9f84(SShaderParameterDef), 0x5b9f94(SShaderParameterDef), 0x5d7e74(CMaterialRenderer), 0x5d7e84(CMaterialRenderer), 0x5e54b0(IShader), 0x5e54c0(IShader), 0x5e8498(ITexture), 0x5e84a8(ITexture), 0x6e08c0(IShaderCode), 0x6e08d0(IShaderCode)
//   SName::setManaged(                 0x5b9fa4(SShaderParameterDef), 0x5d7e94(CMaterialRenderer), 0x5e54d0(IShader), 0x5e84b8(ITexture), 0x6e08e0(IShaderCode)
//   SName::get(                        0x5b9fb0(SShaderParameterDef), 0x5d7ea0(CMaterialRenderer), 0x5e54dc(IShader), 0x5e84c4(ITexture), 0x6e08ec(IShaderCode)
//   SEntry::SEntry()                   0x5b9fb8(SShaderParameterDef), 0x5b9fe4(SShaderParameterDef), 0x5d7ea8(CMaterialRenderer), 0x5d7eb8(CMaterialRenderer), 0x5e54e4(IShader), 0x5e54f4(IShader), 0x5e84cc(ITexture), 0x5e84dc(ITexture), 0x6e08f4(IShaderCode), 0x6e0904(IShaderCode)
//   SEntry::SEntry(                    0x5ba010(SShaderParameterDef), 0x5ba064(SShaderParameterDef), 0x5d7ec8(CMaterialRenderer), 0x5d7ef4(CMaterialRenderer), 0x5e5504(IShader), 0x5e5530(IShader), 0x5e84ec(ITexture), 0x5e8518(ITexture), 0x6e0914(IShaderCode), 0x6e0940(IShaderCode)
//   SName::operator<                   0x5ba7b0(SShaderParameterDef), 0x5d84f0(CMaterialRenderer), 0x5e555c(IShader), 0x5e8544(ITexture), 0x6e096c(IShaderCode)
//   SName::~SName(                     0x5ba7c8(SShaderParameterDef), 0x5ba7f4(SShaderParameterDef), 0x5d8578(CMaterialRenderer), 0x5d85a4(CMaterialRenderer), 0x5e5574(IShader), 0x5e55a0(IShader), 0x5e855c(ITexture), 0x5e8588(ITexture), 0x6e0984(IShaderCode), 0x6e09b0(IShaderCode)
//   ::getId(                           0x5bb378(SShaderParameterDef), 0x5d85d0(IShader), 0x5d98c4(CMaterialRenderer), 0x5e8ed8(ITexture), 0x6e1ab4(IShaderCode)
//   ::~SIDedCollection(                0x5bb520(SShaderParameterDef), 0x5d9ab0(CMaterialRenderer), 0x5e5eac(IShader), 0x5e97a0(ITexture), 0x6e1718(IShaderCode)
//   SEntry::reset(                     0x5bc5c4(SShaderParameterDef), 0x5d8098(CMaterialRenderer), 0x5e60e4(IShader), 0x5e9e50(ITexture), 0x6e169c(IShaderCode)
//   SEntry::set(                       0x5bc620(SShaderParameterDef), 0x5d80d8(CMaterialRenderer), 0x5e60a4(IShader), 0x5e9e10(ITexture), 0x6e165c(IShaderCode)
//   ::removeAll(bool)                  0x5c1104(SShaderParameterDef), 0x5da080(CMaterialRenderer), 0x5e66d8(IShader), 0x5e9f78(ITexture), 0x6e1f50(IShaderCode)
//   ::removeAll()                      0x5c11cc(SShaderParameterDef), 0x5da148(CMaterialRenderer), 0x5e67a0(IShader), 0x5ea040(ITexture), 0x6e2018(IShaderCode)
//   ::removeUnused()                   0x5c11d4(SShaderParameterDef), 0x5da150(CMaterialRenderer), 0x5e67a8(IShader), 0x5ea048(ITexture), 0x6e2020(IShaderCode)
//   ::remove(unsigned short)           0x5c1264(SShaderParameterDef), 0x5da158(CMaterialRenderer), 0x5e67bc(IShader), 0x5ea220(ITexture), 0x6e2054(IShaderCode)
//   ::remove(unsigned short, bool)     0x5d9f74(CMaterialRenderer), 0x5e65dc(IShader), 0x5e9e7c(ITexture), 0x6e1e54(IShaderCode)
//
#pragma once

#include <cstdint>

#include "glitch-shared/sid_collection.hpp"

namespace glitch::core::detail {
// glitch::core::detail::SIDedCollection<T, IdT, Flag, Props, Traits> and sidedcollection::SValueTraits / SEmptyProperties are the
// shared header's own names now (no alias layer).
}  // namespace glitch::core::detail
