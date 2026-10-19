#include "core-platform/w7_global_04.hpp"

#include <algorithm>
#include <cstdarg>
#include <cstdint>
#include <cstdio>
#include <cstring>

#if defined(_WIN32)
#include <winsock2.h>
#else
#include <arpa/inet.h>
#include <netdb.h>
#endif

#include "core-platform/debug_out.hpp"
#include "core-platform/lc_api.hpp"
#include "core-platform/misc_util.hpp"
#include "dh2/global/net_singletons.hpp"
#include "net-transport/data_packet.hpp"
#include "net-transport/process_param.hpp"

namespace {

// Copies a C string onto the heap with operator new[]: strlen + 1 bytes, zero-filled, then the
// text. This is the body of LC_API_STRNEW (0x89d31c) and XP_API_STRNEW (0x82b9a0), so the
// matching cleanup can use operator delete[].
char* DupCString(const char* text) {
    const std::size_t length = std::strlen(text);
    char* copy = new char[length + 1];
    std::memcpy(copy, text, length + 1);
    return copy;
}

// Maps a 16-bit value to a PCM sample: scale by 32768 and clamp to the short range.
std::int16_t ToPcm16(float sample) {
    const int value = static_cast<int>(sample * 32768.0f);
    if (value < -32768) {
        return -32768;
    }
    if (value > 32767) {
        return 32767;
    }
    return static_cast<std::int16_t>(value);
}

// Reads one UTF-16 unit as two bytes, low byte first. The original reads whole
// units when the source is aligned and byte pairs when it is not; both give the
// same unit on a little-endian target.
std::uint16_t LoadUnit(const unsigned char* at) {
    return static_cast<std::uint16_t>(at[0] | (at[1] << 8));
}

int Utf8Length(std::uint16_t unit) {
    if (unit <= 0x7F) {
        return 1;
    }
    if (unit <= 0x7FF) {
        return 2;
    }
    return 3;
}

// Shared body of ConvertUnicodeToUTF8_Old and ConvertUnicodeToUTF8_OldLC. The
// two originals differ only in how the masks are spelled, not in the result.
int ConvertUnicodeToUTF8Impl(char* dst, const unsigned short* src) {
    const unsigned char* bytes = reinterpret_cast<const unsigned char*>(src);
    if (dst == nullptr) {
        int needed = 1;  // terminating NUL
        for (std::size_t i = 0;; i += 2) {
            const std::uint16_t unit = LoadUnit(bytes + i);
            if (unit == 0) {
                break;
            }
            needed += Utf8Length(unit);
        }
        return needed;
    }

    char* out = dst;
    for (std::size_t i = 0;; i += 2) {
        const std::uint16_t unit = LoadUnit(bytes + i);
        if (unit == 0) {
            break;
        }
        if (unit <= 0x7F) {
            *out++ = static_cast<char>(unit);
        } else if (unit <= 0x7FF) {
            *out++ = static_cast<char>(0xC0 | ((unit >> 6) & 0x1F));
            *out++ = static_cast<char>(0x80 | (unit & 0x3F));
        } else {
            *out++ = static_cast<char>(0xE0 | (unit >> 12));
            *out++ = static_cast<char>(0x80 | ((unit >> 6) & 0x3F));
            *out++ = static_cast<char>(0x80 | (unit & 0x3F));
        }
    }
    *out = '\0';
    return static_cast<int>(out - dst);
}

// The .rodata table channel_position (IDA listing, 48 bytes). Six masks per
// source channel count n, at index 6 * n + channel.
constexpr std::uint8_t kChannelPosition[48] = {
    0, 0, 0, 0, 0, 0,   // n = 0
    7, 0, 0, 0, 0, 0,   // n = 1
    3, 5, 0, 0, 0, 0,   // n = 2
    3, 7, 5, 0, 0, 0,   // n = 3
    3, 5, 3, 5, 0, 0,   // n = 4
    3, 7, 5, 3, 5, 0,   // n = 5
    3, 7, 5, 3, 5, 7,   // n = 6
    0, 0, 0, 0, 0, 0,
};

// The function-local table convert_samples_short::channel_selector, read as
// little-endian 32-bit ints: row = output channel count, column = output channel.
constexpr std::uint32_t kChannelSelector[3][2] = {
    {0, 0},
    {1, 0},
    {2, 4},
};

}  // namespace

