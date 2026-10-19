#ifndef DH2_PYDATA_NAMES_H
#define DH2_PYDATA_NAMES_H
#include <stdint.h>
struct dh2_pynames_view { const unsigned char *bytes; uint32_t size,count; };
struct dh2_pyname { uint32_t offset,length; };
/* One serialized table, fully consumed. Immutable borrowed input, <=16 MiB,
 * names <=255 bytes without NUL. Rejection preserves output. 0 succeeds,
 * 1 means invalid arguments/aliasing, 2 malformed input/corrupt view. */
uint32_t dh2_pynames_open(struct dh2_pynames_view *,const void *,uint32_t);
uint32_t dh2_pynames_copy(const struct dh2_pynames_view *,struct dh2_pyname *,uint32_t capacity);
uint32_t dh2_pynames_get(const struct dh2_pynames_view *,const void *,uint32_t,int32_t *);
#endif
