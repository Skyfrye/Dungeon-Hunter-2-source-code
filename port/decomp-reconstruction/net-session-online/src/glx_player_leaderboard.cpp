#include "net-session-online/glx_player_leaderboard.hpp"

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>
#include <vector>

#include "net-session-online/glx_text.hpp"
#include "net-session-online/owned_text.hpp"

namespace {
// The original's default score for a missing entry (-666666, as an unsigned word).
constexpr std::int32_t kSentinel = -666666;
constexpr std::int32_t kMissingScore = kSentinel;

// The original reads entry index only when index < count and the array is allocated.
template <typename T>
bool EntryPresent(const std::vector<T>& list, std::int32_t index, std::int32_t count) {
    return index >= 0 && index < count && static_cast<std::size_t>(index) < list.size();
}

// Number of '|' characters in the text (the original's first counting loop).
std::int32_t CountPipes(const char* text) {
    std::int32_t pipes = 0;
    for (const char* p = text; *p != '\0'; ++p) {
        if (*p == '|') {
            ++pipes;
        }
    }
    return pipes;
}

// The original divides the adjusted pipe count by the field count of one entry. A
// non-positive divisor is not reachable from the server data; the port returns 0 there.
std::int32_t SafeDivide(std::int32_t value, std::int32_t divisor) {
    return divisor > 0 ? value / divisor : 0;
}
}  // namespace

// 0x833244 _ZN20GLXPlayerLeaderboardC1Ev, 0x8332dc _ZN20GLXPlayerLeaderboardC2Ev
// The web component's LoadConfig is partial, so the three owned strings the client is built
// from are empty when no service configuration is loaded.
GLXPlayerLeaderboard::GLXPlayerLeaderboard() {
    GLXPlayerWebComponent::LoadConfig();
    requestClient_ = std::make_unique<GLXPlayerHttp>(string10_.get(), string18_.get(), string14_.get());
}

// 0x8331b0 _ZN20GLXPlayerLeaderboardD1Ev, 0x833208 _ZN20GLXPlayerLeaderboardD2Ev
GLXPlayerLeaderboard::~GLXPlayerLeaderboard() {
    clearLeaderboard();
}

// 0x8321b0 _ZN20GLXPlayerLeaderboard36getCurrentPlayerLeaderboardScoreDataEv
const std::int32_t* GLXPlayerLeaderboard::getCurrentPlayerLeaderboardScoreData() const {
    return currentScoreData_.empty() ? nullptr : currentScoreData_.data();
}

// 0x8321b8 _ZN20GLXPlayerLeaderboard18getLeaderboardSizeEv
std::int32_t GLXPlayerLeaderboard::getLeaderboardSize() const {
    if (names_.empty()) {
        return -1;
    }
    return count_;
}

// 0x83223c _ZN20GLXPlayerLeaderboard29getLeaderboardEntryPlayerNameEi
const char* GLXPlayerLeaderboard::getLeaderboardEntryPlayerName(std::int32_t index) const {
    if (EntryPresent(names_, index, count_)) {
        return names_[static_cast<std::size_t>(index)].get();
    }
    return nullptr;
}

// 0x832264 _ZN20GLXPlayerLeaderboard32getLeaderboardEntryPlayerCountryEi
const char* GLXPlayerLeaderboard::getLeaderboardEntryPlayerCountry(std::int32_t index) const {
    if (EntryPresent(countries_, index, count_)) {
        return countries_[static_cast<std::size_t>(index)].get();
    }
    return nullptr;
}

// 0x83228c _ZN20GLXPlayerLeaderboard33getLeaderboardEntryPlayerPositionEi
std::int32_t GLXPlayerLeaderboard::getLeaderboardEntryPlayerPosition(std::int32_t index) const {
    if (EntryPresent(positions_, index, count_)) {
        return positions_[static_cast<std::size_t>(index)];
    }
    return -1;
}

// 0x8322b4 _ZN20GLXPlayerLeaderboard30getLeaderboardEntryPlayerScoreEi
std::int32_t GLXPlayerLeaderboard::getLeaderboardEntryPlayerScore(std::int32_t index) const {
    if (EntryPresent(scores_, index, count_)) {
        return scores_[static_cast<std::size_t>(index)];
    }
    return kMissingScore;
}

// 0x8322e0 _ZN20GLXPlayerLeaderboard34getLeaderboardEntryPlayerScoreDataEi
const std::int32_t* GLXPlayerLeaderboard::getLeaderboardEntryPlayerScoreData(std::int32_t index) const {
    if (EntryPresent(scoreData_, index, count_)) {
        const auto& data = scoreData_[static_cast<std::size_t>(index)];
        return data.empty() ? nullptr : data.data();
    }
    return nullptr;
}

