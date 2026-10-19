// boost::intrusive_ptr instantiations for the video and scene types used by the io code:
// assignment from a raw pointer, copy, and release through drop() at the last use.
#include <cstdio>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-core-io/deps/glitch_core.hpp"

#include "io_video_fakes.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch;

int main() {
    {
        // IShader is born with count 0 (canonical constructor): the (ptr, true) form takes the first use.
        video::IShader* shader = new io_test_fakes::FakeShader();
        {
            boost::intrusive_ptr<video::IShader> a(shader, true);
            boost::intrusive_ptr<video::IShader> b = a;  // copy adds a use
            CHECK(shader->referenceCounter == 2);
        }
        // Both copies are gone; the object was deleted by drop() when its count reached zero.
    }
    {
        // Assignment from a raw pointer (CImage) takes a use and drops the old object.
        video::CImage* first = new video::CImage(1, 1);
        video::CImage* second = new video::CImage(1, 1);
        boost::intrusive_ptr<video::CImage> p;
        p = first;
        CHECK(first->referenceCounter == 2);
        p = second;
        CHECK(first->referenceCounter == 1);
        CHECK(second->referenceCounter == 2);
        first->drop();
        second->referenceCounter = 1;  // leave the object owned by p only
    }
    {
        // IBuffer (canonical: born with count 0) and CMeshBuffer keep their count at +0x04 like the other driver objects.
        video::IBuffer* buffer = new io_test_fakes::FakeBuffer(0, nullptr, false);
        scene::CMeshBuffer* mesh = new scene::CMeshBuffer();
        boost::intrusive_ptr<video::IBuffer> b(buffer, true);
        boost::intrusive_ptr<scene::CMeshBuffer> m(mesh, true);
        CHECK(buffer->referenceCounter == 1 && mesh->referenceCounter == 1);
    }
    std::printf("%s\n", failures ? "intrusive_ptr_instances: FAILED" : "intrusive_ptr_instances: ok");
    return failures != 0;
}
