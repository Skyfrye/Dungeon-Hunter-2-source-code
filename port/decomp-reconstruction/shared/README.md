# Shared layouts (owned by the integrator; core domain maintained with glitch-core-io)

The one definition of each type that more than one glitch category needs. Every category's CMake target
adds `shared/include/`, so the headers here are included as `glitch-shared/<name>.hpp`.

- `include/glitch-shared/glitch_core.hpp`: the glitch::core value types (vector2d/3d/4d, position2d,
  dimension2d, rect, line2d/3d, aabbox3d, plane3d, triangle3d, quaternion, CMatrix4) and the
  glitch::video colour words (SColor, SColorf). The original offsets are in comments. Members are
  zero-initialised. The rect members are UpperLeftCorner and LowerRightCorner. SColor has one 32-bit word with
  index accessors (`component(i)`).
- `include/glitch-shared/sid_collection.hpp`: the one glitch::core::detail::SIDedCollection
  (`sid_layout::SIDedCollection<T, Props, Traits>`): insert, rename, remove, removeAll, with the SIdValue layout of
  each instance. glitch-core-io's `core/sided_collection.hpp` gives it the original instance names, and `core/sid_collection.hpp`
  forwards here. The older std::map implementation that sat in `core/sided_collection.hpp` is gone.
- `include/glitch-shared/kd_tree.hpp`, `shared_string_heap.hpp`: CKdTree and SharedStringHeap layouts. glitch-core-io's
  `core/kd_tree.hpp` and `core/shared_string_heap.hpp` forward here.
- `include/glitch-shared/gl_function_table.hpp`: glitch::video::deps::GLFunctionTable (GL ES 2.0 entries).
  glitch-video's deps/gl_function_table.hpp forwards here.
- `include/glitch-shared/reference_counted.hpp`: forwards to the canonical `glitch-core-io/core/reference_counted.hpp`
  (glitch::IReferenceCounted). It is kept so the existing includes of video and scene keep working.

Canonical in glitch-core-io rather than here (engine unification wave u1-core): glitch::IReferenceCounted,
boost::intrusive_ptr (the counting form), glitch::SEvent and IEventReceiver (`os/event_receiver.hpp`), glitch::ELOG_LEVEL, ILogger and
os::Printer (`os/logging.hpp`), the glitch::io interfaces (`io/interfaces.hpp`, `io/iattributes.hpp`) and
E_MEMORY_HINT (`core/memory_hint.hpp`). The map of every stand-in is `reports/decomp-reconstruction/unification/core.json`.

Not shared, and kept in their category on purpose:

- glitch-core-io's `deps/glitch_core_objects.hpp`: stand-ins for glitch-video and glitch-scene classes (ITexture, CLight, CMaterial, ...)
  that the io code names. They are replaced when the owning categories' real headers are wired in.
- core-platform's `deps/glitch_core.hpp`: its own copy (vector3d, rect as X1..Y2, dimension2d, SColor bytes, a 32-byte SEvent, E_MEMORY_HINT).
  The map names each canonical replacement.

## jni.h (Track B)

`include/jni.h` is the Android NDK r29 `sysroot/usr/include/jni.h` (AOSP, Apache License 2.0, copied
unchanged). The original game's Android entry points (`Java_com_gameloft_...`, `JNI_OnLoad`) and its JNI
glue use these types, so the host build includes it too.
