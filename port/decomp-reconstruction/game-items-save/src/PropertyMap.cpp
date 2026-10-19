// Batch g1-game-items-save-PropertyMap-ab4ea6-0: the typed AddProperty templates, GetThisClassName, GetPropertyMap,
// DestroyPropertyMaps, the property accessors (GetProp, GetProperty, SetProperty, SetTemplateParameter),
// LoadDefaultProperties, DumpProperties and SavePropertiesToXML of PropertyMap. Declarations and layout come from
// dh2/PropertyMap.hpp. The other half of the class (AddProperty(const char*, Property*), CloneProperties,
// InitProperties, SetTemplate, LoadTemplate) is in the second PropertyMap batch and uses the s_classMap defined here.
// LoadOverridesFromXML (0x513a00) is in src/r2a-game-items-save-pack0-ab4ea6-0.cpp.
//
// PARTIAL: SavePropertiesToXML. The element is created as in the original. tixml_dh.hpp declares neither
// TiXmlElement::SetAttribute nor TiXmlNode::LinkEndChild, so the attributes are computed but not stored and the
// element is not linked into the parent (see the function).
//
// Calls into batches that are not in this file (the link needs them):
//   PropertyMap::AddProperty(const char*, Property*)                     0x513ce4, second PropertyMap batch
//   SimpleTypeProperty<T>::SimpleTypeProperty(void*, const char*, T*, T) SimpleTypeProperty batch
//   PropertyInstance::ToString()                                         0x510fe0, PropertyInstance batch

#include "dh2/PropertyMap.hpp"

#include <cstdio>
#include <cstdlib>
#include <map>
#include <memory>
#include <new>
#include <string>

#include "core-platform/deps/game_types.hpp"  // Point3D<float>, the value type of one AddProperty instance
#include "dh2/Point2D.hpp"
#include "core-platform/memory.hpp"           // CustomAlloc, CustomFree, gAssertLevel
#include "dh2/Property.hpp"
#include "dh2/PropertyInstance.hpp"
#include "dh2/SimpleTypeProperty.hpp"
#include "tinyxml-and-c-libs/tixml_dh.hpp"    // TiXmlElement(name): the element that SavePropertiesToXML creates
#include "tinyxml-and-c-libs/tixml_dh.hpp"
#include "core-platform/memory.hpp"

// The property tables, the s_classMap that the binary keeps as its global. Defined here because GetPropertyMap and
// DestroyPropertyMaps are in this file.
std::map<std::string, std::map<std::string, std::map<std::string, Property*>>> PropertyMap::s_classMap;

// The typed registration. Each instance below is one of the binary's functions. The GCC clones of the int and bool
// instances (0x39bf10, 0x39c83c, 0x3a92b4, 0x3e7ffc) are the same template with the default folded to a constant, so
// the template instances serve them.

// 0x33e404 _ZN11PropertyMap11AddPropertyISsEEvPKcRT_S3_ (std::string). The same body serves 0x33e4ac (bool),
// 0x389894 (Point3D<float>), 0x39503c (float) and 0x398878 (int). SimpleTypeProperty<T> records the member's offset
// from this PropertyMap and keeps the default value; the property is then registered through AddProperty(name, Property*).
template <typename T>
void PropertyMap::AddProperty(const char* name, T& member, T defaultValue) {
    Property* property = new (CustomAlloc(static_cast<unsigned int>(sizeof(SimpleTypeProperty<T>))))
        SimpleTypeProperty<T>(this, name, &member, defaultValue);
    AddProperty(name, property);
}

// 0x33ef7c _ZN11PropertyMap11AddPropertyISsEEvPKcRT_ (std::string). The default is the empty string. The original first
// reserves a 16-byte block for it, which only sets the capacity. Only the std::string instance is used in the binary.
template <typename T>
void PropertyMap::AddProperty(const char* name, T& member) {
    AddProperty(name, member, T());
}

template void PropertyMap::AddProperty<std::string>(const char* name, std::string& member, std::string defaultValue);  // 0x33e404
template void PropertyMap::AddProperty<bool>(const char* name, bool& member, bool defaultValue);                       // 0x33e4ac
template void PropertyMap::AddProperty<Point3D<float>>(const char* name, Point3D<float>& member,
                                                       Point3D<float> defaultValue);                                  // 0x389894
