// PropertyMap: base of ObjectBase (at ObjectBase +0x04). A named, per-class table of typed properties
// that DeclareProperties() fills and that XML templates / overrides load.
// Original 32-bit size 0x20: +0x00 vptr, +0x04 std::string template name (STLport, 0x18 bytes),
// +0x1c const char* class name (assert "m_className != 0", PropertyMap.cpp:146).
// _ZTV11PropertyMap is 12 bytes: offset-to-top, typeinfo, one slot = pure DeclareProperties. There is no
// virtual destructor; the derived class never destroys a PropertyMap through this base.
// The property tables are global: s_classMap, map<class name, map<template name, map<property name, Property*>>>.
#pragma once

#include <cstdint>
#include <map>
#include <string>

class Property;
class PropertyInstance;
class TiXmlElement;

class PropertyMap {
public:
    virtual void DeclareProperties() = 0;                               // +0x00 (slot 0 of this base)

    // ---- typed property registration (templates; definitions live in the owning .cpp) ----
    template <typename T> void AddProperty(const char* name, T& member, T defaultValue);   // 0x33e404 .. 0x39503c, one per type
    template <typename T> void AddProperty(const char* name, T& member);                   // 0x33ef7c (std::string)
    Property*& AddProperty(const char* name, Property* property);             // 0x513ce4 replaces (and frees) an existing entry; returns the map slot

    // ---- non-virtual ----
    const char* GetThisClassName();                                     // 0x510b4c asserts m_className != 0
    std::map<std::string, Property*>& GetPropertyMap();                 // 0x5134c0 s_classMap[className][m_template]
    Property* GetProp(const char* name);                                // 0x513808
    PropertyInstance GetProperty(const char* name);                     // 0x513858 returns {GetProp(name), this} (sret, asm checked)
    void SetProperty(const char* name, const char* value);              // 0x51387c
    int SetTemplateParameter(const char* name, const char* value);      // 0x513830 returns the SetDefaultValueFromString result, or 0
    void SetTemplate(const std::string& templateName);                  // 0x513fec
    void LoadTemplate();                                                // 0x51419c asserts false (base is never asked to load)
    void InitProperties();                                              // 0x513d78
    void LoadDefaultProperties();                                       // 0x5136ec
    void CloneProperties(PropertyMap& other);                           // 0x5138fc
    void LoadOverridesFromXML(TiXmlElement* element);                   // 0x513a00
    void SavePropertiesToXML(TiXmlElement* element, const char* name);  // 0x5134f0
    void DumpProperties();                                              // 0x513674
    static void DestroyPropertyMaps();                                  // 0x510dec

    // ---- members ----
    // vptr                                                             // +0x00
    std::string m_template;                                             // +0x04 template name ("" = class defaults)
    const char* m_className;                                            // +0x1c set by the most-derived constructor

    // PropertyMap::s_classMap (a global in the binary).
    static std::map<std::string, std::map<std::string, std::map<std::string, Property*>>> s_classMap;
};
