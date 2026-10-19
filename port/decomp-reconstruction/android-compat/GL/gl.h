/* Android build only (see ANDROID-BUILD.md): libtess's glu.h includes <GL/gl.h>, which the NDK does not ship.
 * The tessellator needs only the GL scalar types and a few primitive-mode enums; GLES supplies the rest and the
 * desktop-only GLdouble family is declared here. Never on the include path of the host build. */
#ifndef DH2_ANDROID_COMPAT_GL_GL_H
#define DH2_ANDROID_COMPAT_GL_GL_H
#include <GLES2/gl2.h>
#ifndef GL_LINE_LOOP
#define GL_LINE_LOOP 0x0002
#endif
#ifndef DH2_GLDOUBLE_DEFINED
#define DH2_GLDOUBLE_DEFINED
typedef double GLdouble;
typedef double GLclampd;
#endif
#endif
