// Checks the FSCommandParamTokenizer bodies of batch g1-game-ui-FSCommandParamTokenizer-03a430-0 that run without the
// engine: Tokenize (splitting on "|"), GetNumParams, the first, last and indexed accessors, the next and previous cursor
// walk, and the constructor's unk_00c. The tokens are FSCommandParam objects, and FSCommandParam's constructor and
// destructor are not reconstructed yet. This file defines them as link stubs, the same convention as the AnchorGroup
// test: a token is the std::string copy of its text, and the destructor does nothing.
#include <cstdint>
#include <cstdio>
#include <string>

#include "dh2/FSCommandParam.hpp"
#include "dh2/FSCommandParamTokenizer.hpp"

// Link stubs for the FSCommandParam members this batch uses but does not define.
FSCommandParam::FSCommandParam(const char* value) : std::string(value) {}
FSCommandParam::~FSCommandParam() {}

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

bool Eq(const FSCommandParam& token, const char* text) { return token.compare(text) == 0; }

void TestSplitting() {
    FSCommandParamTokenizer a("a|bc|d");
    Check(a.GetNumParams() == 3, "a|bc|d gives three tokens");
    Check(Eq(a.GetParam(0), "a"), "a|bc|d token 0 is a");
    Check(Eq(a.GetParam(1), "bc"), "a|bc|d token 1 is bc");
    Check(Eq(a.GetParam(2), "d"), "a|bc|d token 2 is d");

    FSCommandParamTokenizer b("||x||y|");
    Check(b.GetNumParams() == 2, "runs of separators collapse and leading or trailing ones add no token");
    Check(Eq(b.GetParam(0), "x"), "||x||y| token 0 is x");
    Check(Eq(b.GetParam(1), "y"), "||x||y| token 1 is y");

    FSCommandParamTokenizer c("hello");
    Check(c.GetNumParams() == 1, "text without a separator is one token");
    Check(Eq(c.GetParam(0), "hello"), "the single token is the whole text");

    FSCommandParamTokenizer d("a||b");
    Check(d.GetNumParams() == 2, "a||b gives two tokens");
    Check(Eq(d.GetParam(1), "b"), "a||b token 1 is b");

    FSCommandParamTokenizer e("");
    Check(e.GetNumParams() == 0, "empty text gives no tokens");

    FSCommandParamTokenizer f("|||");
    Check(f.GetNumParams() == 0, "text of separators only gives no tokens");
}

void TestAccessors() {
    FSCommandParamTokenizer t("first|mid|last");
    Check(Eq(t.GetFirstParam(), "first"), "GetFirstParam returns the first token");
    Check(Eq(t.GetLastParam(), "last"), "GetLastParam returns the last token");
    Check(Eq(t.GetParam(1), "mid"), "GetParam(1) returns the middle token");
    Check(t.GetParam(3).empty(), "GetParam past the end returns an empty token");

    FSCommandParamTokenizer e("");
    Check(e.GetFirstParam().empty(), "GetFirstParam on no tokens returns an empty token");
    Check(e.GetLastParam().empty(), "GetLastParam on no tokens returns an empty token");
    Check(e.GetParam(0).empty(), "GetParam(0) on no tokens returns an empty token");
}

void TestCursor() {
    FSCommandParamTokenizer t("a|bc|d");
    Check(t.m_cursor == 0, "the cursor starts at 0");
    Check(Eq(t.GetNextParam(), "a"), "GetNextParam returns token 0 first");
    Check(t.m_cursor == 1, "GetNextParam advances the cursor to 1");
    Check(Eq(t.GetNextParam(), "bc"), "GetNextParam returns token 1 next");
    Check(Eq(t.GetNextParam(), "d"), "GetNextParam returns the last token");
    Check(t.m_cursor == 2, "GetNextParam stops the cursor on the last token");
    Check(Eq(t.GetNextParam(), "d"), "GetNextParam stays on the last token");

    Check(Eq(t.GetPrevParam(), "bc"), "GetPrevParam moves back to token 1");
    Check(t.m_cursor == 1, "GetPrevParam moves the cursor to 1");
    Check(Eq(t.GetPrevParam(), "a"), "GetPrevParam moves back to token 0");
    Check(t.m_cursor == 0, "GetPrevParam moves the cursor to 0");
    Check(Eq(t.GetPrevParam(), "a"), "GetPrevParam at 0 returns token 0 and does not go below 0");
    Check(t.m_cursor == 0, "GetPrevParam at 0 leaves the cursor at 0");

    t.m_cursor = 5;  // past the last token
    Check(t.GetPrevParam().empty(), "GetPrevParam past the end returns an empty token");
    Check(t.m_cursor == 5, "GetPrevParam past the end leaves the cursor alone");

    FSCommandParamTokenizer e("");
    Check(e.GetNextParam().empty(), "GetNextParam on no tokens returns an empty token");
    Check(e.GetPrevParam().empty(), "GetPrevParam on no tokens returns an empty token");
}

void TestFirstTokenPointer() {
    FSCommandParamTokenizer t("q|r");
    Check(t.unk_00c == &t.m_params[0], "the constructor stores the first token in unk_00c");

    FSCommandParamTokenizer e("");
    Check(e.unk_00c == nullptr, "the constructor leaves unk_00c null when there are no tokens");
}

}  // namespace

int main() {
    TestSplitting();
    TestAccessors();
    TestCursor();
    TestFirstTokenPointer();
    if (g_failures != 0) {
        std::printf("FSCommandParamTokenizer tests: %d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("FSCommandParamTokenizer tests: all passed\n");
    return 0;
}
