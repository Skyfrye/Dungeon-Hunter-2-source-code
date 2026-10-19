// tu_math.h	-- Willem Kokke

// This source code has been donated to the Public Domain.  Do
// whatever you want with it.

// platform abstract math.h include file

#ifndef TU_MATH_H
#define TU_MATH_H

#include "base/tu_config.h"
#include <math.h>
#include <float.h>

// OSX doesn't have single precision math functions defined in math.h
#ifdef __MACH__
    #define sinf sin
    #define cosf cos
    #define tanf tan
    #define asinf asin
    #define acosf acos
    #define atanf atan
    #define atan2f atan2
    #define sqrtf sqrt
    #define logf log
    #define expf exp
    #define fabsf fabs
    #define powf pow
#endif


// tu_isfinite() comes with C99; fake version here in case compiler lacks it.
#ifndef tu_isfinite
#define tu_isfinite(x) (sizeof(x) == sizeof(float) ? tu_isfinitef(x) : tu_isfinited(x))
#define tu_isfinitef(x) ((x) >= -FLT_MAX && (x) <= FLT_MAX)	// NAN should fail this, yes?
#define tu_isfinited(x) ((x) >= -DBL_MAX && (x) <= DBL_MAX)
#endif // not tu_isfinite


#endif // TU_MATH_H
