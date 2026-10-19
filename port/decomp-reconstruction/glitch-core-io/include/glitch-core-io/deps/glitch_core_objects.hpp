// Forwarding header for the glitch::video and glitch::scene types the io code uses. The stand-ins that
// lived here (IVideoDriver, ITexture, CLight, CVideoModeList, CMaterial, CMaterialRenderer, SVertexStream,
// CVertexStreams, IShader, IShaderCode, IBuffer, CImage, scene::CMeshBuffer) are replaced by the canonical
// headers named in the unification maps (TRACK-B wave U2, video.json and scene.json). Each class has one
// definition, owned by glitch-video or glitch-scene-collada-gui. Existing includes of this header keep working.
#pragma once

// glitch::IReferenceCounted and glitch::IEventReceiver / glitch::SEvent: one definition each.
#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-core-io/os/event_receiver.hpp"

// glitch::video (glitch-video).
#include "glitch-video/buffer.hpp"
#include "glitch-video/image.hpp"
#include "glitch-video/light.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/shader_attributes.hpp"
#include "glitch-video/shader_code.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/vertex_streams.hpp"
#include "glitch-video/video_driver.hpp"
#include "glitch-video/video_mode_list.hpp"

// glitch::scene::CMeshBuffer (glitch-scene-collada-gui).
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