// 0x8279d8 _Z24ParseDedicatedServerInfoR21_tDedicatedServerInfoP10DataPacket
// The listing step for step. Vtable +0x40 (getShortLenString) fills a local name and a local 16-bit length; TransToIp rewrites the name;
// a null name returns 0; inet_addr goes to info +0x18; vtable +0x24 (getShort) runs twice and the first result goes to info +0x1c and
// the second to info +0x1e; vtable +0x14 (getInt) writes info +0x2c; inet_ntoa runs twice on the four bytes at info +0x18, both results
// discarded; 1 is returned. The three slots are the DataPacket slots net-transport declares at those offsets, so the calls are the real
// virtual calls. The record is dh2/global/net_singletons.hpp's _tDedicatedServerInfo.
bool ParseDedicatedServerInfo(_tDedicatedServerInfo& info, DataPacket* packet) {
    char* host = nullptr;
    std::int16_t host_length = 0;
    packet->getShortLenString(host, host_length);  // vtable +0x40
    TransToIp(&host);
    if (host == nullptr) {
        return false;
    }

    info.address = inet_addr(host);

    std::int16_t first_port = 0;
    std::int16_t second_port = 0;
    packet->getShort(first_port);   // vtable +0x24, first call -> info +0x1c
    packet->getShort(second_port);  // vtable +0x24, second call -> info +0x1e
    info.unk_1c = first_port;
    info.unk_1e = second_port;

    packet->getInt(info.unk_2c);  // vtable +0x14

    in_addr stored{};
    stored.s_addr = info.address;
    (void)inet_ntoa(stored);
    (void)inet_ntoa(stored);
    return true;
}

// 0x828b64 _Z8_DBG_OUTPKcz
// Reconstructed against the ARM listing: a 0x400-byte stack buffer (SP+8), vsprintf of the format
// and the varargs into it, printf("%s", buffer), then __android_log_print(4, "WIFI", "%s",
// buffer), whose result the function returns (R0 at the BX LR, with __stack_chk_guard checked).
// Deviations, both named. (1) The format is written with vsnprintf and the same 1 KiB bound where
// the original's vsprintf is unbounded: a host overflow guard for a format longer than the buffer,
// the deviation the sibling debug sink _DEBUG_OUT (0x324114, same 1 KiB buffer) already carries.
// (2) __android_log_print has no host equivalent, so the same tag and the same text go to
// appDebugLog, the tree's __android_log_write stand-in, which returns void; the text length is
// returned instead, which is the byte count a "%s" log call reports. Not covered by a test.
int _DBG_OUT(const char* format, ...) {
    char buffer[1024];
    va_list args;
    va_start(args, format);
    std::vsnprintf(buffer, sizeof buffer, format, args);
    va_end(args);
    std::printf("%s", buffer);
    appDebugLog("WIFI", buffer);
    return static_cast<int>(std::strlen(buffer));
}

// 0x82aa10 _Z24ConvertUnicodeToUTF8_OldPcPKt
int ConvertUnicodeToUTF8_Old(char* dst, const unsigned short* src) {
    return ConvertUnicodeToUTF8Impl(dst, src);
}

// 0x89c6ac _Z26ConvertUnicodeToUTF8_OldLCPcPKt
int ConvertUnicodeToUTF8_OldLC(char* dst, const unsigned short* src) {
    return ConvertUnicodeToUTF8Impl(dst, src);
}

// The process-wide host caches. The binary has one l_host / l_count pair, reached through the GOT
// pointers l_host_ptr and l_count_ptr, and one l_hostLC / l_countLC pair, reached through
// l_hostLC_ptr and l_countLC_ptr. Each is defined once here with the host hostent type; an entry
// is the hostent the thread functions below fill in. Declared in w7_global_04.hpp.
hostent* l_host[4] = {};
int l_count = 0;
hostent* l_hostLC[4] = {};
int l_countLC = 0;

