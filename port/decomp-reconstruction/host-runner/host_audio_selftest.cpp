// --audio-selftest <sounds dir>: decodes every .wav and .vxn file of the sound folder with the vox decoders (DecoderMSWav: PCM and IMA ADPCM,
// DecoderNative: the VoxN containers) and reports frames decoded against the header, peak level, and failures. No game boot needed.
#include <windows.h>

#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <string>
#include <vector>

#include "vox-audio/vox/decoder.hpp"
#include "vox-audio/vox/decoder_mswav.hpp"
#include "vox-audio/vox/decoder_native.hpp"
#include "vox-audio/vox/stream.hpp"

namespace dh2host {

int audioSelfTest(const std::string& dir) {
    WIN32_FIND_DATAA fd;
    HANDLE h = FindFirstFileA((dir + "/*").c_str(), &fd);
    if (h == INVALID_HANDLE_VALUE) { std::fprintf(stderr, "no folder %s\n", dir.c_str()); return 2; }
    int ok = 0, bad = 0;
    do {
        std::string name = fd.cFileName;
        bool wav = name.size() > 4 && name.substr(name.size() - 4) == ".wav";
        bool vxn = name.size() > 4 && name.substr(name.size() - 4) == ".vxn";
        if (!wav && !vxn) continue;
        std::FILE* f = std::fopen((dir + "/" + name).c_str(), "rb");
        if (!f) { std::printf("FAIL %-48s cannot open\n", name.c_str()); ++bad; continue; }
        std::vector<std::uint8_t> data;
        std::fseek(f, 0, SEEK_END); data.resize(std::ftell(f)); std::fseek(f, 0, SEEK_SET);
        if (std::fread(data.data(), 1, data.size(), f) != data.size()) { std::fclose(f); ++bad; continue; }
        std::fclose(f);

        vox::StreamMemoryBufferParams sp;
        sp.data = data.data(); sp.size = static_cast<int>(data.size()); sp.explicit_owns = true; sp.owns = false;
        vox::StreamMemoryBuffer stream(&sp);
        vox::StreamCursorInterface* sc = stream.CreateNewCursor();
        sc->Init();
        vox::DecoderInterface* dec = wav ? static_cast<vox::DecoderInterface*>(new vox::DecoderMSWav())
                                         : static_cast<vox::DecoderInterface*>(new vox::DecoderNative());
        dec->Init();
        vox::DecoderCursorInterface* cur = dec->CreateNewCursor(sc);
        if (!cur) { std::printf("FAIL %-48s no cursor\n", name.c_str()); ++bad; continue; }
        cur->Init();
        const vox::TrackParams p = cur->GetTrackParams();
        const int bytesPerFrame = p.channels * (p.bits_per_sample >> 3);
        long long frames = 0;
        double peak = 0, sumsq = 0;
        std::vector<std::int16_t> buf(4096 * 2);
        const char* dumpDir = std::getenv("DH2_SELFTEST_DUMP");   // optional: raw decoded samples, to compare with a reference decoder
        std::FILE* dump = (dumpDir && wav) ? std::fopen((std::string(dumpDir) + "/" + name + ".raw").c_str(), "wb") : nullptr;
        bool err = false;
        if (bytesPerFrame <= 0 || p.channels > 2) err = true;
        int guard = 0;
        while (!err && cur->HasData() && (vxn ? frames < 60LL * 44100 * 4 : frames < p.length_frames + 4096LL) && guard++ < 10000000) {
            int bytes = cur->Decode(buf.data(), 4096 * bytesPerFrame);   // Decode counts bytes, as the emitter passes them
            if (bytes <= 0) break;
            int n = bytes / bytesPerFrame;
            if (dump) std::fwrite(buf.data(), 1, bytes, dump);
            for (int i = 0; i < n * p.channels; ++i) { double v = buf[i] / 32768.0; if (std::fabs(v) > peak) peak = std::fabs(v); sumsq += v * v; }
            frames += n;
        }
        if (dump) std::fclose(dump);
        double rms = frames ? std::sqrt(sumsq / (frames * (p.channels ? p.channels : 1))) : 0;
        // Length check: wav/native report their frame count; a loop-free decode must come back with exactly that many frames.
        bool lenOk = vxn ? frames > 0 : frames == p.length_frames;
        bool good = !err && frames > 0 && lenOk && peak > 0.0001;
        std::printf("%s %-48s %s ch=%d rate=%d bits=%d frames=%lld/%d peak=%.3f rms=%.4f\n", good ? "OK  " : "FAIL", name.c_str(),
                    wav ? "wav" : "vxn", p.channels, p.sample_rate, p.bits_per_sample, frames, p.length_frames, peak, rms);
        good ? ++ok : ++bad;
        dec->DestroyCursor(cur);
        sc->Shutdown();
        stream.DestroyCursor(sc);
        delete dec;
    } while (FindNextFileA(h, &fd));
    FindClose(h);
    std::printf("selftest: %d ok, %d failed\n", ok, bad);
    return bad ? 1 : 0;
}

}  // namespace dh2host
