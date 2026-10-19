// Batch g1-game-ui-FSCommandParamTokenizer-03a430-0: the FSCommandParamTokenizer constructors and destructor, Tokenize,
// GetNumParams and the token accessors (first, last, indexed, next and previous).
//
// Tokens. Each token is an FSCommandParam (a std::string) held in m_params, which is a std::vector with a 24-byte
// stride on the 32-bit original. The accessors that return a token copy its text: the original copies the STLport
// range [data, finish) of the stored element into the result. On the host they return FSCommandParam by value.
//
// Separator. Tokenize splits on the one-character set "|". The original passes the rodata literal "|" to
// find_first_not_of and find_first_of. The set is one byte because IDA 0x415f38 (01 40 84 e2) is ADD R4, R4, #1, so the
// set runs from "|" to "|"+1. A run of separators yields no empty token, and leading or trailing separators are skipped.
#include "dh2/FSCommandParamTokenizer.hpp"

#include <string>

// 0x4156c0 _ZN23FSCommandParamTokenizer12GetNumParamsEv
int FSCommandParamTokenizer::GetNumParams() {
    // +0x00 begin and +0x04 end. The original computes (end - begin) / 24 as a multiply by the inverse of 3, which is
    // the element count.
    return static_cast<int>(m_params.size());
}

// 0x415b64 _ZN23FSCommandParamTokenizerD2Ev
// 0x415b98 _ZN23FSCommandParamTokenizerD1Ev (same body)
FSCommandParamTokenizer::~FSCommandParamTokenizer() {
    // The original erases the tokens when begin != end, then runs ~vector. clear() erases the same range. The vector
    // member's own destructor releases the storage after this body.
    m_params.clear();
}

// 0x415e90 _ZN23FSCommandParamTokenizer8TokenizeEPKc
void FSCommandParamTokenizer::Tokenize(const char* text) {
    static const char kSeparators[] = "|";  // the one-character set from the rodata literal, see the file comment
    const std::string str(text);
    std::string::size_type start = str.find_first_not_of(kSeparators);
    while (start != std::string::npos) {
        // The token is [start, end). When no separator follows it, end is npos and the token is the rest of the text.
        const std::string::size_type end = str.find_first_of(kSeparators, start);
        const std::string::size_type count = (end == std::string::npos) ? std::string::npos : end - start;
        m_params.push_back(FSCommandParam(str.substr(start, count).c_str()));
        if (end == std::string::npos) {
            break;
        }
        // The next token starts at the first non-separator after this one. None left means the last token was read.
        start = str.find_first_not_of(kSeparators, end);
    }
}

// 0x416100 _ZN23FSCommandParamTokenizerC1EPKc
// 0x416130 _ZN23FSCommandParamTokenizerC2EPKc (same body)
FSCommandParamTokenizer::FSCommandParamTokenizer(const char* text)
    : m_params(), unk_00c(nullptr), m_cursor(0) {  // +0x00 vector, +0x0c first token, +0x10 cursor
    Tokenize(text);
    // The original stores the vector begin in +0x0c after Tokenize. That is the first token, or null when there is none.
    unk_00c = m_params.empty() ? nullptr : &m_params.front();
}

// 0x416160 _ZN23FSCommandParamTokenizer12GetLastParamEv
FSCommandParam FSCommandParamTokenizer::GetLastParam() {
    if (!m_params.empty()) {
        return m_params.back();  // copy of the last token
    }
    return FSCommandParam("");
}

// 0x4161c8 _ZN23FSCommandParamTokenizer13GetFirstParamEv
FSCommandParam FSCommandParamTokenizer::GetFirstParam() {
    if (!m_params.empty()) {
        return m_params.front();  // copy of the first token
    }
    return FSCommandParam("");
}

// 0x416230 _ZN23FSCommandParamTokenizer8GetParamEj
FSCommandParam FSCommandParamTokenizer::GetParam(uint32_t index) {
    if (index < m_params.size()) {
        return m_params[index];  // copy of the token at index
    }
    return FSCommandParam("");
}

// 0x41629c _ZN23FSCommandParamTokenizer12GetPrevParamEv
FSCommandParam FSCommandParamTokenizer::GetPrevParam() {
    if (m_cursor >= m_params.size()) {
        return FSCommandParam("");  // the cursor is past the last token, so it does not move
    }
    if (m_cursor != 0) {
        --m_cursor;  // +0x10 moves back by one, not below 0
    }
    return m_params[m_cursor];
}

// 0x41631c _ZN23FSCommandParamTokenizer12GetNextParamEv
FSCommandParam FSCommandParamTokenizer::GetNextParam() {
    const uint32_t index = m_cursor;  // +0x10 token index before this call
    if (index >= m_params.size()) {
        return FSCommandParam("");
    }
    if (index < m_params.size() - 1) {
        m_cursor = index + 1;  // advance, but the cursor stops on the last token
    }
    return m_params[index];
}