// 0x841ba8 _Z26threadGetHostByNameProcessPv
// Reconstructed against the ARM listing and Hex-Rays: the request is the declared PROCESSPARAM
// (net-transport's type for the binary's m_getHostByNameThreadParam), so the busy-flag pointer is
// at +0x00 and the name at +0x04 - the two fields the listing reads at the 32-bit offsets 0 and 4.
// The flag is set to 1, gethostbyname runs on the name, a null result is returned with the flag
// left set, otherwise the entry is added while fewer than four exist (operator new(0x14) zeroed,
// h_length copied, h_name = XP_API_STRNEW of the requested name, h_addr_list = operator new[](4)
// with its first word XP_API_STRNEW of the first address read as a C string), the count is
// incremented, the trace runs and the flag is cleared. On the added path the listing returns the
// trace call's leftover r0, type-punned into the hostent* result; XP_DEBUG_OUT (0x82b784) is not
// reconstructed in this tree, so _DBG_OUT stands in for it - it formats the same text and returns
// its length, the same kind of value (the log call's byte count) - and that value is returned here.
// Only the shape of that value is observable at all: the function is a thread entry point, whose
// return value the thread discards. Deviations, named: the resolver is the host's gethostbyname
// (the same call the binary makes); the entry is a host hostent (new hostent{} zeroes the host
// struct where the binary memsets 0x14 bytes of the 32-bit one), and net-transport's
// android_socket.cpp readers keep their own g_host_cache, so they do not see these entries.
// Not covered by a test (network lookup).
hostent* threadGetHostByNameProcess(void* request) {
    PROCESSPARAM* param = static_cast<PROCESSPARAM*>(request);

    *param->flagAddress = 1;
    hostent* result = gethostbyname(param->serverName);
    if (result != nullptr) {
        if (l_count <= 3) {
            hostent* entry = new hostent{};
            l_host[l_count] = entry;
            entry->h_length = result->h_length;
            entry->h_name = DupCString(param->serverName);
            entry->h_addr_list = new char*[1]{};
            // As in the original, the first address pointer is copied as a C string.
            entry->h_addr_list[0] = DupCString(result->h_addr_list[0]);
            ++l_count;
            const int traced = _DBG_OUT("GetHostByName() - Add %s \n", param->serverName);
            result = reinterpret_cast<hostent*>(static_cast<std::intptr_t>(traced));
        }
        *param->flagAddress = 0;
    }
    return result;
}

// 0x89f8a0 _Z28threadGetHostByNameProcessLCPv
// Reconstructed against the ARM listing and Hex-Rays: the same body as 0x841ba8 against the
// l_hostLC / l_countLC pair (the single pair the binary reaches through l_hostLC_ptr and
// l_countLC_ptr), with LC_API_MEMSET and LC_API_STRNEW where the XP variant has XP_API_MEMSET and
// XP_API_STRNEW. The function is void and the listing discards the result of its trace call (r0 is
// not used; the call is the last statement before the flag is cleared and the function returns).
// The trace is LC_DEBUG_OUT with the format "GetHostByName() - Add %s \n" and the requested name;
// the tree declares LC_DEBUG_OUT with no parameters (the binary's 0x89c304 is an empty stub:
// PUSH {R0-R3}; ADD SP, SP, #0x10; BX LR, so it ignores the two argument registers), so the call
// is kept argument-less. Deviations, named: the request is the declared PROCESSPARAM (busy-flag
// pointer +0x00, name +0x04, the 32-bit offsets the listing reads), the resolver is the host's
// gethostbyname, and the entry is a host hostent (new hostent{} zeroes the host struct where the
// binary memsets 0x14 bytes of the 32-bit one). GetHostIP (0x89f9a0), GetHostByName (0x89fb04) and
// Startup (0x89feec) read the binary's pair, but net-transport/src/lc_android_socket.cpp keeps its
// own anonymous-namespace l_hostLC / l_countLC and a duplicate of this worker, so those readers do
// not see these entries until that file uses the core-platform pair. Not covered by a test
// (network lookup).
void threadGetHostByNameProcessLC(void* request) {
    PROCESSPARAM* param = static_cast<PROCESSPARAM*>(request);

    *param->flagAddress = 1;
    hostent* result = gethostbyname(param->serverName);
    if (result != nullptr) {
        if (l_countLC <= 3) {
            hostent* entry = new hostent{};
            l_hostLC[l_countLC] = entry;
            entry->h_length = result->h_length;
            entry->h_name = DupCString(param->serverName);
            entry->h_addr_list = new char*[1]{};
            entry->h_addr_list[0] = DupCString(result->h_addr_list[0]);
            ++l_countLC;
            LC_DEBUG_OUT();
        }
        *param->flagAddress = 0;
    }
}

// 0x843b2c _Z11trimHTMLstrSs
// Note: the original erases (close + 1) characters starting at the '<' rather
// than the length of the tag. That is reproduced as found.
std::string trimHTMLstr(std::string text) {
    static const char* const kEntities[5][2] = {
        {"&lt;", "<"},
        {"&gt;", ">"},
        {"&amp;", "&"},
        {"&quot;", "\""},
        {"&apos;", "'"},
    };
    for (const auto& pair : kEntities) {
        const std::size_t length = std::strlen(pair[0]);
        std::size_t at = 0;
        while ((at = text.find(pair[0], 0, length)) != std::string::npos) {
            text.replace(at, length, pair[1]);
        }
    }

    std::size_t open = 0;
    while ((open = text.find('<', open)) != std::string::npos) {
        std::size_t close = text.find('>', open);
        if (close == std::string::npos) {
            close = text.size();
        }
        text.erase(open, close + 1);
    }
    return text;
}

