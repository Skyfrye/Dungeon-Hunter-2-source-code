// gameswf_filters.cpp	-- Julien Hamaide <julien.hamaide@gmail.com> 2008

// This source code has been donated to the Public Domain.  Do
// whatever you want with it.

// Filters

#include "gameswf/gameswf.h"
#include "gameswf/gameswf_types.h"
#include "gameswf/gameswf_log.h"
#include "gameswf/gameswf_stream.h"
#include "vendor-gameswf/effect.hpp"   // DH2: effect, filter

#include <cstdint>
#include <cstring>

namespace gameswf
{

#if 0 /* DH2: replaced by read_filter_list(stream*, effect&) below (0x758ca8); r1714 parses the list and keeps nothing */
	void read_filter_list( stream* in )
	{
		// reads FILTERLIST
		int filters = in->read_u8();
		for (int i = 0; i < filters; i++)
		{
			int filter_id = in->read_u8();
			switch (filter_id)
			{
			case 0 : // DropShadowFilter
				{
					rgba drop_shadow_color;
					drop_shadow_color.read_rgba(in);	// RGBA Color of the shadow
					float blur_x = in->read_fixed();	// Horizontal blur amount
					float blur_y = in->read_fixed();	// Vertical blur amount
					float angle = in->read_fixed();	// Radian angle of the drop shadow
					float distance = in->read_fixed();	// Distance of the drop shadow
					float strength = in->read_s8();	// hack, must be FIXED8 Strength of the drop shadow
					bool inner_shadow = in->read_bool();	// Inner shadow mode
					bool knockout = in->read_bool();	// Knockout mode
					bool composite_source = in->read_bool();	// Composite source Always 1
					int passes = in->read_uint(5); // passes
					in->read_u8();// If not present, when parsing several filters, filter type is not correct
					IF_VERBOSE_PARSE(log_msg("  filter = DropShadowFilter\n" ));

					UNUSED(blur_x);
					UNUSED(blur_y);
					UNUSED(angle);
					UNUSED(distance);
					UNUSED(strength);
					UNUSED(inner_shadow);
					UNUSED(knockout);
					UNUSED(composite_source);
					UNUSED(passes);

					break;
				}

			case 1 : // BlurFilter
				{
					float blur_x = in->read_fixed(); // Horizontal blur amount
					float blur_y = in->read_fixed(); // Vertical blur amount
					int passes = in->read_uint(5);	// Number of blur passes
					in->read_uint(3);	// Reserved UB[3] Must be 0
					IF_VERBOSE_PARSE(log_msg("  filter = BlurFilter\n" ));

					UNUSED(blur_x);
					UNUSED(blur_y);
					UNUSED(passes);

					break;
				}

			case 2 : // GlowFilter
				{
					rgba glow_color;
					glow_color.read_rgba(in);	//RGBA Color of the shadow
					float blur_x = in->read_fixed();	// Horizontal blur amount
					float blur_y = in->read_fixed();	// Vertical blur amount
					float strength = in->read_s8();	// hack, must be FIXED8 Strength of the drop shadow
					bool inner_glow = in->read_bool();	// Inner glow mode
					bool knockout = in->read_bool();	// Knockout mode
					bool composite_source = in->read_bool();	// Composite source Always 1
					in->read_uint(5); // passes
					in->read_u8();// If not present, when parsing several filters, filter type is not correct
					IF_VERBOSE_PARSE(log_msg("  filter = GlowFilter\n" ));

					UNUSED(blur_x);
					UNUSED(blur_y);
					UNUSED(strength);
					UNUSED(inner_glow);
					UNUSED(knockout);
					UNUSED(composite_source);

					break;
				}

			case 3 : // BevelFilter
				{
					rgba shadow_color;
					shadow_color.read_rgba(in);	//RGBA Color of the shadow
					rgba highlight_color;
					highlight_color.read_rgba(in);	//RGBA Color of the highlight
					float blur_x = in->read_fixed();	// Horizontal blur amount
					float blur_y = in->read_fixed();	// Vertical blur amount
					float angle = in->read_fixed();	// Radian angle of the drop shadow
					float distance = in->read_fixed();	// Distance of the drop shadow
					float strength = in->read_s8();	// hack, must be FIXED8 Strength of the drop shadow
					bool inner_shadow = in->read_bool();	// Inner shadow mode
					bool knockout = in->read_bool();	// Knockout mode
					bool composite_source = in->read_bool();	// Composite source Always 1
					bool on_top = in->read_bool();	// Composite source Always 1
					int passes = in->read_uint(4); // passes
					in->read_u8();// If not present, when parsing several filters, filter type is not correct
					IF_VERBOSE_PARSE(log_msg("  filter = BevelFilter\n" ));

					UNUSED(blur_x);
					UNUSED(blur_y);
					UNUSED(angle);
					UNUSED(distance);
					UNUSED(strength);
					UNUSED(inner_shadow);
					UNUSED(knockout);
					UNUSED(composite_source);
					UNUSED(on_top);
					UNUSED(passes);

					break;
				}

			case 4 : // GradientGlowFilter
				{
					int num_colors = in->read_u8();		// Number of colors in the gradient
					for (int i = 0; i < num_colors; i++)
					{
						rgba gradient_colors;
						gradient_colors.read_rgba(in);	// RGBA[NumColors] Gradient colors
					}
					for (int i = 0; i < num_colors; i++)
					{
						int gradient_ratio = in->read_u8();	// UI8[NumColors] Gradient ratios
						UNUSED(gradient_ratio);
					}
					float blur_x = in->read_fixed();	// Horizontal blur amount
					float blur_y = in->read_fixed();	// Vertical blur amount
					float angle = in->read_fixed();	// Radian angle of the drop shadow
					float distance = in->read_fixed();	// Distance of the drop shadow
					float strength = in->read_s8();	// hack, must be FIXED8 Strength of the drop shadow
					bool inner_shadow = in->read_bool();	// Inner shadow mode
					bool knockout = in->read_bool();	// Knockout mode
					bool composite_source = in->read_bool();	// Composite source Always 1
					bool on_top = in->read_bool();	// Composite source Always 1
					int passes = in->read_uint(4); // passes

					UNUSED(blur_x);
					UNUSED(blur_y);
					UNUSED(angle);
					UNUSED(distance);
					UNUSED(strength);
					UNUSED(inner_shadow);
					UNUSED(knockout);
					UNUSED(composite_source);
					UNUSED(on_top);
					UNUSED(passes);

					IF_VERBOSE_PARSE(log_msg("  filter = GradientGlowFilter\n" ));
					break;
				}

			case 5 : // ConvolutionFilter
				{
					int matrix_x = in->read_u8();	// Horizontal matrix size
					int matrix_y = in->read_u8();	// Vertical matrix size
					float divisor = in->read_float();	// Divisor applied to the matrix values
					float bias = in->read_float();	// Bias applied to the matrix values
					for (int k = 0; k < matrix_x * matrix_y; k++)
					{
						in->read_float();	// Matrix values
					}
					rgba default_color;
					default_color.read_rgba(in);	// RGBA Default color for pixels outside the image
					in->read_uint(6);		// Reserved UB[6] Must be 0
					bool clamp = in->read_bool();	// UB[1] Clamp mode
					bool preserve_alpha = in->read_bool();	// UB[1]
					IF_VERBOSE_PARSE(log_msg("  filter = ConvolutionFilter\n" ));

					UNUSED(divisor);
					UNUSED(bias);
					UNUSED(clamp);
					UNUSED(preserve_alpha);

					break;
				}

			case 6 : // ColorMatrixFilter
				// matrix is float[20]
				for (int k = 0; k < 20; k++)
				{
					in->read_float();
				}
				IF_VERBOSE_PARSE(log_msg("  filter = ColorMatrixFilter\n" ));
				break;

			case 7 : // GradientBevelFilter
				{
					int num_colors = in->read_u8();		// Number of colors in the gradient
					for (int i = 0; i < num_colors; i++)
					{
						rgba gradient_colors;
						gradient_colors.read_rgba(in);	// RGBA[NumColors] Gradient colors
					}
					for (int i = 0; i < num_colors; i++)
					{
						int gradient_ratio = in->read_u8();	// UI8[NumColors] Gradient ratios
						UNUSED(gradient_ratio);
					}
					float blur_x = in->read_fixed();	// Horizontal blur amount
					float blur_y = in->read_fixed();	// Vertical blur amount
					float angle = in->read_fixed();	// Radian angle of the drop shadow
					float distance = in->read_fixed();	// Distance of the drop shadow
					float strength = in->read_s8();	// hack, must be FIXED8 Strength of the drop shadow
					bool inner_shadow = in->read_bool();	// Inner shadow mode
					bool knockout = in->read_bool();	// Knockout mode
					bool composite_source = in->read_bool();	// Composite source Always 1
					bool on_top = in->read_bool();	// Composite source Always 1
					int passes = in->read_uint(4); // passes
					in->read_u8();// If not present, when parsing several filters, filter type is not correct
					IF_VERBOSE_PARSE(log_msg("  filter = GradientBevelFilter\n" ));

					UNUSED(blur_x);
					UNUSED(blur_y);
					UNUSED(angle);
					UNUSED(distance);
					UNUSED(strength);
					UNUSED(inner_shadow);
					UNUSED(knockout);
					UNUSED(composite_source);
					UNUSED(on_top);
					UNUSED(passes);

					break;
				}

			default:
				assert(0);	// invalid input
			}
		}
	}
#endif /* DH2 */

