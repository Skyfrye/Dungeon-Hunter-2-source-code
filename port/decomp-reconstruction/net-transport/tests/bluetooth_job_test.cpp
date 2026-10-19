#include "net-transport/bluetooth_socket.hpp"
#include "net-transport/update_job_thread.hpp"

#include <atomic>
#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // Bluetooth stand-ins: the original Android build returns these constants.
    CBluetoothSocket socket;
    CHECK(!socket.IsConnected());
    CHECK(socket.Send(nullptr, 0) == 0);
    CHECK(socket.Receive(nullptr, 0) == 0);
    CHECK(CBluetoothSocket::DisconnectFromAllPeers() == 1);
    CHECK(socket.GetDeviceNameByPeerId(42).empty());
    CHECK(socket.GetRemoteDeviceName().empty());
    CHECK(!socket.IsServer() && !socket.IsClient() && !socket.IsPeer());

    // Job object: the defaults and the worker thread start and stop.
    updateJob_thread job(3);
    CHECK(job.Prepare() == 1);
    CHECK(job.Kernel() == 1);
    CHECK(job.Finish() == 1);
    CHECK(job.Stop() == 1);
    CHECK(job.IsCurrectThreadRunning());
    CHECK(job.Start() == 0);
    CHECK(job.Start() == 0);  // a second start runs another detached worker, as the original does
    std::printf("%s\n", failures ? "bluetooth_job: FAILED" : "bluetooth_job: ok");
    return failures != 0;
}
