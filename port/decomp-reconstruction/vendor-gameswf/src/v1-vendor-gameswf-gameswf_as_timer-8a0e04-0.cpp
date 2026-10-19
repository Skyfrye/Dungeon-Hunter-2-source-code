// batch v1-vendor-gameswf-gameswf_as_timer-8a0e04-0  category=vendor-gameswf  owner=gameswf::as_timer
//
// Gameloft version of gameswf::as_timer (setInterval and setTimeout). The declarations are the "DH2:" lines
// in upstream/gameswf-r1714/gameswf/gameswf_as_classes/as_global.h. There the upstream weak_ptr members
// m_this_ptr and m_func are wrapped in #if 0 and replaced by as_value members, and the upstream advance()
// in as_global.cpp is wrapped in #if 0. The 6-argument call_method with a debug label is declared in
// gameswf_action.h (DH2).
//
// Binary field offsets (32-bit): m_interval +0x38, m_this_ptr +0x3c (as_value, 12 bytes), m_func +0x48
// (as_value), m_time_remainder +0x54, m_arg +0x58 (array<as_value>, 16 bytes with its borrowed flag at +0x64).
// The object is 0x68 bytes. r1714's m_do_once is not in the binary: the byte at +0x64 is m_arg's flag. The
// declaration order in as_global.h follows these offsets; m_interval is the first field the constructor writes
// after the base constructor, so as_object (0x38 bytes) is directly in front of it.
//
// Not defined here: the call_method overload that takes the debug label (binary 0x7ba904). The
// callees of advance() and clear_refs() are the upstream/DH2 functions named in each body.
//
// Not written: a unit test. Every body runs on as_object, root or the environment, which need the engine.
//
// Pairs with one body each: C1 0x7a7064 and C2 0x7a6f24, D1 0x7a6e48 and D2 0x7a6ec4. The deleting
// destructor D0 0x7a6ea8 is compiler-generated and is not written here (see the ledger).

#include "gameswf/gameswf_as_classes/as_global.h"
#include "gameswf/gameswf_action.h"
#include "gameswf/gameswf_environment.h"
#include "gameswf/gameswf_root.h"

