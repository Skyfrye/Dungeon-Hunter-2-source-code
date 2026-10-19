// ISerializable: interface for objects written through IStreamBase.
#pragma once

class IStreamBase;

class ISerializable {
public:
    virtual ~ISerializable() = default;      // 0x33dca4 (compiler-generated)
    virtual void Serialize(IStreamBase* stream);    // 0x33dca8: no-op base
    virtual void Deserialize(IStreamBase* stream);  // 0x33dcac: no-op base
};
