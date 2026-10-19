// glitch::video::CPrimitiveStream is defined once, in glitch-video (primitive_stream.hpp). The io view that
// used to live here (the fields the io code touched, with its own names) is replaced by that header; the io
// code now uses its members (m_indexBuffer, m_offset, m_count, m_vertexStart, m_vertexEnd, m_indexType,
// m_primitiveType). This file stays so that tb/glitch_io.hpp keeps its include.
#pragma once

#include "glitch-video/primitive_stream.hpp"