template void PropertyMap::AddProperty<Point2D<int>>(const char* name, Point2D<int>& member, Point2D<int> defaultValue);   // Character::DeclareProperties builds this by hand ("spawn_delay")
template void PropertyMap::AddProperty<float>(const char* name, float& member, float defaultValue);                    // 0x39503c
template void PropertyMap::AddProperty<int>(const char* name, int& member, int defaultValue);                          // 0x398878
template void PropertyMap::AddProperty<std::string>(const char* name, std::string& member);                            // 0x33ef7c

// 0x510b4c _ZN11PropertyMap16GetThisClassNameEv
const char* PropertyMap::GetThisClassName() {
    const char* className = m_className;
    if (className == nullptr) {
        // ASSERT(m_className != 0) at PropertyMap.cpp:146. gAssertLevel 2 stops the program (the original stores to
        // address 0 to force a crash), 1 prints the message and returns the null name, 0 stays silent.
        if (gAssertLevel == 2) {
            std::abort();
        } else if (gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "m_className != 0",
                         "..\\..\\project_vs2005\\Game/..\\..\\sources\\Data\\PropertyMap\\PropertyMap.cpp", 146);
        }
    }
    return className;
}

// 0x510dec _ZN11PropertyMap19DestroyPropertyMapsEv
// Walks every class, template and property entry in order. Each non-null Property gets the Property destructor
// (vptr back to Property's and its name destroyed) and a CustomFree. The typed default of a SimpleTypeProperty<T> is not
// destroyed, as in the original (a std::string default keeps its buffer). Then the class map is erased.
void PropertyMap::DestroyPropertyMaps() {
    for (auto& classEntry : s_classMap) {
        for (auto& templateEntry : classEntry.second) {
            for (auto& propertyEntry : templateEntry.second) {
                Property* property = propertyEntry.second;
                if (property != nullptr) {
                    property->~Property();
                    CustomFree(property);
                }
            }
        }
    }
    s_classMap.clear();
}

// 0x5134c0 _ZN11PropertyMap14GetPropertyMapEv
// s_classMap[class name][template name]. A missing entry is created, as the original's operator[] does.
std::map<std::string, Property*>& PropertyMap::GetPropertyMap() {
    return s_classMap[GetThisClassName()][m_template];
}

// 0x5134f0 _ZN11PropertyMap19SavePropertiesToXMLEP12TiXmlElementPKc
// Checked against the asm and Hex-Rays (0x5134f0): a null element returns at once. Otherwise a child element is built with
// TiXmlElement(const char*), named name ("GameObject" when name is null). The loop walks GetPropertyMap() in key order; for each
// non-null Property it takes the name from the Property's own string (data pointer at Property +0x1c, the c_str of m_name),
// computes PropertyInstance{property, this}.ToString() and calls TiXmlElement::SetAttribute(const std::string&, const
// std::string&) (0x516400). Last, element->LinkEndChild(child) (TiXmlNode::LinkEndChild, 0x515964). SetAttribute and LinkEndChild
// are unmodified upstream TinyXML rows (declared in tixml_dh.hpp; their sources are not in the tree yet).
void PropertyMap::SavePropertiesToXML(TiXmlElement* element, const char* name) {
    if (element == nullptr) {
        return;
    }
    const std::string elementName = name != nullptr ? name : "GameObject";
    TiXmlElement* child = new TiXmlElement(elementName.c_str());
    for (const auto& entry : GetPropertyMap()) {
        Property* property = entry.second;
        if (property != nullptr) {
            const std::string attributeName = property->m_name;
            PropertyInstance instance{property, this};
            const std::string value = instance.ToString();
            child->SetAttribute(attributeName, value);
        }
    }
    element->LinkEndChild(child);
}

// 0x513674 _ZN11PropertyMap14DumpPropertiesEv
// The binary walks the property map in order and does nothing for each entry: the loop has no call and no store (asm
// checked). Only the GetPropertyMap call remains, and it creates a missing entry.
void PropertyMap::DumpProperties() {
    GetPropertyMap();
}

