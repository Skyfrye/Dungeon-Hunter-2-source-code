// Minimal TinyXML-style document reader for the sound-pack loader (namespace vox::tixml).
//
// Source: port/decomp-reconstruction/tinyxml-and-c-libs (tixml_dh.hpp) only has the printer
// overlay, and the upstream TinyXML 2.5.x sources are not vendored in this repository. This
// subset implements the calls LoadXML makes: TiXmlDocument::Parse and Error, TiXmlHandle
// FirstChild and ToElement, and TiXmlElement Attribute, QueryIntAttribute,
// QueryDoubleAttribute and NextSiblingElement (which, as in TinyXML, returns the next sibling
// of any name). Text content is skipped. Entities in attribute values are decoded.
#pragma once

#include <cstddef>
#include <memory>
#include <string>
#include <utility>
#include <vector>

namespace vox::tixml {

class TiXmlElement;

class TiXmlNode {
public:
    virtual ~TiXmlNode() = default;
    // First child element with this name, or nullptr.
    TiXmlElement* FirstChildElement(const char* name) const;

    std::vector<std::unique_ptr<TiXmlElement>> children_;  // child elements only
};

class TiXmlElement : public TiXmlNode {
public:
    explicit TiXmlElement(std::string name) : name_(std::move(name)) {}

    const std::string& Value() const { return name_; }
    // Attribute value, or nullptr when the attribute is absent.
    const char* Attribute(const char* name) const;
    // TinyXML codes: 0 success, 1 attribute absent, 2 value is not an int or double.
    // The output is written only on success.
    int QueryIntAttribute(const char* name, int* value) const;
    int QueryDoubleAttribute(const char* name, double* value) const;
    // Next sibling element of any name, or nullptr.
    TiXmlElement* NextSiblingElement() const;

    std::string name_;
    std::vector<std::pair<std::string, std::string>> attributes_;
    const TiXmlNode* parent_ = nullptr;
    std::size_t index_ = 0;  // position in the parent's children_
};

class TiXmlDocument : public TiXmlNode {
public:
    // Parses a NUL-terminated buffer. Returns false and sets Error() on malformed input.
    bool Parse(const char* text);
    bool Error() const { return error_; }

private:
    bool error_ = false;
};

// Handle over a node, used to walk to a child element by name (TinyXML TiXmlHandle subset).
class TiXmlHandle {
public:
    explicit TiXmlHandle(const TiXmlNode* node) : node_(node) {}
    TiXmlHandle FirstChild(const char* name) const {
        return TiXmlHandle(node_ != nullptr ? node_->FirstChildElement(name) : nullptr);
    }
    TiXmlElement* ToElement() const;

private:
    const TiXmlNode* node_;
};

}  // namespace vox::tixml
