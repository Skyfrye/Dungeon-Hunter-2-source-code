// Test for batch g1-game-ui-DialogMsg-3e9364-0.
//
// Covers the copy constructor, operator=, the two string constructors, the two id constructors and SetActorName, including
// the actor name lookup through an Arrays::DialogActors table. The destructor has no body of its own to test.
//
// The game code the batch calls is defined elsewhere in the full build: ParsePlayerName (core-platform, partial there),
// ApplicationGetStringManager (the integrator) and StringManager::getString (game-app). This test defines small stand-ins
// for them: ParsePlayerName wraps its input in brackets so the call is visible, and getString looks an id up in a table.
// The DialogActors table is built as pydata builds it: a typed array of Structs::DialogActor records.

#include <cstdint>
#include <cstdio>
#include <map>
#include <string>
#include <vector>

#include "core-platform/w7_global_rem.hpp"
#include "dh2/DialogMsg.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/global/item_instance.hpp"
#include "pydata-accessors/w7_arrays27.hpp"
#include "pydata-accessors/w7_structs_5.hpp"

// Out-of-line members of the pydata record (the real bodies are in pydata-accessors). They are empty: the test builds
// the records and reads m_w4 only, and never finalizes or reads one from a stream.
Structs::DialogActor::~DialogActor() {}
void Structs::DialogActor::finalize() {}
void Structs::DialogActor::read(IStreamBase*) {}

// Arrays::DialogActors::members is defined by pydata-accessors (w7_arrays27.cpp), which this test does not link.
std::uint8_t* Arrays::DialogActors::members = nullptr;

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                    \
    do {                                                                \
        if (!(cond)) {                                                  \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                               \
        }                                                               \
    } while (0)

// String table behind the getString stand-in.
std::map<int, std::string> g_strings;

// Raw storage for the StringManager the stand-in returns. Its constructor is not defined here, and getString reads
// only the table above, so the object is never constructed.
alignas(StringManager) unsigned char g_fakeStringManager[sizeof(StringManager)];

// The title of a message, read as the std::string base.
const std::string& Title(const DialogMsg& m) { return m; }

}  // namespace

// Stand-ins for the game code this batch calls. They are not the real bodies.
std::string ParsePlayerName(const std::string& name) { return "<" + name + ">"; }

const char* StringManager::getString(int id) const {
    auto it = g_strings.find(id);
    return it == g_strings.end() ? "MISSING" : it->second.c_str();
}

StringManager* ApplicationGetStringManager() {
    return reinterpret_cast<StringManager*>(g_fakeStringManager);
}

int main() {
    // Three actor rows. Row 0 is string id 100 ("Guard"), row 1 is id 101 ("Hero"), row 2 is id 102 ("Merchant").
    std::vector<Structs::DialogActor> actors(3);
    actors[0].Name = 100;
    actors[1].Name = 101;
    actors[2].Name = 102;
    Arrays::DialogActors::members = reinterpret_cast<std::uint8_t*>(actors.data());
    g_strings = {{100, "Guard"}, {101, "Hero"}, {102, "Merchant"}, {1, "Quest Title"}, {2, "Quest Text"}};

    // String constructor, no actor: title and text are parsed, style is kept, the actor name stays empty.
    {
        DialogMsg m(std::string("Title"), std::string("Body text"), 3, -1);
        EXPECT(Title(m) == "<Title>");
        EXPECT(m.m_text == "<Body text>");
        EXPECT(m.m_style == 3);
        EXPECT(m.m_actorName.empty());
    }

    // String constructor with actor row 1: the actor name is the parsed string of id 101.
    {
        DialogMsg m(std::string("Hello"), std::string("Hi there"), 1, 1);
        EXPECT(Title(m) == "<Hello>");
        EXPECT(m.m_text == "<Hi there>");
        EXPECT(m.m_style == 1);
        EXPECT(m.m_actorName == "<Hero>");
    }

    // Id constructor: title id 1, text id 2 (parsed from the table), style 5, actor row 0 ("Guard").
    {
        DialogMsg m(1, 2, 5, 0);
        EXPECT(Title(m) == "<Quest Title>");
        EXPECT(m.m_text == "<Quest Text>");
        EXPECT(m.m_style == 5);
        EXPECT(m.m_actorName == "<Guard>");
    }

    // Id constructor with no actor: the name stays empty.
    {
        DialogMsg m(1, 2, 0, -1);
        EXPECT(Title(m) == "<Quest Title>");
        EXPECT(m.m_actorName.empty());
    }

    // SetActorName: a row sets the name; a negative index leaves the existing name alone.
    {
        DialogMsg m(std::string("a"), std::string("b"), 0, -1);
        EXPECT(m.m_actorName.empty());
        m.SetActorName(2);
        EXPECT(m.m_actorName == "<Merchant>");
        m.SetActorName(-1);
        EXPECT(m.m_actorName == "<Merchant>");
        m.SetActorName(0);
        EXPECT(m.m_actorName == "<Guard>");
    }

    // Copy constructor copies the title, text, style and actor name, and leaves the source as it was.
    {
        DialogMsg src(std::string("T"), std::string("X"), 7, 0);
        DialogMsg copy(src);
        EXPECT(Title(copy) == "<T>");
        EXPECT(copy.m_text == "<X>");
        EXPECT(copy.m_style == 7);
        EXPECT(copy.m_actorName == "<Guard>");
        EXPECT(Title(src) == "<T>");
        EXPECT(src.m_actorName == "<Guard>");
    }

    // operator= copies every field and returns *this. Self-assignment leaves the object unchanged.
    {
        DialogMsg src(std::string("T"), std::string("X"), 7, 2);
        DialogMsg dst(std::string("D"), std::string("E"), 1, -1);
        DialogMsg* ret = &(dst = src);
        EXPECT(ret == &dst);
        EXPECT(Title(dst) == "<T>");
        EXPECT(dst.m_text == "<X>");
        EXPECT(dst.m_style == 7);
        EXPECT(dst.m_actorName == "<Merchant>");

        dst = dst;
        EXPECT(Title(dst) == "<T>");
        EXPECT(dst.m_text == "<X>");
        EXPECT(dst.m_style == 7);
        EXPECT(dst.m_actorName == "<Merchant>");
    }

    if (g_failures == 0) {
        std::printf("PASS g1-game-ui-DialogMsg-3e9364-0\n");
        return 0;
    }
    std::printf("%d failure(s)\n", g_failures);
    return 1;
}
