// slim XML: the original's small DOM parser and writer. Nodes own their children
// and attributes through pointer lists, as the original's node allocator does.
// Member offsets in the original are noted; the string storage is std::string.
#pragma once

#include <cstddef>
#include <list>
#include <string>

namespace slim {

enum NodeType : int {
    kDocument = 0,  // the root object (XmlDocument)
    kElement = 1,   // <name ...> ... </name>
    kComment = 2,   // <!-- ... -->
};

// One attribute: name then value. 0x30 bytes in the original. The offsets are
// inferred from the parser's stores.
class XmlAttribute {
public:
    std::string name;   // +0x14 (inferred)
    std::string value;  // +0x18 (inferred)
};

// Text part shared by every node. name_ is the element name (or the comment body
// for kComment) at +0x10; value_ is the element text at +0x28, written out only
// when the element has no children.
class XmlBase {
public:
    XmlBase();                // 0x844908
    ~XmlBase();               // 0x844acc
    std::string name_;        // +0x10
    std::string value_;       // +0x28
};

class XmlNode : public XmlBase {
public:
    using ChildIterator = std::list<XmlNode*>::const_iterator;

    XmlNode(NodeType type, XmlNode* parent);  // 0x84494c / 0x844988
    ~XmlNode();                               // 0x844b44 / 0x844c8c

    XmlAttribute* addAttribute(const char* name, const char* value);  // 0x844d20
    XmlNode* addChild(const char* name, NodeType type);               // 0x844f44
    void clearAttribute();                                            // 0x8449fc
    void clearChild();                                                // 0x844bd8

    const XmlAttribute* findAttribute(const char* name) const;           // 0x8445bc
    XmlNode* findChild(const char* name) const;                          // 0x844828
    XmlNode* findFirstChild(const char* name, ChildIterator& it) const;  // 0x84473c
    XmlNode* findNextChild(const char* name, ChildIterator& it) const;   // 0x844660

    // Writes this node at the given depth (tab indent), one node per line. A
    // negative depth writes only the child nodes at depth 0. Partial, see the source.
    void writeNode(std::string& out, int depth) const;        // 0x845268
    void writeChildNodes(std::string& out, int depth) const;  // 0x845518

    NodeType type() const { return type_; }
    XmlNode* parent() const { return parent_; }
    const std::list<XmlNode*>& children() const { return children_; }
    const std::list<XmlAttribute*>& attributes() const { return attributes_; }

private:
    friend class XmlDocument;
    NodeType type_;                        // +0x30
    std::list<XmlAttribute*> attributes_;  // +0x34 (sentinel list in the original)
    XmlNode* parent_;                      // +0x3c
    std::list<XmlNode*> children_;         // +0x40
};

class XmlDocument : public XmlNode {
public:
    XmlDocument();                                           // 0x8449c4 / 0x8449e0
    bool loadFromStream();                                   // 0x844180: unsupported, returns false
    bool save(const char* path) const;                       // 0x844188: unsupported, returns true
    bool loadFromFile(const char* filename);                 // 0x844574
    bool loadFromMemory(const char* data, unsigned length);  // 0x8451dc
    bool parse(const char* data, unsigned length);           // 0x844fdc

private:
    bool findLabel(const char*& cursor, std::size_t length, const char*& labelStart,
                   unsigned& labelLen);                                  // 0x844464
    void parseLabel(XmlNode* node, const char* label, unsigned length);  // 0x844db8
};

}  // namespace slim
