// CNetLog: singleton network log hook. Reconstructed from libDungeonHunter2.so
// pseudocode; the original body of Update is empty.
#pragma once

class CNetLog {
public:
    virtual ~CNetLog() = default;                 // 0x80f074 _ZN7CNetLogD1Ev
    CNetLog(const CNetLog&) = delete;
    CNetLog& operator=(const CNetLog&) = delete;

    void Update();                                // 0x80f078 _ZN7CNetLog6UpdateEv
    static CNetLog* GetInstance();                // 0x80f07c _ZN7CNetLog11GetInstanceEv

private:
    CNetLog() = default;
    static CNetLog s_log;                         // _ZN7CNetLog5s_logE
};
