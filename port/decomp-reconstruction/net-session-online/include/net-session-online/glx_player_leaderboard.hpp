// GLXPlayerLeaderboard: the leaderboard and rank lookup of the GLX player services.
// The web component parses a ranking into per-entry arrays, and the current player's own
// row into the current fields. The storage below follows the pseudocode: the names and the
// countries are char* arrays, and each entry has its own score-data array of scoreDataCount
// ints. The request senders live in glx_player_leaderboard_requests.cpp.
//
// Layout (original 32-bit offsets, kept as comments; the GLXPlayerWebComponent base
// occupies +0x00..+0x3b):
//   +0x3c entry count (int; -666666 until a ranking is parsed)
//   +0x40 player names (char* array)              +0x44 player countries (char* array,
//                                                 filled only when scores are requested)
//   +0x48 player positions (int array)            +0x4c player scores (int array)
//   +0x50 player score data (int* array, one array of scoreDataCount ints per entry)
//   +0x54 score data count (int)
//   +0x58 current player position (-666666 when none)
//   +0x5c current player score (-666666 when none)
//   +0x60 current player score data (int*)        +0x64 current player country (char*)
//   +0x68 scores requested (byte)
#pragma once

#include <cstdint>
#include <memory>
#include <string>
#include <vector>

#include "net-session-online/glx_player_web_component.hpp"

class GLXPlayerLeaderboard : public GLXPlayerWebComponent {
public:
    // 0x833244 _ZN20GLXPlayerLeaderboardC1Ev and 0x8332dc _ZN20GLXPlayerLeaderboardC2Ev.
    // Calls the web component's LoadConfig (partial), then creates the GLXPlayerHttp client.
    GLXPlayerLeaderboard();
    // 0x8331b0 (D1) and 0x833208 (D2). The deleting destructor is not a separate function here.
    ~GLXPlayerLeaderboard() override;

    // Not a method in the original: the owner writes +0x54 directly (CXPlayerManager::OnRequestSuccess).
    void SetScoreDataCount(std::int32_t count) { scoreDataCount_ = count; }
    // 0x832198 _ZN20GLXPlayerLeaderboard35getCurrentPlayerLeaderboardPositionEv
    std::int32_t getCurrentPlayerLeaderboardPosition() const { return currentPosition_; }
    // 0x8321a0 _ZN20GLXPlayerLeaderboard34getCurrentPlayerLeaderboardCountryEv: the stored
    // pointer (nullptr when none). The Hex-Rays return type is int, which is the pointer bits.
    const char* getCurrentPlayerLeaderboardCountry() const { return currentCountry_.get(); }
    // 0x8321a8 _ZN20GLXPlayerLeaderboard32getCurrentPlayerLeaderboardScoreEv
    std::int32_t getCurrentPlayerLeaderboardScore() const { return currentScore_; }
    // 0x8321b0 _ZN20GLXPlayerLeaderboard36getCurrentPlayerLeaderboardScoreDataEv: the stored
    // pointer (nullptr when none).
    const std::int32_t* getCurrentPlayerLeaderboardScoreData() const;
    // 0x8321b8 _ZN20GLXPlayerLeaderboard18getLeaderboardSizeEv: -1 when no names are held.
    std::int32_t getLeaderboardSize() const;
    // 0x83223c _ZN20GLXPlayerLeaderboard29getLeaderboardEntryPlayerNameEi: default null.
    const char* getLeaderboardEntryPlayerName(std::int32_t index) const;
    // 0x832264 _ZN20GLXPlayerLeaderboard32getLeaderboardEntryPlayerCountryEi: default null.
    const char* getLeaderboardEntryPlayerCountry(std::int32_t index) const;
    // 0x83228c _ZN20GLXPlayerLeaderboard33getLeaderboardEntryPlayerPositionEi: default -1.
    std::int32_t getLeaderboardEntryPlayerPosition(std::int32_t index) const;
    // 0x8322b4 _ZN20GLXPlayerLeaderboard30getLeaderboardEntryPlayerScoreEi: default -666666.
    std::int32_t getLeaderboardEntryPlayerScore(std::int32_t index) const;
    // 0x8322e0 _ZN20GLXPlayerLeaderboard34getLeaderboardEntryPlayerScoreDataEi: the entry's
    // score-data pointer (nullptr when none).
    const std::int32_t* getLeaderboardEntryPlayerScoreData(std::int32_t index) const;
    // 0x8321cc _ZN20GLXPlayerLeaderboard19getLeaderboardEntryEiRPcRiS2_RPiS2_: fills the
    // entry's name, position, score, score data and score-data count. Returns 1 when the
    // entry exists, 0 otherwise (the outputs are then unchanged).
    std::int32_t getLeaderboardEntry(std::int32_t index, char*& name, std::int32_t& position,
                                     std::int32_t& score, std::int32_t*& scoreData,
                                     std::int32_t& scoreDataCount);

