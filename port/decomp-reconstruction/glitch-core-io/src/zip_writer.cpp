#include "glitch-core-io/io/zip_writer.hpp"

#include <cstring>

#include "glitch-core-io/boost/crc_table.hpp"

namespace glitch::io {

namespace {

// The 22-byte end-of-central-directory record close() writes, field order as the stack object of the listing.
struct SEndRecord {
    std::uint32_t signature;      // 101010256 = 0x06054b50
    std::uint16_t diskNumber;     // 0
    std::uint16_t directoryDisk;  // 0
    std::uint16_t entriesOnDisk;  // record count
    std::uint16_t entriesTotal;   // record count
    std::uint32_t directorySize;  // +0x14 of the writer
    std::uint32_t directoryOffset; // +0x10 of the writer
    std::uint16_t commentLength;  // 0
};

void putU16(std::uint8_t* p, std::uint16_t v) {
    p[0] = static_cast<std::uint8_t>(v);
    p[1] = static_cast<std::uint8_t>(v >> 8);
}
void putU32(std::uint8_t* p, std::uint32_t v) {
    p[0] = static_cast<std::uint8_t>(v);
    p[1] = static_cast<std::uint8_t>(v >> 8);
    p[2] = static_cast<std::uint8_t>(v >> 16);
    p[3] = static_cast<std::uint8_t>(v >> 24);
}

}  // namespace

// 0x6b4f34 _ZN6glitch2io10CZipWriterC2EPNS0_10IWriteFileE (C1 at 0x6b4f90 is the same body)
// The write file is not reference counted by the writer in the original.
CZipWriter::CZipWriter(IWriteFile* file) : writeFile(file) {}

// 0x6b4fec _ZN6glitch2io10CZipWriter5closeEv
// Sets the flag byte (+0x0c); then for each 46-byte central-directory record, in order, writes the record and the
// name of the same index through the write file (slot +0x0c); then the 22-byte end record (signature 0x06054b50, two
// zero words, the record count twice, the directory size (+0x14) and the directory offset (+0x10), a zero comment
// length) and flushes the write file (slot +0x10). The listing computes the count as 14247 * (bytes / 2) truncated to
// 16 bits, which is the exact division of the byte count by 46 (14247 is the inverse of 23 modulo 65536).
void CZipWriter::close() {
    flag = true;
    for (std::size_t i = 0; i < records.size(); ++i) {
        writeFile->write(records[i].data(), 46);
        const core::stringc& entryName = names[i];
        writeFile->write(entryName.data(), static_cast<unsigned>(entryName.size()));
    }
    const std::uint16_t count = static_cast<std::uint16_t>(14247u * static_cast<std::uint32_t>((records.size() * 46u) >> 1));
    std::uint8_t end[22];
    putU32(end + 0, 101010256u);
    putU16(end + 4, 0);
    putU16(end + 6, 0);
    putU16(end + 8, count);
    putU16(end + 10, count);
    putU32(end + 12, directorySize);
    putU32(end + 16, directoryOffset);
    putU16(end + 20, 0);
    writeFile->write(end, 22);
    writeFile->flush();
}

// 0x6b5238 _ZN6glitch2io10CZipWriterD1Ev (D2 at 0x6b5288, the same body; D0 0x6b52d8 is the deleting form)
// close() always runs (no check of the flag), then the name vector and the record block are freed by the members.
CZipWriter::~CZipWriter() { close(); }

// 0x6b5448 _ZN6glitch2io10CZipWriter10addNewFileERKSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEEPKvj
// A stored (uncompressed) entry. The CRC-32 is the reflected table CRC (init 0xFFFFFFFF, final complement). A 30-byte
// local header (signature 0x04034b50, version 10, no flags, method 0, the crc, both sizes = size, name length, no extra
// field) and the matching 46-byte central record (signature 0x02014b50, made-by and needed versions 10, the crc, both
// sizes, name length, zero comment/disk/attribute fields, and the local header's offset = the running offset +0x10) are
// built; the record and the name are appended to their vectors; the directory size (+0x14) grows by 46 + name length and
// the running offset (+0x10) by 30 + name length + size; then the header, the name and the data are written in that order
// and the last write's result returned. The two 16-bit time and date fields of both records are never stored by the
// original (they carry whatever the stack held); they are written as zero.
std::size_t CZipWriter::addNewFile(const core::stringc& name, const void* data, unsigned int size) {
    boost::detail::crc_table_t_32_79764919_true::init_table();
    std::uint32_t crc = 0xffffffffu;
    const auto* bytes = static_cast<const std::uint8_t*>(data);
    for (unsigned int i = 0; i < size; ++i) {
        crc = boost::detail::crc_table_t_32_79764919_true::table_[static_cast<std::uint8_t>(crc ^ bytes[i])] ^ (crc >> 8);
    }
    crc = ~crc;
    const std::uint16_t nameLength = static_cast<std::uint16_t>(name.size());

    std::uint8_t header[30] = {};
    putU32(header + 0, 67324752u);
    putU16(header + 4, 10);
    putU32(header + 14, crc);
    putU32(header + 18, size);
    putU32(header + 22, size);
    putU16(header + 26, nameLength);

    std::array<std::uint8_t, 46> record = {};
    putU32(record.data() + 0, 33639248u);
    putU32(record.data() + 4, 655370u);
    putU32(record.data() + 16, crc);
    putU32(record.data() + 20, size);
    putU32(record.data() + 24, size);
    putU32(record.data() + 28, nameLength);
    putU32(record.data() + 42, directoryOffset);
    records.push_back(record);
    names.push_back(name);

    directorySize += 46u + static_cast<std::uint32_t>(name.size());
    directoryOffset += 30u + static_cast<std::uint32_t>(name.size()) + size;
    writeFile->write(header, 30);
    writeFile->write(name.data(), static_cast<unsigned>(name.size()));
    return writeFile->write(data, size);
}

// 0x6b581c _ZN6glitch2io10CZipWriter10addNewFileERKSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEEPNS0_9IReadFileE
// Reads the whole read file (slot +0x20 size, slot +0x0c read) into a block and adds it as above.
void CZipWriter::addNewFile(const core::stringc& name, IReadFile* file) {
    const unsigned int size = static_cast<unsigned int>(file->getSize());
    char* block = new char[size];
    file->read(block, size);
    addNewFile(name, block, static_cast<unsigned int>(file->getSize()));
    delete[] block;
}

}  // namespace glitch::io