// 0x876e8c _ZL21convert_samples_shortiPPsiiPPfii
// Converts float planes to 16-bit PCM. A mapping path downmixes to mono or
// stereo with channel_position; otherwise the common channels are copied, the
// rest are silenced, and the copy ignores in_offset (as in the original).
namespace {
[[maybe_unused]] void convert_samples_short(int out_channels, std::int16_t** out, int out_offset, int in_channels,
                           float** in, int in_offset, int sample_count) {
    const bool mapping = out_channels <= 2 && out_channels != in_channels && in_channels <= 6;
    if (mapping) {
        if (out_channels <= 0) {
            return;
        }
        for (int out_ch = 0; out_ch < out_channels; ++out_ch) {
            const std::uint32_t selector = kChannelSelector[out_channels][out_ch];
            std::int16_t* dst = out[out_ch] + out_offset;
            if (sample_count <= 0) {
                continue;
            }
            int block = 32;
            int done = 0;
            int src = in_offset;
            do {
                float acc[32] = {};
                if (sample_count < block + done) {
                    block = sample_count - done;
                }
                if (in_channels > 0) {
                    for (int ch = 0; ch < in_channels; ++ch) {
                        if ((kChannelPosition[6 * in_channels + ch] & selector) != 0 && block > 0) {
                            for (int i = 0; i != block; ++i) {
                                acc[i] += in[ch][src + i];
                            }
                        }
                    }
                }
                if (block > 0) {
                    for (int j = 0; j != block; ++j) {
                        dst[j] = ToPcm16(acc[j]);
                    }
                }
                src += 32;
                done += 32;
                dst += 32;
            } while (sample_count > done);
        }
        return;
    }

    const int copied = std::min(in_channels, out_channels);
    for (int ch = 0; ch < copied; ++ch) {
        std::int16_t* dst = out[ch] + out_offset;
        for (int k = 0; k < sample_count; ++k) {
            dst[k] = ToPcm16(in[ch][k]);
        }
    }
    for (int ch = std::max(copied, 0); ch < out_channels; ++ch) {
        std::memset(out[ch] + out_offset, 0, static_cast<std::size_t>(sample_count) * sizeof(std::int16_t));
    }
}

// 0x8771bc _ZL34convert_channels_short_interleavediPsiPPfii
// Converts float planes to interleaved 16-bit PCM. Stereo outputs from six or
// fewer channels use channel_position: a bit 2 channel feeds left, bit 4 feeds
// right, and mask 6 feeds both. Otherwise the common channels are copied and the
// rest are silenced.
[[maybe_unused]] void convert_channels_short_interleaved(int out_channels, std::int16_t* out, int in_channels,
                                        float** in, int in_offset, int sample_count) {
    const bool mapping = out_channels <= 2 && out_channels != in_channels && in_channels <= 6;
    if (mapping) {
        if (out_channels <= 0 || sample_count <= 0) {
            return;
        }
        for (int done = 0; done < sample_count; done += 16) {
            int block = 16;
            if (sample_count < done + block) {
                block = sample_count - done;
            }
            float acc[32] = {};
            const int src = in_offset + done;
            if (in_channels > 0 && block > 0) {
                for (int ch = 0; ch < in_channels; ++ch) {
                    const int mask = kChannelPosition[6 * in_channels + ch] & 6;
                    if (mask == 6) {
                        for (int k = 0; k < block; ++k) {
                            acc[2 * k] += in[ch][src + k];
                            acc[2 * k + 1] += in[ch][src + k];
                        }
                    } else if (mask == 2) {
                        for (int k = 0; k < block; ++k) {
                            acc[2 * k] += in[ch][src + k];
                        }
                    } else if (mask == 4) {
                        for (int k = 0; k < block; ++k) {
                            acc[2 * k + 1] += in[ch][src + k];
                        }
                    }
                }
            }
            if (block > 0) {
                std::int16_t* dst = out + 2 * done;
                for (int k = 0; k < 2 * block; ++k) {
                    dst[k] = ToPcm16(acc[k]);
                }
            }
        }
        return;
    }

    const int copied = std::min(in_channels, out_channels);
    for (int frame = 0; frame < sample_count; ++frame) {
        std::int16_t* row = out + frame * out_channels;
        const int src = in_offset + frame;
        for (int ch = 0; ch < copied; ++ch) {
            row[ch] = ToPcm16(in[ch][src]);
        }
        for (int ch = std::max(copied, 0); ch < out_channels; ++ch) {
            row[ch] = 0;
        }
    }
}
}  // namespace
