// gameswf_stream.h	-- Thatcher Ulrich <tu@tulrich.com> 2003

// This source code has been donated to the Public Domain.  Do
// whatever you want with it.

// A class to handle reading the elements of SWF files.


#ifndef GAMESWF_STREAM_H
#define GAMESWF_STREAM_H


#include "base/container.h"
class tu_file;


namespace gameswf
{
	struct action_buffer;	// DH2: friend of stream below

	// stream is used to encapsulate bit-packed file reads.
	struct stream
	{
		friend struct action_buffer;	// DH2: action_buffer::read (0x7bafa4) tests the flag at +0x00
		stream(tu_file* input);
		stream(tu_file* input, bool flag);  // DH2: binary ctor 0x783dd4 / 0x783e24 (second argument stored at +0x00)
		~stream();

		bool	read_bool();
		int	read_uint(int bitcount);
		int	read_sint(int bitcount);
		float	read_fixed();
		float	read_float16();
		float	read_float();
		double	read_double();
		void	align();

		Uint8	read_u8();
		Sint8	read_s8();
		Uint16	read_u16();
		Sint16	read_s16();
		Uint32	read_u32();
		Sint32	read_s32();

		// flash9

		Uint32 read_vu32();

		inline int read_vs32()
		{
			return static_cast<int>(read_vu32());
		}

		inline int read_vu30()
		{
			return static_cast<int>(read_vu32());
		}

		int     read_variable_count()
		{
			int count = read_u8();
			if (count == 0xFF)
				count = read_u16();
			return count;
		};

		// For null-terminated string.
		void	read_string(tu_string* str);	

		// For string that begins with an 8-bit length code.
		void	read_string_with_length(tu_string* str);

		// For variable-length string, flash9
		void	read_string_with_length(int len, tu_string* str);

		int	get_position();
		void	set_position(int pos);
		int	get_tag_end_position();
		int	open_tag();
		void	close_tag();

		tu_file*	get_underlying_stream() { return m_input; }

	private:
		bool	unk_00;  // DH2 +0x00: second constructor argument (binary ctor 0x783dd4), not read by any stream member
		tu_file*	m_input;	// +0x04
		Uint8	m_current_byte;	// +0x08
		Uint8	m_unused_bits;	// +0x09

		array<int>	m_tag_stack;	// +0x0c, position of end of tag (16 bytes: the byte at +0x18 is the array's m_borrowed)
		array<char>	unk_1c;  // DH2 +0x1c: the DH2 constructor reserves 256 bytes (16 bytes: the byte at +0x28 is the array's m_borrowed)
	};


};	// end namespace gameswf


#endif // GAMESWF_STREAM_H


// Local Variables:
// mode: C++
// c-basic-offset: 8 
// tab-width: 8
// indent-tabs-mode: t
// End:
