#include "net-session-online/glx_player_user.hpp"

#include <cstdio>
#include <string>

#include "net-session-online/glx_player_observer.hpp"

// Test literals are passed to the char* parameters of the original signatures.
#pragma GCC diagnostic ignored "-Wwrite-strings"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {
// Captures the request text instead of sending it.
class CapturingUser : public GLXPlayerUser {
public:
    std::int32_t SendByGet(char* request) override {
        ++getCount;
        get = request;
        return 1;
    }
    std::int32_t SendByPost(char* request) override {
        ++postCount;
        post = request;
        return 1;
    }
    int getCount = 0;
    int postCount = 0;
    std::string get;
    std::string post;
};

// Records the rejected-argument reports (slot 3, OnResponseError).
class RecordingObserver : public GLXPlayerObserver {
public:
    void OnRequestFailure(std::int32_t code, std::int32_t detail) override {
        ++errors;
        lastCode = code;
        lastDetail = detail;
    }
    int errors = 0;
    std::int32_t lastCode = 0;
    std::int32_t lastDetail = 0;
};
}  // namespace

int main() {
    CapturingUser u;
    RecordingObserver obs;
    u.RegisterObserver(&obs);
    u.SetGGI(12);
    u.SetUID("alice");

    u.sendGetChatWarning();
    CHECK(u.get == "f|99|i|12|u|alice|");

    u.sendGetAdvRSS(-1);  // POST; -1 leaves out the "p" key
    CHECK(u.post == "f|88|i|12|u|alice|");
    CHECK(u.postCount == 1);
    u.sendGetAdvRSS(4);
    CHECK(u.post == "f|88|i|12|u|alice|p|4|");

    u.sendGetAdvAttachment(3);
    CHECK(u.get == "f|89|i|12|u|alice|a|3|");

    u.sendSetUserState(2);
    CHECK(u.get == "f|97|i|12|u|alice|a|2|");
    u.sendSetUserState(5);  // not 2 or 3: observer slot 3 with (0x61, -100), nothing sent
    CHECK(obs.lastCode == 0x61 && obs.lastDetail == -100);
    CHECK(u.getCount == 3);  // chat warning, attachment and state so far

    u.sendGetLiveFeeds(0);  // kind 1..20 only
    CHECK(u.getCount == 3);
    u.sendGetLiveFeeds(1);
    CHECK(u.get == "f|111|i|12|u|alice|c|1|");
    CHECK(u.getCount == 4);

    u.sendGetTrophyIcon(7, 3);  // mode must be below 3: nothing sent
    CHECK(u.getCount == 4);
    u.sendGetTrophyIcon(7, 2);
    CHECK(u.get == "f|84|i|12|u|alice|t|7|rt|2|");

    u.sendGetGameTrophyList(-1);
    CHECK(u.get == "f|86|i|12|u|alice|");
    u.sendGetGameTrophyList(2);
    CHECK(u.get == "f|86|i|12|u|alice|p|2|");

    u.sendDelUserStoreData(nullptr);
    CHECK(obs.lastCode == 0x48 && obs.lastDetail == -100);
    u.sendDelUserStoreData("k1");
    CHECK(u.get == "f|72|i|12|u|alice|k|k1|");

    u.sendGetUserAvatarList();
    CHECK(u.get == "f|103|i|12|u|alice|");
    u.sendDelUserAvatar("x");
    CHECK(u.get == "f|102|i|12|u|alice|d|x|");
    u.sendDownloadUserAvatar("a");
    CHECK(u.get == "f|101|i|12|u|alice|d|a|");

    u.sendGetUserUID("carol", true);
    CHECK(u.get == "f|58|i|12|u|alice|un|carol|");
    u.sendGetUserUID("carol", false);
    CHECK(u.get == "f|58|i|12|u|alice|n|carol|");
    u.sendGetUserUID(nullptr, false);
    CHECK(obs.lastCode == 0x3a && obs.lastDetail == -100);

    u.sendPointUserReputation("dan", 2, false);  // points must be 1 or 5
    CHECK(obs.lastCode == 0x44 && obs.lastDetail == -100);
    u.sendPointUserReputation("dan", 5, false);
    CHECK(u.get == "f|68|i|12|u|alice|n|dan|r|5|");

    u.sendSetUserStoreData("key", "val");
    CHECK(u.post == "f|66|i|12|u|alice|k|key|d|val|");

    u.sendRetrievalPassword("eve");
    CHECK(u.get == "f|52|i|12|u|eve|");

    u.sendChangeEmail("u", "p", "e");
    CHECK(u.get == "f|51|i|12|u|u|p|p|ne|e|");

    u.sendChangePassword("bob", "old", "pw", "pw2");  // new password and repeat differ
    CHECK(obs.lastCode == 0x32 && obs.lastDetail == -100);
    u.sendChangePassword("bob", "old", "pw", "pw");
    CHECK(u.get == "f|50|i|12|u|bob|p|old|np|pw|vp|pw|");

    u.sendChangeUserName("u", "p", "n", true);
    CHECK(u.get == "f|14|i|12|u|u|p|p|nu|n|o|1|");

    u.sendGetUsedApp(nullptr);  // without a name the user id is used
    CHECK(u.get == "f|57|i|12|u|alice|");

    // Second group: optional name clauses and the country and promo requests.
    u.sendGetUserInfo("bob", false);
    CHECK(u.get == "f|81|i|12|u|alice|n|bob|");
    u.sendGetUserAvatar("bob", true);
    CHECK(u.get == "f|70|i|12|u|alice|un|bob|");
    u.sendGetUserState("bob", true);
    CHECK(u.get == "f|64|i|12|u|alice|un|bob|");
    u.sendGetUserBestScore(nullptr, false);  // no name: base only
    CHECK(u.get == "f|69|i|12|u|alice");
    u.sendGetReputation("dan", false);
    CHECK(u.get == "f|67|i|12|u|alice|n|dan|");

    u.sendGetCountry("a", nullptr, true);
    CHECK(u.get == "f|53|i|12|u|a|nf|1|");
    u.sendGetCountry(nullptr, nullptr, false);
    CHECK(obs.lastCode == 0x36 && obs.lastDetail == -100);
    u.sendChangeCountry("a", "b", "c");
    CHECK(u.get == "f|54|i|12|u|a|p|b|nc|c|");
    u.sendGetGeneralConditions("en");
    CHECK(u.post == "f|98|i|12|u|alice|l|en|");
    u.sendGetGameIcon(3, "x");
    CHECK(u.get == "f|90|i|12|u|alice|p|3|pn|x|");
    u.sendGetGameIcon(-1, nullptr);
    CHECK(u.get == "f|90|i|12|u|alice|");
    u.sendGetPromoAttachment("z", 4);
    CHECK(u.get == "f|205|i|12|a|4|u|z|");
    u.sendGetPromoRss("z", 2, 7, "en");
    CHECK(u.post == "f|204|i|12|y|2|nid|7|l|en|u|z|");

    u.sendGetUserStoreData("k", "bob", false);
    CHECK(u.get == "f|65|i|12|u|alice|k|k|n|bob|");
    u.sendGetUserStoreData(nullptr, "bob", false);
    CHECK(obs.lastCode == 0x40 && obs.lastDetail == -100);
    u.sendGetUserGameList("bob", 0, 10, true);
    CHECK(u.get == "f|63|i|12|u|alice|d|0|l|10|un|bob|");
    u.sendGetUserGameList(nullptr, -1, 10, false);
    CHECK(obs.lastCode == 0x3f && obs.lastDetail == -100);
    u.sendGetUserGameTrophyList(3, "bob", false);
    CHECK(u.get == "f|87|i|12|u|alice|p|3|n|bob|");

    // The upload is partial: only the null case is reproduced.
    u.sendUploadUserAvatar(nullptr);
    CHECK(obs.lastCode == 0x47 && obs.lastDetail == -100);

    // sendSetUserMind: 1 to 255 characters; an empty text is refused.
    u.sendSetUserMind(const_cast<char*>("hi"));
    CHECK(u.get == "f|110|i|12|u|alice|mind|hi|");
    const int getsBefore = u.getCount;
    u.sendSetUserMind(const_cast<char*>(""));
    CHECK(u.getCount == getsBefore);

    // sendUploadUserAvatar: POST with the "d" key.
    const int postsBefore = u.postCount;
    u.sendUploadUserAvatar(const_cast<char*>("p.png"));
    CHECK(u.post == "f|71|i|12|u|alice|d|p.png|");
    CHECK(u.postCount == postsBefore + 1);

    // sendAwardTrophy: ids joined with commas; a count of 1 gives an empty list.
    std::int32_t ids[] = {3, 4};
    u.sendAwardTrophy(ids, 2);
    CHECK(u.get == "f|85|i|12|u|alice|t|3,4|");
    u.sendAwardTrophy(ids, 1);
    CHECK(u.get == "f|85|i|12|u|alice|t||");
    u.sendAwardTrophy(nullptr, 2);
    CHECK(obs.lastCode == 85 && obs.lastDetail == -100);

    // sendUpdateUserInfo: refused when every field is unset; set fields are appended.
    const int errorsBefore = obs.errors;
    u.sendUpdateUserInfo(nullptr, -1, nullptr, nullptr, nullptr, -1, nullptr);
    CHECK(obs.errors == errorsBefore + 1 && obs.lastCode == 82);
    u.sendUpdateUserInfo(const_cast<char*>("a@b"), 1, nullptr, nullptr, nullptr, 0, const_cast<char*>("1990"));
    CHECK(u.get == "f|82|i|12|u|alice|email|a@b|email_flag|1|sex|0|birthday|1990|");

    if (failures == 0) std::printf("all checks passed\n");
    return failures == 0 ? 0 : 1;
}
