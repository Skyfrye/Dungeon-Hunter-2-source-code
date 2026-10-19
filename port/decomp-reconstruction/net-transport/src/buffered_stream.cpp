#include "net-transport/buffered_stream.hpp"

// 0x42b1e4 _ZN14BufferedStream10FillBufferEP11IStreamBase
// Reads the whole source into a new array. Verified against the listing: size from the source's
// size slot (+0x08) stored at this+4, operator new[](size) into this+0 only when it is positive,
// then `for (i = 0; i != size; i += read(this+i, size-i))` through the virtual read slot (+0x18),
// re-reading this+4 into the loop register after every call.
// Partial: the step is unbounded, so a read that returns 0 bytes spins forever in the original -
// the loop's only exit is i == size, and the same call is repeated with the same arguments. Reachable
// in principle whenever size() over-reports what read() then delivers (the port's own
// FileSystemWin32::_FileHandle::read returns 0 while canRead_ is false). The port breaks out of the
// loop on a zero or negative read, so its buffer can be short where the original hangs. That loop is
// not reproduced.
void BufferedStream::FillBuffer(IStreamBase* source) {
    size_ = static_cast<int>(source->size());
    if (size_ > 0) {
        data_.reset(new char[size_]);
    }
    int filled = 0;
    while (size_ != 0 && filled != size_) {
        int got = static_cast<int>(source->read(data_.get() + filled, static_cast<std::uint64_t>(size_ - filled)));
        if (got <= 0) {
            break;
        }
        filled += got;
    }
}
