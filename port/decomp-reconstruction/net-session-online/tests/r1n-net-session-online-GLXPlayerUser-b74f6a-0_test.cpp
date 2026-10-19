// Test for batch r1n-net-session-online-GLXPlayerUser-b74f6a-0: the GLXPlayerUser constructor,
// clearUserState, processUserState, processUserGameIcon, processDownloadAvatar, processUserAvatar
// and OnUpdateSuccess (codes 53, 58 and 98). The destructor runs at the end of each block.
#include "net-session-online/glx_player_user.hpp"

#include <cstdio>
#include <string>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

static bool Is(const char* p, const char* expected) { return p != nullptr && std::string(p) == expected; }

int main() {
    // Constructor defaults: the live feed count is -1 (the original stores -1 at +0x128).
    {
        GLXPlayerUser u;
        CHECK(u.LiveFeedCountForTest() == -1);
        CHECK(u.getCurrentUserState() == -1);
        CHECK(u.getUserBestScore() == -1);
        CHECK(u.StateTokenForTest() == nullptr);
        CHECK(u.Unk3cForTest() == nullptr);
        CHECK(u.getUserAvatarData() == nullptr);
    }

    // processUserState, "t" form: the state is field 1 and the token is field 3.
    {
        GLXPlayerUser u;
        char text[] = "t|5|x|tokT|a|9";
        u.processUserState(text);
        CHECK(u.getCurrentUserState() == 5);
        CHECK(Is(u.StateTokenForTest(), "tokT"));
        // clearUserState frees the token and returns the state to idle.
        u.clearUserState();
        CHECK(u.getCurrentUserState() == -1);
        CHECK(u.StateTokenForTest() == nullptr);
    }

    // processUserState, "n" form with field 2 not "t": the token is field 4 and the state stays idle.
    {
        GLXPlayerUser u;
        char text[] = "n|bob|x|y|tok|a|6";
        u.processUserState(text);
        CHECK(Is(u.getOtherUserName(), "bob"));
        CHECK(u.getCurrentUserState() == -1);
        CHECK(Is(u.StateTokenForTest(), "tok"));
    }

    // processUserState, "un" form with "t" at field 2: the state is field 3 and the token is field 5.
    {
        GLXPlayerUser u;
        char text[] = "un|bob|t|3|x|tok5|a|7";
        u.processUserState(text);
        CHECK(u.getCurrentUserState() == 3);
        CHECK(Is(u.StateTokenForTest(), "tok5"));
    }

    // Any other kind stores nothing.
    {
        GLXPlayerUser u;
        char text[] = "q|1|x|tok";
        u.processUserState(text);
        CHECK(u.getCurrentUserState() == -1);
        CHECK(u.StateTokenForTest() == nullptr);
    }

    // processUserGameIcon: field 1 is read with XP_API_PARSE_DATA_NEW, which keeps the separator
    // after a field that ends at one, so the icon is "iconA|". Field 3 goes to +0xdc and field 5
    // is read as an int into +0xe4. An empty text clears the icon (the original frees +0xc8 first)
    // and leaves +0xdc and +0xe4 as they were.
    {
        GLXPlayerUser u;
        char text[] = "0|iconA|x|tagB|x|42";
        u.processUserGameIcon(text);
        CHECK(Is(u.GameIconForTest(), "iconA|"));
        CHECK(Is(u.GameIconTagForTest(), "tagB"));
        CHECK(u.GameIconFieldForTest() == 42);
        char empty[] = "";
        u.processUserGameIcon(empty);
        CHECK(u.GameIconForTest() == nullptr);
        CHECK(Is(u.GameIconTagForTest(), "tagB"));
        CHECK(u.GameIconFieldForTest() == 42);
    }

    // When field 1 ends the text there is no separator to keep: "0|iconA" stores "iconA".
    {
        GLXPlayerUser u;
        char text[] = "0|iconA";
        u.processUserGameIcon(text);
        CHECK(Is(u.GameIconForTest(), "iconA"));
    }

    // processDownloadAvatar: a text whose first field is not "n" is the avatar data. A text that
    // starts with "n" clears the avatar data and stores the other user's name and data.
    {
        GLXPlayerUser u;
        char text[] = "k1";
        u.processDownloadAvatar(text);
        CHECK(u.getUserAvatarData() != nullptr);
        CHECK(Is(static_cast<const char*>(u.getUserAvatarData()), "k1"));
        char other[] = "n|bob|dat";
        u.processDownloadAvatar(other);
        CHECK(u.getUserAvatarData() == nullptr);
        CHECK(Is(u.getOtherUserName(), "bob"));
        CHECK(Is(u.OtherAvatarDataForTest(), "dat"));
    }

    // processUserAvatar, own form: "d" stores the key and the "t" value is the last update.
    // The "n" form with "d" stores the other key and other last update, and keeps the own key.
    {
        GLXPlayerUser u;
        char own[] = "d|key|t|upd";
        u.processUserAvatar(own);
        CHECK(Is(u.getUserAvatarKey(), "key"));
        CHECK(Is(u.getUserAvatarLastUpdate(), "upd"));
        char other[] = "n|bob|d|okey|t|oupd";
        u.processUserAvatar(other);
        CHECK(Is(u.getOtherUserName(), "bob"));
        CHECK(Is(u.OtherAvatarKeyForTest(), "okey"));
        CHECK(Is(u.OtherAvatarLastUpdateForTest(), "oupd"));
        CHECK(Is(u.getUserAvatarKey(), "key"));
    }

    // processUserAvatar, "n" form without "d": the "t" flag is field 3 and its value is field 4.
    {
        GLXPlayerUser u;
        char notTag[] = "n|bob|x|y|t|z";  // field 3 is "y", not "t"
        u.processUserAvatar(notTag);
        CHECK(Is(u.getOtherUserName(), "bob"));
        CHECK(u.OtherAvatarKeyForTest() == nullptr);
        CHECK(u.OtherAvatarLastUpdateForTest() == nullptr);
        char tagged[] = "n|bob|x|t|z";
        u.processUserAvatar(tagged);
        CHECK(Is(u.OtherAvatarLastUpdateForTest(), "z"));
    }

    // OnUpdateSuccess 53 stores field 1 as the country.
    {
        GLXPlayerUser u;
        u.StartResponseParser("a|NL", 0);
        u.OnUpdateSuccess(53);
        CHECK(Is(u.getCountry(), "NL"));
    }

    // OnUpdateSuccess 58 stores the whole response text at +0x3c.
    {
        GLXPlayerUser u;
        u.StartResponseParser("abc|d", 0);
        u.OnUpdateSuccess(58);
        CHECK(Is(u.Unk3cForTest(), "abc|d"));
    }

    // OnUpdateSuccess 98: the "d" token goes to +0x11c and the "t" token to +0x120.
    {
        GLXPlayerUser u;
        u.StartResponseParser("d|tokA|t|tokB|x", 0);
        u.OnUpdateSuccess(98);
        CHECK(Is(u.Token11cForTest(), "tokA"));
        CHECK(Is(u.Token120ForTest(), "tokB"));
    }

    // OnUpdateSuccess 98 with other flags stores nothing.
    {
        GLXPlayerUser u;
        u.StartResponseParser("q|tokA|r|tokB", 0);
        u.OnUpdateSuccess(98);
        CHECK(u.Token11cForTest() == nullptr);
        CHECK(u.Token120ForTest() == nullptr);
    }

    if (failures == 0) std::printf("all checks passed\n");
    return failures == 0 ? 0 : 1;
}
