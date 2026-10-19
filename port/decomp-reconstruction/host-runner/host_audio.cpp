// Host audio sink for the fake android.media.AudioTrack (host_jni.cpp). The vox engine's Android driver (vox::DriverAndroid, the audio-thread
// path) mixes 44.1 kHz stereo 16-bit frames and hands them to AudioTrack.write through JNI; this file is what that write lands in:
//  * --audio-wav <file>: everything written is appended to a WAV file (written while paused or not: only play state counts), for headless checks;
//  * --audio-out (default in the window runner): the frames go to the Windows waveOut device, write() blocking when four buffers are queued,
//    as AudioTrack.write blocks on a full track.
#include <windows.h>
#include <mmsystem.h>

#include <atomic>
#include <cstdio>
#include <cstring>
#include <mutex>
#include <vector>

#include "host_runner.hpp"

namespace dh2host {
namespace {

std::mutex g_mu;
std::FILE* g_wav = nullptr;
std::uint64_t g_dataBytes = 0;
bool g_out = false;
bool g_playing = false;
HWAVEOUT g_hwo = nullptr;
constexpr int kBufs = 4;
struct Buf { WAVEHDR hdr; std::vector<char> data; };
Buf g_bufs[kBufs];
int g_next = 0;
std::atomic<std::uint64_t> g_totalBytes{0};
std::atomic<std::uint64_t> g_peak{0};
float g_volume = 1.0f;

void wavHeader(std::FILE* f, std::uint32_t dataBytes) {
    std::uint8_t h[44];
    std::memcpy(h, "RIFF", 4);
    std::uint32_t v = 36 + dataBytes; std::memcpy(h + 4, &v, 4);
    std::memcpy(h + 8, "WAVEfmt ", 8);
    v = 16; std::memcpy(h + 16, &v, 4);
    std::uint16_t w = 1; std::memcpy(h + 20, &w, 2);
    w = 2; std::memcpy(h + 22, &w, 2);
    v = 44100; std::memcpy(h + 24, &v, 4);
    v = 44100 * 4; std::memcpy(h + 28, &v, 4);
    w = 4; std::memcpy(h + 32, &w, 2);
    w = 16; std::memcpy(h + 34, &w, 2);
    std::memcpy(h + 36, "data", 4);
    std::memcpy(h + 40, &dataBytes, 4);
    std::fwrite(h, 1, 44, f);
}

}  // namespace

void audioOpen(const Options& opt) {
    std::lock_guard<std::mutex> l(g_mu);
    if (g_wav || g_hwo) return;
    if (!opt.audioWav.empty()) {
        g_wav = std::fopen(opt.audioWav.c_str(), "wb");
        if (g_wav) { wavHeader(g_wav, 0); g_dataBytes = 0; }
    }
    if (opt.audioOut) {
        WAVEFORMATEX fmt{};
        fmt.wFormatTag = WAVE_FORMAT_PCM;
        fmt.nChannels = 2;
        fmt.nSamplesPerSec = 44100;
        fmt.wBitsPerSample = 16;
        fmt.nBlockAlign = 4;
        fmt.nAvgBytesPerSec = 44100 * 4;
        if (waveOutOpen(&g_hwo, WAVE_MAPPER, &fmt, 0, 0, CALLBACK_NULL) == MMSYSERR_NOERROR) {
            g_out = true;
        } else {
            std::fprintf(stderr, "[audio] waveOutOpen failed; running without output\n");
            g_hwo = nullptr;
        }
    }
}

void audioPlay(bool on) {
    std::lock_guard<std::mutex> l(g_mu);
    g_playing = on;
    if (g_hwo) { if (on) waveOutRestart(g_hwo); else waveOutPause(g_hwo); }
}

// Returns bytes consumed. Blocks (without holding the lock) while the device has no free buffer.
int audioWrite(const void* data, int bytes) {
    {
        std::lock_guard<std::mutex> l(g_mu);
        if (!g_playing) return bytes;
        g_totalBytes += bytes;
        const std::int16_t* s = static_cast<const std::int16_t*>(data);
        std::uint64_t pk = g_peak.load();
        for (int i = 0; i < bytes / 2; ++i) {
            std::uint64_t a = s[i] < 0 ? -static_cast<int>(s[i]) : s[i];
            if (a > pk) pk = a;
        }
        g_peak = pk;
        if (g_wav) { std::fwrite(data, 1, bytes, g_wav); g_dataBytes += bytes; }
    }
    if (g_out) {
        Buf& b = g_bufs[g_next];
        for (int spins = 0; (b.hdr.dwFlags & WHDR_PREPARED) && !(b.hdr.dwFlags & WHDR_DONE) && spins < 2000; ++spins) Sleep(2);
        if (b.hdr.dwFlags & WHDR_PREPARED) waveOutUnprepareHeader(g_hwo, &b.hdr, sizeof(WAVEHDR));
        b.data.assign(static_cast<const char*>(data), static_cast<const char*>(data) + bytes);
        std::memset(&b.hdr, 0, sizeof(WAVEHDR));
        b.hdr.lpData = b.data.data();
        b.hdr.dwBufferLength = static_cast<DWORD>(bytes);
        waveOutPrepareHeader(g_hwo, &b.hdr, sizeof(WAVEHDR));
        waveOutWrite(g_hwo, &b.hdr, sizeof(WAVEHDR));
        g_next = (g_next + 1) % kBufs;
    }
    return bytes;
}

void audioClose() {
    std::lock_guard<std::mutex> l(g_mu);
    if (g_wav) {
        std::fseek(g_wav, 0, SEEK_SET);
        wavHeader(g_wav, static_cast<std::uint32_t>(g_dataBytes));
        std::fclose(g_wav);
        g_wav = nullptr;
    }
    if (g_hwo) {
        waveOutReset(g_hwo);
        for (Buf& b : g_bufs) if (b.hdr.dwFlags & WHDR_PREPARED) waveOutUnprepareHeader(g_hwo, &b.hdr, sizeof(WAVEHDR));
        waveOutClose(g_hwo);
        g_hwo = nullptr;
    }
    std::fprintf(stderr, "[audio] frames written=%llu peak=%llu\n", (unsigned long long)(g_totalBytes / 4), (unsigned long long)g_peak.load());
}

}  // namespace dh2host
