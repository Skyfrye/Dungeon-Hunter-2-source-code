// gameswf::as_value as the DH2 binary has it (Gameloft). This replaces the upstream struct in
// vendor-gameswf/upstream/gameswf-r1714/gameswf/gameswf_value.h, which is marked #if 0 there. The upstream
// layout (enum type at +0x00, inline tu_string, gc_ptr members, int flags) is not the binary's.
//
// Layout, 12 bytes on 32-bit (offsets as the 32-bit binary has them; host pointers are 8 bytes, so the offsets are comments only):
//   +0x00  m_flags  uint8   the protection flags of a member value (DONT_ENUM 1, DONT_DELETE 2, READ_ONLY 4). as_object::enumerate
//                           (0x76aca0) skips the members whose bit 0 is set; builtin_member sets DONT_ENUM; operator= copies the
//                           byte (an undefined source clears it); every constructor starts it at 0.
//   +0x01  m_type   uint8   value type, see as_value::type.
//   +0x04  payload  union   m_number (double, +0x04..+0x0b, packed to 4 bytes: the struct is 12 bytes, alignment 4), m_bool (one byte at +0x04), m_string (tu_string*, types 3 and 4),
//                           m_object (as_object*, type 5, and the target of a type 6 property).
//   +0x08  m_owner  ref_counted*  type 3: the as_string that owns the text (null when the text is an interned permanent string and
//                           nothing needs to be kept alive). Type 6: the as_property. Other types leave it unwritten.
//
// Type codes, from the switch statements of drop_refs, operator=, to_number, to_bool and to_string: 0 undefined, 1 boolean,
// 2 number, 3 string held by pointer (an interned permanent string, or the string inside an as_string that m_owner keeps alive),
// 4 string owned by the value (a heap tu_string it frees), 5 object (null allowed, "null"), 6 property (target at +0x04,
// as_property at +0x08).
//
// The binary has no m_string member, no number-to-text caching, no find_property and no abstract comparisons (AVM2): to_tu_string()
// returns only a held string (any other type gives a shared empty string); the text of a number, boolean or object is made by
// to_string(tu_string&). to_string() is the C string of to_tu_string().
//
// Bodies: vendor-gameswf/src/v1-vendor-gameswf-gameswf_as_value-794e76-0.cpp

#pragma once

#include <cstdint>

#include "gameswf/gameswf.h"  // as_object, as_function, ref_counted (DH2, ref_counted.hpp), fn_call

class tu_string;  // global in upstream

namespace gameswf {

struct as_property;  // gameswf_value.h (upstream); derives from ref_counted
struct as_function;  // gameswf.h / gameswf_value.h (upstream)
struct fn_call;      // gameswf.h (upstream)

// DH2: a ref-counted string. Only as_value::set_string(as_string*) (0x7971fc) names it: the value keeps the object in m_owner and
// points m_string at the string that follows the ref_counted header (+0x0c).
struct as_string : public ref_counted {
	::tu_string m_string;  // +0x0c
};

// DH2: replaces the upstream as_value. The binary's as_value is 12 bytes on 32-bit; see the layout above.
#pragma pack(push, 4)
struct as_value {
	// Protection flags of a member value (r1714's value_flag).
	enum value_flag
	{
		DONT_ENUM = 0x01,
		DONT_DELETE = 0x02,
		READ_ONLY = 0x04
	};

	// Value type, the byte at +0x01. Types 3 and 4 are both strings: 3 borrows its tu_string, 4 owns it.
	enum type : std::uint8_t
	{
		UNDEFINED = 0,
		BOOLEAN = 1,
		NUMBER = 2,
		STRING_BORROWED = 3,
		STRING = 4,
		OBJECT = 5,
		PROPERTY = 6
	};

	as_value() : m_flags(0), m_type(UNDEFINED), m_number(0.0) { m_owner = nullptr; }
	as_value(const as_value& v) : as_value() { operator=(v); }
	as_value(int val);                                   // 0x439d50
	as_value(const char* str);                           // 0x43a2ac
	as_value(const wchar_t* wstr);                       // 0x797408 (C1), 0x797448 (C2)
	as_value(bool val) : as_value() { set_bool(val); }
	as_value(float val) : as_value() { set_double(val); }
	as_value(double val) : as_value() { set_double(val); }
	as_value(as_object* obj);                            // 0x7babb0
	as_value(void (*func)(const fn_call& fn)) : as_value() { set_as_c_function(func); }
	as_value(const as_value& getter, const as_value& setter);  // 0x769540

	~as_value() { drop_refs(); }                         // 0x77eb90

	// Releases what the current type holds. Called before any change of type. The type byte is not changed.
	void drop_refs();                                    // 0x797124

	// Conversions.
	const char* to_xstring() const;                      // 0x796f5c, debugging
	const char* to_string() const;                       // 0x796fb4
	const tu_string& to_string(tu_string& buf) const;    // 0x797b7c
	const tu_string& to_tu_string() const;               // 0x420a84
	double to_number() const;                            // 0x797a54
	int to_int() const { return static_cast<int>(to_number()); }  // 0x43a1b8
	float to_float() const { return static_cast<float>(to_number()); }
	bool to_bool() const;                                // 0x797960
	as_function* to_function() const;                    // 0x796bac
	as_property* to_property() const;                    // 0x796ab8
	// Not a binary symbol (inlined there): the object, or null.
	as_object* to_object() const { return m_type == OBJECT ? m_object : nullptr; }

