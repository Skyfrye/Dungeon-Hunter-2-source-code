#include "net-session-online/glx_player_observer.hpp"
#include "net-session-online/glx_player_web_component.hpp"

#include <cstdio>
#include <string>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {
// Records the observer calls made by the web component.
class RecordingObserver : public GLXPlayerObserver {
public:
    void OnRequestSuccess(std::int32_t arg, char* text, std::int32_t length) override {
        textArg = arg;
        text_ = text;
        textLength = length;
    }
    void OnRequestFailure(std::int32_t code, std::int32_t detail) override {
        errorCode = code;
        errorDetail = detail;
    }

    std::int32_t textArg = 0;
    std::int32_t textLength = -1;
    std::int32_t errorCode = 0;
    std::int32_t errorDetail = 0;
    std::string text_;
};
}  // namespace

int main() {
    // GetFunctionID: 'f' is the id, 'g' is the id plus 500, anything else is -1.
    CHECK(GLXPlayerWebComponent::GetFunctionID('f', 3) == 3);
    CHECK(GLXPlayerWebComponent::GetFunctionID('g', 3) == 503);
    CHECK(GLXPlayerWebComponent::GetFunctionID('x', 3) == -1);

    GLXPlayerWebComponent w;
    CHECK(w.RequestIdForTest() == -1);
    CHECK(!w.EnabledForTest());
    CHECK(w.ResponseCursorForTest() == nullptr);

    // Tokens are separated by '|'. An empty token is returned as "".
    w.StartResponseParser("f|17|ok||tail|", 7);
    CHECK(w.FunctionIdForTest() == 7);
    char buf[256];
    CHECK(std::string(w.GetNextResponseToken(buf)) == "f");
    CHECK(w.GetNextResponseIntToken() == 17);
    CHECK(w.IsNextResponseStringToken("ok"));
    CHECK(std::string(w.GetNextResponseToken(buf)) == "");
    CHECK(std::string(w.GetNextResponseToken(buf)) == "tail");
    // End of text: the token is "" and the cursor stays on the terminator.
    CHECK(std::string(w.GetNextResponseToken(buf)) == "");
    CHECK(w.ResponseCursorForTest() != nullptr && *w.ResponseCursorForTest() == '\0');

    // The last token has no trailing separator.
    w.StartResponseParser("5", 0);
    CHECK(w.IsNextResponseIntToken(5));
    w.StartResponseParser("5|", 0);
    CHECK(!w.IsNextResponseIntToken(6));
    w.StartResponseParser("abc|x", 0);
    CHECK(!w.IsNextResponseStringToken("abd"));  // token "abc"
    CHECK(w.IsNextResponseStringToken("x"));     // token "x"
    CHECK(!w.IsNextResponseStringToken("x"));    // end of text: token is ""

    // OnUpdateSuccess passes the arg, the text at the cursor and its length to the observer.
    RecordingObserver obs;
    w.RegisterObserver(&obs);
    w.StartResponseParser("body|text", 1);
    w.GetNextResponseToken(buf);  // cursor moves to "text"
    w.OnUpdateSuccess(9);
    CHECK(obs.textArg == 9);
    CHECK(obs.text_ == "text");
    CHECK(obs.textLength == 4);

    // OnUpdateFailure reads the next token as an int and passes it with the code.
    w.StartResponseParser("404", 0);
    CHECK(w.OnUpdateFailure(3));
    CHECK(obs.errorCode == 3);
    CHECK(obs.errorDetail == 404);

    // Cancel clears the parser state and the request id.
    w.SendByGet(buf);
    CHECK(w.EnabledForTest());
    w.Cancel();
    CHECK(!w.EnabledForTest());
    CHECK(w.ResponseCursorForTest() == nullptr);
    CHECK(w.FunctionIdForTest() == 0);
    CHECK(w.RequestIdForTest() == -1);

    if (failures == 0) std::printf("all checks passed\n");
    return failures == 0 ? 0 : 1;
}
