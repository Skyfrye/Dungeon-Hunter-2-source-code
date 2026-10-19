// PropertyInstance: a Property bound to one object. ToString formats the property's value in that object and returns
// an empty string when either pointer is null. It has no vtable and no constructor in the binary.
// Original 32-bit size 8: the Property pointer at +0x00 and the object pointer at +0x04.
// Reconstructed from libDungeonHunter2.so pseudocode and assembly: PropertyInstance::ToString 0x510fe0 loads [r1] and [r1, #4],
// then calls the Property's slot 0 with the object as its argument.
#pragma once

#include <string>

class Property;

class PropertyInstance {
public:
    std::string ToString();                                             // 0x510fe0

    Property* m_property;                                               // +0x00 the property; its slot 0 (ToString) is called
    void* m_object;                                                     // +0x04 the owning object, passed to the property as its argument
};
