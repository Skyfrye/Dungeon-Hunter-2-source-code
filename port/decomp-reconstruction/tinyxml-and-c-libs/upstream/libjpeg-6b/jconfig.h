/* jconfig.h for libjpeg 6b in the DH2 build.
 * HOST-PORT: written by hand. The upstream jconfig.cfg is turned into jconfig.h by configure, which this build does not
 * run. The values follow jconfig.doc for a system with ANSI prototypes, unsigned char and short, and stdlib.h.
 * DH2: JPEG_LIB_VERSION 62 (version 6b), as the binary's jpeg_CreateDecompress and the 6b-era API show.
 */
#define JPEG_LIB_VERSION  62
#define HAVE_PROTOTYPES   1
#define HAVE_UNSIGNED_CHAR 1
#define HAVE_UNSIGNED_SHORT 1
#undef  void
#undef  const
#undef  CHAR_IS_UNSIGNED
#define HAVE_STDDEF_H     1
#define HAVE_STDLIB_H     1
#undef  HAVE_LOCALE_H
#undef  NEED_BSD_STRINGS
#undef  NEED_SYS_TYPES_H
#undef  NEED_FAR_POINTERS
#undef  NEED_SHORT_EXTERNAL_NAMES
#undef  INCOMPLETE_TYPES_BROKEN
#undef  RIGHT_SHIFT_IS_UNSIGNED
