// Batch r1-glitch-core-io-pack2-7c4aea-0: CXMLWriter::writeText escaping and the empty-element close
// (0x576bb8, 0x576758), CMatrix4Base<float>::setbyproduct short-cuts (0x5822c8), CKdTree
// removeElemInternal return value and count (0x5a44b4), and the intrusive_ptr<CVertexStreams> release (0x5a10fc).
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <string>
#include <vector>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "io_stub_files.hpp"
#include "glitch-core-io/core/kd_tree_ops.hpp"
#include "glitch-core-io/core/matrix4_base.hpp"
#include "glitch-core-io/deps/glitch_core_objects.hpp"
#include "glitch-core-io/io/xml_writer.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using glitch::io::CXMLWriter;
using glitch::io::IWriteFile;

// Collects every written byte.
class MemoryWriteFile : public glitch::io::testing::StubWriteFile {
public:
    std::size_t write(const void* data, unsigned int count) override {
        bytes.append(static_cast<const char*>(data), count);
        return count;
    }
    std::string bytes;
};

// Expected encoding: each code unit as a 4-byte little-endian word.
static std::string enc(const wchar_t* text) {
    std::string out;
    for (const wchar_t* p = text; *p; ++p) {
        std::uint32_t w = static_cast<std::uint32_t>(*p);
        out.append(reinterpret_cast<const char*>(&w), 4);
    }
    return out;
}

static void checkWriter() {
    MemoryWriteFile* mem = new MemoryWriteFile;
    {
        CXMLWriter w(mem);

        // Escape table: '&', '<', '>' and '"' are replaced; the apostrophe is not in the table.
        w.writeText(L"a&b<c>d\"e'f");
        CHECK(mem->bytes == enc(L"a&amp;b&lt;c&gt;d&quot;e'f"));
        CHECK(w.flag);

        // Empty text writes nothing and still sets the flag.
        mem->bytes.clear();
        w.flag = false;
        w.writeText(L"");
        CHECK(mem->bytes.empty());
        CHECK(w.flag);

        // Attribute values go through writeText, so they are escaped too.
        mem->bytes.clear();
        w.writeAttribute(L"k", L"<v>");
        CHECK(mem->bytes == enc(L" ") + enc(L"k") + enc(L"=\"") + enc(L"&lt;v&gt;") + enc(L"\""));

        // Empty element: " />" closes it, with no newline; the indent level is not changed.
        mem->bytes.clear();
        w.indent = 0;
        w.flag = true;
        glitch::core::svector<glitch::core::stringw> names{L"k"};
        glitch::core::svector<glitch::core::stringw> values{L"v"};
        w.writeElement(L"e", true, names, values);
        CHECK(mem->bytes == enc(L"<e k=\"v\" />"));
        CHECK(w.indent == 0);
        CHECK(!w.flag);

        // Element with children: ">" then one more indent level.
        mem->bytes.clear();
        glitch::core::svector<glitch::core::stringw> none;
        w.writeElement(L"p", false, none, none);
        CHECK(mem->bytes == enc(L"<p>"));
        CHECK(w.indent == 1);
        CHECK(!w.flag);
    }
    mem->drop();
}

static void checkSetByProduct() {
    using glitch::core::detail::setbyproduct;
    using Matrix = glitch::core::CMatrix4<float>;

    Matrix identity{};
    identity.flag = true;
    Matrix plain{};
    plain.M[0] = 5.f;
    plain.M[5] = 1.f;
    plain.M[10] = 1.f;
    plain.M[15] = 1.f;
    plain.flag = false;

    // Identity on the left: the result is a copy of the right side, flag included.
    Matrix self{};
    setbyproduct(self, identity, plain);
    CHECK(self.M[0] == 5.f);
    CHECK(!self.flag);

    // Identity on the right: the result is a copy of the left side.
    Matrix left{};
    left.M[0] = 2.f;
    left.M[5] = 2.f;
    left.M[10] = 2.f;
    left.M[15] = 2.f;
    left.flag = false;
    setbyproduct(self, left, identity);
    CHECK(self.M[0] == 2.f);
    CHECK(!self.flag);

    // Neither side is the identity: the full product (diagonal 2 times diagonal 3), flag cleared.
    Matrix right{};
    right.M[0] = 3.f;
    right.M[5] = 3.f;
    right.M[10] = 3.f;
    right.M[15] = 3.f;
    right.flag = false;
    setbyproduct(self, left, right);
    CHECK(self.M[0] == 6.f);
    CHECK(self.M[5] == 6.f);
    CHECK(self.M[15] == 6.f);
    CHECK(self.M[1] == 0.f);
    CHECK(!self.flag);

    // The destination may alias an operand.
    Matrix alias = left;
    setbyproduct(alias, alias, right);
    CHECK(alias.M[0] == 6.f);
    CHECK(!alias.flag);
}

static void checkKdRemove() {
    using glitch::KdElement;
    using glitch::core::aabbox3d;
    using glitch::core::detail::KdTree;
    using glitch::core::detail::removeElemInternal;

    KdTree tree;
    tree.root.axis = 0;
    tree.root.plane = 0.0f;
    const aabbox3d<float> box{{4.f, -1.f, -1.f}, {6.f, 1.f, 1.f}};
    const KdElement a{2u, box};
    const KdElement b{3u, box};
    tree.root.elements = {a, a, b};  // a leaf: no children, so the root is the node that is searched
    tree.elementCount = 3;

    // Two elements equal to a are erased; one element is left, so the return value is -1 and the count drops by 2.
    const int remaining = removeElemInternal(tree, a, &tree.root);
    CHECK(remaining == -1);
    CHECK(tree.root.elements.size() == 1u);
    CHECK(tree.root.elements.front().first == 3u);
    CHECK(tree.elementCount == 1);

    // Nothing equal to a is left: the node is unchanged and the return value is minus its size.
    const int unchanged = removeElemInternal(tree, a, &tree.root);
    CHECK(unchanged == -1);
    CHECK(tree.root.elements.size() == 1u);
    CHECK(tree.elementCount == 1);
}

static void checkVertexStreamsRelease() {
    glitch::video::CVertexStreams* raw = new glitch::video::CVertexStreams;
    {
        boost::intrusive_ptr<glitch::video::CVertexStreams> first(raw, true);  // takes the first use (born with count 0)
        {
            boost::intrusive_ptr<glitch::video::CVertexStreams> second = first;  // adds a use
            CHECK(raw->m_refCount == 2);
        }
        CHECK(raw->m_refCount == 1);
    }
    // The last release deleted raw; it is not read again.
}

int main() {
    checkWriter();
    checkSetByProduct();
    checkKdRemove();
    checkVertexStreamsRelease();

    if (failures == 0) std::printf("r1-glitch-core-io-pack2-7c4aea-0_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