	// Setters. The set_*() forms are preferred; they are type-safe.
	void set_tu_string(const tu_string& str);            // 0x7972d8
	void set_string(const char* str);                    // 0x797350
	void set_string(as_string* str);                     // 0x7971fc
	void set_double(double val);                         // 0x797488
	void set_bool(bool val);                             // 0x797230
	void set_int(int val) { set_double(val); }
	void set_nan() { set_double(get_nan()); }            // inline in the binary
	void set_as_object(as_object* obj);                  // 0x797250
	void set_as_c_function(void (*func)(const fn_call& fn));  // 0x7972a0
	void set_undefined() { drop_refs(); m_type = UNDEFINED; }
	void set_null() { set_as_object(nullptr); }

	void set_property(const as_value& val);              // 0x797950
	void get_property(as_value* val) const;              // 0x797644
	void get_property(const as_value& primitive, as_value* val) const;  // 0x796b44
	const as_object* get_property_target() const;        // 0x796acc, debugging
	void set_property_target(as_object* new_target);     // 0x796bfc

	// Operators.
	void operator=(const as_value& v);                   // 0x79773c
	bool operator==(const as_value& v) const;            // 0x797dc0
	bool operator!=(const as_value& v) const;            // 0x798040
	bool operator<(double v) const { return to_number() < v; }
	void operator+=(double v) { set_double(to_number() + v); }
	void operator-=(double v) { set_double(to_number() - v); }
	void operator*=(double v) { set_double(to_number() * v); }
	void operator/=(double v) { set_double(to_number() / v); }  // 0x7ba984
	void operator&=(int v) { set_int(int(to_number()) & v); }
	void operator|=(int v) { set_int(int(to_number()) | v); }
	void operator^=(int v) { set_int(int(to_number()) ^ v); }
	void shl(int v) { set_int(int(to_number()) << v); }
	void asr(int v) { set_int(int(to_number()) >> v); }
	void lsr(int v) { set_int(static_cast<unsigned int>(to_number()) >> v); }

	// Type queries.
	bool is_function() const;                            // 0x796b80
	bool is_number() const { return m_type == NUMBER; }  // 0x439d8c: the type only, a NaN number is still a number
	bool is_bool() const { return m_type == BOOLEAN; }
	bool is_string() const { return m_type == STRING_BORROWED || m_type == STRING; }
	bool is_object() const { return m_type == OBJECT; }
	bool is_property() const { return m_type == PROPERTY; }
	bool is_null() const { return m_type == OBJECT && m_object == nullptr; }
	bool is_undefined() const { return m_type == UNDEFINED; }
	const char* _typeof() const;                         // 0x797654, binary name of type_of
	const char* type_of() const { return _typeof(); }    // r1714's name for the same function
	bool is_instance_of(const as_function* constructor) const;  // 0x796e0c

	// Member lookup on the value's builtin methods or on its object (0x796fd0).
	bool get_member(const tu_string& name, as_value* val);

	// Flags (the byte at +0x00).
	bool is_enum() const { return (m_flags & DONT_ENUM) ? false : true; }
	bool is_readonly() const { return (m_flags & READ_ONLY) ? true : false; }
	bool is_protected() const { return (m_flags & DONT_DELETE) ? true : false; }
	int get_flags() const { return m_flags; }
	void set_flags(int flags) const { m_flags = static_cast<std::uint8_t>(flags); }

private:
	// Layout of the binary (12 bytes, alignment 4): the double sits at +0x04, not +0x08, and m_owner at +0x08 overlays its high
	// word (types 3 and 6 use m_owner, the number types do not, so the overlap is harmless). A bare double would be aligned to 8 by
	// clang and GCC, which gives 24 bytes with the double at +0x08 and m_owner at +0x10; the original compiler (GCC 4.4, ARM EABI)
	// had it at +0x04, which only #pragma pack(4) on this type reproduces (STLPORT-DECISION.md section 4). The pack is scoped to
	// as_value; a global -fpack-struct=4 loses matches because it also packs unrelated structs. Host pointers are 8 bytes, so on the
	// host the offsets are 0, 1, 4, 4/12 and the size is 20 (no static_assert, decision 2).
	mutable std::uint8_t m_flags;  // +0x00 value_flag bits
	std::uint8_t m_type;     // +0x01 as_value::type
	union
	{
		double m_number;         // +0x04
		bool m_bool;             // +0x04, one byte
		struct
		{
			union
			{
				::tu_string* m_string;   // +0x04, types 3 and 4
				as_object* m_object;     // +0x04, type 5 and the target of type 6
			};
			ref_counted* m_owner;    // +0x08 (type 3 as_string, type 6 as_property); overlays the high word of m_number on 32-bit
		};
	};
};
#pragma pack(pop)

}  // namespace gameswf