	// DH2: 0x758ca8 gameswf::read_filter_list(stream*, effect&). The DH2 binary keeps the filters it reads (r1714 parses and drops
	// DH2: them): drop shadow (0), blur (1) and glow (2) are appended to the effect's filter array as 44-byte records; bevel (3) is
	// DH2: parsed and dropped; any other id reads nothing. The record is one local of the function, reused for every filter: a
	// DH2: field that a filter id does not write keeps what an earlier filter put there (the original's local starts
	// DH2: uninitialised, zero here). Words are kept as raw bits, as in the original.
	static inline std::uint32_t filter_bits(float value)
	{
		std::uint32_t bits;
		memcpy(&bits, &value, sizeof(bits));
		return bits;
	}

	static inline std::uint32_t filter_color(const rgba& c)
	{
		// memory order b, g, r, a
		return (std::uint32_t) c.m_b | ((std::uint32_t) c.m_g << 8) | ((std::uint32_t) c.m_r << 16) | ((std::uint32_t) c.m_a << 24);
	}

	void read_filter_list(stream* in, effect& fx)
	{
		int filters = in->read_u8();
		fx.m_filters.reserve(filters);

		std::uint32_t record[11] = {};	// +0x00 id, +0x04 colour, +0x08 .. +0x24 values, +0x28 last word
		for (int i = 0; i < filters; i++)
		{
			int filter_id = in->read_u8();
			switch (filter_id)
			{
			case 0 : // DropShadowFilter
				{
					rgba color;
					color.set(0xFF, 0xFF, 0xFF, 0xFF);
					color.read_rgba(in);
					record[1] = filter_color(color);
					record[8] = filter_bits(in->read_fixed());	// +0x20 horizontal blur
					record[9] = filter_bits(in->read_fixed());	// +0x24 vertical blur
					record[2] = filter_bits(in->read_fixed());	// +0x08 angle
					record[3] = filter_bits(in->read_fixed());	// +0x0c distance
					record[4] = filter_bits((float) (signed char) in->read_s8());	// +0x10 strength
					std::uint8_t* flags = reinterpret_cast<std::uint8_t*>(&record[5]);	// +0x14 inner shadow, knockout, composite source
					flags[0] = in->read_bool();
					flags[1] = in->read_bool();
					flags[2] = in->read_bool();
					record[7] = in->read_uint(5);	// +0x1c passes
					record[6] = in->read_u8();	// +0x18
					record[0] = filter_id;
					fx.m_filters.push_back(*reinterpret_cast<const filter*>(record));
					break;
				}

			case 1 : // BlurFilter
				{
					record[8] = filter_bits(in->read_fixed());	// +0x20
					record[9] = filter_bits(in->read_fixed());	// +0x24
					record[10] = in->read_uint(5);	// +0x28 passes
					in->read_uint(3);	// reserved
					record[0] = filter_id;
					fx.m_filters.push_back(*reinterpret_cast<const filter*>(record));
					break;
				}

			case 2 : // GlowFilter
				{
					rgba color;
					color.set(0xFF, 0xFF, 0xFF, 0xFF);
					color.read_rgba(in);
					record[1] = filter_color(color);
					record[8] = filter_bits(in->read_fixed());	// +0x20
					record[9] = filter_bits(in->read_fixed());	// +0x24
					record[2] = filter_bits((float) (signed char) in->read_s8());	// +0x08
					std::uint8_t* flags = reinterpret_cast<std::uint8_t*>(&record[3]);	// +0x0c inner glow, knockout, composite source
					flags[0] = in->read_bool();
					flags[1] = in->read_bool();
					flags[2] = in->read_bool();
					record[4] = in->read_uint(5);	// +0x10 passes
					in->read_u8();
					record[10] = 1;	// +0x28
					record[0] = filter_id;
					fx.m_filters.push_back(*reinterpret_cast<const filter*>(record));
					break;
				}

			case 3 : // BevelFilter: read and dropped
				{
					rgba shadow_color;
					shadow_color.set(0xFF, 0xFF, 0xFF, 0xFF);
					shadow_color.read_rgba(in);
					rgba highlight_color;
					highlight_color.set(0xFF, 0xFF, 0xFF, 0xFF);
					highlight_color.read_rgba(in);
					in->read_fixed();
					in->read_fixed();
					in->read_fixed();
					in->read_fixed();
					in->read_s8();
					in->read_bool();
					in->read_bool();
					in->read_bool();
					in->read_bool();
					in->read_uint(4);
					in->read_u8();
					break;
				}

			default:
				break;
			}
		}
	}
}

// Local Variables:
// mode: C++
// c-basic-offset: 8
// tab-width: 8
// indent-tabs-mode: t
// End:
