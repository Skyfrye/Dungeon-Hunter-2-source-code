#include "net-transport/net_log.hpp"

#include <cstdio>

int main() {
    CNetLog* log = CNetLog::GetInstance();
    int failures = 0;
    if (log == nullptr || log != CNetLog::GetInstance()) {
        std::printf("FAIL singleton\n");
        ++failures;
    }
    log->Update();
    std::printf("%s\n", failures ? "net_log: FAILED" : "net_log: ok");
    return failures != 0;
}
