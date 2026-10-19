// Test for the rnd constructors, destructor, rule tag dispatch, NewRule and RandomGenerator::GetBlock of batch
// g1-game-app-rnd-8b06ae-5. It links with the batch's own source only. The source references functions and vtables that
// other batches define, so they are given here as link-only stubs: the key functions of the rule classes (defining them
// emits their vtables in this test), the Rule functions of batch -2, the ListElem destructor and the RandomGenerator
// constructor and destructor of batch -0, and the free functions the source uses. Returns non-zero on failure.
#include <cctype>
#include <cstdio>
#include <cstring>
#include <map>
#include <string>
#include <utility>

#include "core-platform/lc_api.hpp"
#include "dh2/global/ToLowerCase.hpp"
#include "dh2/lstr.hpp"
#include "dh2/rnd/BlockSearch.hpp"
#include "dh2/rnd/EndPath.hpp"
#include "dh2/rnd/ForceBlock.hpp"
#include "dh2/rnd/ListElem.hpp"
#include "dh2/rnd/Path.hpp"
#include "dh2/rnd/RandomGenerator.hpp"
#include "dh2/rnd/RootRule.hpp"
#include "dh2/rnd/Rule.hpp"
#include "tinyxml-and-c-libs/tixml_dh.hpp"

// ---- link-only stubs ----

int gAssertLevel = 0;

// The same ASCII case-insensitive compare as core-platform/src/lc_api.cpp.
int LC_API_STRCASECMP(const char* a, const char* b) {
    for (;; ++a, ++b) {
        const int ca = std::tolower(static_cast<unsigned char>(*a));
        const int cb = std::tolower(static_cast<unsigned char>(*b));
        if (ca != cb) {
            return ca - cb;
        }
        if (ca == 0) {
            return 0;
        }
    }
}

// The same ASCII lowercasing as game-app/src/g1-game-app-global-f216b6-2.cpp.
std::size_t ToLowerCase(char* str, int from, int to) {
    if (str == nullptr) {
        return 0;
    }
    const int length = static_cast<int>(std::strlen(str));
    if (to == -1 || length <= to) {
        to = length - 1;
    }
    for (int i = from; i <= to; ++i) {
        if (str[i] >= 'A' && str[i] <= 'Z') {
            str[i] = static_cast<char>(str[i] + 32);
        }
    }
    return static_cast<std::size_t>(length);
}

bool lstr::operator()(const char* lhs, const char* rhs) const { return std::strcmp(lhs, rhs) < 0; }

namespace rnd {

// Rule functions of batch -2 (Rule::Unload and the accessors). The Rule vtable, emitted by the Rule destructor in the
// batch source, refers to them.
bool Rule::LoadFromXml(TiXmlNode*) { return true; }
void Rule::Unload() {}
RootRule* Rule::GetRootRule() { return m_root; }

// Key functions and virtual overrides of the rule classes. Their real bodies are in other batches; the tests only need the
// vtables and the calls that the batch source makes.
Path::~Path() {}
Rule::Impl* Path::NewImpl(Rule::Impl*) const { return nullptr; }
bool Path::LoadFromXml(TiXmlNode*) { return true; }

EndPath::~EndPath() {}
Rule::Impl* EndPath::NewImpl(Rule::Impl*) const { return nullptr; }

ForceBlock::~ForceBlock() {}
Rule::Impl* ForceBlock::NewImpl(Rule::Impl*) const { return nullptr; }
bool ForceBlock::LoadFromXml(TiXmlNode*) { return true; }

RootRule::~RootRule() {}
Rule::Impl* RootRule::NewImpl(Rule::Impl*) const { return nullptr; }
bool RootRule::LoadFromXml(TiXmlNode*) { return true; }
void RootRule::Unload() {}

// Batch -0 functions the tests construct and destroy objects with.
ListElem::~ListElem() {}
RandomGenerator::RandomGenerator() : m_rootRule(*this) {}
RandomGenerator::~RandomGenerator() {}

// The dispatch helper that the batch source defines (not declared in a header).
Rule* NewRuleForTag(Rule& parent, const char* tag);

}  // namespace rnd

