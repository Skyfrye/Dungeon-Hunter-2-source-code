// Host check for detail::SNewBufferAllocator::allocate and CTextureManager::markTextureAsUnloadable.
#include <cstdio>

#include "glitch-video/buffer.hpp"
#include "glitch-video/s_new_buffer_allocator.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/texture_manager.hpp"
#include "video_test_types.hpp"

using namespace glitch::video;

int main() {
    int failures = 0;

    // allocate: the buffer keeps its identity, takes the new size and owns the new data.
    // The buffer is on the stack with count 1; the allocator takes an extra use so its release never frees it.
    test::TestBuffer buffer;
    detail::SNewBufferAllocator<IVideoDriver> allocator{boost::intrusive_ptr<IBuffer>(&buffer, true)};
    auto result = allocator.allocate(16);
    if (result.get() != &buffer) { std::puts("allocate: wrong buffer"); ++failures; }
    if (buffer.m_size != 16 || buffer.m_data == nullptr) { std::puts("allocate: reset not applied"); ++failures; }
    if ((buffer.m_flags12 & IBuffer::kFlagOwnsData) == 0) { std::puts("allocate: data not owned"); ++failures; }
    if (buffer.referenceCounter != 3) { std::puts("allocate: refcount not bumped"); ++failures; }
    // The buffer owns the allocated bytes and frees them in its destructor.

    // markTextureAsUnloadable: appended once, a second call leaves the list alone.
    CTextureManager manager;
    test::TestTexture texture;
    boost::intrusive_ptr<ITexture> handle(&texture, true);
    manager.markTextureAsUnloadable(handle);
    manager.markTextureAsUnloadable(handle);
    if (manager.m_textures.size() != 1 || manager.m_textures[0] != &texture) {
        std::puts("markTextureAsUnloadable: list not updated once");
        ++failures;
    }

    std::printf("%s\n", failures == 0 ? "ok" : "FAILED");
    return failures == 0 ? 0 : 1;
}