namespace gameswf
{

namespace {

// The value the binary writes over a cleared reference (clear_refs): a number 0. Its type byte is 2 and
// its payload is zero, and its flags byte is zero, as as_value() leaves them.
as_value cleared_reference()
{
	as_value v;
	v.set_double(0.0);
	return v;
}

}  // namespace

// 0x7a6f24 gameswf::as_timer::as_timer(gameswf::as_value&, gameswf::as_value&, double, gameswf::fn_call const&, int)  [C2]
// 0x7a7064 gameswf::as_timer::as_timer(gameswf::as_value&, gameswf::as_value&, double, gameswf::fn_call const&, int)  [C1, same body]
//
// The base is built from the environment's player. A dead player reference is cleared by get_ptr()
// (the binary releases the proxy and nulls both words). The interval is stored in seconds, as a float
// divided by 1000.0f. The arguments from first_arg_index up to fn.nargs are pushed onto m_arg, the first
// index inclusive (the binary's loop pushes the index before it increments it). The timer is then added to
// the listener block at root +0xb8: the binary calls gameswf::listener::add(root+0xb8, this) after a
// non-virtual call to as_object::get_root(). That block is declared on the DH2 root as add_listener()
// (vendor-gameswf/include/vendor-gameswf/gameswf_root.hpp), an inline forwarder to listener::add (gameswf_listener.cpp).
as_timer::as_timer(as_value& target, as_value& func, double interval_ms, const fn_call& fn, int first_arg_index)
	:
	as_object(fn.env->m_player.get_ptr())
{
	m_interval = static_cast<float>(interval_ms) / 1000.0f;	// +0x38
	m_this_ptr = target;	// +0x3c: as_value::operator=
	m_func = func;	// +0x48
	m_time_remainder = 0.0f;	// +0x54
	// m_arg (+0x58) starts empty.

	for (int i = first_arg_index; i < fn.nargs; ++i)
	{
		m_arg.push_back(fn.arg(i));
	}

	as_object::get_root()->add_listener(this);	// binary: gameswf::as_object::get_root(void), a direct call
}

// 0x7a6e48 gameswf::as_timer::~as_timer()  [D1]
// 0x7a6ec4 gameswf::as_timer::~as_timer()  [D2, same body]
//
// The argument array is emptied and its buffer released (resize(0), then reserve(0)). Then the function and
// the target drop their references, in that order. The base destructor runs after the body, as in the
// binary. The as_value members drop_refs() a second time when they are destroyed; drop_refs() clears its
// pointer, so the second call does nothing.
as_timer::~as_timer()
{
	m_arg.resize(0);
	m_arg.reserve(0);
	m_func.drop_refs();	// +0x48
	m_this_ptr.drop_refs();	// +0x3c
}

// 0x7a6da8 gameswf::as_timer::clear()
// Removes this timer from the root listener list. The binary calls get_root() through the vtable (slot +0x54),
// then gameswf::listener::remove(root+0xb8, this). The result of remove is not used. Here the virtual get_root()
// is called as a member, which is the same dispatch, and remove_listener() is the DH2 root declaration.
void as_timer::clear()
{
	get_root()->remove_listener(this);
}

// 0x7a6b94 gameswf::as_timer::clear_refs(gameswf::hash<gameswf::as_object*, bool, gameswf::fixed_size_hash<gameswf::as_object*> >*, gameswf::as_object*)
// Virtual, vtable +0x40. Returns at once when this timer is already in the visited set. Otherwise the base
// clear_refs() runs first. Then, for the target, the function and each argument: a reference to this_ptr
// becomes the number 0, and any other object is passed on to its own clear_refs().
void as_timer::clear_refs(hash<as_object*, bool>* visited_objects, as_object* this_ptr)
{
	// The binary tests presence with find_index() >= 0 (a private member here). get(key, NULL) answers the
	// same question without touching a value, and does not insert.
	if (visited_objects->get(this, NULL))
	{
		return;
	}
	as_object::clear_refs(visited_objects, this_ptr);

	// Target (+0x3c).
	if (as_object* target = m_this_ptr.to_object())
	{
		if (target == this_ptr)
		{
			m_this_ptr = cleared_reference();
		}
		else
		{
			target->clear_refs(visited_objects, this_ptr);
		}
	}

	// Function (+0x48).
	if (as_object* func = m_func.to_object())
	{
		if (func == this_ptr)
		{
			m_func = cleared_reference();
		}
		else
		{
			func->clear_refs(visited_objects, this_ptr);
		}
	}

	// Arguments (+0x58). The binary re-reads the count and the buffer on each pass.
	for (int i = 0; i < m_arg.size(); ++i)
	{
		if (as_object* arg = m_arg[i].to_object())
		{
			if (arg == this_ptr)
			{
				m_arg[i] = cleared_reference();
			}
			else
			{
				arg->clear_refs(visited_objects, this_ptr);
			}
		}
	}
}

// 0x7a71a4 gameswf::as_timer::advance(float)
// Virtual. The time remainder is the sum of the delta and the remainder, stored before the test. When the
// sum reaches the interval, the remainder is set to 0 (not reduced by the interval, as upstream does). The
// arguments are pushed onto a fresh environment, and the function is called with a copy of the target as
// its this value, with the pushed arguments and the stack top as the first argument index. The
// function call result and the copy are dropped, then the environment is destroyed. The binary has no
// do-once removal here.
void as_timer::advance(float delta_time)
{
	m_time_remainder = delta_time + m_time_remainder;
	if (m_time_remainder >= m_interval)
	{
		m_time_remainder = 0.0f;

		as_environment env(get_player());
		const int n = m_arg.size();
		for (int i = 0; i < n; ++i)
		{
			env.push(m_arg[i]);
		}

		as_value this_value;
		this_value = m_this_ptr;

		as_value result = call_method(m_func, &env, this_value, n, env.get_top_index(), "timer");
	}
}

}  // namespace gameswf