    // 0x832a48 _ZN20GLXPlayerLeaderboard16clearLeaderboardEv: frees every entry and resets the
    // count and the current row to the -666666 sentinel.
    void clearLeaderboard();
    // 0x832594 _ZN20GLXPlayerLeaderboard14processRankingEPc: parses a "y|..." or "n|..." ranking.
    void processRanking(char* text);
    // 0x832308 _ZN20GLXPlayerLeaderboard20processRankingAroundEPc: parses the entries around the
    // player, which have no flag or current-row fields.
    void processRankingAround(char* text);
    // 0x8330c4 _ZN20GLXPlayerLeaderboard15OnUpdateSuccessEi: 'o' ranking, 'p' ranking around,
    // 'n' current position, then the web component's handler.
    void OnUpdateSuccess(std::int32_t arg) override;

    // 0x832c2c _ZN20GLXPlayerLeaderboard13addScoreEntryEPciiiPii: appends the score segment,
    // then one segment per entry of scores, to buffer. Returns the length written by the last
    // segment, as sprintf does. The original writes into a caller's char array; the port appends
    // to a std::string.
    std::int32_t addScoreEntry(std::string& buffer, std::int32_t score, std::int32_t level,
                               std::int32_t time, const std::int32_t* scores, std::int32_t count) const;

    // Request senders: "f|kind|i|GGI|u|UID|..." requests handed to SendByGet.
    // 0x832cc4 _ZN20GLXPlayerLeaderboard23sendRankGetAroundPlayerEiii (kind 0x70). Partial: the
    // optional field taken when the first argument is not negative is not identified.
    void sendRankGetAroundPlayer(std::int32_t first, std::int32_t page, std::int32_t time);
    // 0x832dc4 _ZN20GLXPlayerLeaderboard11sendRankGetEiiiib (kind 0x6f). Partial: the optional
    // field taken when the first argument is not negative is not identified.
    void sendRankGet(std::int32_t first, std::int32_t x, std::int32_t page, std::int32_t time, bool withScores);
    // 0x832ee4 _ZN20GLXPlayerLeaderboard13sendHighScoreEPc (kind 0x6e). Partial: the appended
    // field (the argument) uses a format that is not identified, so only the base request is sent.
    void sendHighScore(const char* score);
    // 0x832fb8 _ZN20GLXPlayerLeaderboard13sendHighScoreEiii (kind 0x6e). s is the score, l the
    // level (sent only when not negative) and t the time.
    // Returns the SendByGet result (1).
    std::int32_t sendHighScore(std::int32_t s, std::int32_t l, std::int32_t t);

    // Not in the original: test seams that fill the parsed lists.
    void SetEntryForTest(std::int32_t index, const char* name, const char* country,
                         std::int32_t position, std::int32_t score,
                         const std::vector<std::int32_t>& scoreData);
    void SetCountForTest(std::int32_t count) { count_ = count; }
    void SetCurrentForTest(std::int32_t position, const char* country, std::int32_t score,
                           const std::vector<std::int32_t>& scoreData);

private:
    std::int32_t count_ = -666666;                                     // +0x3c
    std::vector<std::unique_ptr<char[]>> names_;                       // +0x40
    std::vector<std::unique_ptr<char[]>> countries_;                   // +0x44
    std::vector<std::int32_t> positions_;                              // +0x48
    std::vector<std::int32_t> scores_;                                 // +0x4c
    std::vector<std::vector<std::int32_t>> scoreData_;                 // +0x50
    std::int32_t scoreDataCount_ = 0;                                  // +0x54
    std::int32_t currentPosition_ = -666666;                           // +0x58
    std::int32_t currentScore_ = -666666;                              // +0x5c
    std::vector<std::int32_t> currentScoreData_;                       // +0x60
    std::unique_ptr<char[]> currentCountry_;                           // +0x64
    bool withScores_ = false;                                          // +0x68
};