// ---- test helpers ----

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                                       \
    do {                                                                                   \
        if (!(cond)) {                                                                     \
            std::fprintf(stderr, "%s:%d: EXPECT failed: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                                                  \
        }                                                                                  \
    } while (0)

// ---- tests ----

// 0x48e080 / 0x48e128: ListElem constructors.
void TestListElemConstructors() {
    rnd::ListElem blank;
    EXPECT(blank.m_owner == nullptr);
    EXPECT(blank.m_chances == 100);
    EXPECT(blank.m_name.empty());
    EXPECT(blank.m_gameplay.empty());
    EXPECT(blank.m_visual.empty());

    int ownerStorage = 0;
    rnd::ListRule* owner = reinterpret_cast<rnd::ListRule*>(&ownerStorage);
    rnd::ListElem owned(owner);
    EXPECT(owned.m_owner == owner);
    EXPECT(owned.m_chances == 100);
    EXPECT(owned.m_name.empty());
}

// 0x48e0e0: BlockSearch copies its three strings.
void TestBlockSearchConstructor() {
    rnd::BlockSearch search("wall_a", "dungeon", "wall_a.mgx");
    EXPECT(search.m_name == "wall_a");
    EXPECT(search.m_gameplay == "dungeon");
    EXPECT(search.m_visual == "wall_a.mgx");
}

// 0x48dff8 / 0x48dc08: a RootRule is its own root, has no parent and keeps its generator.
void TestRootRuleFields() {
    rnd::RandomGenerator gen;
    rnd::RootRule& root = gen.m_rootRule;
    EXPECT(root.m_root == &root);
    EXPECT(root.m_parent == nullptr);
    EXPECT(root.m_generator == &gen);
    EXPECT(root.m_childCount == 0);
    EXPECT(root.m_list == nullptr);
    EXPECT(root.m_listIndex == -1);
    EXPECT(root.m_id == 0);
    EXPECT(root.unk_80 == 1);
    EXPECT(root.unk_84 == 1);
    EXPECT(root.m_exit.empty());
    EXPECT(root.m_blockNames.empty());
}

// 0x48ddf8 / 0x48dd18 / 0x48dd80: the Path, EndPath and ForceBlock constructors set their fields.
void TestRuleKindConstructors() {
    rnd::RandomGenerator gen;
    rnd::RootRule& root = gen.m_rootRule;

    rnd::Path path(root, &root);
    EXPECT(path.m_root == &root);
    EXPECT(path.m_parent == &root);
    EXPECT(path.m_childCount == 0);
    EXPECT(path.unk_88 == 4);
    EXPECT(path.unk_8c == true);
    EXPECT(path.unk_8d == false);

    rnd::EndPath end(root, &root);
    EXPECT(end.m_root == &root);
    EXPECT(end.m_parent == &root);

    rnd::ForceBlock force(root, &root);
    EXPECT(force.m_root == &root);
    EXPECT(force.m_parent == &root);
    EXPECT(force.unk_88 == 4);
}

// 0x48de44 dispatch: the tag names, compared without case, pick the rule kind. rootrule and unknown tags build nothing.
void TestNewRuleDispatch() {
    rnd::RandomGenerator gen;
    rnd::RootRule& root = gen.m_rootRule;

    rnd::Rule* pathRule = rnd::NewRuleForTag(root, "PATH");
    rnd::Path* path = dynamic_cast<rnd::Path*>(pathRule);
    EXPECT(path != nullptr);
    if (path != nullptr) {
        EXPECT(path->m_root == &root);
        EXPECT(path->m_parent == &root);
        EXPECT(path->unk_88 == 4);
    }
    delete pathRule;

    rnd::Rule* forceRule = rnd::NewRuleForTag(root, "forceBlock");
    rnd::ForceBlock* force = dynamic_cast<rnd::ForceBlock*>(forceRule);
    EXPECT(force != nullptr);
    if (force != nullptr) {
        EXPECT(force->m_parent == &root);
    }
    delete forceRule;

    rnd::Rule* endRule = rnd::NewRuleForTag(root, "EndPath");
    EXPECT(dynamic_cast<rnd::EndPath*>(endRule) != nullptr);
    delete endRule;

    EXPECT(rnd::NewRuleForTag(root, "rootrule") == nullptr);
    EXPECT(rnd::NewRuleForTag(root, "rootRule") == nullptr);
    EXPECT(rnd::NewRuleForTag(root, "block") == nullptr);
    EXPECT(rnd::NewRuleForTag(root, "") == nullptr);
}

// 0x48de44 NewRule: the tag is read from the element (TiXmlElement::Value), then dispatched with this rule as the parent.
void TestNewRuleReadsElementName() {
    rnd::RandomGenerator gen;
    rnd::RootRule& root = gen.m_rootRule;

    TiXmlElement pathElement(std::string("path"));
    rnd::Rule* child = root.NewRule(&pathElement);
    rnd::Path* path = dynamic_cast<rnd::Path*>(child);
    EXPECT(path != nullptr);
    if (path != nullptr) {
        EXPECT(path->m_parent == &root);
    }
    delete child;

    TiXmlElement unknownElement(std::string("unknown"));
    EXPECT(root.NewRule(&unknownElement) == nullptr);
}

// 0x48e184: GetBlock lowercases a copy of the name and finds the block by that key.
void TestGetBlockLowercasesName() {
    rnd::RandomGenerator gen;
    static int alphaStorage = 0;
    static int betaStorage = 0;
    rnd::Block* alpha = reinterpret_cast<rnd::Block*>(&alphaStorage);
    rnd::Block* beta = reinterpret_cast<rnd::Block*>(&betaStorage);
    gen.m_blocks.insert(std::make_pair("alpha", alpha));
    gen.m_blocks.insert(std::make_pair("beta", beta));

    EXPECT(gen.GetBlock("alpha") == alpha);
    EXPECT(gen.GetBlock("Alpha") == alpha);
    EXPECT(gen.GetBlock("BETA") == beta);
    EXPECT(gen.GetBlock("gamma") == nullptr);
    EXPECT(gen.GetBlock("alpha ") == nullptr);
    EXPECT(gen.GetBlock("") == nullptr);
}

}  // namespace

int main() {
    TestListElemConstructors();
    TestBlockSearchConstructor();
    TestRootRuleFields();
    TestRuleKindConstructors();
    TestNewRuleDispatch();
    TestNewRuleReadsElementName();
    TestGetBlockLowercasesName();
    if (g_failures != 0) {
        std::fprintf(stderr, "%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("g1-game-app-rnd-8b06ae-5 tests passed\n");
    return 0;
}
