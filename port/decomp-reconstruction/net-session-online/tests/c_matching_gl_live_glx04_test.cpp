#include "net-session-online/c_matching_gl_live.hpp"

#include <cstdio>
#include <cstring>

#include "net-session-online/deps/matching_queue.hpp"
#include "net-transport/net_bit_stream.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // Passwords and user names: at most 15 characters are copied, longer ones are refused.
    {
        CMatchingGLLive m;
        CHECK(m.SetGLLivePassword("secret") != nullptr);
        CHECK(std::strcmp(m.PasswordForTest(), "secret") == 0);
        CHECK(m.SetGLLivePassword("0123456789abcdef") == reinterpret_cast<char*>(16));  // 16 characters: the length comes back
        CHECK(std::strcmp(m.PasswordForTest(), "secret") == 0);
        CHECK(m.SetGLLivePassword("0123456789abcde") != nullptr);   // 15 characters
        CHECK(m.SetGLLiveUserName("alice") != nullptr);
        CHECK(std::strcmp(m.UserNameForTest(), "alice") == 0);
    }

    // Profile round trip, with the remember flag set: name and password are kept.
    {
        std::remove("profile.sav");
        CMatchingGLLive out;
        out.SetGLLiveUserName("alice");
        out.SetGLLivePassword("secret");
        out.SetProfileFlagForTest(true);
        CHECK(out.SaveGLLiveProfile() == 1);

        CMatchingGLLive in;
        CHECK(in.LoadGLLiveProfile() == 1);
        CHECK(in.ProfileFlagForTest());
        CHECK(std::strcmp(in.UserNameForTest(), "alice") == 0);
        CHECK(std::strcmp(in.PasswordForTest(), "secret") == 0);
    }

    // Profile saved without the remember flag: the password is written as zeros.
    {
        CMatchingGLLive out;
        out.SetGLLiveUserName("bob");
        out.SetGLLivePassword("hidden");
        out.SetProfileFlagForTest(false);
        CHECK(out.SaveGLLiveProfile() == 1);

        CMatchingGLLive in;
        CHECK(in.LoadGLLiveProfile() == 1);
        CHECK(!in.ProfileFlagForTest());
        CHECK(std::strcmp(in.UserNameForTest(), "bob") == 0);
        CHECK(in.PasswordForTest()[0] == '\0');
    }

    // Missing or foreign profile file: load fails and clears the fields.
    {
        std::remove("profile.sav");
        CMatchingGLLive m;
        m.SetGLLiveUserName("left");
        CHECK(m.LoadGLLiveProfile() == 0);
        CHECK(m.UserNameForTest()[0] == '\0');
        std::FILE* bad = std::fopen("profile.sav", "wb");
        if (bad) {
            std::fputs("not a profile", bad);
            std::fclose(bad);
        }
        CHECK(m.LoadGLLiveProfile() == 0);
        std::remove("profile.sav");
    }

    // Server change message: sets the server member id and posts event 8388619.
    {
        CMatchingGLLive::s_IsGameStarting = true;
        MatchingInternalEventQueue().Clear();
        NetBitStream stream(4);
        std::int32_t id = 77;
        stream.WriteByteArray(&id, sizeof id);
        CMatchingGLLive m;
        m.ProcessChangeServerMessage(0, stream);
        CHECK(m.ServerMemberIdForTest() == 77);
        CHECK(m.GetServerMemberId() == 77);
        CHECK(MatchingInternalEventQueue().HasEvents());
        CMatchingGLLive::s_IsGameStarting = false;
    }

    // Room status message: two flag bytes and two 32-bit values, then event 8388618.
    {
        MatchingInternalEventQueue().Clear();
        NetBitStream stream(12);
        const std::uint8_t head[4] = {0x11, 0x22, 0, 0};
        const std::int32_t first = 5;
        const std::int32_t second = -9;
        stream.WriteByteArray(head, sizeof head);
        stream.WriteByteArray(&first, sizeof first);
        stream.WriteByteArray(&second, sizeof second);
        CMatchingGLLive m;
        m.ProcessRoomStatusMessage(0, stream);
        CHECK(m.RoomStatusForTest(0) == 0x11);
        CHECK(m.RoomStatusForTest(1) == 0x22);
        CHECK(m.RoomValue0ForTest() == 5);
        CHECK(m.RoomValue1ForTest() == -9);
        CHECK(MatchingInternalEventQueue().HasEvents());
    }

    // Receiver dispatch: type 4 and type 5 are handled, an unknown type is ignored.
    {
        MatchingInternalEventQueue().Clear();
        CMatchingGLLive m;
        std::int32_t id = 42;
        char packet[1 + 4] = {4, 0, 0, 0, 0};
        std::memcpy(packet + 1, &id, sizeof id);
        m.PacketReceiverCallback(0, packet, sizeof packet);
        CHECK(m.ServerMemberIdForTest() == 42);

        char unknown[2] = {9, 1};
        m.PacketReceiverCallback(0, unknown, sizeof unknown);
        CHECK(m.ServerMemberIdForTest() == 42);
    }

    // GLLive internal events: 5 sets the flag, 6 clears it. PingRooms posts 8388624.
    {
        CMatchingGLLive m;
        CMatchingGLLive::s_eventQueueGLLiveInternal.Clear();
        CMatchingGLLive::s_eventQueueGLLiveInternal.AddEvent(5, nullptr, 0);
        CHECK(m.ProcessGLLiveEvents() == 0);
        CHECK(m.GLLiveEventFlagForTest());
        CMatchingGLLive::s_eventQueueGLLiveInternal.AddEvent(6, nullptr, 0);
        CHECK(m.ProcessGLLiveEvents() == 0);
        CHECK(!m.GLLiveEventFlagForTest());

        MatchingInternalEventQueue().Clear();
        CHECK(m.PingRooms() == 0);
        CHECK(MatchingInternalEventQueue().HasEvents());
    }

    // Observers are created once and then reused.
    {
        CMatchingGLLive m;
        CHECK(m.GetGLXPlayerMPLobbyObserver() != nullptr);
        CHECK(m.GetGLXPlayerMPLobbyObserver() == m.GetGLXPlayerMPLobbyObserver());
        CHECK(m.GetGLXPlayerUserFriendObserver() == m.GetGLXPlayerUserFriendObserver());
        CHECK(m.GetGLXPlayerLoginObserver() == m.GetGLXPlayerLoginObserver());
    }

    // No GLX component or leaderboard: GGI is 0 and the high-score send is a no-op.
    {
        CMatchingGLLive m;
        CHECK(m.GetGGI() == 0UL);
        CHECK(m.GLSendHighScore(10) == 0);
    }

    std::remove("profile.sav");
    std::printf("%s\n", failures ? "c_matching_gl_live_glx04: FAILED" : "c_matching_gl_live_glx04: ok");
    return failures != 0;
}