// 0x5136ec _ZN11PropertyMap21LoadDefaultPropertiesEv
// Resets every property of this object to its default. The template name is copied before the loop and written back
// after it, as the original does (its v8 copy and _M_assign at the end).
void PropertyMap::LoadDefaultProperties() {
    std::map<std::string, Property*>& properties = GetPropertyMap();
    const std::string savedTemplate = m_template;
    for (const auto& entry : properties) {
        Property* property = entry.second;
        if (property != nullptr) {  // the original also tests this, which is never null inside a member call
            property->SetToDefaultValue(this);
        }
    }
    m_template.assign(savedTemplate);
}

// 0x513808 _ZN11PropertyMap7GetPropEPKc
// operator[] as in the original: a missing name inserts a null entry and the result is that null.
Property* PropertyMap::GetProp(const char* name) {
    return GetPropertyMap()[name];
}

// 0x513830 _ZN11PropertyMap20SetTemplateParameterEPKcS1_
// Sets the default of the named property from text. Returns the SetDefaultValueFromString result, or 0 when the property
// does not exist (the original returns the null pointer). The binary's return is an int, so the header is changed from
// void to int.
int PropertyMap::SetTemplateParameter(const char* name, const char* value) {
    Property* property = GetProp(name);
    if (property != nullptr) {
        return property->SetDefaultValueFromString(value);
    }
    return 0;
}

// 0x513858 _ZN11PropertyMap11GetPropertyEPKc
// Returns {GetProp(name), this} through the hidden return pointer (asm: STM R4, {R0, R5}). The header is changed from
// Property* to PropertyInstance.
PropertyInstance PropertyMap::GetProperty(const char* name) {
    return PropertyInstance{GetProp(name), this};
}

// 0x51387c _ZN11PropertyMap11SetPropertyEPKcS1_
// A non-null value goes to FromString (slot 1) and a null value resets the property to its default (slot 3). Both need a
// property and an object. The original's return value (the slot result, or the hidden pointer) is dropped: the header
// declares void and no caller reads it.
void PropertyMap::SetProperty(const char* name, const char* value) {
    const PropertyInstance instance = GetProperty(name);
    if (instance.m_object == nullptr || instance.m_property == nullptr) {
        return;
    }
    if (value != nullptr) {
        instance.m_property->FromString(instance.m_object, value);
    } else {
        instance.m_property->SetToDefaultValue(instance.m_object);
    }
}

// ---- merged from r2a-game-items-save-pack0-ab4ea6-0.cpp ----
// Batch r2a-game-items-save-pack0-ab4ea6-0 (redo): PropertyMap::LoadOverridesFromXML (0x513a00). Declaration and layout
// come from dh2/PropertyMap.hpp. The rest of PropertyMap is in the g1-game-items-save-PropertyMap-ab4ea6-0 and -1 files.
//
// Checked against the asm (0x513a00); the body is the original loop.



// 0x513a00 _ZN11PropertyMap20LoadOverridesFromXMLEP12TiXmlElement
// A null element returns at once. Otherwise the loop walks GetPropertyMap() in key order, passes each key's data pointer (node +0x24,
// the c_str of the key) to TiXmlElement::Attribute(const char*) const (0x514c70, unmodified upstream TinyXML) and then passes the
// name and the attribute value to PropertyMap::SetProperty (0x51387c). A null value there resets the property to its default.
void PropertyMap::LoadOverridesFromXML(TiXmlElement* element) {
    if (element == nullptr) {
        return;
    }
    for (const auto& entry : GetPropertyMap()) {
        const char* name = entry.first.c_str();  // the key's data pointer, node +0x24 in the original
        const char* value = element->Attribute(name);
        SetProperty(name, value);
    }
}

