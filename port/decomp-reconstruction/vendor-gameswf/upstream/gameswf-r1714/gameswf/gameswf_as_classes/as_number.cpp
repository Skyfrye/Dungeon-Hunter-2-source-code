// as_number.cpp	-- Vitaly Alexeev <tishka92@yahoo.com>	2008

// This source code has been donated to the Public Domain.  Do
// whatever you want with it.

#include "gameswf/gameswf_as_classes/as_number.h"
#include "gameswf/gameswf_as_classes/as_string.h"
#include "gameswf/gameswf_log.h"

namespace gameswf
{

	// static builtins methods of Number class

	static const char s_hex_digits[] = "0123456789ABCDEFGHIJKLMNOPQRSTUVXYZW";

#if 0 /* DH2: replaced by the definition that follows (as_global_parse_float, 0x7a40f8) */
	void as_global_parse_float(const fn_call& fn)
	{
		if (fn.nargs > 0)  
		{
			double res;
			if (string_to_number(&res, fn.arg(0).to_string()))
			{
				fn.result->set_double(res);
				return;
			}
		}
		fn.result->set_nan();
	}
#endif /* DH2 */
	void as_global_parse_float(const fn_call& fn)
	{
		// DH2: 0x7a40f8. Exactly one argument; two or more give NaN.
		if (fn.nargs == 1)
		{
			double res;
			if (string_to_number(&res, fn.arg(0).to_string()))
			{
				fn.result->set_double(res);
				return;
			}
		}
		fn.result->set_nan();
	}

#if 0 /* DH2: replaced by the definition that follows (as_global_parse_int, 0x7a4058) */
	void as_global_parse_int(const fn_call& fn)
	{
		if (fn.nargs > 0)
		{
			int res;
			int base = fn.nargs > 1 ? fn.arg(1).to_int() : 10;
			if (string_to_number(&res, fn.arg(0).to_string(), base))
			{
				fn.result->set_int(res);
				return;
			}
		}
		fn.result->set_nan();
	}
#endif /* DH2 */
	void as_global_parse_int(const fn_call& fn)
	{
		// DH2: 0x7a4058. The radix is logged (exactly two arguments) and ignored; parsing needs at least two arguments, so
		// DH2: parseInt(str) with one argument gives NaN. string_to_number here is the base-10 form.
		if (fn.nargs == 2)
		{
			log_error("parseInt: radix is not yet supported\n");
		}
		if (fn.nargs > 1)
		{
			int res;
			if (string_to_number(&res, fn.arg(0).to_string()))
			{
				fn.result->set_int(res);
				return;
			}
		}
		fn.result->set_nan();
	}

	void as_global_isnan(const fn_call& fn)
	{
		if (fn.nargs == 1)  
		{
			// DH2 0x7a3ffc: the number is converted and the answer is false whatever it is (the binary never tests for NaN)
			fn.arg(0).to_number();
			fn.result->set_bool(false);
			return;
		}
		fn.result->set_bool(true);
	}

	// Number(num:Object)
	void	as_global_number_ctor(const fn_call& fn)
	{
		if (fn.nargs == 1)
		{
			fn.result->set_double(fn.arg(0).to_number());
		}	
		else
		{
			fn.result->set_double(0);
		}
	}

	void	as_number_to_string(const fn_call& fn)
	{
		double number = fn.this_value.to_number();
		if (fn.nargs >= 1)
		{
			// radix:Number - Specifies the numeric base (from 2 to 36) to use for 
			// the number-to-string conversion. 
			// If you do not specify the radix parameter, the default value is 10.

			tu_string res;
			int val = (int) number;
			int radix = fn.arg(0).to_int();
			if (radix >= 2 && radix <= (int) strlen(s_hex_digits))
			{
				do
				{
					int k = val % radix;
					val = (int) (val / radix);
					tu_string digit;
					digit += s_hex_digits[k];
					res = digit + res;
				}
				while (val > 0);
			}
			fn.result->set_tu_string(res);
		}
		else
		{
			// @@ Moock says if value is a NAN, then result is "NaN"
			// INF goes to "Infinity"
			// -INF goes to "-Infinity"
			// DH2 0x7a3d5c: no NaN special case, the %.14g text is used as it is
			{
				char buffer[50];
				snprintf(buffer, 50, "%.14g", number);
				fn.result->set_string(buffer);
			}
		}
	}

#if 0 /* DH2: replaced by vendor-gameswf/src/v1-vendor-gameswf-gameswf-fddef6-4.cpp (empty in the binary) */
	void	as_number_valueof(const fn_call& fn)
	{
		assert(0);	//TODO
	}
#endif /* DH2 */

};
