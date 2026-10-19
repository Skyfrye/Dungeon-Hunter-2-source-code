// ConditionData: a condition expression string plus its parsed ConditionList.
// Original size 0x24. Embedded twice in ObjectBase (+0x8c activate, +0xb0 deactivate).
#pragma once

#include <string>

class ConditionList;

class ConditionData {
public:
    ConditionData();                        // 0x33ed7c / 0x33edd8
    virtual ~ConditionData();               // 0x33e7f8 (D1) / 0x33eae8 (D2); deleting D0 at 0x33eacc is compiler generated

    void Init();                            // 0x33eb28: looks the name up in Arrays::v2Conditions, builds m_list
    void Clear();                           // 0x33e7c8: deletes m_list
    bool IsTrue() const;                    // 0x33e5f8: true when tested, or no list, else m_list->Eval()
    void SetAsTested(bool tested);          // 0x33dd24

    // +0x00 vptr
    std::string m_text;                     // +0x04 condition name (24 bytes in the original std::string)
    ConditionList* m_list;                  // +0x1c, 0 until Init() resolves the name
    bool m_tested;                          // +0x20
    // 3 bytes padding to 0x24
};