// 0x8321cc _ZN20GLXPlayerLeaderboard19getLeaderboardEntryEiRPcRiS2_RPiS2_
// The original returns 0 when the index is out of range or the name list is absent. The
// score-data pointer and count are set only when the scoreDataCount is positive.
std::int32_t GLXPlayerLeaderboard::getLeaderboardEntry(std::int32_t index, char*& name,
                                                       std::int32_t& position, std::int32_t& score,
                                                       std::int32_t*& scoreData,
                                                       std::int32_t& scoreDataCount) {
    if (count_ <= index) {
        return 0;
    }
    if (names_.empty() || static_cast<std::size_t>(index) >= names_.size()) {
        return 0;
    }
    const auto i = static_cast<std::size_t>(index);
    name = names_[i].get();
    position = positions_.size() > i ? positions_[i] : 0;
    score = scores_.size() > i ? scores_[i] : 0;
    if (scoreDataCount_ > 0 && i < scoreData_.size()) {
        scoreData = scoreData_[i].data();
    }
    scoreDataCount = scoreDataCount_;
    return 1;
}

// 0x832a48 _ZN20GLXPlayerLeaderboard16clearLeaderboardEv
// The per-entry arrays are vectors in the port, so freeing an entry is clearing the vector.
void GLXPlayerLeaderboard::clearLeaderboard() {
    names_.clear();
    countries_.clear();
    positions_.clear();
    scores_.clear();
    scoreData_.clear();
    count_ = kSentinel;
    currentScore_ = kSentinel;
    currentScoreData_.clear();
    currentCountry_.reset();
    currentPosition_ = kSentinel;
}

// 0x832594 _ZN20GLXPlayerLeaderboard14processRankingEPc
// The ranking starts with a flag: "y" carries the current row (position, score and score data,
// and a country when scores are requested), "n" has no current row. Each entry is
// position|name|[country]|score|scoreData... . The entry count comes from the pipe count.
void GLXPlayerLeaderboard::processRanking(char* text) {
    const std::int32_t sc = scoreDataCount_;
    const std::string flag = GLXField(text, 0, '|');
    if (flag != "y" && flag != "n") {
        return;
    }

    std::int32_t base = 0;     // the original's v13 before the pipe count
    std::int32_t entryField;   // the field index of the first entry
    if (flag == "y") {
        currentPosition_ = std::atoi(GLXField(text, 1, '|').c_str());
        if (currentPosition_ < 0) {
            base = -3 - sc;
            currentPosition_ = kSentinel;
            currentScore_ = kSentinel;
            currentScoreData_.clear();
            entryField = sc + 4;
        } else {
            std::int32_t scoreField;
            std::int32_t dataField;
            if (withScores_) {
                currentCountry_ = GLXCopy(GLXField(text, 3, '|'));
                scoreField = 4;
                dataField = 5;
            } else {
                scoreField = 3;
                dataField = 4;
            }
            currentScore_ = std::atoi(GLXField(text, scoreField, '|').c_str());
            currentScoreData_.clear();
            if (sc > 0) {
                currentScoreData_.resize(static_cast<std::size_t>(sc));
                for (std::int32_t k = 0; k < sc; ++k) {
                    currentScoreData_[static_cast<std::size_t>(k)] =
                        std::atoi(GLXField(text, dataField + k, '|').c_str());
                }
                entryField = dataField + sc;
            } else {
                entryField = dataField;
            }
        }
    } else {
        entryField = 1;
    }

    std::int32_t total = base + CountPipes(text);
    std::int32_t entries;
    if (currentPosition_ < 0) {
        entries = withScores_ ? SafeDivide(total, sc + 4) : SafeDivide(total, sc + 3);
    } else if (withScores_) {
        total += -4 - sc;
        entries = SafeDivide(total, sc + 4);
    } else {
        total += -3 - sc;
        entries = SafeDivide(total, sc + 3);
    }
    count_ = entries;
    if (entries <= 0) {
        return;
    }

    const auto n = static_cast<std::size_t>(entries);
    names_.clear();
    names_.resize(n);
    countries_.clear();
    countries_.resize(n);
    positions_.assign(n, 0);
    scores_.assign(n, 0);
    scoreData_.clear();
    if (sc > 0) {
        scoreData_.assign(n, std::vector<std::int32_t>(static_cast<std::size_t>(sc), 0));
    }

    for (std::size_t i = 0; i < n; ++i) {
        positions_[i] = std::atoi(GLXField(text, entryField, '|').c_str());
        names_[i] = GLXCopy(GLXField(text, entryField + 1, '|'));
        std::int32_t field = entryField + 2;
        if (withScores_) {
            countries_[i] = GLXCopy(GLXField(text, field, '|'));
            ++field;
        }
        scores_[i] = std::atoi(GLXField(text, field, '|').c_str());
        entryField = field + 1;
        if (sc > 0) {
            for (std::int32_t k = 0; k < sc; ++k) {
                scoreData_[i][static_cast<std::size_t>(k)] =
                    std::atoi(GLXField(text, entryField++, '|').c_str());
            }
        }
    }
}

