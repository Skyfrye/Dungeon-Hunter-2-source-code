// gameswf_abc.h	-- Vitaly Alexeev <tishka92@yahoo.com>	2008

// This source code has been donated to the Public Domain.  Do
// whatever you want with it.

// do_abc tag reader

#ifndef GAMESWF_ABC_H
#define GAMESWF_ABC_H

#include "gameswf/gameswf_types.h"
#include "gameswf/gameswf_avm2.h"
#include "gameswf/gameswf_log.h"

namespace gameswf
{

	struct abc_def;
	struct as_function;
	struct movie_definition_sub;

	struct multiname
	{
		enum kind
		{
			CONSTANT_UNDEFINED = 0,
			CONSTANT_QName = 0x07,
			CONSTANT_QNameA = 0x0D,
			CONSTANT_RTQName = 0x0F,
			CONSTANT_RTQNameA = 0x10,
			CONSTANT_RTQNameL = 0x11,
			CONSTANT_RTQNameLA = 0x12,
			CONSTANT_Multiname = 0x09,
			CONSTANT_MultinameA = 0x0E,
			CONSTANT_MultinameL = 0x1B,
			CONSTANT_MultinameLA = 0x1C
		};

		int m_kind;
		int m_flags;
		int m_ns;
		int m_ns_set;
		int m_name;

		multiname() :
			m_kind(CONSTANT_UNDEFINED),
			m_flags(0),
			m_ns(0),
			m_ns_set(0),	// DH2: all five fields start at 0 (r1714 leaves m_ns_set uninitialised)
			m_name(0)
		{
		}

		inline bool is_qname() const
		{
			return m_kind == CONSTANT_QName;
		}
	};

	struct namespac
	{
		enum kind
		{
			CONSTANT_Undefined = 0,
			CONSTANT_Namespace = 0x08,
			CONSTANT_PackageNamespace = 0x16,
			CONSTANT_PackageInternalNs = 0x17,
			CONSTANT_ProtectedNamespace = 0x18,
			CONSTANT_ExplicitNamespace = 0x19,
			CONSTANT_StaticProtectedNs = 0x1A,
			CONSTANT_PrivateNs = 0x05
		};

		kind m_kind;
		int	m_name;

		namespac() :
			m_kind(CONSTANT_Undefined),
			m_name(0)
		{
		}

	};

	// DH2: 12 bytes (ref_counted only), vtable off_991200; read() is empty (0x7b7fb0)
	struct metadata_info : public ref_counted
	{
		void	read(stream* in, abc_def* abc);
	};


	//
	// instance_info
	//
	// DH2: 0x40 bytes (new instance_info(), 0x40): ref_counted +0x00, m_name +0x0c, m_super_name +0x10, m_flags +0x14, m_protectedNs
	// DH2: +0x18, m_interface +0x1c (array<int>, 16 bytes), m_iinit +0x2c, m_trait +0x30 (array<smart_ptr<traits_info> >, 16 bytes).
	// DH2: r1714's weak_ptr<abc_def> m_abc is not in the binary (read() never sets it). Vtable off_991210: D1 0x7b9938, D0 0x7b99d0.
	struct instance_info : public ref_counted
	{

		enum flags
		{
			CONSTANT_ClassSealed = 0x01,
			CONSTANT_ClassFinal = 0x02,
			CONSTANT_ClassInterface = 0x04,
			CONSTANT_ClassProtectedNs = 0x08
		};

		int m_name;
		int m_super_name;
		Uint8 m_flags;
		int m_protectedNs;
		array<int> m_interface;
		int m_iinit;
		gc_array<gc_ptr<traits_info> > m_trait;
		#if 0 /* DH2: not in the binary (the object is 0x40 bytes and read() never stores the definition) */
		weak_ptr<abc_def> m_abc;
		#endif /* DH2 */

		instance_info() :
			m_name(0),
			m_super_name(0),
			m_flags(0),
			m_protectedNs(0),
			m_iinit(0)
		{
		}

		void	read(stream* in, abc_def* abc);	// DH2: 0x7b970c

		~instance_info();	// DH2: 0x7b9938 (D1); the body is empty, the arrays and ref_counted are destroyed after it
	};

	// DH2: 0x20 bytes: ref_counted +0x00, m_cinit +0x0c, m_trait +0x10 (array, 16 bytes). Vtable off_991220: D1 0x7b931c, D0 0x7b926c.
	struct class_info : public ref_counted
	{
		#if 0 /* DH2: not in the binary (m_cinit is the first member, +0x0c) */
		weak_ptr<abc_def> m_abc;
		#endif /* DH2 */
		int m_cinit;	// DH2: +0x0c
		gc_array<gc_ptr<traits_info> > m_trait;	// DH2: +0x10

