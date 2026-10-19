// gameswf::traits_info, instance_info, class_info, script_info, metadata_info and abc_def (the AVM2 definition classes).
//
// The DH2 layouts are declared once, in the upstream headers gameswf/gameswf_avm2.h (traits_info) and gameswf/gameswf_abc.h
// (the rest), as DH2 changes to the r1714 structs. Once the array is 16 bytes (buffer, size, capacity and the borrowed flag)
// the binary's classes are r1714's with two removals: class_info and instance_info have no weak_ptr<abc_def> m_abc. The V1
// header that stood here modelled arrays as 12 bytes and filled the gaps with pads; it is gone. This header only pulls the
// definitions in for the batch sources that include it by this name.
//
//   traits_info   0x34 bytes: ref_counted +0x00, m_name +0x0c, m_kind +0x10, m_attr +0x11, union +0x14 (16 bytes),
//                 m_metadata +0x24 (array<int>)
//   instance_info 0x40 bytes: ref_counted +0x00, m_name +0x0c, m_super_name +0x10, m_flags +0x14, m_protectedNs +0x18,
//                 m_interface +0x1c, m_iinit +0x2c, m_trait +0x30 (array<smart_ptr<traits_info>>)
//   class_info    0x20 bytes: m_cinit +0x0c, m_trait +0x10
//   script_info   0x20 bytes: m_init +0x0c, m_trait +0x10
//   abc_def       0xcc bytes: twelve arrays from +0x0c in steps of 0x10 (m_integer ... m_script)
//
// Bodies: vendor-gameswf/src/v1-vendor-gameswf-pack17-c88d12-0.cpp (traits_info and instance_info destructors),
// v1-vendor-gameswf-pack16-133bd3-0.cpp (abc_def constructors, class_info destructor, find_instance and others).

#pragma once

#include "gameswf/gameswf_abc.h"