// ---- merged from g1-game-items-save-PropertyMap-ab4ea6-1.cpp ----
// Batch g1-game-items-save-PropertyMap-ab4ea6-1: CloneProperties, AddProperty(const char*, Property*),
// InitProperties, SetTemplate and LoadTemplate of PropertyMap. Declarations and layout come from
// dh2/PropertyMap.hpp (AddProperty's return type is the map slot, as the original returns it).
//
// LoadOverridesFromXML (0x513a00) is not in this file. It is in src/r2a-game-items-save-pack0-ab4ea6-0.cpp (partial):
// it needs TiXmlElement::Attribute(const char*) const, which tinyxml-and-c-libs/include/tinyxml-and-c-libs/tixml_dh.hpp
// does not declare.
//
// The bodies use GetThisClassName (0x510b4c), GetPropertyMap (0x5134c0), SetProperty (0x51387c) and the
// s_classMap table. These belong to the other PropertyMap batch (ab4ea6-0), which is not in this file.










namespace {

// The original's ASSERT(expr) in PropertyMap.cpp and PropertyMapTemplates.cpp. gAssertLevel 2 stops the
// program (the original writes to address 0 to force a crash), 1 prints the message and carries on, 0 stays silent.
void ReportPropertyMapAssert(const char* expr, const char* file, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, file, line);
    }
}

}  // namespace

// 0x5138fc _ZN11PropertyMap15ClonePropertiesERS_
void PropertyMap::CloneProperties(PropertyMap& other) {
    // Walks the other object's current template table in key order. Each value is read from the other
    // object (the owner passed to ToString), then written into this object under the same name.
    for (const auto& entry : other.GetPropertyMap()) {
        std::string value = entry.second->ToString(&other);
        SetProperty(entry.first.c_str(), value.c_str());
    }
}

// 0x513ce4 _ZN11PropertyMap11AddPropertyEPKcP8Property
Property*& PropertyMap::AddProperty(const char* name, Property* property) {
    // Properties always go into the class's default table (template ""), whatever m_template is.
    std::map<std::string, Property*>& defaults = s_classMap[GetThisClassName()][""];
    auto found = defaults.find(name);
    if (found != defaults.end()) {
        Property* replaced = found->second;
        if (replaced != nullptr) {
            // The original sets the vptr to Property's table, destroys the name and frees the block with
            // CustomFree. Property has no destructor slot, so the port calls the base destructor directly.
            // The derived part (SimpleTypeProperty's value) is not destroyed, as in the original.
            replaced->~Property();
            CustomFree(replaced);
        }
    }
    Property*& slot = defaults[name];
    slot = property;
    return slot;
}

// 0x513d78 _ZN11PropertyMap14InitPropertiesEv
void PropertyMap::InitProperties() {
    // First use of this class: it has no table yet. Register the "template" property (the m_template
    // string at +0x04, default "") and then let the class declare its own properties.
    if (s_classMap.find(GetThisClassName()) != s_classMap.end()) {
        return;
    }
    std::string defaultTemplate;
    Property* templateProperty = new (CustomAlloc(static_cast<unsigned>(sizeof(SimpleTypeProperty<std::string>))))
        SimpleTypeProperty<std::string>(this, "template", &m_template, defaultTemplate);
    AddProperty("template", templateProperty);
    DeclareProperties();
}

// 0x513fec _ZN11PropertyMap11SetTemplateERKSs
void PropertyMap::SetTemplate(const std::string& templateName) {
    if (templateName.empty()) {
        return;
    }
    if (&templateName != &m_template) {
        m_template.assign(templateName);
    }
    if (GetPropertyMap().empty()) {
        std::map<std::string, Property*>& defaults = s_classMap[GetThisClassName()][""];
        std::map<std::string, Property*>& fresh = GetPropertyMap();
        if (!fresh.empty()) {
            // Unreachable from here: the table was empty just above. Kept as in the original.
            ReportPropertyMapAssert("newTemplate.size() == 0",
                                    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Data\\PropertyMap\\PropertyMap.cpp",
                                    112);
        }
        // Each default property is cloned into the new template's table under the same name.
        for (const auto& entry : defaults) {
            Property*& slot = fresh[entry.first];
            slot = entry.second->Clone();
        }
    }
    LoadTemplate();
}

// 0x51419c _ZN11PropertyMap12LoadTemplateEv
void PropertyMap::LoadTemplate() {
    // The base class is never asked to load a template: the original asserts false here.
    ReportPropertyMapAssert("false",
                            "..\\..\\project_vs2005\\Game/..\\..\\sources\\Data\\PropertyMap\\PropertyMapTemplates.cpp",
                            9);
}