		void	read(stream* in, abc_def* abc);	// DH2: 0x7b90f8
	};

	// DH2: 0x20 bytes: ref_counted +0x00, m_init +0x0c, m_trait +0x10. Vtable off_991230: D1 0x7b92c8, D0 0x7b9370.
	struct script_info : public ref_counted
	{
		int m_init;	// DH2: +0x0c
		gc_array<gc_ptr<traits_info> > m_trait;	// DH2: +0x10

		void	read(stream* in, abc_def* abc);
	};

	// DH2: 0xcc bytes. ref_counted +0x00, then twelve arrays of 16 bytes (each with its borrowed flag): m_integer +0x0c, m_uinteger
	// DH2: +0x1c, m_double +0x2c, m_string +0x3c, m_namespace +0x4c, m_ns_set +0x5c, m_multiname +0x6c, m_method +0x7c, m_metadata
	// DH2: +0x8c, m_instance +0x9c, m_class +0xac, m_script +0xbc. Vtable off_991250: D1 0x7b94c4 (D2 0x7b99ec), D0 0x7b96f0.
	// DH2: The binary has no out-of-line get_instance_info, get_class_info, get_class_from_constructor or get_script_function
	// DH2: (they are r1714's and nothing in the queue defines them); find_instance below stands in for the instance lookup.
	struct abc_def : public ref_counted
	{
		// constant pool
		array<int> m_integer;
		array<Uint32> m_uinteger;
		array<double> m_double;
		array<tu_string> m_string;
		array<namespac> m_namespace;
		array< array<int> > m_ns_set;
		array<multiname> m_multiname;

//		array<gc_ptr<method_info> > m_method;
		gc_array<gc_ptr<as_3_function> > m_method;
		gc_array<gc_ptr<metadata_info> > m_metadata;
		gc_array<gc_ptr<instance_info> > m_instance;
		gc_array<gc_ptr<class_info> > m_class;
		gc_array<gc_ptr<script_info> > m_script;

		inline const char* get_string(int index) const
		{
			return m_string[index].c_str(); 
		}

		inline int get_integer(int index) const
		{
			return m_integer[index]; 
		}

		inline double get_double(int index) const
		{
			return m_double[index]; 
		}

		inline const char* get_namespace(int index) const
		{
			return get_string(m_namespace[index].m_name); 
		}

		inline const char* get_multiname(int index) const
		{
			return get_string(m_multiname[index].m_name); 
		}

		inline multiname::kind get_multiname_type(int index) const
		{
			return (multiname::kind)m_multiname[index].m_kind; 
		}

		inline const char* get_multiname_namespace(int index) const
		{
			const multiname & mn = m_multiname[index];

			switch( mn.m_kind )
			{
				case multiname::CONSTANT_QName:
					return "";
				case multiname::CONSTANT_Multiname:
				case multiname::CONSTANT_MultinameA:
					return get_namespace( mn.m_ns );
				default:
					log_msg( "implement get_multiname_namespace for this kind %i\n", mn.m_kind );
					return NULL;
			} 
		}

		as_function* get_script_function( const tu_string & name = "" ) const;

		inline as_function* get_class_function( const int class_index ) const
		{
			return m_method[m_class[class_index]->m_cinit].get();
		}

		abc_def(player* player);
		virtual ~abc_def();

		void	read(stream* in, movie_definition_sub* m);
		void	read_cpool(stream* in);

		inline const char * get_super_class(tu_string& name) const
		{
			return get_multiname( get_instance_info( name )->m_super_name );
		}

		const char * get_class_from_constructor(int method);

		// get class constructor
		// DH2: 0x7b7fc0, takes tu_string& (not const) and goes through find_instance
		as_function* get_class_constructor(tu_string& name) const;

		// find instance info by name
		instance_info* get_instance_info(const tu_string& class_name) const;
		class_info* get_class_info(const tu_string& full_class_name) const;
		class_info* get_class_info(int class_index) const;
		// DH2: Gameloft addition, binary 0x7b7fb4: returns m_instance[0] whatever the name is (the buffer is read without a size
		// DH2: check; Hex-Rays types the result int). get_class_constructor reads m_iinit (+0x2c) of the result. Body:
		// DH2: vendor-gameswf/src/v1-vendor-gameswf-pack16-133bd3-0.cpp.
		instance_info* find_instance(const tu_string& name) const;
	};
}


#endif // GAMESWF_ABC_H
