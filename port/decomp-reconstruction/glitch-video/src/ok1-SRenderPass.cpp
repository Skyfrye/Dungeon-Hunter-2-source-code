// Owner K1: SRenderPass::serializeAttributes (0x5e1064) / deserializeAttributes (0x5e1670).
#include <cstring>

#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/shader_attributes.hpp"
#include "glitch-video/tb/renderpass_srenderstate.hpp"

namespace glitch::video {

static_assert(sizeof(detail::renderpass::SRenderState) == sizeof(SRenderPass::stateWords),
              "the first 32 bytes of a pass are one render-state block");

// 0x5e1064 _ZNK6glitch5video11SRenderPass19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// With bit 1 of the options set the pass's shader is written in a "Shader" group (its own attributes, IShader vtable +0x0c); the
// render state block follows in a "Render States" group.
void SRenderPass::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    if (options != nullptr && (options->flags & 2) != 0) {
        attributes->push("Shader");  // IAttributes vtable +0x30
        static_cast<const IShader*>(shader)->serializeAttributes(attributes);
        attributes->pop();  // +0x3c
    }
    attributes->push("Render States");
    detail::renderpass::SRenderState state;
    std::memcpy(&state, stateWords, sizeof stateWords);
    state.serializeAttributes(attributes);
    attributes->pop();
}

// 0x5e1670 _ZN6glitch5video11SRenderPass21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// The render state block is read from the "Render States" group into a default block, which replaces the pass's block; the pass
// is marked changed (+0x30). The shader is not read back.
void SRenderPass::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* /*options*/) {
    attributes->push("Render States");
    detail::renderpass::SRenderState state;
    state.deserializeAttributes(attributes);
    std::memcpy(stateWords, &state, sizeof stateWords);
    flag30 = 1;
    attributes->pop();
}

}  // namespace glitch::video