// 0x832308 _ZN20GLXPlayerLeaderboard20processRankingAroundEPc
// The entries have no flag or current row: position|name|score|scoreData... . The count
// subtracts the current-row fields when a current position is set (it is not negative).
void GLXPlayerLeaderboard::processRankingAround(char* text) {
    const std::int32_t sc = scoreDataCount_;
    std::int32_t total = CountPipes(text);
    if (currentPosition_ >= 0) {
        total += -3 - sc;
    }
    const std::int32_t entries = SafeDivide(total, sc + 3);
    count_ = entries;
    if (entries <= 0) {
        return;
    }

    const auto n = static_cast<std::size_t>(entries);
    names_.clear();
    names_.resize(n);
    positions_.assign(n, 0);
    scores_.assign(n, 0);
    scoreData_.clear();
    if (sc > 0) {
        scoreData_.assign(n, std::vector<std::int32_t>(static_cast<std::size_t>(sc), 0));
    }

    std::int32_t field = 0;
    for (std::size_t i = 0; i < n; ++i) {
        positions_[i] = std::atoi(GLXField(text, field, '|').c_str());
        names_[i] = GLXCopy(GLXField(text, field + 1, '|'));
        scores_[i] = std::atoi(GLXField(text, field + 2, '|').c_str());
        field += 3;
        if (sc > 0) {
            for (std::int32_t k = 0; k < sc; ++k) {
                scoreData_[i][static_cast<std::size_t>(k)] =
                    std::atoi(GLXField(text, field++, '|').c_str());
            }
        }
    }
}

// 0x8330c4 _ZN20GLXPlayerLeaderboard15OnUpdateSuccessEi
void GLXPlayerLeaderboard::OnUpdateSuccess(std::int32_t arg) {
    const std::string response = cursor_ != nullptr ? cursor_ : "";
    std::string text = response;
    switch (arg) {
        case 'o':
            clearLeaderboard();
            processRanking(text.data());
            break;
        case 'p':
            clearLeaderboard();
            processRankingAround(text.data());
            break;
        case 'n':
            currentPosition_ = std::atoi(GLXField(text.c_str(), 3, '|').c_str());
            break;
        default:
            break;
    }
    GLXPlayerWebComponent::OnUpdateSuccess(arg);
}

// 0x832c2c _ZN20GLXPlayerLeaderboard13addScoreEntryEPciiiPii
std::int32_t GLXPlayerLeaderboard::addScoreEntry(std::string& buffer, std::int32_t score,
                                                 std::int32_t level, std::int32_t time,
                                                 const std::int32_t* scores,
                                                 std::int32_t count) const {
    char segment[128];
    std::int32_t written = std::snprintf(segment, sizeof(segment), "l|%d|t|%d|sl|0|s|%d|",
                                         level, time, score);
    buffer += segment;
    if (count > 0) {
        for (std::int32_t i = 0; i != count;) {
            const std::int32_t value = scores[i++];
            written = std::snprintf(segment, sizeof(segment), "l|%d|t|%d|sl|%d|s|%d|",
                                    level, time, i, value);
            buffer += segment;
        }
    }
    return written;
}

void GLXPlayerLeaderboard::SetEntryForTest(std::int32_t index, const char* name, const char* country,
                                           std::int32_t position, std::int32_t score,
                                           const std::vector<std::int32_t>& scoreData) {
    const auto i = static_cast<std::size_t>(index);
    if (names_.size() <= i) names_.resize(i + 1);
    if (countries_.size() <= i) countries_.resize(i + 1);
    if (positions_.size() <= i) positions_.resize(i + 1, 0);
    if (scores_.size() <= i) scores_.resize(i + 1, 0);
    if (scoreData_.size() <= i) scoreData_.resize(i + 1);
    names_[i] = OwnedDup(name);
    countries_[i] = OwnedDup(country);
    positions_[i] = position;
    scores_[i] = score;
    scoreData_[i] = scoreData;
}

void GLXPlayerLeaderboard::SetCurrentForTest(std::int32_t position, const char* country,
                                             std::int32_t score,
                                             const std::vector<std::int32_t>& scoreData) {
    currentPosition_ = position;
    currentCountry_ = OwnedDup(country);
    currentScore_ = score;
    currentScoreData_ = scoreData;
}
