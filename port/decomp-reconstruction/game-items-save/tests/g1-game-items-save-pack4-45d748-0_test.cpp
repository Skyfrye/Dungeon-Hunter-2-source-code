// Test for batch g1-game-items-save-pack4-45d748-0.
//
// Linked with the batch source. Checks PropertyInstance::ToString (0x510fe0): the empty string when the object or the
// property pointer is null (and the property is not called), and otherwise the result of the property's ToString with
// the object passed through. Also checks that each of the six QE_* events can be created and deleted through a
// QuestEvent pointer, which runs the complete-object destructor chain and the compiler's deleting destructor. The five
// FillNetworkMsg overrides are partial (tMsgRaisedEventData has no definition) and are not called here.
//
// Stubs: Property's constructor (0x399a88) and QuestEvent's destructor (the base of every QE_* class) are not defined
// in the tree yet, so they are defined here as no-ops, as the other game-items-save tests do.

#include <cstdio>
#include <string>

#include "dh2/Property.hpp"
#include "dh2/PropertyInstance.hpp"
#include "dh2/QE_ClearEnemies.hpp"
#include "dh2/QE_ClearEnemyTemplate.hpp"
#include "dh2/QE_DestroyGameObject.hpp"
#include "dh2/QE_GatherLoot.hpp"
#include "dh2/QE_InteractWith.hpp"
#include "dh2/QE_KillEnemies.hpp"
#include "dh2/QuestEvent.hpp"

// Not defined in the tree: the constructor of Property and the destructor of QuestEvent.
Property::Property(const char*, void*, void*) {}
QuestEvent::~QuestEvent() {}

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                    \
    do {                                                                \
        if (!(cond)) {                                                  \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                               \
        }                                                               \
    } while (0)

// A Property whose slot 0 records its calls and returns a fixed text.
class FakeProperty : public Property {
public:
    FakeProperty() : Property("fake", nullptr, nullptr) {}

    std::string ToString(void* object) override {
        ++calls;
        lastObject = object;
        return text;
    }
    int FromString(void*, const char*) override { return 0; }
    bool IsDefaultValue(void*) override { return false; }
    void SetToDefaultValue(void*) override {}
    int SetDefaultValueFromString(const char*) override { return 0; }
    Property* Clone() override { return nullptr; }

    int calls = 0;
    void* lastObject = nullptr;
    std::string text = "fake value";
};

// 0x510fe0: both pointers set gives the property's text with the object passed through. A null object or a null
// property gives the empty string, and the property is not called in the object-null case.
void TestToString() {
    FakeProperty property;
    int objectTag = 0;

    PropertyInstance instance;
    instance.m_property = &property;
    instance.m_object = &objectTag;

    std::string text = instance.ToString();
    EXPECT(text == "fake value");
    EXPECT(property.calls == 1);
    EXPECT(property.lastObject == &objectTag);

    instance.m_object = nullptr;
    property.calls = 0;
    text = instance.ToString();
    EXPECT(text.empty());
    EXPECT(property.calls == 0);

    instance.m_object = &objectTag;
    instance.m_property = nullptr;
    text = instance.ToString();
    EXPECT(text.empty());

    instance.m_property = &property;
    property.text = "";
    text = instance.ToString();
    EXPECT(text.empty());
    EXPECT(property.calls == 1);
}

// Each QE_* event is created and deleted through a QuestEvent pointer. The destructors are empty apart from the
// compiler's base chain, so this checks that the vtables link and the deleting destructors run to completion.
void TestDeleteThroughBase() {
    QuestEvent* events[] = {
        new QE_ClearEnemies(),
        new QE_ClearEnemyTemplate(),
        new QE_DestroyGameObject(),
        new QE_GatherLoot(),
        new QE_InteractWith(),
        new QE_KillEnemies(),
    };
    for (QuestEvent* event : events) {
        EXPECT(event != nullptr);
        delete event;
    }
}

}  // namespace

int main() {
    TestToString();
    TestDeleteThroughBase();
    if (g_failures == 0) {
        std::printf("PASS g1-game-items-save-pack4-45d748-0\n");
    }
    return g_failures == 0 ? 0 : 1;
}
