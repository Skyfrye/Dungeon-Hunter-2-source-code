// Minimal TinyXML-style reader (see include/vox-audio/vendor/tixml_dh.hpp).
#include "vox-audio/vendor/tixml_dh.hpp"

#include <cerrno>
#include <cstdlib>
#include <cstring>

namespace vox::tixml {

namespace {

bool IsSpace(char c) { return c == ' ' || c == '\t' || c == '\r' || c == '\n'; }

bool IsNameChar(char c) {
    return c != '\0' && !IsSpace(c) && c != '/' && c != '>' && c != '<' && c != '=' &&
           c != '"' && c != '\'' && c != '?';
}

// Decodes the five predefined entities and numeric character references below 0x80.
std::string DecodeEntities(const std::string& raw) {
    std::string out;
    out.reserve(raw.size());
    for (std::size_t i = 0; i < raw.size(); ++i) {
        if (raw[i] != '&') {
            out.push_back(raw[i]);
            continue;
        }
        const std::size_t semi = raw.find(';', i);
        if (semi == std::string::npos) {
            out.push_back(raw[i]);
            continue;
        }
        const std::string ent = raw.substr(i + 1, semi - i - 1);
        if (ent == "amp") out.push_back('&');
        else if (ent == "lt") out.push_back('<');
        else if (ent == "gt") out.push_back('>');
        else if (ent == "quot") out.push_back('"');
        else if (ent == "apos") out.push_back('\'');
        else if (ent.size() > 1 && ent[0] == '#') {
            const long v = ent[1] == 'x' ? std::strtol(ent.c_str() + 2, nullptr, 16)
                                         : std::strtol(ent.c_str() + 1, nullptr, 10);
            out.push_back(v > 0 && v < 0x80 ? static_cast<char>(v) : '?');
        } else {
            out.append(raw, i, semi - i + 1);
        }
        i = semi;
    }
    return out;
}

class Reader {
public:
    explicit Reader(const char* text) : p_(text) {}

    // Parses sibling elements until a closing tag or the end of input.
    bool ParseChildren(TiXmlNode* parent, const std::string* closing) {
        for (;;) {
            SkipText();
            if (*p_ == '\0') return closing == nullptr;
            if (p_[0] == '<' && p_[1] == '/') {
                if (closing == nullptr) return false;
                p_ += 2;
                const std::string name = ReadName();
                SkipSpace();
                if (*p_ != '>' || name != *closing) return false;
                ++p_;
                return true;
            }
            if (!ParseMarkup(parent)) return false;
        }
    }

private:
    // Skips character data up to the next tag.
    void SkipText() {
        while (*p_ != '\0' && *p_ != '<') ++p_;
    }

    void SkipSpace() {
        while (IsSpace(*p_)) ++p_;
    }

    std::string ReadName() {
        const char* start = p_;
        while (IsNameChar(*p_)) ++p_;
        return std::string(start, static_cast<std::size_t>(p_ - start));
    }

    // Skips a construct that ends with `end` (comments, declarations, processing instructions).
    bool SkipUntil(const char* end) {
        const char* hit = std::strstr(p_, end);
        if (hit == nullptr) return false;
        p_ = hit + std::strlen(end);
        return true;
    }

    bool ParseMarkup(TiXmlNode* parent) {
        if (std::strncmp(p_, "<!--", 4) == 0) return SkipUntil("-->");
        if (std::strncmp(p_, "<?", 2) == 0) return SkipUntil("?>");
        if (std::strncmp(p_, "<!", 2) == 0) return SkipUntil(">");
        if (*p_ != '<') return false;
        ++p_;
        auto element = std::make_unique<TiXmlElement>(ReadName());
        if (element->name_.empty()) return false;
        for (;;) {
            SkipSpace();
            if (*p_ == '/' && p_[1] == '>') {
                p_ += 2;
                Attach(parent, std::move(element));
                return true;
            }
            if (*p_ == '>') {
                ++p_;
                break;
            }
            const std::string key = ReadName();
            if (key.empty()) return false;
            SkipSpace();
            if (*p_ != '=') return false;
            ++p_;
            SkipSpace();
            const char quote = *p_;
            if (quote != '"' && quote != '\'') return false;
            ++p_;
            const char* start = p_;
            while (*p_ != '\0' && *p_ != quote) ++p_;
            if (*p_ == '\0') return false;
            element->attributes_.emplace_back(key, DecodeEntities(std::string(start, static_cast<std::size_t>(p_ - start))));
            ++p_;
        }
        const std::string name = element->name_;
        TiXmlElement* raw = element.get();
        Attach(parent, std::move(element));
        return ParseChildren(raw, &name);
    }

    static void Attach(TiXmlNode* parent, std::unique_ptr<TiXmlElement> element) {
        element->parent_ = parent;
        element->index_ = parent->children_.size();
        parent->children_.push_back(std::move(element));
    }

    const char* p_;
};

}  // namespace

TiXmlElement* TiXmlNode::FirstChildElement(const char* name) const {
    for (const auto& child : children_) {
        if (child->name_ == name) return child.get();
    }
    return nullptr;
}

const char* TiXmlElement::Attribute(const char* name) const {
    for (const auto& kv : attributes_) {
        if (kv.first == name) return kv.second.c_str();
    }
    return nullptr;
}

int TiXmlElement::QueryIntAttribute(const char* name, int* value) const {
    const char* text = Attribute(name);
    if (text == nullptr) return 1;
    char* end = nullptr;
    errno = 0;
    const long v = std::strtol(text, &end, 10);
    if (end == text || errno != 0) return 2;
    *value = static_cast<int>(v);
    return 0;
}

int TiXmlElement::QueryDoubleAttribute(const char* name, double* value) const {
    const char* text = Attribute(name);
    if (text == nullptr) return 1;
    char* end = nullptr;
    const double v = std::strtod(text, &end);
    if (end == text) return 2;
    *value = v;
    return 0;
}

TiXmlElement* TiXmlElement::NextSiblingElement() const {
    if (parent_ == nullptr) return nullptr;
    const auto& siblings = parent_->children_;
    const std::size_t next = index_ + 1;
    return next < siblings.size() ? siblings[next].get() : nullptr;
}

bool TiXmlDocument::Parse(const char* text) {
    children_.clear();
    Reader reader(text);
    error_ = !reader.ParseChildren(this, nullptr);
    return !error_;
}

TiXmlElement* TiXmlHandle::ToElement() const {
    return const_cast<TiXmlElement*>(dynamic_cast<const TiXmlElement*>(node_));
}

}  // namespace vox::tixml
