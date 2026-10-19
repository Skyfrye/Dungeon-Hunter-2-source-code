// ===== 30dd74 sub_30DD74 =====
void sub_30DD74()
{
  JUMPOUT(0);
}


// ===== 30dd88 asinf =====
// attributes: thunk
float asinf(float x)
{
  return __imp_asinf(x);
}


// ===== 30dd94 iscntrl =====
// attributes: thunk
int iscntrl(int a1)
{
  return __imp_iscntrl(a1);
}


// ===== 30dda0 glCompressedTexSubImage2D =====
// attributes: thunk
void glCompressedTexSubImage2D(
        GLenum target,
        GLint level,
        GLint xoffset,
        GLint yoffset,
        GLsizei width,
        GLsizei height,
        GLenum format,
        GLsizei imageSize,
        const GLvoid *data)
{
  __imp_glCompressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, imageSize, data);
}


// ===== 30ddac glDrawArrays =====
// attributes: thunk
void glDrawArrays(GLenum mode, GLint first, GLsizei count)
{
  __imp_glDrawArrays(mode, first, count);
}


// ===== 30ddb8 atan2f =====
// attributes: thunk
float atan2f(float y, float x)
{
  return __imp_atan2f(y, x);
}


// ===== 30ddc4 strncasecmp =====
// attributes: thunk
int strncasecmp(const char *a1, const char *a2, size_t a3)
{
  return __imp_strncasecmp(a1, a2, a3);
}


// ===== 30ddd0 __errno =====
// attributes: thunk
int _errno()
{
  return __errno();
}


// ===== 30dddc glSampleCoverage =====
// attributes: thunk
void glSampleCoverage(GLclampf value, GLboolean invert)
{
  __imp_glSampleCoverage(value, invert);
}


// ===== 30dde8 fgetpos =====
// attributes: thunk
int fgetpos(FILE *stream, fpos_t *pos)
{
  return __imp_fgetpos(stream, pos);
}


// ===== 30ddf4 glBindBuffer =====
// attributes: thunk
int glBindBuffer()
{
  return __imp_glBindBuffer();
}


// ===== 30de00 iswprint =====
// attributes: thunk
int iswprint(wint_t wc)
{
  return __imp_iswprint(wc);
}


// ===== 30de0c connect =====
// attributes: thunk
int connect(int a1, const struct sockaddr *a2, socklen_t a3)
{
  return __imp_connect(a1, a2, a3);
}


// ===== 30de18 towupper =====
// attributes: thunk
wint_t towupper(wint_t wc)
{
  return __imp_towupper(wc);
}


// ===== 30de24 LC_API_STRNCPY_0 =====
char *LC_API_STRNCPY_0(char *a1, const char *a2, size_t a3)
{
  return strncpy(a1, a2, a3);
}


// ===== 30de30 glFramebufferTexture2D =====
// attributes: thunk
int glFramebufferTexture2D()
{
  return __imp_glFramebufferTexture2D();
}


// ===== 30de3c ftell =====
// attributes: thunk
int ftell(FILE *stream)
{
  return __imp_ftell(stream);
}


// ===== 30de48 exit =====
// attributes: thunk
void __noreturn exit(int a1)
{
  __imp_exit(a1);
}


// ===== 30de54 LC_API_STRLEN_0 =====
size_t LC_API_STRLEN_0(const char *a1)
{
  return strlen(a1);
}


// ===== 30de60 __aeabi_dcmpgt =====
// attributes: thunk
bool __fastcall _aeabi_dcmpgt(double a1, double a2)
{
  return a1 > a2;
}


// ===== 30de6c select =====
// attributes: thunk
int select(int nfds, fd_set *readfds, fd_set *writefds, fd_set *exceptfds, struct timeval *timeout)
{
  return __imp_select(nfds, readfds, writefds, exceptfds, timeout);
}


// ===== 30de78 glFrontFace =====
// attributes: thunk
void glFrontFace(GLenum mode)
{
  __imp_glFrontFace(mode);
}


// ===== 30de84 printf =====
// attributes: thunk
int printf(const char *format, ...)
{
  return __imp_printf(format);
}


// ===== 30de90 sinh =====
// attributes: thunk
double sinh(double x)
{
  return __imp_sinh(x);
}


// ===== 30de9c strdup =====
// attributes: thunk
char *strdup(const char *a1)
{
  return __imp_strdup(a1);
}


// ===== 30dea8 __cxa_pure_virtual =====
// attributes: thunk
void __noreturn _cxa_pure_virtual()
{
  __cxa_pure_virtual();
}


// ===== 30deb4 logf =====
// attributes: thunk
float logf(float x)
{
  return __imp_logf(x);
}


// ===== 30dec0 __aeabi_ui2d =====
// attributes: thunk
double __fastcall _aeabi_ui2d(unsigned int a1)
{
  return (double)a1;
}


// ===== 30decc glColorMask =====
// attributes: thunk
void glColorMask(GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha)
{
  __imp_glColorMask(red, green, blue, alpha);
}


// ===== 30ded8 glEnableVertexAttribArray =====
// attributes: thunk
int glEnableVertexAttribArray()
{
  return __imp_glEnableVertexAttribArray();
}


// ===== 30dee4 modf =====
// attributes: thunk
double modf(double x, double *iptr)
{
  return __imp_modf(x, iptr);
}


// ===== 30def0 free =====
// attributes: thunk
void free(void *p)
{
  __imp_free(p);
}


// ===== 30defc wcscat =====
// attributes: thunk
wchar_t *wcscat(wchar_t *dest, const wchar_t *src)
{
  return __imp_wcscat(dest, src);
}


// ===== 30df08 abort =====
// attributes: thunk
void __noreturn abort(void)
{
  __imp_abort();
}


// ===== 30df14 glBlendEquation =====
// attributes: thunk
void glBlendEquation(GLenum mode)
{
  __imp_glBlendEquation(mode);
}


// ===== 30df20 atan2 =====
// attributes: thunk
double atan2(double y, double x)
{
  return __imp_atan2(y, x);
}


// ===== 30df2c tanf =====
// attributes: thunk
float tanf(float x)
{
  return __imp_tanf(x);
}


// ===== 30df38 memmove =====
// attributes: thunk
void *memmove(void *a1, const void *a2, size_t a3)
{
  return __imp_memmove(a1, a2, a3);
}


// ===== 30df44 iswpunct =====
// attributes: thunk
int iswpunct(wint_t wc)
{
  return __imp_iswpunct(wc);
}


// ===== 30df50 glDeleteFramebuffers =====
// attributes: thunk
int glDeleteFramebuffers()
{
  return __imp_glDeleteFramebuffers();
}


// ===== 30df5c glClear =====
// attributes: thunk
void glClear(GLbitfield mask)
{
  __imp_glClear(mask);
}


// ===== 30df68 glDisable =====
// attributes: thunk
void glDisable(GLenum cap)
{
  __imp_glDisable(cap);
}


// ===== 30df74 glViewport =====
// attributes: thunk
void glViewport(GLint x, GLint y, GLsizei width, GLsizei height)
{
  __imp_glViewport(x, y, width, height);
}


// ===== 30df80 gethostbyname =====
// attributes: thunk
struct hostent *gethostbyname(const char *a1)
{
  return __imp_gethostbyname(a1);
}


// ===== 30df8c __aeabi_fcmpeq =====
// attributes: thunk
bool __fastcall _aeabi_fcmpeq(float a1, float a2)
{
  return a1 == a2;
}


// ===== 30df98 sched_get_priority_min =====
// attributes: thunk
int sched_get_priority_min(int algorithm)
{
  return __imp_sched_get_priority_min(algorithm);
}


// ===== 30dfa4 uname =====
// attributes: thunk
int uname(struct utsname *name)
{
  return __imp_uname(name);
}


// ===== 30dfb0 pthread_mutex_init =====
// attributes: thunk
int pthread_mutex_init(pthread_mutex_t *mutex, const pthread_mutexattr_t *mutexattr)
{
  return __imp_pthread_mutex_init(mutex, mutexattr);
}


// ===== 30dfbc glGetShaderInfoLog =====
// attributes: thunk
int glGetShaderInfoLog()
{
  return __imp_glGetShaderInfoLog();
}


// ===== 30dfc8 isupper =====
// attributes: thunk
int isupper(int a1)
{
  return __imp_isupper(a1);
}


// ===== 30dfd4 __aeabi_dcmple =====
// attributes: thunk
bool __fastcall _aeabi_dcmple(double a1, double a2)
{
  return a1 <= a2;
}


// ===== 30dfe0 pthread_create =====
// attributes: thunk
int pthread_create(pthread_t *newthread, const pthread_attr_t *attr, void *(*start_routine)(void *), void *arg)
{
  return __imp_pthread_create(newthread, attr, start_routine, arg);
}


// ===== 30dfec sin =====
// attributes: thunk
double sin(double x)
{
  return __imp_sin(x);
}


// ===== 30dff8 wmemcpy =====
// attributes: thunk
wchar_t *wmemcpy(wchar_t *s1, const wchar_t *s2, size_t n)
{
  return __imp_wmemcpy(s1, s2, n);
}


// ===== 30e004 fprintf =====
// attributes: thunk
int fprintf(FILE *stream, const char *format, ...)
{
  return __imp_fprintf(stream, format);
}


// ===== 30e010 glTexImage2D =====
// attributes: thunk
void glTexImage2D(
        GLenum target,
        GLint level,
        GLint internalFormat,
        GLsizei width,
        GLsizei height,
        GLint border,
        GLenum format,
        GLenum type,
        const GLvoid *pixels)
{
  __imp_glTexImage2D(target, level, internalFormat, width, height, border, format, type, pixels);
}


// ===== 30e01c glGetActiveAttrib =====
// attributes: thunk
int glGetActiveAttrib()
{
  return __imp_glGetActiveAttrib();
}


// ===== 30e028 strtok =====
// attributes: thunk
char *strtok(char *a1, const char *a2)
{
  return __imp_strtok(a1, a2);
}


// ===== 30e034 strpbrk =====
// attributes: thunk
char *strpbrk(const char *a1, const char *a2)
{
  return __imp_strpbrk(a1, a2);
}


// ===== 30e040 iswxdigit =====
// attributes: thunk
int iswxdigit(wint_t wc)
{
  return __imp_iswxdigit(wc);
}


// ===== 30e04c __aeabi_ldivmod =====
// attributes: thunk
__int64 __fastcall _aeabi_ldivmod(__int64 a1, __int64 a2)
{
  return a1 / a2;
}


// ===== 30e058 towlower =====
// attributes: thunk
wint_t towlower(wint_t wc)
{
  return __imp_towlower(wc);
}


// ===== 30e064 glFramebufferRenderbuffer =====
// attributes: thunk
int glFramebufferRenderbuffer()
{
  return __imp_glFramebufferRenderbuffer();
}


// ===== 30e070 setvbuf =====
// attributes: thunk
int setvbuf(FILE *stream, char *buf, int modes, size_t n)
{
  return __imp_setvbuf(stream, buf, modes, n);
}


// ===== 30e07c exp =====
// attributes: thunk
double exp(double x)
{
  return __imp_exp(x);
}


// ===== 30e088 sched_yield =====
// attributes: thunk
int sched_yield(void)
{
  return __imp_sched_yield();
}


// ===== 30e094 LC_API_ATOI_0 =====
int LC_API_ATOI_0(const char *a1)
{
  return atoi(a1);
}


// ===== 30e0a0 glDeleteProgram =====
// attributes: thunk
int glDeleteProgram()
{
  return __imp_glDeleteProgram();
}


// ===== 30e0ac getpeername =====
// attributes: thunk
int getpeername(int a1, struct sockaddr *a2, socklen_t *a3)
{
  return __imp_getpeername(a1, a2, a3);
}


// ===== 30e0b8 operator delete[](void *) =====
// attributes: thunk
void __fastcall operator delete[](void *a1)
{
  __imp__ZdaPv(a1);
}


// ===== 30e0c4 puts =====
// attributes: thunk
int puts(const char *s)
{
  return __imp_puts(s);
}


// ===== 30e0d0 operator new[](uint) =====
// attributes: thunk
int __fastcall operator new[](unsigned int a1)
{
  return __imp__Znaj(a1);
}


// ===== 30e0dc getc =====
// attributes: thunk
int getc(FILE *stream)
{
  return __imp_getc(stream);
}


// ===== 30e0e8 glBindRenderbuffer =====
// attributes: thunk
int glBindRenderbuffer()
{
  return __imp_glBindRenderbuffer();
}


// ===== 30e0f4 glReadPixels =====
// attributes: thunk
void glReadPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *pixels)
{
  __imp_glReadPixels(x, y, width, height, format, type, pixels);
}


// ===== 30e100 __aeabi_ul2d =====
// attributes: thunk
double __fastcall _aeabi_ul2d(unsigned __int64 a1)
{
  return (double)a1;
}


// ===== 30e10c putc =====
// attributes: thunk
int putc(int c, FILE *stream)
{
  return __imp_putc(c, stream);
}


// ===== 30e118 gmtime =====
// attributes: thunk
struct tm *gmtime(const time_t *timer)
{
  return __imp_gmtime(timer);
}


// ===== 30e124 sqrtf =====
// attributes: thunk
float sqrtf(float x)
{
  return __imp_sqrtf(x);
}


// ===== 30e130 glGenBuffers =====
// attributes: thunk
int glGenBuffers()
{
  return __imp_glGenBuffers();
}


// ===== 30e13c glGetUniformLocation =====
// attributes: thunk
int glGetUniformLocation()
{
  return __imp_glGetUniformLocation();
}


// ===== 30e148 cos =====
// attributes: thunk
double cos(double x)
{
  return __imp_cos(x);
}


// ===== 30e154 glBindFramebuffer =====
// attributes: thunk
int glBindFramebuffer()
{
  return __imp_glBindFramebuffer();
}


// ===== 30e160 fcntl =====
// attributes: thunk
int fcntl(int fd, int cmd, ...)
{
  return __imp_fcntl(fd, cmd);
}


// ===== 30e16c glPixelStorei =====
// attributes: thunk
void glPixelStorei(GLenum pname, GLint param)
{
  __imp_glPixelStorei(pname, param);
}


// ===== 30e178 pthread_self =====
// attributes: thunk
pthread_t pthread_self(void)
{
  return __imp_pthread_self();
}


// ===== 30e184 wcsncpy =====
// attributes: thunk
wchar_t *wcsncpy(wchar_t *dest, const wchar_t *src, size_t n)
{
  return __imp_wcsncpy(dest, src, n);
}


// ===== 30e190 __android_log_print =====
// attributes: thunk
int _android_log_print(int prio, const char *tag, const char *fmt, ...)
{
  return __android_log_print(prio, tag, fmt);
}


// ===== 30e19c pthread_key_create =====
// attributes: thunk
int pthread_key_create(pthread_key_t *key, void (*destr_function)(void *))
{
  return __imp_pthread_key_create(key, destr_function);
}


// ===== 30e1a8 glGetError =====
// attributes: thunk
GLenum glGetError(void)
{
  return __imp_glGetError();
}


// ===== 30e1b4 glCheckFramebufferStatus =====
// attributes: thunk
int glCheckFramebufferStatus()
{
  return __imp_glCheckFramebufferStatus();
}


// ===== 30e1c0 sqrt =====
// attributes: thunk
double sqrt(double x)
{
  return __imp_sqrt(x);
}


// ===== 30e1cc ioctl =====
// attributes: thunk
int ioctl(int fd, unsigned int request, ...)
{
  return __imp_ioctl(fd, request);
}


// ===== 30e1d8 isxdigit =====
// attributes: thunk
int isxdigit(int a1)
{
  return __imp_isxdigit(a1);
}


// ===== 30e1e4 glActiveTexture =====
// attributes: thunk
void glActiveTexture(GLenum texture)
{
  __imp_glActiveTexture(texture);
}


// ===== 30e1f0 iswalpha =====
// attributes: thunk
int iswalpha(wint_t wc)
{
  return __imp_iswalpha(wc);
}


// ===== 30e1fc strlcpy =====
// attributes: thunk
size_t strlcpy(char *a1, const char *a2, size_t a3)
{
  return __imp_strlcpy(a1, a2, a3);
}


// ===== 30e208 lseek =====
// attributes: thunk
__off_t lseek(int fd, __off_t offset, int whence)
{
  return __imp_lseek(fd, offset, whence);
}


// ===== 30e214 glGetProgramInfoLog =====
// attributes: thunk
int glGetProgramInfoLog()
{
  return __imp_glGetProgramInfoLog();
}


// ===== 30e220 pthread_exit =====
// attributes: thunk
void __noreturn pthread_exit(void *retval)
{
  __imp_pthread_exit(retval);
}


// ===== 30e22c strcoll =====
// attributes: thunk
int strcoll(const char *a1, const char *a2)
{
  return __imp_strcoll(a1, a2);
}


// ===== 30e238 glDepthMask =====
// attributes: thunk
void glDepthMask(GLboolean flag)
{
  __imp_glDepthMask(flag);
}


// ===== 30e244 snprintf =====
// attributes: thunk
int snprintf(char *s, size_t maxlen, const char *format, ...)
{
  return __imp_snprintf(s, maxlen, format);
}


// ===== 30e250 send =====
// attributes: thunk
ssize_t send(int a1, const void *a2, size_t a3, int a4)
{
  return __imp_send(a1, a2, a3, a4);
}


// ===== 30e25c glTexParameterf =====
// attributes: thunk
void glTexParameterf(GLenum target, GLenum pname, GLfloat param)
{
  __imp_glTexParameterf(target, pname, param);
}


// ===== 30e268 vsprintf =====
// attributes: thunk
int vsprintf(char *s, const char *format, __gnuc_va_list arg)
{
  return __imp_vsprintf(s, format, arg);
}


// ===== 30e274 sscanf =====
// attributes: thunk
int sscanf(const char *s, const char *format, ...)
{
  return __imp_sscanf(s, format);
}


// ===== 30e280 glGetString =====
// attributes: thunk
const GLubyte *glGetString(GLenum name)
{
  return __imp_glGetString(name);
}


// ===== 30e28c glGetProgramiv =====
// attributes: thunk
int glGetProgramiv()
{
  return __imp_glGetProgramiv();
}


// ===== 30e298 glDepthFunc =====
// attributes: thunk
void glDepthFunc(GLenum func)
{
  __imp_glDepthFunc(func);
}


// ===== 30e2a4 __aeabi_idiv =====
// attributes: thunk
int __fastcall _aeabi_idiv(int a1, int a2)
{
  return a1 / a2;
}


// ===== 30e2b0 LC_API_FREE_0 =====
void __fastcall LC_API_FREE_0(void *a1)
{
  operator delete(a1);
}


// ===== 30e2bc __aeabi_dcmpun =====
// attributes: thunk
int _aeabi_dcmpun()
{
  return 0;
}


// ===== 30e2c8 pthread_getspecific =====
// attributes: thunk
void *pthread_getspecific(pthread_key_t key)
{
  return __imp_pthread_getspecific(key);
}


// ===== 30e2d4 iswspace =====
// attributes: thunk
int iswspace(wint_t wc)
{
  return __imp_iswspace(wc);
}


// ===== 30e2e0 __aeabi_ui2f =====
// attributes: thunk
float __fastcall _aeabi_ui2f(unsigned int a1)
{
  return (float)a1;
}


// ===== 30e2ec fread =====
// attributes: thunk
size_t fread(void *ptr, size_t size, size_t n, FILE *stream)
{
  return __imp_fread(ptr, size, n, stream);
}


// ===== 30e2f8 __aeabi_fcmpgt =====
// attributes: thunk
bool __fastcall _aeabi_fcmpgt(float a1, float a2)
{
  return a1 > a2;
}


// ===== 30e304 __aeabi_atexit =====
// attributes: thunk
int __fastcall _aeabi_atexit(int a1, int a2, int a3)
{
  return __aeabi_atexit(a1, a2, a3);
}


// ===== 30e310 __stack_chk_fail =====
// attributes: thunk
void __noreturn _stack_chk_fail()
{
  __stack_chk_fail();
}


// ===== 30e31c LC_API_STRCMP_0 =====
int LC_API_STRCMP_0(const char *a1, const char *a2)
{
  return strcmp(a1, a2);
}


// ===== 30e328 toupper =====
// attributes: thunk
int toupper(int c)
{
  return __imp_toupper(c);
}


// ===== 30e334 inet_addr =====
// attributes: thunk
in_addr_t inet_addr(const char *cp)
{
  return __imp_inet_addr(cp);
}


// ===== 30e340 __aeabi_ddiv =====
// attributes: thunk
double __fastcall _aeabi_ddiv(double a1, double a2)
{
  return a1 / a2;
}


// ===== 30e34c munmap =====
// attributes: thunk
int munmap(void *addr, size_t len)
{
  return __imp_munmap(addr, len);
}


// ===== 30e358 wcsncmp =====
// attributes: thunk
int wcsncmp(const wchar_t *s1, const wchar_t *s2, size_t n)
{
  return __imp_wcsncmp(s1, s2, n);
}


// ===== 30e364 glBlendColor =====
// attributes: thunk
void glBlendColor(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha)
{
  __imp_glBlendColor(red, green, blue, alpha);
}


// ===== 30e370 glGenerateMipmap =====
// attributes: thunk
int glGenerateMipmap()
{
  return __imp_glGenerateMipmap();
}


// ===== 30e37c cosh =====
// attributes: thunk
double cosh(double x)
{
  return __imp_cosh(x);
}


// ===== 30e388 strncat =====
// attributes: thunk
char *strncat(char *a1, const char *a2, size_t a3)
{
  return __imp_strncat(a1, a2, a3);
}


// ===== 30e394 pthread_mutex_unlock =====
// attributes: thunk
int pthread_mutex_unlock(pthread_mutex_t *mutex)
{
  return __imp_pthread_mutex_unlock(mutex);
}


// ===== 30e3a0 getsockopt =====
// attributes: thunk
int getsockopt(int a1, int a2, int a3, void *a4, socklen_t *a5)
{
  return __imp_getsockopt(a1, a2, a3, a4, a5);
}


// ===== 30e3ac __aeabi_fsub =====
// attributes: thunk
float __fastcall _aeabi_fsub(float a1, float a2)
{
  return a1 - a2;
}


// ===== 30e3b8 mmap =====
// attributes: thunk
void *mmap(void *addr, size_t len, int prot, int flags, int fd, __off_t offset)
{
  return __imp_mmap(addr, len, prot, flags, fd, offset);
}


// ===== 30e3c4 pthread_setschedparam =====
// attributes: thunk
int pthread_setschedparam(pthread_t target_thread, int policy, const struct sched_param *param)
{
  return __imp_pthread_setschedparam(target_thread, policy, param);
}


// ===== 30e3d0 __aeabi_dcmpge =====
// attributes: thunk
bool __fastcall _aeabi_dcmpge(double a1, double a2)
{
  return a1 >= a2;
}


// ===== 30e3dc acosf =====
// attributes: thunk
float acosf(float x)
{
  return __imp_acosf(x);
}


// ===== 30e3e8 recv =====
// attributes: thunk
ssize_t recv(int a1, void *a2, size_t a3, int a4)
{
  return __imp_recv(a1, a2, a3, a4);
}


// ===== 30e3f4 pthread_mutex_trylock =====
// attributes: thunk
int pthread_mutex_trylock(pthread_mutex_t *mutex)
{
  return __imp_pthread_mutex_trylock(mutex);
}


// ===== 30e400 glUniform4iv =====
// attributes: thunk
int glUniform4iv()
{
  return __imp_glUniform4iv();
}


// ===== 30e40c inet_ntoa =====
// attributes: thunk
char *inet_ntoa(struct in_addr in)
{
  return __imp_inet_ntoa(in);
}


// ===== 30e418 glBlendFunc =====
// attributes: thunk
void glBlendFunc(GLenum sfactor, GLenum dfactor)
{
  __imp_glBlendFunc(sfactor, dfactor);
}


// ===== 30e424 strrchr =====
// attributes: thunk
char *strrchr(const char *a1, int a2)
{
  return __imp_strrchr(a1, a2);
}


// ===== 30e430 qsort =====
// attributes: thunk
void qsort(void *a1, size_t a2, size_t a3, int (*a4)(const void *, const void *))
{
  __imp_qsort(a1, a2, a3, a4);
}


// ===== 30e43c sysconf =====
// attributes: thunk
int sysconf(int name)
{
  return __imp_sysconf(name);
}


// ===== 30e448 iswlower =====
// attributes: thunk
int iswlower(wint_t wc)
{
  return __imp_iswlower(wc);
}


// ===== 30e454 pthread_attr_init =====
// attributes: thunk
int pthread_attr_init(pthread_attr_t *attr)
{
  return __imp_pthread_attr_init(attr);
}


// ===== 30e460 LC_API_MEMSET_0 =====
void *LC_API_MEMSET_0(void *a1, int a2, size_t a3)
{
  return memset(a1, a2, a3);
}


// ===== 30e46c glCompileShader =====
// attributes: thunk
int glCompileShader()
{
  return __imp_glCompileShader();
}


// ===== 30e478 isspace =====
// attributes: thunk
int isspace(int a1)
{
  return __imp_isspace(a1);
}


// ===== 30e484 read =====
// attributes: thunk
ssize_t read(int fd, void *buf, size_t nbytes)
{
  return __imp_read(fd, buf, nbytes);
}


// ===== 30e490 listen =====
// attributes: thunk
int listen(int a1, int a2)
{
  return __imp_listen(a1, a2);
}


// ===== 30e49c glClearDepthf =====
// attributes: thunk
int glClearDepthf()
{
  return __imp_glClearDepthf();
}


// ===== 30e4a8 unlink =====
// attributes: thunk
int unlink(const char *name)
{
  return __imp_unlink(name);
}


// ===== 30e4b4 __aeabi_fcmpge =====
// attributes: thunk
bool __fastcall _aeabi_fcmpge(float a1, float a2)
{
  return a1 >= a2;
}


// ===== 30e4c0 asin =====
// attributes: thunk
double asin(double x)
{
  return __imp_asin(x);
}


// ===== 30e4cc __aeabi_f2iz =====
// attributes: thunk
int __fastcall _aeabi_f2iz(float a1)
{
  return (int)a1;
}


// ===== 30e4d8 fflush =====
// attributes: thunk
int fflush(FILE *stream)
{
  return __imp_fflush(stream);
}


// ===== 30e4e4 fsetpos =====
// attributes: thunk
int fsetpos(FILE *stream, const fpos_t *pos)
{
  return __imp_fsetpos(stream, pos);
}


// ===== 30e4f0 glScissor =====
// attributes: thunk
void glScissor(GLint x, GLint y, GLsizei width, GLsizei height)
{
  __imp_glScissor(x, y, width, height);
}


// ===== 30e4fc tan =====
// attributes: thunk
double tan(double x)
{
  return __imp_tan(x);
}


// ===== 30e508 fopen =====
// attributes: thunk
FILE *fopen(const char *filename, const char *modes)
{
  return __imp_fopen(filename, modes);
}


// ===== 30e514 ceilf =====
// attributes: thunk
float ceilf(float x)
{
  return __imp_ceilf(x);
}


// ===== 30e520 LC_API_STRCPY_0 =====
char *LC_API_STRCPY_0(char *a1, const char *a2)
{
  return strcpy(a1, a2);
}


// ===== 30e52c __aeabi_dsub =====
// attributes: thunk
double __fastcall _aeabi_dsub(double a1, double a2)
{
  return a1 - a2;
}


// ===== 30e538 glCreateShader =====
// attributes: thunk
int glCreateShader()
{
  return __imp_glCreateShader();
}


// ===== 30e544 glEnable =====
// attributes: thunk
void glEnable(GLenum cap)
{
  __imp_glEnable(cap);
}


// ===== 30e550 write =====
// attributes: thunk
ssize_t write(int fd, const void *buf, size_t n)
{
  return __imp_write(fd, buf, n);
}


// ===== 30e55c glStencilMask =====
// attributes: thunk
void glStencilMask(GLuint mask)
{
  __imp_glStencilMask(mask);
}


// ===== 30e568 glGetIntegerv =====
// attributes: thunk
void glGetIntegerv(GLenum pname, GLint *params)
{
  __imp_glGetIntegerv(pname, params);
}


// ===== 30e574 longjmp =====
// attributes: thunk
void __noreturn longjmp(struct __jmp_buf_tag env[1], int val)
{
  __imp_longjmp(env, val);
}


// ===== 30e580 time =====
// attributes: thunk
time_t time(time_t *timer)
{
  return __imp_time(timer);
}


// ===== 30e58c log =====
// attributes: thunk
double log(double x)
{
  return __imp_log(x);
}


// ===== 30e598 fwrite =====
// attributes: thunk
size_t fwrite(const void *ptr, size_t size, size_t n, FILE *s)
{
  return __imp_fwrite(ptr, size, n, s);
}


// ===== 30e5a4 glHint =====
// attributes: thunk
void glHint(GLenum target, GLenum mode)
{
  __imp_glHint(target, mode);
}


// ===== 30e5b0 pthread_mutex_lock =====
// attributes: thunk
int pthread_mutex_lock(pthread_mutex_t *mutex)
{
  return __imp_pthread_mutex_lock(mutex);
}


// ===== 30e5bc memchr =====
// attributes: thunk
void *memchr(const void *a1, int a2, size_t a3)
{
  return __imp_memchr(a1, a2, a3);
}


// ===== 30e5c8 islower =====
// attributes: thunk
int islower(int a1)
{
  return __imp_islower(a1);
}


// ===== 30e5d4 glDrawElements =====
// attributes: thunk
void glDrawElements(GLenum mode, GLsizei count, GLenum type, const GLvoid *indices)
{
  __imp_glDrawElements(mode, count, type, indices);
}


// ===== 30e5e0 memcmp =====
// attributes: thunk
int memcmp(const void *a1, const void *a2, size_t a3)
{
  return __imp_memcmp(a1, a2, a3);
}


// ===== 30e5ec fseek =====
// attributes: thunk
int fseek(FILE *stream, int off, int whence)
{
  return __imp_fseek(stream, off, whence);
}


// ===== 30e5f8 pthread_attr_setdetachstate =====
// attributes: thunk
int pthread_attr_setdetachstate(pthread_attr_t *attr, int detachstate)
{
  return __imp_pthread_attr_setdetachstate(attr, detachstate);
}


// ===== 30e604 sched_get_priority_max =====
// attributes: thunk
int sched_get_priority_max(int algorithm)
{
  return __imp_sched_get_priority_max(algorithm);
}


// ===== 30e610 glStencilFunc =====
// attributes: thunk
void glStencilFunc(GLenum func, GLint ref, GLuint mask)
{
  __imp_glStencilFunc(func, ref, mask);
}


// ===== 30e61c wcscmp =====
// attributes: thunk
int wcscmp(const wchar_t *s1, const wchar_t *s2)
{
  return __imp_wcscmp(s1, s2);
}


// ===== 30e628 glDeleteShader =====
// attributes: thunk
int glDeleteShader()
{
  return __imp_glDeleteShader();
}


// ===== 30e634 ispunct =====
// attributes: thunk
int ispunct(int a1)
{
  return __imp_ispunct(a1);
}


// ===== 30e640 __isfinitef =====
// attributes: thunk
int _isfinitef()
{
  return __isfinitef();
}


// ===== 30e64c getsockname =====
// attributes: thunk
int getsockname(int a1, struct sockaddr *a2, socklen_t *a3)
{
  return __imp_getsockname(a1, a2, a3);
}


// ===== 30e658 strftime =====
// attributes: thunk
size_t strftime(char *s, size_t maxsize, const char *format, const struct tm *tp)
{
  return __imp_strftime(s, maxsize, format, tp);
}


// ===== 30e664 rename =====
// attributes: thunk
int rename(const char *old, const char *a2)
{
  return __imp_rename(old, a2);
}


// ===== 30e670 isalnum =====
// attributes: thunk
int isalnum(int a1)
{
  return __imp_isalnum(a1);
}


// ===== 30e67c __android_log_write =====
// attributes: thunk
int _android_log_write(int prio, const char *tag, const char *text)
{
  return __android_log_write(prio, tag, text);
}


// ===== 30e688 pthread_getschedparam =====
// attributes: thunk
int pthread_getschedparam(pthread_t target_thread, int *policy, struct sched_param *param)
{
  return __imp_pthread_getschedparam(target_thread, policy, param);
}


// ===== 30e694 ldexpf =====
// attributes: thunk
float ldexpf(float x, int exponent)
{
  return __imp_ldexpf(x, exponent);
}


// ===== 30e6a0 __aeabi_d2f =====
// attributes: thunk
float __fastcall _aeabi_d2f(double a1)
{
  return a1;
}


// ===== 30e6ac strtod =====
// attributes: thunk
double strtod(const char *a1, char **a2)
{
  return __imp_strtod(a1, a2);
}


// ===== 30e6b8 pthread_mutex_destroy =====
// attributes: thunk
int pthread_mutex_destroy(pthread_mutex_t *mutex)
{
  return __imp_pthread_mutex_destroy(mutex);
}


// ===== 30e6c4 strtol =====
// attributes: thunk
int strtol(const char *a1, char **a2, int a3)
{
  return __imp_strtol(a1, a2, a3);
}


// ===== 30e6d0 glGetActiveUniform =====
// attributes: thunk
int glGetActiveUniform()
{
  return __imp_glGetActiveUniform();
}


// ===== 30e6dc wmemmove =====
// attributes: thunk
wchar_t *wmemmove(wchar_t *s1, const wchar_t *s2, size_t n)
{
  return __imp_wmemmove(s1, s2, n);
}


// ===== 30e6e8 LC_API_STRCASECMP_0 =====
int LC_API_STRCASECMP_0(const char *a1, const char *a2)
{
  return strcasecmp(a1, a2);
}


// ===== 30e6f4 LC_API_MALLOC_0 =====
void *LC_API_MALLOC_0(size_t byte_count)
{
  return malloc(byte_count);
}


// ===== 30e700 ldexp =====
// attributes: thunk
double ldexp(double x, int exponent)
{
  return __imp_ldexp(x, exponent);
}


// ===== 30e70c __aeabi_fcmplt =====
// attributes: thunk
bool __fastcall _aeabi_fcmplt(float a1, float a2)
{
  return a1 < a2;
}


// ===== 30e718 glGenRenderbuffers =====
// attributes: thunk
int glGenRenderbuffers()
{
  return __imp_glGenRenderbuffers();
}


// ===== 30e724 gettimeofday =====
// attributes: thunk
int gettimeofday(struct timeval *tv, __timezone_ptr_t tz)
{
  return __imp_gettimeofday(tv, tz);
}


// ===== 30e730 clock =====
// attributes: thunk
clock_t clock(void)
{
  return __imp_clock();
}


// ===== 30e73c glGetAttribLocation =====
// attributes: thunk
int glGetAttribLocation()
{
  return __imp_glGetAttribLocation();
}


// ===== 30e748 nanosleep =====
// attributes: thunk
int nanosleep(const struct timespec *requested_time, struct timespec *remaining)
{
  return __imp_nanosleep(requested_time, remaining);
}


// ===== 30e754 cosf =====
// attributes: thunk
float cosf(float x)
{
  return __imp_cosf(x);
}


// ===== 30e760 __aeabi_dcmplt =====
// attributes: thunk
bool __fastcall _aeabi_dcmplt(double a1, double a2)
{
  return a1 < a2;
}


// ===== 30e76c __cxa_guard_acquire =====
// attributes: thunk
int _cxa_guard_acquire(__guard *a1)
{
  return __cxa_guard_acquire(a1);
}


// ===== 30e778 wmemset =====
// attributes: thunk
wchar_t *wmemset(wchar_t *s, wchar_t c, size_t n)
{
  return __imp_wmemset(s, c, n);
}


// ===== 30e784 glStencilOp =====
// attributes: thunk
void glStencilOp(GLenum fail, GLenum zfail, GLenum zpass)
{
  __imp_glStencilOp(fail, zfail, zpass);
}


// ===== 30e790 pthread_kill =====
// attributes: thunk
int pthread_kill(pthread_t threadid, int signo)
{
  return __imp_pthread_kill(threadid, signo);
}


// ===== 30e79c atanf =====
// attributes: thunk
float atanf(float x)
{
  return __imp_atanf(x);
}


// ===== 30e7a8 iswcntrl =====
// attributes: thunk
int iswcntrl(wint_t wc)
{
  return __imp_iswcntrl(wc);
}


// ===== 30e7b4 fmod =====
// attributes: thunk
double fmod(double x, double y)
{
  return __imp_fmod(x, y);
}


// ===== 30e7c0 glBindTexture =====
// attributes: thunk
void glBindTexture(GLenum target, GLuint texture)
{
  __imp_glBindTexture(target, texture);
}


// ===== 30e7cc glUniform2iv =====
// attributes: thunk
int glUniform2iv()
{
  return __imp_glUniform2iv();
}


// ===== 30e7d8 glUniform1f =====
// attributes: thunk
int glUniform1f()
{
  return __imp_glUniform1f();
}


// ===== 30e7e4 glBufferData =====
// attributes: thunk
int glBufferData()
{
  return __imp_glBufferData();
}


// ===== 30e7f0 fmodf =====
// attributes: thunk
float fmodf(float x, float y)
{
  return __imp_fmodf(x, y);
}


// ===== 30e7fc glUniform1fv =====
// attributes: thunk
int glUniform1fv()
{
  return __imp_glUniform1fv();
}


// ===== 30e808 acos =====
// attributes: thunk
double acos(double x)
{
  return __imp_acos(x);
}


// ===== 30e814 strcspn =====
// attributes: thunk
size_t strcspn(const char *a1, const char *a2)
{
  return __imp_strcspn(a1, a2);
}


// ===== 30e820 __aeabi_dcmpeq =====
// attributes: thunk
bool __fastcall _aeabi_dcmpeq(double a1, double a2)
{
  return a1 == a2;
}


// ===== 30e82c frexp =====
// attributes: thunk
double frexp(double x, int *exponent)
{
  return __imp_frexp(x, exponent);
}


// ===== 30e838 glBufferSubData =====
// attributes: thunk
int glBufferSubData()
{
  return __imp_glBufferSubData();
}


// ===== 30e844 glUniform2fv =====
// attributes: thunk
int glUniform2fv()
{
  return __imp_glUniform2fv();
}


// ===== 30e850 iswdigit =====
// attributes: thunk
int iswdigit(wint_t wc)
{
  return __imp_iswdigit(wc);
}


// ===== 30e85c fstat =====
// attributes: thunk
int fstat(int fd, struct stat *buf)
{
  return __imp_fstat(fd, buf);
}


// ===== 30e868 memcpy =====
// attributes: thunk
void *memcpy(void *a1, const void *a2, size_t a3)
{
  return __imp_memcpy(a1, a2, a3);
}


// ===== 30e874 localtime_r =====
// attributes: thunk
struct tm *localtime_r(const time_t *timer, struct tm *tp)
{
  return __imp_localtime_r(timer, tp);
}


// ===== 30e880 usleep =====
// attributes: thunk
int usleep(__useconds_t useconds)
{
  return __imp_usleep(useconds);
}


// ===== 30e88c operator new(uint) =====
// attributes: thunk
int __fastcall operator new(unsigned int a1)
{
  return __imp__Znwj(a1);
}


// ===== 30e898 vprintf =====
// attributes: thunk
int vprintf(const char *format, __gnuc_va_list arg)
{
  return __imp_vprintf(format, arg);
}


// ===== 30e8a4 __aeabi_f2d =====
// attributes: thunk
double __fastcall _aeabi_f2d(float a1)
{
  return a1;
}


// ===== 30e8b0 glCullFace =====
// attributes: thunk
void glCullFace(GLenum mode)
{
  __imp_glCullFace(mode);
}


// ===== 30e8bc glUseProgram =====
// attributes: thunk
int glUseProgram()
{
  return __imp_glUseProgram();
}


// ===== 30e8c8 mktime =====
// attributes: thunk
time_t mktime(struct tm *tp)
{
  return __imp_mktime(tp);
}


// ===== 30e8d4 __aeabi_uldivmod =====
// attributes: thunk
unsigned __int64 __fastcall _aeabi_uldivmod(unsigned __int64 a1, unsigned __int64 a2)
{
  return a1 / a2;
}


// ===== 30e8e0 localtime =====
// attributes: thunk
struct tm *localtime(const time_t *timer)
{
  return __imp_localtime(timer);
}


// ===== 30e8ec glDeleteTextures =====
// attributes: thunk
void glDeleteTextures(GLsizei n, const GLuint *textures)
{
  __imp_glDeleteTextures(n, textures);
}


// ===== 30e8f8 gethostbyaddr =====
// attributes: thunk
struct hostent *gethostbyaddr(const void *a1, socklen_t a2, int a3)
{
  return __imp_gethostbyaddr(a1, a2, a3);
}


// ===== 30e904 __aeabi_idivmod =====
// attributes: thunk
int __fastcall _aeabi_idivmod(int a1, int a2)
{
  return a1 / a2;
}


// ===== 30e910 glTexParameteri =====
// attributes: thunk
void glTexParameteri(GLenum target, GLenum pname, GLint param)
{
  __imp_glTexParameteri(target, pname, param);
}


// ===== 30e91c glUniform3iv =====
// attributes: thunk
int glUniform3iv()
{
  return __imp_glUniform3iv();
}


// ===== 30e928 sigaction_0 =====
// attributes: thunk
int sigaction_0(int sig, const struct sigaction *act, struct sigaction *oact)
{
  return __imp_sigaction_0(sig, act, oact);
}


// ===== 30e934 glGenTextures =====
// attributes: thunk
void glGenTextures(GLsizei n, GLuint *textures)
{
  __imp_glGenTextures(n, textures);
}


// ===== 30e940 gethostname =====
// attributes: thunk
int gethostname(char *name, size_t len)
{
  return __imp_gethostname(name, len);
}


// ===== 30e94c srand48 =====
// attributes: thunk
void srand48(int a1)
{
  __imp_srand48(a1);
}


// ===== 30e958 __aeabi_lmul =====
// attributes: thunk
__int64 __fastcall _aeabi_lmul(__int64 a1, __int64 a2)
{
  return a1 * a2;
}


// ===== 30e964 __aeabi_i2f =====
// attributes: thunk
float __fastcall _aeabi_i2f(int a1)
{
  return (float)a1;
}


// ===== 30e970 putchar =====
// attributes: thunk
int putchar(int c)
{
  return __imp_putchar(c);
}


// ===== 30e97c glUniform3fv =====
// attributes: thunk
int glUniform3fv()
{
  return __imp_glUniform3fv();
}


// ===== 30e988 glVertexAttrib4f =====
// attributes: thunk
int glVertexAttrib4f()
{
  return __imp_glVertexAttrib4f();
}


// ===== 30e994 glFlush =====
// attributes: thunk
void glFlush(void)
{
  __imp_glFlush();
}


// ===== 30e9a0 glUniform4fv =====
// attributes: thunk
int glUniform4fv()
{
  return __imp_glUniform4fv();
}


// ===== 30e9ac __aeabi_fcmple =====
// attributes: thunk
bool __fastcall _aeabi_fcmple(float a1, float a2)
{
  return a1 <= a2;
}


// ===== 30e9b8 closedir =====
// attributes: thunk
int closedir(DIR *dirp)
{
  return __imp_closedir(dirp);
}


// ===== 30e9c4 pow =====
// attributes: thunk
double pow(double x, double y)
{
  return __imp_pow(x, y);
}


// ===== 30e9d0 __aeabi_d2uiz =====
// attributes: thunk
unsigned int __fastcall _aeabi_d2uiz(double a1)
{
  return (unsigned int)a1;
}


// ===== 30e9dc glUniformMatrix4fv =====
// attributes: thunk
int glUniformMatrix4fv()
{
  return __imp_glUniformMatrix4fv();
}


// ===== 30e9e8 glDepthRangef =====
// attributes: thunk
int glDepthRangef()
{
  return __imp_glDepthRangef();
}


// ===== 30e9f4 glUniform1i =====
// attributes: thunk
int glUniform1i()
{
  return __imp_glUniform1i();
}


// ===== 30ea00 glClearColor =====
// attributes: thunk
void glClearColor(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha)
{
  __imp_glClearColor(red, green, blue, alpha);
}


// ===== 30ea0c log10 =====
// attributes: thunk
double log10(double x)
{
  return __imp_log10(x);
}


// ===== 30ea18 operator new[](uint,std::nothrow_t const&) =====
// attributes: thunk
int __fastcall operator new[](unsigned int a1, const std::nothrow_t *a2)
{
  return __imp__ZnajRKSt9nothrow_t(a1, a2);
}


// ===== 30ea24 __aeabi_d2iz =====
// attributes: thunk
int __fastcall _aeabi_d2iz(double a1)
{
  return (int)a1;
}


// ===== 30ea30 modff =====
// attributes: thunk
float modff(float x, float *iptr)
{
  return __imp_modff(x, iptr);
}


// ===== 30ea3c __cxa_guard_release =====
// attributes: thunk
void _cxa_guard_release(__guard *a1)
{
  __cxa_guard_release(a1);
}


// ===== 30ea48 glCopyTexSubImage2D =====
// attributes: thunk
void glCopyTexSubImage2D(
        GLenum target,
        GLint level,
        GLint xoffset,
        GLint yoffset,
        GLint x,
        GLint y,
        GLsizei width,
        GLsizei height)
{
  __imp_glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height);
}


// ===== 30ea54 sendto =====
// attributes: thunk
ssize_t sendto(int a1, const void *a2, size_t a3, int a4, const struct sockaddr *a5, socklen_t a6)
{
  return __imp_sendto(a1, a2, a3, a4, a5, a6);
}


// ===== 30ea60 open =====
// attributes: thunk
int open(const char *file, int oflag, ...)
{
  return __imp_open(file, oflag);
}


// ===== 30ea6c bind =====
// attributes: thunk
int bind(int a1, const struct sockaddr *a2, int a3)
{
  return __imp_bind(a1, a2, a3);
}


// ===== 30ea78 setsockopt =====
// attributes: thunk
int setsockopt(int a1, int a2, int a3, const void *a4, socklen_t a5)
{
  return __imp_setsockopt(a1, a2, a3, a4, a5);
}


// ===== 30ea84 __aeabi_d2lz =====
// attributes: thunk
__int64 __fastcall _aeabi_d2lz(double a1)
{
  return (__int64)a1;
}


// ===== 30ea90 socket =====
// attributes: thunk
int socket(int a1, int a2, int a3)
{
  return __imp_socket(a1, a2, a3);
}


// ===== 30ea9c glDeleteRenderbuffers =====
// attributes: thunk
int glDeleteRenderbuffers()
{
  return __imp_glDeleteRenderbuffers();
}


// ===== 30eaa8 opendir =====
// attributes: thunk
DIR *opendir(const char *name)
{
  return __imp_opendir(name);
}


// ===== 30eab4 __aeabi_dmul =====
// attributes: thunk
double __fastcall _aeabi_dmul(double a1, double a2)
{
  return a1 * a2;
}


// ===== 30eac0 floor =====
// attributes: thunk
double floor(double x)
{
  return __imp_floor(x);
}


// ===== 30eacc glRenderbufferStorage =====
// attributes: thunk
int glRenderbufferStorage()
{
  return __imp_glRenderbufferStorage();
}


// ===== 30ead8 setjmp =====
// attributes: thunk
int setjmp(jmp_buf env)
{
  return __imp_setjmp(env);
}


// ===== 30eae4 sprintf =====
// attributes: thunk
int sprintf(char *s, const char *format, ...)
{
  return __imp_sprintf(s, format);
}


// ===== 30eaf0 glPolygonOffset =====
// attributes: thunk
void glPolygonOffset(GLfloat factor, GLfloat units)
{
  __imp_glPolygonOffset(factor, units);
}


// ===== 30eafc vsnprintf =====
// attributes: thunk
int vsnprintf(char *s, size_t maxlen, const char *format, __gnuc_va_list arg)
{
  return __imp_vsnprintf(s, maxlen, format, arg);
}


// ===== 30eb08 sinf =====
// attributes: thunk
float sinf(float x)
{
  return __imp_sinf(x);
}


// ===== 30eb14 fclose =====
// attributes: thunk
int fclose(FILE *stream)
{
  return __imp_fclose(stream);
}


// ===== 30eb20 feof =====
// attributes: thunk
int feof(FILE *stream)
{
  return __imp_feof(stream);
}


// ===== 30eb2c __aeabi_uidivmod =====
// attributes: thunk
int __fastcall _aeabi_uidivmod(unsigned int a1, unsigned int a2)
{
  return a1 / a2;
}


// ===== 30eb38 strtoul =====
// attributes: thunk
unsigned int strtoul(const char *a1, char **a2, int a3)
{
  return __imp_strtoul(a1, a2, a3);
}


// ===== 30eb44 __aeabi_dadd =====
// attributes: thunk
double __fastcall _aeabi_dadd(double a1, double a2)
{
  return a1 + a2;
}


// ===== 30eb50 glTexSubImage2D =====
// attributes: thunk
void glTexSubImage2D(
        GLenum target,
        GLint level,
        GLint xoffset,
        GLint yoffset,
        GLsizei width,
        GLsizei height,
        GLenum format,
        GLenum type,
        const GLvoid *pixels)
{
  __imp_glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels);
}


// ===== 30eb5c atol =====
// attributes: thunk
int atol(const char *a1)
{
  return __imp_atol(a1);
}


// ===== 30eb68 powf =====
// attributes: thunk
float powf(float x, float y)
{
  return __imp_powf(x, y);
}


// ===== 30eb74 ceil =====
// attributes: thunk
double ceil(double x)
{
  return __imp_ceil(x);
}


// ===== 30eb80 readdir =====
// attributes: thunk
struct dirent *readdir(DIR *dirp)
{
  return __imp_readdir(dirp);
}


// ===== 30eb8c close =====
// attributes: thunk
int close(int fd)
{
  return __imp_close(fd);
}


// ===== 30eb98 fgets =====
// attributes: thunk
char *fgets(char *s, int n, FILE *stream)
{
  return __imp_fgets(s, n, stream);
}


// ===== 30eba4 __aeabi_fadd =====
// attributes: thunk
float __fastcall _aeabi_fadd(float a1, float a2)
{
  return a1 + a2;
}


// ===== 30ebb0 recvfrom =====
// attributes: thunk
ssize_t recvfrom(int a1, void *a2, size_t a3, int a4, const struct sockaddr *a5, socklen_t *a6)
{
  return __imp_recvfrom(a1, a2, a3, a4, a5, a6);
}


// ===== 30ebbc fputc =====
// attributes: thunk
int fputc(int c, FILE *stream)
{
  return __imp_fputc(c, stream);
}


// ===== 30ebc8 tanh =====
// attributes: thunk
double tanh(double x)
{
  return __imp_tanh(x);
}


// ===== 30ebd4 LC_API_STRSTR_0 =====
char *LC_API_STRSTR_0(const char *a1, const char *a2)
{
  return strstr(a1, a2);
}


// ===== 30ebe0 isalpha =====
// attributes: thunk
int isalpha(int a1)
{
  return __imp_isalpha(a1);
}


// ===== 30ebec wcscpy =====
// attributes: thunk
wchar_t *wcscpy(wchar_t *dest, const wchar_t *src)
{
  return __imp_wcscpy(dest, src);
}


// ===== 30ebf8 glAttachShader =====
// attributes: thunk
int glAttachShader()
{
  return __imp_glAttachShader();
}


// ===== 30ec04 realloc =====
// attributes: thunk
void *realloc(void *p, size_t byte_count)
{
  return __imp_realloc(p, byte_count);
}


// ===== 30ec10 glGetFloatv =====
// attributes: thunk
void glGetFloatv(GLenum pname, GLfloat *params)
{
  __imp_glGetFloatv(pname, params);
}


// ===== 30ec1c glCreateProgram =====
// attributes: thunk
int glCreateProgram()
{
  return __imp_glCreateProgram();
}


// ===== 30ec28 strchr =====
// attributes: thunk
char *strchr(const char *a1, int a2)
{
  return __imp_strchr(a1, a2);
}


// ===== 30ec34 fputs =====
// attributes: thunk
int fputs(const char *s, FILE *stream)
{
  return __imp_fputs(s, stream);
}


// ===== 30ec40 __assert2 =====
// attributes: thunk
int _assert2()
{
  return __assert2();
}


// ===== 30ec4c __aeabi_uidiv =====
// attributes: thunk
int __fastcall _aeabi_uidiv(unsigned int a1, unsigned int a2)
{
  return a1 / a2;
}


// ===== 30ec58 pthread_mutexattr_settype =====
// attributes: thunk
int pthread_mutexattr_settype()
{
  return __imp_pthread_mutexattr_settype();
}


// ===== 30ec64 expf =====
// attributes: thunk
float expf(float x)
{
  return __imp_expf(x);
}


// ===== 30ec70 glVertexAttribPointer =====
// attributes: thunk
int glVertexAttribPointer()
{
  return __imp_glVertexAttribPointer();
}


// ===== 30ec7c LC_API_STRNCMP_0 =====
int LC_API_STRNCMP_0(const char *a1, const char *a2, size_t a3)
{
  return strncmp(a1, a2, a3);
}


// ===== 30ec88 wcslen =====
// attributes: thunk
size_t wcslen(const wchar_t *s)
{
  return __imp_wcslen(s);
}


// ===== 30ec94 __aeabi_fdiv =====
// attributes: thunk
float __fastcall _aeabi_fdiv(float a1, float a2)
{
  return a1 / a2;
}


// ===== 30eca0 pthread_join =====
// attributes: thunk
int pthread_join(pthread_t th, void **thread_return)
{
  return __imp_pthread_join(th, thread_return);
}


// ===== 30ecac accept =====
// attributes: thunk
int accept(int a1, struct sockaddr *a2, socklen_t *a3)
{
  return __imp_accept(a1, a2, a3);
}


// ===== 30ecb8 floorf =====
// attributes: thunk
float floorf(float x)
{
  return __imp_floorf(x);
}


// ===== 30ecc4 setlocale =====
// attributes: thunk
char *setlocale(int category, const char *locale)
{
  return __imp_setlocale(category, locale);
}


// ===== 30ecd0 glDeleteBuffers =====
// attributes: thunk
int glDeleteBuffers()
{
  return __imp_glDeleteBuffers();
}


// ===== 30ecdc glLineWidth =====
// attributes: thunk
void glLineWidth(GLfloat width)
{
  __imp_glLineWidth(width);
}


// ===== 30ece8 glUniform1iv =====
// attributes: thunk
int glUniform1iv()
{
  return __imp_glUniform1iv();
}


// ===== 30ecf4 glDisableVertexAttribArray =====
// attributes: thunk
int glDisableVertexAttribArray()
{
  return __imp_glDisableVertexAttribArray();
}


// ===== 30ed00 strerror_r =====
// attributes: thunk
int strerror_r(int errnum, char *buf, size_t n)
{
  return __imp_strerror_r(errnum, buf, n);
}


// ===== 30ed0c pthread_setspecific =====
// attributes: thunk
int pthread_setspecific(pthread_key_t key, const void *pointer)
{
  return __imp_pthread_setspecific(key, pointer);
}


// ===== 30ed18 getenv =====
// attributes: thunk
char *getenv(const char *a1)
{
  return __imp_getenv(a1);
}


// ===== 30ed24 atan =====
// attributes: thunk
double atan(double x)
{
  return __imp_atan(x);
}


// ===== 30ed30 __aeabi_i2d =====
// attributes: thunk
double __fastcall _aeabi_i2d(int a1)
{
  return (double)a1;
}


// ===== 30ed3c glCompressedTexImage2D =====
// attributes: thunk
void glCompressedTexImage2D(
        GLenum target,
        GLint level,
        GLenum internalformat,
        GLsizei width,
        GLsizei height,
        GLint border,
        GLsizei imageSize,
        const GLvoid *data)
{
  __imp_glCompressedTexImage2D(target, level, internalformat, width, height, border, imageSize, data);
}


// ===== 30ed48 glClearStencil =====
// attributes: thunk
void glClearStencil(GLint s)
{
  __imp_glClearStencil(s);
}


// ===== 30ed54 glGetShaderiv =====
// attributes: thunk
int glGetShaderiv()
{
  return __imp_glGetShaderiv();
}


// ===== 30ed60 chdir =====
// attributes: thunk
int chdir(const char *path)
{
  return __imp_chdir(path);
}


// ===== 30ed6c __aeabi_fmul =====
// attributes: thunk
float __fastcall _aeabi_fmul(float a1, float a2)
{
  return a1 * a2;
}


// ===== 30ed78 glLinkProgram =====
// attributes: thunk
int glLinkProgram()
{
  return __imp_glLinkProgram();
}


// ===== 30ed84 glShaderSource =====
// attributes: thunk
int glShaderSource()
{
  return __imp_glShaderSource();
}


// ===== 30ed90 LC_API_STRCAT_0 =====
char *LC_API_STRCAT_0(char *a1, const char *a2)
{
  return strcat(a1, a2);
}


// ===== 30ed9c swprintf =====
// attributes: thunk
int __fastcall swprintf(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  return __imp_swprintf(a1, a2, a3, a4);
}


// ===== 30eda8 lrand48 =====
// attributes: thunk
int lrand48(void)
{
  return __imp_lrand48();
}


// ===== 30edb4 pthread_attr_destroy =====
// attributes: thunk
int pthread_attr_destroy(pthread_attr_t *attr)
{
  return __imp_pthread_attr_destroy(attr);
}


// ===== 30edc0 wmemcmp =====
// attributes: thunk
int wmemcmp(const wchar_t *s1, const wchar_t *s2, size_t n)
{
  return __imp_wmemcmp(s1, s2, n);
}


// ===== 30edcc ungetc =====
// attributes: thunk
int ungetc(int c, FILE *stream)
{
  return __imp_ungetc(c, stream);
}


// ===== 30edd8 iswupper =====
// attributes: thunk
int iswupper(wint_t wc)
{
  return __imp_iswupper(wc);
}


// ===== 30ede4 glGenFramebuffers =====
// attributes: thunk
int glGenFramebuffers()
{
  return __imp_glGenFramebuffers();
}


// ===== 30edf0 pthread_mutexattr_init =====
// attributes: thunk
int pthread_mutexattr_init(pthread_mutexattr_t *attr)
{
  return __imp_pthread_mutexattr_init(attr);
}


// ===== 30ee00 `global constructor keyed to'.._.._sources_stdinc.cpp =====
void `global constructor keyed to'.._.._sources_stdinc.cpp()
{
  dword_99F688 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_99F684 = 1056964608;
}


// ===== 30ee20 `global constructor keyed to'.._.._sources_Utils_faststackwalker.cpp =====
void `global constructor keyed to'.._.._sources_Utils_faststackwalker.cpp()
{
  dword_99F6A8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_99F6A4 = 1056964608;
}


// ===== 30ee40 `global constructor keyed to'.._.._sources_Utils_Float.cpp =====
void `global constructor keyed to'.._.._sources_Utils_Float.cpp()
{
  dword_99F6B4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_99F6B0 = 1056964608;
}


// ===== 30ee60 ObjToStr(char *,std::vector<Point3D<float>,std::allocator<Point3D<float>>> &) =====
void ObjToStr()
{
  ;
}


// ===== 30ee64 `global constructor keyed to'.._.._sources_Utils_IrrObjIO.cpp =====
void `global constructor keyed to'.._.._sources_Utils_IrrObjIO.cpp()
{
  dword_99F6C0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_99F6BC = 1056964608;
}


// ===== 30ee84 ObjToStr(char *,Point2D<int> &) =====
int __fastcall ObjToStr(char *a1, _DWORD *a2)
{
  return sprintf(a1, "%d,%d", *a2, a2[1]);
}


// ===== 30eea0 ObjToStr(char *,int &) =====
int __fastcall ObjToStr(char *a1, int *a2)
{
  return sprintf(a1, "%d", *a2);
}


// ===== 30eeb4 ObjToStr(char *,bool &) =====
int __fastcall ObjToStr(char *a1, bool *a2)
{
  return sprintf(a1, "%d", *a2);
}


// ===== 30eec8 ObjToStr(char *,float &) =====
int __fastcall ObjToStr(char *a1, float *a2)
{
  return sprintf(a1, "%f", *a2);
}


// ===== 30eefc ObjToStr(char *,glitch::core::dimension2d<float> &) =====
int __fastcall ObjToStr(char *a1, float *a2)
{
  return sprintf(a1, "%f,%f", *a2, a2[1]);
}


// ===== 30ef50 ObjToStr(char *,glitch::core::vector3d<float> &) =====
int __fastcall ObjToStr(char *a1, float *a2)
{
  return sprintf(a1, "%f,%f,%f", *a2, a2[1], a2[2]);
}


// ===== 30efb0 ObjToStr(char *,Point3D<float> &) =====
int __fastcall ObjToStr(char *a1, float *a2)
{
  return sprintf(a1, "%f,%f,%f", *a2, a2[1], a2[2]);
}


// ===== 30f010 StrToObj(char const*,std::vector<Point3D<float>,std::allocator<Point3D<float>>> &) =====
int StrToObj()
{
  return _DEBUG_OUT("NEED TO CHECK Venkat Vikram ********** ********** ************");
}


// ===== 30f020 StrToObj(char const*,bool &) =====
bool __fastcall StrToObj(const char *a1, bool *a2)
{
  _BOOL4 result; // r0

  result = LC_API_ATOI_0(a1) != 0;
  *a2 = result;
  return result;
}


// ===== 30f03c StrToObj(char const*,int &) =====
int __fastcall StrToObj(const char *a1, int *a2)
{
  int result; // r0

  result = LC_API_ATOI_0(a1);
  *a2 = result;
  return result;
}


// ===== 30f050 StrToObj(char const*,Point2D<int> &) =====
void __fastcall StrToObj(const char *a1, int *a2)
{
  char *v4; // r5
  char *v5; // r0
  char *v6; // r0
  __int16 v7; // [sp+4h] [bp-8h] BYREF

  v7 = 44;
  v4 = (char *)CustomAlloc(0x100u);
  LC_API_STRCPY_0(v4, a1);
  v5 = strtok(v4, (const char *)&v7);
  if ( v5 )
    *a2 = LC_API_ATOI_0(v5);
  v6 = strtok(nullptr, (const char *)&v7);
  if ( v6 )
    a2[1] = LC_API_ATOI_0(v6);
  CustomFree(v4);
}


// ===== 30f0c8 StrToObj(char const*,glitch::core::dimension2d<int> &) =====
void __fastcall StrToObj(char *a1, int *a2)
{
  int v2; // r7
  int v3; // r8
  char *v5; // r0
  char *v6; // r0
  __int16 v7; // [sp+4h] [bp-4h] BYREF

  v7 = 44;
  LC_API_STRCPY_0(nullptr, a1);
  v5 = strtok(nullptr, (const char *)&v7);
  if ( v5 )
    v3 = LC_API_ATOI_0(v5);
  v6 = strtok(nullptr, (const char *)&v7);
  if ( v6 )
    v2 = LC_API_ATOI_0(v6);
  CustomFree(nullptr);
  a2[1] = v2;
  *a2 = v3;
}


// ===== 30f140 StrToObj(char const*,Point3D<int> &) =====
void __fastcall StrToObj(const char *a1, _DWORD *a2)
{
  char *v4; // r6
  char *v5; // r0
  char *v6; // r0
  char *v7; // r0
  __int16 v8; // [sp+4h] [bp-8h] BYREF

  v8 = 44;
  v4 = (char *)CustomAlloc(0x100u);
  LC_API_STRCPY_0(v4, a1);
  v5 = strtok(v4, (const char *)&v8);
  if ( v5 )
    *a2 = (int)strtod(v5, nullptr);
  v6 = strtok(nullptr, (const char *)&v8);
  if ( v6 )
    a2[1] = LC_API_ATOI_0(v6);
  v7 = strtok(nullptr, (const char *)&v8);
  if ( v7 )
    a2[2] = LC_API_ATOI_0(v7);
  CustomFree(v4);
}


// ===== 30f1dc StrToObj(char const*,Point3D<float> &) =====
void __fastcall StrToObj(const char *a1, float *a2)
{
  char *v4; // r6
  char *v5; // r0
  float v6; // r0
  char *v7; // r0
  float v8; // r0
  char *v9; // r0
  float v10; // r0
  __int16 v11; // [sp+4h] [bp-8h] BYREF

  v11 = 44;
  v4 = (char *)CustomAlloc(0x100u);
  LC_API_STRCPY_0(v4, a1);
  v5 = strtok(v4, (const char *)&v11);
  if ( v5 )
  {
    v6 = strtod(v5, nullptr);
    *a2 = v6;
  }
  v7 = strtok(nullptr, (const char *)&v11);
  if ( v7 )
  {
    v8 = strtod(v7, nullptr);
    a2[1] = v8;
  }
  v9 = strtok(nullptr, (const char *)&v11);
  if ( v9 )
  {
    v10 = strtod(v9, nullptr);
    a2[2] = v10;
  }
  CustomFree(v4);
}


// ===== 30f288 StrToObj(char const*,float &) =====
float __fastcall StrToObj(const char *a1, float *a2)
{
  float result; // r0

  result = strtod(a1, nullptr);
  *a2 = result;
  return result;
}


// ===== 30f2a4 StrToObj(char const*,glitch::core::dimension2d<float> &) =====
void __fastcall StrToObj(const char *a1, float *a2)
{
  float v2; // r8
  float v3; // r10
  char *v6; // r6
  char *v7; // r0
  float v8; // r0
  char *v9; // r0
  float v10; // r0
  __int16 v11; // [sp+4h] [bp-8h] BYREF

  v11 = 44;
  v6 = (char *)CustomAlloc(0x100u);
  LC_API_STRCPY_0(v6, a1);
  v7 = strtok(v6, (const char *)&v11);
  if ( v7 )
  {
    v8 = strtod(v7, nullptr);
    v3 = v8;
  }
  v9 = strtok(nullptr, (const char *)&v11);
  if ( v9 )
  {
    v10 = strtod(v9, nullptr);
    v2 = v10;
  }
  CustomFree(v6);
  a2[1] = v2;
  *a2 = v3;
}


// ===== 30f334 StrToObj(char const*,glitch::core::vector3d<float> &) =====
void __fastcall StrToObj(const char *a1, float *a2)
{
  char *v4; // r6
  char *v5; // r0
  float v6; // r0
  char *v7; // r0
  float v8; // r0
  char *v9; // r0
  float v10; // r0
  __int16 v11; // [sp+4h] [bp-8h] BYREF

  v11 = 44;
  v4 = (char *)CustomAlloc(0x100u);
  LC_API_STRCPY_0(v4, a1);
  v5 = strtok(v4, (const char *)&v11);
  if ( v5 )
  {
    v6 = strtod(v5, nullptr);
    *a2 = v6;
  }
  v7 = strtok(nullptr, (const char *)&v11);
  if ( v7 )
  {
    v8 = strtod(v7, nullptr);
    a2[1] = v8;
  }
  v9 = strtok(nullptr, (const char *)&v11);
  if ( v9 )
  {
    v10 = strtod(v9, nullptr);
    a2[2] = v10;
  }
  CustomFree(v4);
}


// ===== 30f3e0 std::basic_ios<char,std::char_traits<char>>::setstate(int) =====
void __fastcall std::ios::setstate(std::ios_base *a1, int a2)
{
  int M_exception_mask; // r2
  int v3; // r3

  M_exception_mask = a1->_M_exception_mask;
  v3 = a2 | a1->_M_iostate;
  if ( !a1[1]._M_iostate )
    v3 |= 1u;
  a1->_M_iostate = v3;
  if ( (v3 & M_exception_mask) != 0 )
    __ZNSt8ios_base16_M_throw_failureEv_veneer(a1);
}


// ===== 30f408 std::_M_ignore_unbuffered<char,std::char_traits<char>,std::priv::_Is_not_wspace<std::char_traits<char>>>(std::basic_istream<char,std::char_traits<char>> *,std::basic_streambuf<char,std::char_traits<char>> *,std::priv::_Is_not_wspace<std::char_traits<char>>,bool,bool) [clone] =====
void __fastcall std::_M_ignore_unbuffered<char,std::char_traits<char>,std::priv::_Is_not_wspace<std::char_traits<char>>>(
        _DWORD *a1,
        _DWORD *a2,
        int a3)
{
  _BYTE *v3; // r3
  _BYTE *v7; // r2
  int v8; // r0
  int v9; // r12
  int v10; // r3
  _BYTE *v11; // r2
  std::ios_base *v12; // r0
  int v13; // r12
  int M_exception_mask; // r3

  v3 = (_BYTE *)a2[2];
  do
  {
    v7 = v3 + 1;
    if ( a2[3] <= (unsigned int)v3 )
    {
      v8 = (*(int (__fastcall **)(_DWORD *))(*a2 + 36))(a2);
      if ( v8 == -1 )
      {
        v9 = 6;
        goto LABEL_11;
      }
      v7 = (_BYTE *)a2[2];
    }
    else
    {
      a2[2] = v7;
      LOBYTE(v8) = *v3;
    }
    v3 = v7;
    v9 = *(_DWORD *)(*(_DWORD *)(a3 + 12) + 4 * (unsigned __int8)v8) & 1;
  }
  while ( v9 );
  if ( a2[1] < (unsigned int)v7 && (v10 = (unsigned __int8)*(v7 - 1), v11 = v7 - 1, (unsigned __int8)v8 == v10) )
  {
    a2[2] = v11;
  }
  else if ( (*(int (__fastcall **)(_DWORD *))(*a2 + 40))(a2) == -1 )
  {
    v9 = 4;
  }
  else
  {
    v9 = 0;
  }
LABEL_11:
  v12 = (std::ios_base *)((char *)a1 + *(_DWORD *)(*a1 - 12));
  v13 = v9 | v12->_M_iostate;
  M_exception_mask = v12->_M_exception_mask;
  if ( !v12[1]._M_iostate )
    v13 |= 1u;
  v12->_M_iostate = v13;
  if ( (v13 & M_exception_mask) != 0 )
    __ZNSt8ios_base16_M_throw_failureEv_veneer(v12);
}


// ===== 30f4f0 std::ostream::flush(void) =====
std::ostream *__fastcall std::ostream::flush(std::ostream *this)
{
  int v2; // r3
  std::ios_base *v4; // r0
  int M_exception_mask; // r2
  int v6; // r3

  v2 = *(_DWORD *)&this->gap4[*((_DWORD *)this->_vptr.basic_ostream - 3) + 68];
  if ( v2 )
  {
    if ( (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 20))(*(_DWORD *)&this->gap4[*((_DWORD *)this->_vptr.basic_ostream
                                                                                     - 3)
                                                                                   + 68]) == -1 )
    {
      v4 = (std::ios_base *)((char *)this + *((_DWORD *)this->_vptr.basic_ostream - 3));
      M_exception_mask = v4->_M_exception_mask;
      v6 = v4->_M_iostate | 1;
      v4->_M_iostate = v6;
      if ( (v6 & M_exception_mask) != 0 )
        __ZNSt8ios_base16_M_throw_failureEv_veneer(v4);
    }
  }
  return this;
}


// ===== 30f55c std::priv::__init_bostr<char,std::char_traits<char>>(std::basic_ostream<char,std::char_traits<char>> &) =====
bool __fastcall std::priv::__init_bostr<char,std::char_traits<char>>(_DWORD *a1)
{
  _DWORD *v2; // r3
  std::ostream *v3; // r0

  v2 = (_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 12));
  if ( v2[2] )
    return 0;
  if ( !v2[18] )
  {
    std::ios::setstate((std::ios_base *)((char *)a1 + *(_DWORD *)(*a1 - 12)), 1);
    v2 = (_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 12));
  }
  v3 = (std::ostream *)v2[19];
  if ( v3 )
  {
    std::ostream::flush(v3);
    v2 = (_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 12));
  }
  return v2[2] == 0;
}


// ===== 30f5d8 std::priv::__put_num<char,std::char_traits<char>,double>(std::basic_ostream<char,std::char_traits<char>> &,double) =====
std::ostream *__fastcall std::priv::__put_num<char,std::char_traits<char>,double>(std::ostream *a1)
{
  std::ios_base *v2; // r0
  int M_exception_mask; // r2
  int v4; // r3
  std::locale::id *FacetIdEPKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE_veneer; // r0
  std::locale::facet *v7; // r12
  int v8; // r5
  _BYTE v9[8]; // [sp+1Ch] [bp-Ch] BYREF
  std::locale v10; // [sp+24h] [bp-4h] BYREF

  if ( !std::priv::__init_bostr<char,std::char_traits<char>>(a1)
    || (__ZNSt6localeC1ERKS__veneer(
          &v10,
          (const std::locale *const)&a1->gap4[*((_DWORD *)a1->_vptr.basic_ostream - 3) + 28]),
        FacetIdEPKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE_veneer = __ZNSt4priv11_GetFacetIdEPKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE_veneer(nullptr),
        v7 = __ZNKSt6locale12_M_use_facetERKNS_2idE_veneer(
               &v10,
               FacetIdEPKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE_veneer),
        (*((void (__fastcall **)(_BYTE *, std::locale::facet *))v7->_vptr.facet + 5))(v9, v7),
        v8 = v9[4] ^ 1,
        __ZNSt6localeD1Ev_veneer(&v10),
        v8) )
  {
    v2 = (std::ios_base *)((char *)a1 + *((_DWORD *)a1->_vptr.basic_ostream - 3));
    M_exception_mask = v2->_M_exception_mask;
    v4 = v2->_M_iostate | 1;
    v2->_M_iostate = v4;
    if ( (v4 & M_exception_mask) != 0 )
      __ZNSt8ios_base16_M_throw_failureEv_veneer(v2);
  }
  if ( (*(_DWORD *)&a1->gap4[*((_DWORD *)a1->_vptr.basic_ostream - 3)] & 0x2000) != 0 )
    std::ostream::flush(a1);
  return a1;
}


// ===== 30f6e8 std::_M_init_noskip<char,std::char_traits<char>>(std::basic_istream<char,std::char_traits<char>> &) =====
bool __fastcall std::_M_init_noskip<char,std::char_traits<char>>(_DWORD *a1)
{
  std::ios_base *v2; // r3
  int M_iostate; // r2
  std::ostream *M_openmode; // r0
  int v6; // r1
  int M_exception_mask; // r2

  v2 = (std::ios_base *)((char *)a1 + *(_DWORD *)(*a1 - 12));
  M_iostate = v2->_M_iostate;
  if ( M_iostate )
  {
    v6 = M_iostate | 4;
    if ( !v2[1]._M_iostate )
      v6 = M_iostate | 5;
    M_exception_mask = v2->_M_exception_mask;
    v2->_M_iostate = v6;
    if ( (v6 & M_exception_mask) != 0 )
      __ZNSt8ios_base16_M_throw_failureEv_veneer(v2);
    return *(_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 12) + 8) == 0;
  }
  else
  {
    M_openmode = (std::ostream *)v2[1]._M_openmode;
    if ( M_openmode )
    {
      std::ostream::flush(M_openmode);
      v2 = (std::ios_base *)((char *)a1 + *(_DWORD *)(*a1 - 12));
    }
    if ( !v2[1]._M_iostate )
    {
      std::ios::setstate(v2, 1);
      v2 = (std::ios_base *)((char *)a1 + *(_DWORD *)(*a1 - 12));
    }
    return v2->_M_iostate == 0;
  }
}


// ===== 30f7b0 std::_M_init_skip<char,std::char_traits<char>>(std::basic_istream<char,std::char_traits<char>> &) =====
int __fastcall std::_M_init_skip<char,std::char_traits<char>>(_DWORD *a1)
{
  char *v2; // r12
  int v3; // r2
  int v4; // r3
  int result; // r0
  std::ostream *v6; // r0
  _DWORD *v7; // r6
  const char *v8; // r2
  const char *v9; // r3
  const std::ctype<char> *v10; // r7
  _BOOL4 v11; // r5
  int v12; // r12
  std::ios_base *v13; // r0
  int M_iostate; // r2
  int v15; // r3
  int M_exception_mask; // r2
  const char *v17; // r0
  const char *v18; // r1
  const char *v19; // r8
  int v20; // r0

  v2 = (char *)a1 + *(_DWORD *)(*a1 - 12);
  if ( !*((_DWORD *)v2 + 2) )
  {
    v6 = *((std::ostream **)v2 + 19);
    if ( v6 )
    {
      std::ostream::flush(v6);
      v2 = (char *)a1 + *(_DWORD *)(*a1 - 12);
    }
    v7 = *((_DWORD **)v2 + 18);
    if ( v7 )
    {
      v8 = (const char *)v7[2];
      v9 = (const char *)v7[3];
      if ( v8 == v9 )
      {
        std::_M_ignore_unbuffered<char,std::char_traits<char>,std::priv::_Is_not_wspace<std::char_traits<char>>>(
          a1,
          *((_DWORD **)v2 + 18),
          *((_DWORD *)v2 + 16));
      }
      else
      {
        v10 = *((const std::ctype<char> **)v2 + 16);
        v11 = 0;
LABEL_12:
        v12 = 0;
        while ( v9 != v8 )
        {
          if ( v11 )
            goto LABEL_15;
          if ( v12 )
            goto LABEL_19;
          v17 = __ZNKSt5ctypeIcE8scan_notENSt10ctype_base4maskEPKcS4__veneer(v10, std::ctype_base::mask::space, v8, v9);
          v9 = (const char *)v7[3];
          v8 = v17;
          v7[2] = v17;
          v18 = v17;
          v19 = v9;
          v12 = 1;
          if ( v17 == v9 )
          {
            if ( v9 <= v17 )
            {
              v20 = (*(int (__fastcall **)(_DWORD *, const char *, const char *))(*v7 + 32))(v7, v17, v17);
              v18 = (const char *)v7[2];
              v19 = (const char *)v7[3];
            }
            else
            {
              v20 = *(unsigned __int8 *)v17;
            }
            v11 = v20 == -1;
            v9 = v19;
            v8 = v18;
            goto LABEL_12;
          }
        }
        if ( v11 )
        {
LABEL_15:
          v13 = (std::ios_base *)((char *)a1 + *(_DWORD *)(*a1 - 12));
          M_iostate = v13->_M_iostate;
          v15 = M_iostate | 6;
          if ( !v13[1]._M_iostate )
            v15 = M_iostate | 7;
          M_exception_mask = v13->_M_exception_mask;
          v13->_M_iostate = v15;
          if ( (v15 & M_exception_mask) != 0 )
            __ZNSt8ios_base16_M_throw_failureEv_veneer(v13);
          goto LABEL_19;
        }
        if ( !v12 )
          std::_M_ignore_unbuffered<char,std::char_traits<char>,std::priv::_Is_not_wspace<std::char_traits<char>>>(
            a1,
            v7,
            (int)v10);
      }
    }
    else
    {
      std::ios::setstate((std::ios_base *)v2, 1);
    }
LABEL_19:
    v2 = (char *)a1 + *(_DWORD *)(*a1 - 12);
    if ( !*((_DWORD *)v2 + 2) )
      return 1;
  }
  v3 = *((_DWORD *)v2 + 2);
  v4 = v3 | 4;
  if ( !*((_DWORD *)v2 + 18) )
    v4 = v3 | 5;
  result = v4 & *((_DWORD *)v2 + 5);
  *((_DWORD *)v2 + 2) = v4;
  if ( result )
  {
    __ZNSt8ios_base16_M_throw_failureEv_veneer((std::ios_base *const)v2);
    return 0;
  }
  return result;
}


// ===== 30f970 std::istream::sentry::sentry(std::istream &,bool) [clone] =====
std::istream::sentry *__fastcall std::istream::sentry::sentry(std::istream::sentry *this, std::istream *a2, bool a3)
{
  if ( (*(std::streamsize *)((_BYTE *)&a2->_M_gcount + *((_DWORD *)a2->_vptr.basic_istream - 3)) & 0x1000) != 0 )
    *(_BYTE *)this = std::_M_init_skip<char,std::char_traits<char>>(a2);
  else
    *(_BYTE *)this = std::_M_init_noskip<char,std::char_traits<char>>(a2);
  return this;
}


// ===== 30f9b8 std::priv::__get_num<char,std::char_traits<char>,float>(std::basic_istream<char,std::char_traits<char>> &,float &) =====
int __fastcall std::priv::__get_num<char,std::char_traits<char>,float>(std::istream *a1, int a2, bool a3)
{
  int result; // r0
  std::locale::id *IcSt19istreambuf_iteratorIcSt11char_traitsIcEEE_veneer; // r0
  std::locale::facet *v6; // r0
  int v7; // r2
  _BYTE v8[12]; // [sp+18h] [bp-2Ch] BYREF
  int v9; // [sp+24h] [bp-20h]
  __int16 v10; // [sp+28h] [bp-1Ch]
  char v11; // [sp+2Ah] [bp-1Ah]
  int v12; // [sp+2Ch] [bp-18h]
  char v13; // [sp+30h] [bp-14h]
  _BOOL2 v14; // [sp+31h] [bp-13h]
  std::locale v15; // [sp+34h] [bp-10h] BYREF
  int v16; // [sp+38h] [bp-Ch]
  _BYTE v17[8]; // [sp+3Ch] [bp-8h] BYREF

  v16 = 0;
  std::istream::sentry::sentry((std::istream::sentry *)v17, a1, a3);
  if ( !v17[0] )
    return v16;
  __ZNSt6localeC1ERKS__veneer(&v15, (const std::locale *const)&a1->gap8[*((_DWORD *)a1->_vptr.basic_istream - 3) + 24]);
  IcSt19istreambuf_iteratorIcSt11char_traitsIcEEE_veneer = __ZNSt4priv11_GetFacetIdEPKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE_veneer(nullptr);
  v6 = __ZNKSt6locale12_M_use_facetERKNS_2idE_veneer(&v15, IcSt19istreambuf_iteratorIcSt11char_traitsIcEEE_veneer);
  v7 = *(_DWORD *)&a1->gap8[*((_DWORD *)a1->_vptr.basic_istream - 3) + 64];
  v10 = 256;
  v14 = v7 == 0;
  v11 = 0;
  v13 = 0;
  v12 = v7;
  v9 = 0;
  (*((void (__fastcall **)(_BYTE *, std::locale::facet *))v6->_vptr.facet + 7))(v8, v6);
  __ZNSt6localeD1Ev_veneer(&v15);
  result = v16;
  if ( v16 )
  {
    std::ios::setstate((std::ios_base *)((char *)a1 + *((_DWORD *)a1->_vptr.basic_istream - 3)), v16);
    return v16;
  }
  return result;
}


// ===== 30fac8 std::priv::__get_num<char,std::char_traits<char>,long>(std::basic_istream<char,std::char_traits<char>> &,long &) =====
int __fastcall std::priv::__get_num<char,std::char_traits<char>,long>(std::istream *a1, int a2, bool a3)
{
  int result; // r0
  std::locale::id *IcSt19istreambuf_iteratorIcSt11char_traitsIcEEE_veneer; // r0
  std::locale::facet *v6; // r0
  int v7; // r2
  _BYTE v8[12]; // [sp+18h] [bp-2Ch] BYREF
  int v9; // [sp+24h] [bp-20h]
  __int16 v10; // [sp+28h] [bp-1Ch]
  char v11; // [sp+2Ah] [bp-1Ah]
  int v12; // [sp+2Ch] [bp-18h]
  char v13; // [sp+30h] [bp-14h]
  _BOOL2 v14; // [sp+31h] [bp-13h]
  std::locale v15; // [sp+34h] [bp-10h] BYREF
  int v16; // [sp+38h] [bp-Ch]
  _BYTE v17[8]; // [sp+3Ch] [bp-8h] BYREF

  v16 = 0;
  std::istream::sentry::sentry((std::istream::sentry *)v17, a1, a3);
  if ( !v17[0] )
    return v16;
  __ZNSt6localeC1ERKS__veneer(&v15, (const std::locale *const)&a1->gap8[*((_DWORD *)a1->_vptr.basic_istream - 3) + 24]);
  IcSt19istreambuf_iteratorIcSt11char_traitsIcEEE_veneer = __ZNSt4priv11_GetFacetIdEPKSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE_veneer(nullptr);
  v6 = __ZNKSt6locale12_M_use_facetERKNS_2idE_veneer(&v15, IcSt19istreambuf_iteratorIcSt11char_traitsIcEEE_veneer);
  v7 = *(_DWORD *)&a1->gap8[*((_DWORD *)a1->_vptr.basic_istream - 3) + 64];
  v10 = 256;
  v14 = v7 == 0;
  v11 = 0;
  v13 = 0;
  v12 = v7;
  v9 = 0;
  (*((void (__fastcall **)(_BYTE *, std::locale::facet *))v6->_vptr.facet + 3))(v8, v6);
  __ZNSt6localeD1Ev_veneer(&v15);
  result = v16;
  if ( v16 )
  {
    std::ios::setstate((std::ios_base *)((char *)a1 + *((_DWORD *)a1->_vptr.basic_istream - 3)), v16);
    return v16;
  }
  return result;
}


// ===== 30fbd8 std::istream::operator>>(int &) =====
std::istream *__fastcall std::istream::operator>>(std::istream *a1, _DWORD *a2, bool a3)
{
  std::istream *result; // r0
  int v6; // [sp+4h] [bp-8h] BYREF

  std::priv::__get_num<char,std::char_traits<char>,long>(a1, (int)&v6, a3);
  result = a1;
  if ( (*(_DWORD *)&a1->gap8[*((_DWORD *)a1->_vptr.basic_istream - 3)] & 5) == 0 )
    *a2 = v6;
  return result;
}


// ===== 30fc18 std::ostream::_M_put_nowiden(char const*) [clone] =====
void __fastcall std::ostream::_M_put_nowiden(std::ostream *this, const char *a2)
{
  char *v3; // r1
  int v4; // r5
  int v5; // r5
  int v6; // r0
  int v7; // r0

  if ( !std::priv::__init_bostr<char,std::char_traits<char>>(this) )
  {
LABEL_7:
    if ( (*(_DWORD *)&this->gap4[*((_DWORD *)this->_vptr.basic_ostream - 3)] & 0x2000) == 0 )
      return;
LABEL_11:
    std::ostream::flush(this);
    return;
  }
  v3 = (char *)this + *((_DWORD *)this->_vptr.basic_ostream - 3);
  v4 = *((_DWORD *)v3 + 7);
  if ( v4 > 1 )
  {
    v5 = v4 - 1;
    if ( (*((_DWORD *)v3 + 1) & 7) == 1 )
    {
      if ( (*(int (__fastcall **)(_DWORD, const char *))(**((_DWORD **)v3 + 18) + 44))(*((_DWORD *)v3 + 18), ",") == 1
        && v5 == (*(int (__fastcall **)(_DWORD, _DWORD, int))(**(_DWORD **)&this->gap4[*((_DWORD *)this->_vptr.basic_ostream
                                                                                       - 3)
                                                                                     + 68]
                                                            + 48))(
                   *(_DWORD *)&this->gap4[*((_DWORD *)this->_vptr.basic_ostream - 3) + 68],
                   (char)this->gap4[*((_DWORD *)this->_vptr.basic_ostream - 3) + 64],
                   v5) )
      {
        goto LABEL_14;
      }
    }
    else if ( v5 == (*(int (__fastcall **)(_DWORD, _DWORD, int))(**((_DWORD **)v3 + 18) + 48))(
                      *((_DWORD *)v3 + 18),
                      v3[68],
                      v5) )
    {
      v7 = *(_DWORD *)&this->gap4[*((_DWORD *)this->_vptr.basic_ostream - 3) + 68];
      if ( (*(int (__fastcall **)(int, const char *, int))(*(_DWORD *)v7 + 44))(v7, ",", 1) == 1 )
      {
LABEL_14:
        *(_DWORD *)&this->gap4[*((_DWORD *)this->_vptr.basic_ostream - 3) + 24] = 0;
        goto LABEL_7;
      }
    }
    *(_DWORD *)&this->gap4[*((_DWORD *)this->_vptr.basic_ostream - 3) + 24] = 0;
LABEL_6:
    std::ios::setstate((std::ios_base *)((char *)this + *((_DWORD *)this->_vptr.basic_ostream - 3)), 4);
    goto LABEL_7;
  }
  v6 = (*(int (__fastcall **)(_DWORD, const char *, int))(**((_DWORD **)v3 + 18) + 44))(*((_DWORD *)v3 + 18), ",", 1);
  *(_DWORD *)&this->gap4[*((_DWORD *)this->_vptr.basic_ostream - 3) + 24] = 0;
  if ( v6 != 1 )
    goto LABEL_6;
  if ( (*(_DWORD *)&this->gap4[*((_DWORD *)this->_vptr.basic_ostream - 3)] & 0x2000) != 0 )
    goto LABEL_11;
}


// ===== 30fdd0 operator<<(std::ostream &,glitch::core::vector3d<float> const&) =====
std::ostream *__fastcall operator<<(std::ostream *a1)
{
  std::ostream *v2; // r6
  const char *v3; // r1
  std::ostream *v4; // r6
  const char *v5; // r1

  v2 = std::priv::__put_num<char,std::char_traits<char>,double>(a1);
  std::ostream::_M_put_nowiden(v2, v3);
  v4 = std::priv::__put_num<char,std::char_traits<char>,double>(v2);
  std::ostream::_M_put_nowiden(v4, v5);
  std::priv::__put_num<char,std::char_traits<char>,double>(v4);
  return a1;
}


// ===== 30fe3c std::priv::__put_num<char,std::char_traits<char>,long>(std::basic_ostream<char,std::char_traits<char>> &,long) =====
std::ostream *__fastcall std::priv::__put_num<char,std::char_traits<char>,long>(std::ostream *a1)
{
  std::ios_base *v2; // r0
  int M_exception_mask; // r2
  int v4; // r3
  std::locale::id *FacetIdEPKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE_veneer; // r0
  std::locale::facet *v7; // r12
  int v8; // r5
  _BYTE v9[8]; // [sp+1Ch] [bp-10h] BYREF
  std::locale v10; // [sp+24h] [bp-8h] BYREF

  if ( !std::priv::__init_bostr<char,std::char_traits<char>>(a1)
    || (__ZNSt6localeC1ERKS__veneer(
          &v10,
          (const std::locale *const)&a1->gap4[*((_DWORD *)a1->_vptr.basic_ostream - 3) + 28]),
        FacetIdEPKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE_veneer = __ZNSt4priv11_GetFacetIdEPKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE_veneer(nullptr),
        v7 = __ZNKSt6locale12_M_use_facetERKNS_2idE_veneer(
               &v10,
               FacetIdEPKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE_veneer),
        (*((void (__fastcall **)(_BYTE *, std::locale::facet *))v7->_vptr.facet + 3))(v9, v7),
        v8 = v9[4] ^ 1,
        __ZNSt6localeD1Ev_veneer(&v10),
        v8) )
  {
    v2 = (std::ios_base *)((char *)a1 + *((_DWORD *)a1->_vptr.basic_ostream - 3));
    M_exception_mask = v2->_M_exception_mask;
    v4 = v2->_M_iostate | 1;
    v2->_M_iostate = v4;
    if ( (v4 & M_exception_mask) != 0 )
      __ZNSt8ios_base16_M_throw_failureEv_veneer(v2);
  }
  if ( (*(_DWORD *)&a1->gap4[*((_DWORD *)a1->_vptr.basic_ostream - 3)] & 0x2000) != 0 )
    std::ostream::flush(a1);
  return a1;
}


// ===== 30ff48 operator<<(std::ostream &,glitch::core::vector3d<int> const&) =====
std::ostream *__fastcall operator<<(std::ostream *a1)
{
  std::ostream *v2; // r6
  const char *v3; // r1
  std::ostream *v4; // r6
  const char *v5; // r1

  v2 = std::priv::__put_num<char,std::char_traits<char>,long>(a1);
  std::ostream::_M_put_nowiden(v2, v3);
  v4 = std::priv::__put_num<char,std::char_traits<char>,long>(v2);
  std::ostream::_M_put_nowiden(v4, v5);
  std::priv::__put_num<char,std::char_traits<char>,long>(v4);
  return a1;
}


// ===== 30ff8c std::ostream::_M_put_char(char) =====
void __fastcall std::ostream::_M_put_char(std::ostream *this, unsigned __int8 a2)
{
  char *v4; // r2
  int v5; // r6
  int v6; // r6
  std::ios_base *v7; // r0
  int M_exception_mask; // r2
  int v9; // r3
  _DWORD *v10; // r3
  unsigned __int8 *v11; // r2
  _DWORD *v12; // r3
  unsigned __int8 *v13; // r2
  int v14; // r0

  if ( !std::priv::__init_bostr<char,std::char_traits<char>>(this) )
    goto LABEL_9;
  v4 = (char *)this + *((_DWORD *)this->_vptr.basic_ostream - 3);
  v5 = *((_DWORD *)v4 + 7);
  if ( v5 <= 0 || (v6 = v5 - 1) == 0 )
  {
    v10 = *((_DWORD **)v4 + 18);
    v11 = (unsigned __int8 *)v10[5];
    if ( (unsigned int)v11 >= v10[6] )
    {
      v14 = (*(int (__fastcall **)(_DWORD *, _DWORD))(*v10 + 52))(v10, a2);
      *(_DWORD *)&this->gap4[*((_DWORD *)this->_vptr.basic_ostream - 3) + 24] = 0;
      if ( v14 != -1 )
        goto LABEL_9;
      goto LABEL_7;
    }
    goto LABEL_12;
  }
  if ( (*((_DWORD *)v4 + 1) & 7) != 1 )
  {
    if ( v6 != (*(int (__fastcall **)(_DWORD, _DWORD, int))(**((_DWORD **)v4 + 18) + 48))(
                 *((_DWORD *)v4 + 18),
                 v4[68],
                 v6) )
      goto LABEL_6;
    v10 = *(_DWORD **)&this->gap4[*((_DWORD *)this->_vptr.basic_ostream - 3) + 68];
    v11 = (unsigned __int8 *)v10[5];
    if ( (unsigned int)v11 >= v10[6] )
    {
      if ( (*(int (__fastcall **)(_DWORD, _DWORD))(*v10 + 52))(
             *(_DWORD *)&this->gap4[*((_DWORD *)this->_vptr.basic_ostream - 3) + 68],
             a2) == -1 )
        goto LABEL_6;
      goto LABEL_13;
    }
LABEL_12:
    *v11 = a2;
    v10[5] = v11 + 1;
    goto LABEL_13;
  }
  v12 = *((_DWORD **)v4 + 18);
  v13 = (unsigned __int8 *)v12[5];
  if ( (unsigned int)v13 >= v12[6] )
  {
    if ( (*(int (__fastcall **)(_DWORD *, _DWORD))(*v12 + 52))(v12, a2) == -1 )
      goto LABEL_6;
  }
  else
  {
    *v13 = a2;
    v12[5] = v13 + 1;
  }
  if ( v6 == (*(int (__fastcall **)(_DWORD, _DWORD, int))(**(_DWORD **)&this->gap4[*((_DWORD *)this->_vptr.basic_ostream
                                                                                   - 3)
                                                                                 + 68]
                                                        + 48))(
               *(_DWORD *)&this->gap4[*((_DWORD *)this->_vptr.basic_ostream - 3) + 68],
               (char)this->gap4[*((_DWORD *)this->_vptr.basic_ostream - 3) + 64],
               v6) )
  {
LABEL_13:
    *(_DWORD *)&this->gap4[*((_DWORD *)this->_vptr.basic_ostream - 3) + 24] = 0;
    goto LABEL_9;
  }
LABEL_6:
  *(_DWORD *)&this->gap4[*((_DWORD *)this->_vptr.basic_ostream - 3) + 24] = 0;
LABEL_7:
  v7 = (std::ios_base *)((char *)this + *((_DWORD *)this->_vptr.basic_ostream - 3));
  M_exception_mask = v7->_M_exception_mask;
  v9 = v7->_M_iostate | 1;
  v7->_M_iostate = v9;
  if ( (v9 & M_exception_mask) != 0 )
    __ZNSt8ios_base16_M_throw_failureEv_veneer(v7);
LABEL_9:
  if ( (*(_DWORD *)&this->gap4[*((_DWORD *)this->_vptr.basic_ostream - 3)] & 0x2000) != 0 )
    std::ostream::flush(this);
}


// ===== 310178 operator<<(std::ostream &,glitch::video::SColor const&) =====
std::ostream *__fastcall operator<<(std::ostream *a1, unsigned __int8 *a2)
{
  const char *v4; // r1
  const char *v5; // r1

  std::ostream::_M_put_char(a1, *a2);
  std::ostream::_M_put_nowiden(a1, v4);
  std::ostream::_M_put_char(a1, a2[1]);
  std::ostream::_M_put_nowiden(a1, v5);
  std::ostream::_M_put_char(a1, a2[2]);
  return a1;
}


// ===== 3101bc std::istream::_M_formatted_get(char &) =====
void __fastcall std::istream::_M_formatted_get(std::istream *this, char *a2, bool a3)
{
  _DWORD *v5; // r3
  _BYTE *v6; // r2
  int v7; // r0
  std::ios_base *v8; // r0
  int M_iostate; // r2
  int v10; // r3
  int M_exception_mask; // r2
  _BYTE v12[8]; // [sp+4h] [bp-8h] BYREF

  std::istream::sentry::sentry((std::istream::sentry *)v12, this, a3);
  if ( v12[0] )
  {
    v5 = *(_DWORD **)&this->gap8[*((_DWORD *)this->_vptr.basic_istream - 3) + 64];
    v6 = (_BYTE *)v5[2];
    if ( (unsigned int)v6 < v5[3] )
    {
      v5[2] = v6 + 1;
      LOBYTE(v7) = *v6;
LABEL_4:
      *a2 = v7;
      return;
    }
    v7 = (*(int (__fastcall **)(_DWORD))(*v5 + 36))(*(_DWORD *)&this->gap8[*((_DWORD *)this->_vptr.basic_istream - 3)
                                                                         + 64]);
    if ( v7 != -1 )
      goto LABEL_4;
    v8 = (std::ios_base *)((char *)this + *((_DWORD *)this->_vptr.basic_istream - 3));
    M_iostate = v8->_M_iostate;
    v10 = M_iostate | 6;
    if ( !v8[1]._M_iostate )
      v10 = M_iostate | 7;
    M_exception_mask = v8->_M_exception_mask;
    v8->_M_iostate = v10;
    if ( (v10 & M_exception_mask) != 0 )
      __ZNSt8ios_base16_M_throw_failureEv_veneer(v8);
  }
}


// ===== 31026c operator>>(std::istream &,glitch::core::dimension2d<int> &) =====
std::istream *__fastcall operator>>(std::istream *a1, _DWORD *a2, bool a3)
{
  std::istream *v5; // r6
  bool v6; // r2
  bool v7; // r2
  int v8; // r3
  int v10; // [sp+4h] [bp-Ch] BYREF
  int v11; // [sp+8h] [bp-8h] BYREF
  char v12; // [sp+Fh] [bp-1h] BYREF

  v5 = std::istream::operator>>(a1, &v11, a3);
  std::istream::_M_formatted_get(v5, &v12, v6);
  std::istream::operator>>(v5, &v10, v7);
  v8 = v10;
  *a2 = v11;
  a2[1] = v8;
  return a1;
}


// ===== 3102b4 operator>>(std::istream &,glitch::video::SColor &) =====
std::istream *__fastcall operator>>(std::istream *a1, _BYTE *a2, bool a3)
{
  std::istream *v5; // r7
  bool v6; // r2
  bool v7; // r2
  std::istream *v8; // r7
  bool v9; // r2
  bool v10; // r2
  char v11; // r2
  char v12; // r3
  char v13; // r1
  int v15; // [sp+0h] [bp-14h] BYREF
  int v16; // [sp+4h] [bp-10h] BYREF
  int v17; // [sp+8h] [bp-Ch] BYREF
  char v18[5]; // [sp+Fh] [bp-5h] BYREF

  v5 = std::istream::operator>>(a1, &v17, a3);
  std::istream::_M_formatted_get(v5, v18, v6);
  v8 = std::istream::operator>>(v5, &v16, v7);
  std::istream::_M_formatted_get(v8, v18, v9);
  std::istream::operator>>(v8, &v15, v10);
  v11 = v17;
  v12 = v16;
  v13 = v15;
  a2[3] = 0;
  a2[2] = v13;
  *a2 = v11;
  a2[1] = v12;
  return a1;
}


// ===== 31032c operator>>(std::istream &,glitch::core::vector3d<int> &) =====
int __fastcall operator>>(int a1, int a2)
{
  std::istream *v4; // r7
  std::istream *v5; // r7
  char v7[5]; // [sp+7h] [bp-5h] BYREF

  v4 = (std::istream *)((int (*)(void))std::istream::operator>>)();
  std::istream::_M_formatted_get(v4, v7);
  v5 = (std::istream *)std::istream::operator>>(v4, a2 + 4);
  std::istream::_M_formatted_get(v5, v7);
  std::istream::operator>>(v5, a2 + 8);
  return a1;
}


// ===== 310380 operator>>(std::istream &,glitch::core::vector3d<float> &) =====
std::istream *__fastcall operator>>(std::istream *a1, int a2, bool a3)
{
  bool v5; // r2
  bool v6; // r2
  bool v7; // r2
  bool v8; // r2
  char v10; // [sp+7h] [bp-1h] BYREF

  std::priv::__get_num<char,std::char_traits<char>,float>(a1, a2, a3);
  std::istream::_M_formatted_get(a1, &v10, v5);
  std::priv::__get_num<char,std::char_traits<char>,float>(a1, a2 + 4, v6);
  std::istream::_M_formatted_get(a1, &v10, v7);
  std::priv::__get_num<char,std::char_traits<char>,float>(a1, a2 + 8, v8);
  return a1;
}


// ===== 3103d4 `global constructor keyed to'.._.._sources_Utils_LoadTimeProfiling.cpp =====
void `global constructor keyed to'.._.._sources_Utils_LoadTimeProfiling.cpp()
{
  dword_99F6CC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_99F6C8 = 1056964608;
}


// ===== 3103f4 `global constructor keyed to'.._.._sources_Utils_memleakannihilator.cpp =====
void `global constructor keyed to'.._.._sources_Utils_memleakannihilator.cpp()
{
  dword_99F6D8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_99F6D4 = 1056964608;
}


// ===== 310414 InitMemory(void) =====
void InitMemory()
{
  ;
}


// ===== 310418 UnInitMem(void) =====
void UnInitMem()
{
  ;
}


// ===== 31041c ShowMemoryStats(char const*) =====
void __fastcall ShowMemoryStats(const char *a1)
{
  ;
}


// ===== 310420 `global constructor keyed to'.._.._sources_Utils_memory.cpp =====
void `global constructor keyed to'.._.._sources_Utils_memory.cpp()
{
  dword_99F6E4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_99F6E0 = 1056964608;
}


// ===== 310440 CustomFree(void *) =====
// attributes: thunk
void CustomFree(void *p)
{
  free(p);
}


// ===== 310444 VoxFree(void *) =====
// attributes: thunk
void VoxFree(void *p)
{
  CustomFree(p);
}


// ===== 310448 LuaFree(void *) =====
// attributes: thunk
void LuaFree(void *p)
{
  CustomFree(p);
}


// ===== 31044c SwfFree(void *) =====
// attributes: thunk
void SwfFree(void *p)
{
  CustomFree(p);
}


// ===== 310450 GlitchFree(void *) =====
// attributes: thunk
void GlitchFree(void *p)
{
  CustomFree(p);
}


// ===== 310454 CustomAlloc(uint) =====
void *__fastcall CustomAlloc(size_t a1)
{
  void *v1; // r4

  v1 = LC_API_MALLOC_0(a1);
  if ( !v1 )
  {
    ShowMemoryStats("Out of memory:");
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "ptr",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\memory.cpp",
        58);
    }
  }
  return v1;
}


// ===== 3104f8 VoxAlloc(uint) =====
// attributes: thunk
void *__fastcall VoxAlloc(size_t a1)
{
  return CustomAlloc(a1);
}


// ===== 3104fc LuaAlloc(uint) =====
// attributes: thunk
void *__fastcall LuaAlloc(size_t a1)
{
  return CustomAlloc(a1);
}


// ===== 310500 LuaAllocator(void *,void *,uint,uint) =====
void *__fastcall LuaAllocator(void *a1, void *a2, size_t a3, size_t a4)
{
  void *v4; // r5

  v4 = (void *)a4;
  if ( !a4 )
  {
LABEL_6:
    LuaFree(a2);
    return v4;
  }
  if ( a2 )
  {
    if ( a4 <= a3 )
      return a2;
    v4 = LuaAlloc(a4);
    memcpy(v4, a2, a3);
    goto LABEL_6;
  }
  return LuaAlloc(a4);
}


// ===== 310564 SwfAlloc(uint,swf::MemHint) =====
// attributes: thunk
void *__fastcall SwfAlloc(size_t a1)
{
  return CustomAlloc(a1);
}


// ===== 310568 GlitchAlloc(uint,glitch::memory::E_MEMORY_HINT) =====
// attributes: thunk
void *__fastcall GlitchAlloc(size_t a1, int a2)
{
  return CustomAlloc(a1);
}


// ===== 31056c operator new[](uint,MemoryHintState) =====
// attributes: thunk
void *__fastcall operator new[](size_t a1, int a2)
{
  return CustomAlloc(a1);
}


// ===== 310570 operator new(uint,MemoryHintState) =====
// attributes: thunk
int __fastcall operator new(unsigned int a1, int a2)
{
  return CustomAlloc(a1);
}


// ===== 310574 CustomRealloc(void *,uint) =====
void *__fastcall CustomRealloc(void *a1, size_t a2)
{
  void *v4; // r0
  bool v5; // zf
  void *v6; // r5

  v4 = CustomAlloc(a2);
  v5 = v4 == nullptr;
  if ( v4 )
    v5 = a1 == nullptr;
  v6 = v4;
  if ( !v5 )
    memcpy(v4, a1, a2);
  CustomFree(a1);
  return v6;
}


// ===== 3105b4 CustomMemalign(uint,uint) =====
void *__fastcall CustomMemalign(unsigned int a1, size_t a2)
{
  if ( gAssertLevel == 2 )
  {
    dword_0 = 0;
  }
  else if ( gAssertLevel == 1 )
  {
    fprintf(
      (FILE *)&_sF + 2,
      "ASSERT(%s) FAILED: %s:%d\n",
      "0",
      "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\memory.cpp",
      80);
  }
  return CustomAlloc(a2);
}


// ===== 310648 VoxAlloc(uint,vox::VoxMemHint) =====
void *__fastcall VoxAlloc(size_t a1, signed int a2)
{
  if ( a2 <= 0 )
    return CustomAlloc(a1);
  else
    return CustomMemalign(a2, a1);
}


// ===== 310660 CustomAlloc(uint,char const*,uint,char const*) =====
// attributes: thunk
void *__fastcall CustomAlloc(size_t a1, const char *a2, unsigned int a3, const char *a4)
{
  return _Z11CustomAllocj(a1);
}


// ===== 310664 VoxAlloc(uint,vox::VoxMemHint,char const*,char const*,int) =====
void *__fastcall VoxAlloc(size_t a1, int a2, char *a3, int a4, unsigned int a5)
{
  if ( a2 <= 0 )
    return CustomAlloc(a1, a3, a5, nullptr);
  else
    return CustomMemalign(a2, a1);
}


// ===== 31068c VoxAlloc(uint,char const*,char const*,int) =====
void *__fastcall VoxAlloc(size_t a1, const char *a2, const char *a3, unsigned int a4)
{
  return CustomAlloc(a1, a2, a4, nullptr);
}


// ===== 310698 SwfAlloc(uint,swf::MemHint,char const*,int) =====
void *__fastcall SwfAlloc(size_t a1, int a2, char *a3, unsigned int a4)
{
  return CustomAlloc(a1, a3, a4, nullptr);
}


// ===== 3106a8 GlitchAlloc(uint,glitch::memory::E_MEMORY_HINT,int,char const*,int) =====
void *__fastcall GlitchAlloc(size_t a1, int a2, int a3, char *a4, unsigned int a5)
{
  return CustomAlloc(a1, a4, a5, nullptr);
}


// ===== 3106b8 GlitchAlloc(uint,glitch::memory::E_MEMORY_HINT,int,char const*,int,char const*) =====
void *__fastcall GlitchAlloc(size_t a1, int a2, int a3, char *a4, unsigned int a5, const char *a6)
{
  return CustomAlloc(a1, a4, a5, a6);
}


// ===== 3106c4 operator new[](uint,MemoryHintState,char const*,uint,char const*) =====
void *__fastcall operator new[](size_t a1, int a2, char *a3, unsigned int a4, char *a5)
{
  return CustomAlloc(a1, a3, a4, a5);
}


// ===== 3106d4 operator new(uint,MemoryHintState,char const*,uint,char const*) =====
void *__fastcall operator new(size_t a1, int a2, char *a3, unsigned int a4, char *a5)
{
  return CustomAlloc(a1, a3, a4, a5);
}


// ===== 3106e4 CMutex::CMutex(void) =====
void __fastcall CMutex::CMutex(CMutex *this)
{
  ;
}


// ===== 3106e8 CMutex::CMutex(void) =====
void __fastcall CMutex::CMutex(CMutex *this)
{
  ;
}


// ===== 3106ec CMutex::~CMutex() =====
void __fastcall CMutex::~CMutex(CMutex *this)
{
  ;
}


// ===== 3106f0 CMutex::~CMutex() =====
void __fastcall CMutex::~CMutex(CMutex *this)
{
  ;
}


// ===== 3106f4 CMutex::Lock(void) =====
int __fastcall CMutex::Lock(int this)
{
  ++*(_DWORD *)(this + 4);
  return this;
}


// ===== 310704 CMutex::Unlock(void) =====
int __fastcall CMutex::Unlock(int this)
{
  int v1; // r3

  v1 = *(_DWORD *)(this + 4);
  if ( v1 > 1 )
    *(_DWORD *)(this + 4) = v1 - 1;
  else
    v1 = 0;
  *(_DWORD *)(this + 4) = v1;
  return this;
}


// ===== 310720 CMutex::IsLocked(void) =====
bool __fastcall CMutex::IsLocked(CMutex *this)
{
  return *((_DWORD *)this + 1) == 0;
}


// ===== 310730 `global constructor keyed to'.._.._sources_Utils_mutex.cpp =====
void `global constructor keyed to'.._.._sources_Utils_mutex.cpp()
{
  dword_99F6F4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_99F6F0 = 1056964608;
}


// ===== 310750 operator/(Vector3D const&,float) =====
float *__fastcall operator/(float *a1, float *a2, float a3)
{
  float v4; // r7
  float v5; // r0

  v4 = a2[2] / a3;
  v5 = *a2 / a3;
  a1[1] = a2[1] / a3;
  *a1 = v5;
  a1[2] = v4;
  return a1;
}


// ===== 3107a0 std::string::_M_compute_next_size(uint) =====
unsigned int __fastcall std::string::_M_compute_next_size(std::string *this, unsigned int a2)
{
  unsigned int v2; // r4
  unsigned int v4; // r0
  unsigned int result; // r0

  v2 = this->_M_finish - this->_M_start_of_storage._M_data;
  if ( -2 - v2 < a2 )
    __ZSt24__stl_throw_length_errorPKc_veneer("basic_string");
  v4 = v2 + 1;
  if ( a2 < v2 )
    result = v4 + v2;
  else
    result = v4 + a2;
  if ( result == -1 || result < v2 )
    return -2;
  return result;
}


// ===== 310804 std::string::_M_append(char const*,char const*) =====
std::string *__fastcall std::string::_M_append(std::string *this, char *a2, char *a3)
{
  std::string *M_data; // r3
  signed int v6; // r6
  bool v7; // zf
  char *M_finish; // r1
  int v9; // r2
  char *v10; // r3
  const char *v11; // r2
  char *v12; // r3
  char v13; // t1
  size_t size; // r0
  char *v16; // r10
  char *v17; // r8
  char *v18; // r1
  char *v19; // r2
  char *v20; // r7
  char *i; // r7
  int j; // r3
  std::string *v23; // r0
  char *v24; // r1
  char *ERj_veneer; // r0
  size_t __n[2]; // [sp+4h] [bp-8h] BYREF

  if ( a2 != a3 )
  {
    M_data = (std::string *)this->_M_start_of_storage._M_data;
    v6 = a3 - a2;
    v7 = M_data == this;
    if ( M_data != this )
      M_data = (std::string *)this->_M_buffers._M_end_of_storage;
    M_finish = this->_M_finish;
    if ( v7 )
      M_data = (std::string *)&this->_M_finish;
    if ( v6 >= (unsigned int)((char *)M_data - M_finish) )
    {
      size = std::string::_M_compute_next_size(this, v6);
      v16 = (char *)size;
      if ( size )
      {
        __n[0] = size;
        if ( size > 0x80 )
          ERj_veneer = (char *)CustomAlloc(size);
        else
          ERj_veneer = (char *)__ZNSt12__node_alloc11_M_allocateERj_veneer(__n);
        v17 = ERj_veneer;
        v16 = &ERj_veneer[__n[0]];
      }
      else
      {
        v17 = nullptr;
      }
      v18 = this->_M_start_of_storage._M_data;
      v19 = (char *)(this->_M_finish - v18);
      if ( (int)v19 > 0 )
      {
        for ( i = nullptr; i != v19; ++i )
          i[(_DWORD)v17] = i[(_DWORD)v18];
        v20 = &i[(_DWORD)v17];
      }
      else
      {
        v20 = v17;
      }
      if ( v6 > 0 )
      {
        for ( j = 0; j != v6; ++j )
          v20[j] = a2[j];
        v20 += v6;
      }
      *v20 = 0;
      v23 = (std::string *)this->_M_start_of_storage._M_data;
      if ( this != v23 && v23 )
      {
        v24 = (char *)(this->_M_buffers._M_end_of_storage - (char *)v23);
        if ( (unsigned int)v24 > 0x80 )
          CustomFree(v23);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v23, (size_t)v24);
      }
      this->_M_buffers._M_end_of_storage = v16;
      this->_M_finish = v20;
      this->_M_start_of_storage._M_data = v17;
    }
    else
    {
      v9 = a3 - (a2 + 1);
      v10 = this->_M_finish;
      if ( v9 > 0 )
      {
        v11 = &a2[v9];
        v12 = a2;
        do
        {
          v13 = *++v12;
          *++M_finish = v13;
        }
        while ( v12 != v11 );
        v10 = this->_M_finish;
      }
      v10[v6] = 0;
      *this->_M_finish = *a2;
      this->_M_finish += v6;
    }
  }
  return this;
}


// ===== 310980 std::vector<float,std::allocator<float>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<float>::_M_compute_next_size(_DWORD *a1, unsigned int a2)
{
  unsigned int v2; // r4
  unsigned int result; // r0

  v2 = (a1[1] - *a1) >> 2;
  if ( 0x3FFFFFFF - v2 < a2 )
    __ZSt24__stl_throw_length_errorPKc_veneer("vector");
  if ( v2 < a2 )
    result = v2 + a2;
  else
    result = 2 * v2;
  if ( result > 0x3FFFFFFF || result < v2 )
    return 0x3FFFFFFF;
  return result;
}


// ===== 3109e0 std::string::_M_assign(char const*,char const*) =====
std::string *__fastcall std::string::_M_assign(std::string *const this, const char *__f, const char *__l)
{
  char *M_finish; // r3
  char *M_data; // r0
  size_t v6; // r5
  size_t v8; // r2
  char *v10; // r2

  M_finish = this->_M_finish;
  M_data = this->_M_start_of_storage._M_data;
  v6 = __l - __f;
  v8 = M_finish - M_data;
  if ( v6 > M_finish - M_data )
  {
    if ( v8 )
    {
      memcpy(M_data, __f, v8);
      std::string::_M_append(this, (char *)&__f[this->_M_finish - this->_M_start_of_storage._M_data], (char *)__l);
    }
    else
    {
      std::string::_M_append(this, (char *)__f, (char *)__l);
    }
  }
  else
  {
    if ( v6 )
    {
      memcpy(M_data, __f, v6);
      M_data = this->_M_start_of_storage._M_data;
      M_finish = this->_M_finish;
      v10 = &M_data[v6];
      if ( &M_data[v6] == M_finish )
        return this;
      goto LABEL_4;
    }
    v10 = M_data;
    if ( M_data != M_finish )
    {
LABEL_4:
      M_data[v6] = *M_finish;
      this->_M_finish += v10 - M_finish;
    }
  }
  return this;
}


// ===== 310aa0 std::vector<float,std::allocator<float>>::_M_fill_insert_aux(float *,uint,float const&,std::__false_type const&) =====
char *__fastcall std::vector<float>::_M_fill_insert_aux(char *result, char *a2, unsigned int a3, char *a4)
{
  bool v5; // cf
  char *v6; // r4
  char *v9; // r7
  size_t v10; // r2
  int v11; // r8
  int v12; // r8
  char *v13; // r3
  char *v14; // r10
  int v15; // r8
  int k; // r2
  unsigned int v17; // r3
  int v18; // r10
  char *v19; // r0
  int i; // r1
  int j; // r3

  v5 = (unsigned int)a4 >= *(_DWORD *)result;
  v6 = result;
  if ( v5 )
  {
    v9 = *((char **)result + 1);
    if ( a4 < v9 )
      return (char *)std::vector<float>::_M_fill_insert_aux(result);
  }
  else
  {
    v9 = *((char **)result + 1);
  }
  v10 = v9 - a2;
  v11 = (v9 - a2) >> 2;
  if ( a3 >= v11 )
  {
    v17 = a3 - v11;
    v18 = (int)(4 * v17) >> 2;
    v19 = &v9[4 * v17];
    if ( v18 > 0 )
    {
      for ( i = 0; i != v18; ++i )
        *(_DWORD *)&v9[4 * i] = *(_DWORD *)a4;
    }
    *((_DWORD *)v6 + 1) = v19;
    if ( a2 != v9 )
    {
      memcpy(v19, a2, v10);
      v19 = *((char **)v6 + 1);
    }
    result = &v19[4 * v11];
    *((_DWORD *)v6 + 1) = result;
    if ( v11 > 0 )
    {
      for ( j = 0; j != v11; ++j )
        *(_DWORD *)&a2[4 * j] = *(_DWORD *)a4;
    }
  }
  else
  {
    v12 = 4 * a3;
    v13 = &v9[-4 * a3];
    if ( v13 == v9 )
    {
      v14 = v9;
    }
    else
    {
      v14 = v13;
      result = (char *)memcpy(v9, v13, v9 - v13);
      v13 = *((char **)v6 + 1);
    }
    *((_DWORD *)v6 + 1) = &v13[v12];
    if ( v14 - a2 > 0 )
      result = (char *)memmove(&v9[-(v14 - a2)], a2, v14 - a2);
    v15 = v12 >> 2;
    if ( v15 > 0 )
    {
      for ( k = 0; k != v15; ++k )
        *(_DWORD *)&a2[4 * k] = *(_DWORD *)a4;
    }
  }
  return result;
}


// ===== 310be8 boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr() =====
glitch::video::CMaterial **__fastcall boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(
        glitch::video::CMaterial **a1)
{
  glitch::video::CMaterial *v1; // r4

  v1 = *a1;
  if ( *a1 )
  {
    if ( (*(_DWORD *)v1)-- == 1 )
    {
      glitch::video::CMaterial::~CMaterial(v1);
      CustomFree(v1);
    }
  }
  return a1;
}


// ===== 310c28 `global constructor keyed to'.._.._sources_Utils_PerfCounters.cpp =====
int `global constructor keyed to'.._.._sources_Utils_PerfCounters.cpp()
{
  int result; // r0

  dword_99F700 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_99F6FC = 1056964608;
  s_posArray = 0;
  dword_99F708 = 0;
  dword_99F70C = 0;
  _aeabi_atexit((int)&s_posArray, (int)std::vector<glitch::core::position2d<int>>::~vector, (int)&_dso_handle);
  s_colArray = 0;
  dword_99F714 = 0;
  dword_99F718 = 0;
  _aeabi_atexit((int)&s_colArray, (int)std::vector<glitch::video::SColor>::~vector, (int)&_dso_handle);
  dword_99F724 = 0;
  s_idxArray = 0;
  dword_99F720 = 0;
  result = _aeabi_atexit((int)&s_idxArray, (int)std::vector<unsigned short>::~vector, (int)&_dso_handle);
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  return result;
}


// ===== 310d24 std::allocator<ushort>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<unsigned short>::_M_allocate(int a1, int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  result = (void *)a2;
  if ( a2 < 0 )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( a2 )
  {
    __n = 2 * a2;
    if ( (unsigned int)(2 * a2) > 0x80 )
      result = CustomAlloc(2 * a2);
    else
      result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
    *a3 = __n >> 1;
  }
  return result;
}


// ===== 310d90 std::allocator<float>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<float>::_M_allocate(int a1, unsigned int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0x3FFFFFFF )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 4 * a2;
  if ( 4 * a2 > 0x80 )
    result = CustomAlloc(4 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n >> 2;
  return result;
}


// ===== 310e00 std::vector<float,std::allocator<float>>::vector(uint,float const&,std::allocator<float> const&) =====
_DWORD *__fastcall std::vector<float>::vector(_DWORD *a1, unsigned int a2, _DWORD *a3)
{
  int v4; // r6
  _DWORD *v7; // r0
  int v8; // r2
  char *v9; // r7
  size_t v11; // [sp+4h] [bp-8h] BYREF

  v11 = a2;
  v4 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v7 = std::allocator<float>::_M_allocate((int)(a1 + 2), a2, &v11);
  v8 = (int)(4 * a2) >> 2;
  a1[2] = &v7[v11];
  *a1 = v7;
  a1[1] = v7;
  v9 = (char *)&v7[a2];
  if ( v8 > 0 )
  {
    do
      v7[v4++] = *a3;
    while ( v4 != v8 );
  }
  a1[1] = v9;
  return a1;
}


// ===== 310e7c std::vector<float,std::allocator<float>>::_M_allocate_and_copy<float *>(uint &,float *,float *) =====
void *__fastcall std::vector<float>::_M_allocate_and_copy<float *>(int a1, unsigned int *a2, _BYTE *a3, _BYTE *a4)
{
  void *v6; // r0
  void *v7; // r6

  v6 = std::allocator<float>::_M_allocate(a1 + 8, *a2, a2);
  v7 = v6;
  if ( a3 != a4 )
    memcpy(v6, a3, a4 - a3);
  return v7;
}


// ===== 310eb8 std::vector<float,std::allocator<float>>::vector(std::vector<float,std::allocator<float>> const&) =====
_DWORD *__fastcall std::vector<float>::vector(_DWORD *a1, int a2)
{
  unsigned int v4; // r1
  char *v5; // r0
  int v6; // r1
  size_t v7; // r2
  int v8; // r2
  char *v9; // r3
  size_t v11; // [sp+4h] [bp-8h] BYREF

  v4 = (*(_DWORD *)(a2 + 4) - *(_DWORD *)a2) >> 2;
  v11 = v4;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = (char *)std::allocator<float>::_M_allocate((int)(a1 + 2), v4, &v11);
  v7 = v11;
  *a1 = v5;
  a1[1] = v5;
  a1[2] = &v5[4 * v7];
  v8 = *(_DWORD *)(a2 + 4);
  v9 = v5;
  if ( *(_DWORD *)a2 != v8 )
    v9 = (char *)memcpy(v5, *(const void **)a2, v8 - *(_DWORD *)a2) + v8 - v6;
  a1[1] = v9;
  return a1;
}


// ===== 310f38 std::allocator<glitch::core::position2d<int>>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<glitch::core::position2d<int>>::_M_allocate(int a1, unsigned int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0x1FFFFFFF )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 8 * a2;
  if ( 8 * a2 > 0x80 )
    result = CustomAlloc(8 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n >> 3;
  return result;
}


// ===== 310fa8 std::allocator<glitch::video::SColor>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<glitch::video::SColor>::_M_allocate(int a1, unsigned int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0x3FFFFFFF )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 4 * a2;
  if ( 4 * a2 > 0x80 )
    result = CustomAlloc(4 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n >> 2;
  return result;
}


// ===== 311018 std::vector<float,std::allocator<float>>::reserve(uint) [clone] =====
void __fastcall std::vector<float>::reserve(_DWORD *a1)
{
  _BYTE *v1; // r2
  int v2; // r12
  _BYTE *v4; // r3
  int v5; // r5
  char *v6; // r6
  _BYTE *v7; // r0
  size_t v8; // r1
  unsigned int v9; // r3
  unsigned int v10; // [sp+4h] [bp-4h] BYREF

  v1 = (_BYTE *)*a1;
  v2 = a1[2] - *a1;
  v10 = 10000;
  if ( (unsigned int)(v2 >> 2) <= 0x270F )
  {
    v4 = (_BYTE *)a1[1];
    v5 = (v4 - v1) >> 2;
    if ( v1 )
    {
      v6 = (char *)std::vector<float>::_M_allocate_and_copy<float *>((int)a1, &v10, v1, v4);
      v7 = (_BYTE *)*a1;
      if ( *a1 )
      {
        v8 = (a1[2] - (_DWORD)v7) & 0xFFFFFFFC;
        if ( v8 > 0x80 )
          CustomFree(v7);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v7, v8);
      }
    }
    else
    {
      v6 = (char *)std::allocator<float>::_M_allocate((int)(a1 + 2), 0x2710u, &v10);
    }
    v9 = v10;
    a1[1] = &v6[4 * v5];
    a1[2] = &v6[4 * v9];
    *a1 = v6;
  }
}


// ===== 3110c4 PerfCounters::PerfCounters(void) =====
void __fastcall PerfCounters::PerfCounters(PerfCounters *this)
{
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 6) = (char *)this + 20;
  *((_DWORD *)this + 5) = (char *)this + 20;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 7) = 0;
  std::vector<float>::reserve((_DWORD *)this + 2);
  *((_DWORD *)this + 7) = operator new[](0x3E84u, 0);
}


// ===== 311118 PerfCounters::PerfCounters(void) =====
void __fastcall PerfCounters::PerfCounters(PerfCounters *this)
{
  *(_DWORD *)this = 0;
  *((_DWORD *)this + 6) = (char *)this + 20;
  *((_DWORD *)this + 5) = (char *)this + 20;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 7) = 0;
  std::vector<float>::reserve((_DWORD *)this + 2);
  *((_DWORD *)this + 7) = operator new[](0x3E84u, 0);
}


// ===== 31116c std::vector<float,std::allocator<float>>::~vector() =====
int __fastcall std::vector<float>::~vector(int a1)
{
  void *v2; // r0
  size_t v3; // r1

  v2 = *(void **)a1;
  if ( !v2 )
    return a1;
  v3 = (*(_DWORD *)(a1 + 8) - (_DWORD)v2) & 0xFFFFFFFC;
  if ( v3 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
    return a1;
  }
  CustomFree(v2);
  return a1;
}


// ===== 3111ac std::vector<float,std::allocator<float>>::_M_fill_assign(uint,float const&) =====
int __fastcall std::vector<float>::_M_fill_assign(int *a1, unsigned int a2, _DWORD *a3)
{
  int v4; // r5
  int result; // r0
  unsigned int v6; // r12
  int v8; // r5
  int v9; // r6
  int v10; // r2
  int i; // r2
  int v12; // r12
  int j; // r2
  int v14; // r2
  int v15; // r12
  int v16; // lr
  int v17; // r1
  int v18; // r2
  int v19; // r3
  int v20; // [sp+0h] [bp-10h] BYREF
  int v21; // [sp+4h] [bp-Ch]
  int v22; // [sp+8h] [bp-8h]

  v4 = a1[2];
  result = *a1;
  v6 = a2;
  if ( a2 > (v4 - result) >> 2 )
  {
    std::vector<float>::vector(&v20, a2, a3);
    v15 = v20;
    v16 = v22;
    v17 = *a1;
    v18 = a1[1];
    v19 = a1[2];
    a1[1] = v21;
    a1[2] = v16;
    *a1 = v15;
    v20 = v17;
    v21 = v18;
    v22 = v19;
    return std::vector<float>::~vector((int)&v20);
  }
  else
  {
    v8 = a1[1];
    v9 = (v8 - result) >> 2;
    v10 = v9;
    if ( a2 <= v9 )
    {
      if ( a2 )
      {
        v14 = 0;
        do
        {
          --a2;
          *(_DWORD *)(result + v14) = *a3;
          v14 += 4;
        }
        while ( a2 );
        v8 = a1[1];
        result += 4 * v6;
      }
      if ( result != v8 )
        a1[1] = result;
    }
    else
    {
      if ( v9 > 0 )
      {
        for ( i = 0; i != v9; ++i )
          *(_DWORD *)(result + 4 * i) = *a3;
        v8 = a1[1];
        v10 = (v8 - *a1) >> 2;
      }
      result = (int)(4 * (a2 - v10)) >> 2;
      v12 = v8 + 4 * (a2 - v10);
      if ( result > 0 )
      {
        for ( j = 0; j != result; ++j )
          *(_DWORD *)(v8 + 4 * j) = *a3;
      }
      a1[1] = v12;
    }
  }
  return result;
}


// ===== 3112c0 std::vector<ushort,std::allocator<ushort>>::~vector() =====
int __fastcall std::vector<unsigned short>::~vector(int a1)
{
  void *v2; // r0
  size_t v3; // r1

  v2 = *(void **)a1;
  if ( !v2 )
    return a1;
  v3 = (*(_DWORD *)(a1 + 8) - (_DWORD)v2) & 0xFFFFFFFE;
  if ( v3 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
    return a1;
  }
  CustomFree(v2);
  return a1;
}


// ===== 311300 std::vector<glitch::video::SColor,std::allocator<glitch::video::SColor>>::~vector() =====
int __fastcall std::vector<glitch::video::SColor>::~vector(int a1)
{
  void *v2; // r0
  size_t v3; // r1

  v2 = *(void **)a1;
  if ( !v2 )
    return a1;
  v3 = (*(_DWORD *)(a1 + 8) - (_DWORD)v2) & 0xFFFFFFFC;
  if ( v3 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
    return a1;
  }
  CustomFree(v2);
  return a1;
}


// ===== 311340 std::vector<glitch::core::position2d<int>,std::allocator<glitch::core::position2d<int>>>::~vector() =====
int __fastcall std::vector<glitch::core::position2d<int>>::~vector(int a1)
{
  void *v2; // r0
  size_t v3; // r1

  v2 = *(void **)a1;
  if ( !v2 )
    return a1;
  v3 = (*(_DWORD *)(a1 + 8) - (_DWORD)v2) & 0xFFFFFFF8;
  if ( v3 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
    return a1;
  }
  CustomFree(v2);
  return a1;
}


// ===== 311380 std::vector<float,std::allocator<float>>::_M_insert_overflow(float *,float const&,std::__true_type const&,uint,bool) =====
void __fastcall std::vector<float>::_M_insert_overflow(
        const void **a1,
        _BYTE *a2,
        _DWORD *a3,
        int a4,
        unsigned int a5,
        char a6)
{
  char *v9; // r0
  char *v10; // r8
  size_t v11; // r10
  char *v12; // r11
  unsigned int v13; // r2
  int v14; // r3
  _BYTE *v15; // r0
  size_t v16; // r1
  size_t v17; // r3
  size_t v18; // r4
  size_t size; // [sp+4h] [bp-8h] BYREF

  size = std::vector<float>::_M_compute_next_size(a1, a5);
  v9 = (char *)std::allocator<float>::_M_allocate((int)(a1 + 2), size, &size);
  v10 = v9;
  if ( a2 != *a1 )
  {
    v11 = a2 - (_BYTE *)*a1;
    v9 = (char *)memmove(v9, *a1, v11) + v11;
  }
  v12 = v9;
  if ( a5 )
  {
    v13 = a5;
    v14 = 0;
    do
    {
      --v13;
      *(_DWORD *)&v9[v14] = *a3;
      v14 += 4;
    }
    while ( v13 );
    v12 = &v9[4 * a5];
  }
  if ( !a6 )
  {
    v18 = (_BYTE *)a1[1] - a2;
    if ( v18 )
      v12 = (char *)memmove(v12, a2, v18) + v18;
  }
  v15 = *a1;
  if ( *a1 )
  {
    v16 = ((_BYTE *)a1[2] - v15) & 0xFFFFFFFC;
    if ( v16 > 0x80 )
      CustomFree(v15);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v15, v16);
  }
  v17 = size;
  *a1 = v10;
  a1[1] = v12;
  a1[2] = &v10[4 * v17];
}


// ===== 311474 std::vector<float,std::allocator<float>>::_M_fill_insert(float *,uint,float const&) =====
void __fastcall std::vector<float>::_M_fill_insert(int a1, char *a2, unsigned int a3, char *a4)
{
  _BYTE v4[4]; // [sp+8h] [bp-Ch] BYREF

  if ( a3 )
  {
    if ( a3 <= (*(_DWORD *)(a1 + 8) - *(_DWORD *)(a1 + 4)) >> 2 )
      std::vector<float>::_M_fill_insert_aux((char *)a1, a2, a3, a4);
    else
      std::vector<float>::_M_insert_overflow((const void **)a1, a2, a4, (int)v4, a3, 0);
  }
}


// ===== 3114c8 std::vector<float,std::allocator<float>>::resize(uint,float const&) =====
void __fastcall std::vector<float>::resize(int a1, unsigned int a2, char *a3)
{
  int v3; // r4
  unsigned int v5; // r2
  int v6; // r5

  v3 = *(_DWORD *)(a1 + 4);
  v5 = (v3 - *(_DWORD *)a1) >> 2;
  if ( a2 >= v5 )
  {
    std::vector<float>::_M_fill_insert(a1, *(char **)(a1 + 4), a2 - v5, a3);
  }
  else
  {
    v6 = *(_DWORD *)a1 + 4 * a2;
    if ( v6 != v3 )
      *(_DWORD *)(a1 + 4) = v6;
  }
}


// ===== 31150c std::priv::_List_base<PerfCounters::CounterEntry,std::allocator<PerfCounters::CounterEntry>>::clear(void) =====
void __fastcall std::priv::_List_base<PerfCounters::CounterEntry,std::allocator<PerfCounters::CounterEntry>>::clear(
        _DWORD *a1)
{
  _DWORD *v1; // r4
  _DWORD *v3; // r0
  size_t v4; // r1
  void *v5; // r0
  _DWORD *v6; // r5
  size_t v7; // r1

  v1 = (_DWORD *)*a1;
  if ( (_DWORD *)*a1 != a1 )
  {
    while ( 1 )
    {
      v5 = (void *)v1[11];
      v6 = (_DWORD *)*v1;
      if ( v5 )
      {
        v7 = (v1[13] - (_DWORD)v5) & 0xFFFFFFFC;
        if ( v7 <= 0x80 )
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v5, v7);
        else
          CustomFree(v5);
      }
      v3 = (_DWORD *)v1[7];
      if ( v3 == v1 + 2 || !v3 )
        goto LABEL_8;
      v4 = v1[2] - (_DWORD)v3;
      if ( v4 <= 0x80 )
        break;
      CustomFree(v3);
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v1, 0x38u);
      if ( v6 == a1 )
      {
LABEL_14:
        v1 = a1;
        goto LABEL_15;
      }
LABEL_9:
      v1 = v6;
    }
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, v4);
LABEL_8:
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v1, 0x38u);
    if ( v6 == a1 )
      goto LABEL_14;
    goto LABEL_9;
  }
LABEL_15:
  a1[1] = v1;
  *a1 = v1;
}


// ===== 3115c4 PerfCounters::~PerfCounters() =====
void __fastcall PerfCounters::~PerfCounters(PerfCounters *this)
{
  void *v2; // r0
  void *v3; // r0
  size_t v4; // r1

  v2 = *((void **)this + 7);
  if ( v2 )
    CustomFree(v2);
  std::priv::_List_base<PerfCounters::CounterEntry,std::allocator<PerfCounters::CounterEntry>>::clear((_DWORD *)this + 5);
  v3 = *((void **)this + 2);
  if ( v3 )
  {
    v4 = (*((_DWORD *)this + 4) - (_DWORD)v3) & 0xFFFFFFFC;
    if ( v4 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, v4);
  }
}


// ===== 311620 PerfCounters::~PerfCounters() =====
void __fastcall PerfCounters::~PerfCounters(PerfCounters *this)
{
  void *v2; // r0
  void *v3; // r0
  size_t v4; // r1

  v2 = *((void **)this + 7);
  if ( v2 )
    CustomFree(v2);
  std::priv::_List_base<PerfCounters::CounterEntry,std::allocator<PerfCounters::CounterEntry>>::clear((_DWORD *)this + 5);
  v3 = *((void **)this + 2);
  if ( v3 )
  {
    v4 = (*((_DWORD *)this + 4) - (_DWORD)v3) & 0xFFFFFFFC;
    if ( v4 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, v4);
  }
}


// ===== 31167c std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(uint) =====
void __fastcall std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(_DWORD *a1, size_t a2)
{
  char *v3; // r0
  size_t v4; // r3
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 )
  {
    if ( a2 > 0x10 )
    {
      __n = a2;
      if ( a2 > 0x80 )
        v3 = (char *)CustomAlloc(a2);
      else
        v3 = (char *)__ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
      v4 = __n;
      a1[5] = v3;
      a1[4] = v3;
      *a1 = &v3[v4];
    }
  }
  else
  {
    __ZSt24__stl_throw_length_errorPKc_veneer("basic_string");
  }
}


// ===== 3116e8 std::string::_M_range_initialize(char const*,char const*) =====
char *__fastcall std::string::_M_range_initialize(std::string *this, const char *a2, const char *a3)
{
  size_t v3; // r5
  char *result; // r0

  v3 = a3 - a2;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(this, a3 - a2 + 1);
  result = this->_M_start_of_storage._M_data;
  if ( a3 != a2 )
    result = (char *)memcpy(result, a2, v3) + v3;
  this->_M_finish = result;
  *result = 0;
  return result;
}


// ===== 311730 PerfCounters::CounterEntry::CounterEntry(PerfCounters::CounterEntry const&) =====
int __fastcall PerfCounters::CounterEntry::CounterEntry(int a1, int a2)
{
  *(_DWORD *)(a1 + 16) = a1;
  *(_DWORD *)(a1 + 20) = a1;
  std::string::_M_range_initialize((std::string *)a1, *(const char **)(a2 + 20), *(const char **)(a2 + 16));
  *(_DWORD *)(a1 + 24) = *(_DWORD *)(a2 + 24);
  *(_DWORD *)(a1 + 28) = *(_DWORD *)(a2 + 28);
  *(_DWORD *)(a1 + 32) = *(_DWORD *)(a2 + 32);
  std::vector<float>::vector((_DWORD *)(a1 + 36), a2 + 36);
  return a1;
}


// ===== 31177c PerfCounters::Update(float) =====
void __fastcall PerfCounters::Update(PerfCounters *this, float a2)
{
  int Switch; // r5
  const void **i; // r4
  _BYTE *v6; // r1
  _BYTE *v7; // r1
  int v8; // r3
  _BYTE v9[4]; // [sp+Ch] [bp-28h] BYREF
  _BYTE v10[4]; // [sp+10h] [bp-24h] BYREF
  std::string v11; // [sp+14h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  v11._M_finish = (char *)&v11;
  v11._M_start_of_storage._M_data = (char *)&v11;
  std::string::_M_range_initialize(&v11, "EnablePerfCounters", "");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v11);
  if ( (std::string *)v11._M_start_of_storage._M_data != &v11 && v11._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v11._M_buffers._M_end_of_storage - v11._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v11._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v11._M_start_of_storage._M_data,
        v11._M_buffers._M_end_of_storage - v11._M_start_of_storage._M_data);
  }
  if ( Switch )
  {
    for ( i = *((const void ***)this + 5); (const void **)((char *)this + 20) != i; i = (const void **)*i )
    {
      v6 = i[12];
      if ( v6 == i[13] )
      {
        std::vector<float>::_M_insert_overflow(i + 11, v6, i + 8, (int)v10, 1u, 1);
      }
      else
      {
        *(_DWORD *)v6 = i[8];
        i[12] = (char *)i[12] + 4;
      }
    }
    v7 = *((_BYTE **)this + 3);
    if ( v7 == *((_BYTE **)this + 4) )
    {
      std::vector<float>::_M_insert_overflow((const void **)this + 2, v7, this, (int)v9, 1u, 1);
    }
    else
    {
      *(_DWORD *)v7 = *(_DWORD *)this;
      *((_DWORD *)this + 3) += 4;
    }
    v8 = *((_DWORD *)this + 1);
    *(float *)this = *(float *)this + a2;
    *((_DWORD *)this + 1) = v8 + 1;
  }
}


// ===== 311914 PerfCounters::Draw(void) =====
int __fastcall PerfCounters::Draw(PerfCounters *this)
{
  PerfCounters *v1; // r3
  char *M_data; // r0
  int v3; // r5
  int v4; // r4
  int v5; // r2
  int Technique; // r2
  PerfCounters *v7; // r3
  PerfCounters *v8; // r4
  _DWORD *v9; // r2
  int v10; // r2
  char *v11; // r1
  int v12; // r0
  int v13; // lr
  char *v14; // r4
  int v15; // r8
  int v16; // r5
  char *v17; // r7
  int v18; // r3
  int v19; // r9
  int *v20; // r7
  int v21; // r10
  unsigned int v22; // r3
  unsigned int v23; // r1
  int *v24; // r0
  int v25; // r11
  int v26; // r12
  int v27; // r7
  int *v28; // r7
  int v29; // r1
  int v30; // r0
  int v31; // r3
  int v32; // r2
  int v33; // r7
  size_t v34; // r1
  int v36; // r6
  char **v37; // r8
  int v38; // r4
  __int16 v39; // r10
  float v40; // r0
  void (__fastcall *v41)(_DWORD *, int *, int *, int); // r12
  char *i; // r3
  unsigned int v43; // r3
  unsigned int v44; // r1
  char *v45; // r0
  int v46; // r9
  int v47; // r11
  char *v48; // r2
  int v49; // r10
  int v50; // r7
  int v51; // r7
  size_t v52; // r1
  unsigned int v53; // r3
  unsigned int v54; // r1
  void *v55; // r0
  int v56; // r3
  size_t v57; // r4
  char *v58; // r4
  char *v59; // r0
  int v60; // r4
  size_t v61; // r1
  int v62; // [sp+Ch] [bp-100h]
  int v63; // [sp+Ch] [bp-100h]
  char v64; // [sp+10h] [bp-FCh]
  float v65; // [sp+14h] [bp-F8h]
  char v66; // [sp+18h] [bp-F4h]
  char v67; // [sp+1Ch] [bp-F0h]
  int v68; // [sp+20h] [bp-ECh]
  int v69; // [sp+24h] [bp-E8h]
  int v70; // [sp+28h] [bp-E4h]
  int v71; // [sp+2Ch] [bp-E0h]
  char *v72; // [sp+30h] [bp-DCh]
  _DWORD *v73; // [sp+34h] [bp-D8h]
  int v74; // [sp+38h] [bp-D4h]
  int v75; // [sp+3Ch] [bp-D0h]
  char *v76; // [sp+44h] [bp-C8h]
  float v78[5]; // [sp+78h] [bp-94h] BYREF
  _DWORD v79[5]; // [sp+8Ch] [bp-80h] BYREF
  char v80; // [sp+A0h] [bp-6Ch]
  _BYTE v81[16]; // [sp+A4h] [bp-68h] BYREF
  int v82; // [sp+B4h] [bp-58h] BYREF
  int v83; // [sp+B8h] [bp-54h]
  int v84; // [sp+BCh] [bp-50h]
  int v85; // [sp+C0h] [bp-4Ch]
  float v86[3]; // [sp+C4h] [bp-48h] BYREF
  int v87; // [sp+D0h] [bp-3Ch] BYREF
  int v88; // [sp+D4h] [bp-38h]
  int v89; // [sp+D8h] [bp-34h] BYREF
  int v90; // [sp+DCh] [bp-30h]
  size_t v91[2]; // [sp+E0h] [bp-2Ch] BYREF
  glitch::video::CMaterial *v92; // [sp+E8h] [bp-24h] BYREF
  std::string v93; // [sp+ECh] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  v93._M_finish = (char *)&v93;
  v93._M_start_of_storage._M_data = (char *)&v93;
  std::string::_M_range_initialize(&v93, "EnablePerfCounters", "");
  if ( !DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v93)
    || (v1 = *((PerfCounters **)this + 5), v1 == (PerfCounters *)((char *)this + 20)) )
  {
    M_data = v93._M_start_of_storage._M_data;
    v3 = 0;
    if ( (std::string *)v93._M_start_of_storage._M_data == &v93 )
      goto LABEL_5;
  }
  else
  {
    do
      v1 = *(PerfCounters **)v1;
    while ( (PerfCounters *)((char *)this + 20) != v1 );
    M_data = v93._M_start_of_storage._M_data;
    v3 = 1;
    if ( (std::string *)v93._M_start_of_storage._M_data == &v93 )
    {
LABEL_5:
      if ( !v3 )
        return 16556;
      goto LABEL_6;
    }
  }
  if ( !M_data )
    goto LABEL_5;
  if ( (unsigned int)(v93._M_buffers._M_end_of_storage - M_data) > 0x80 )
  {
    CustomFree(M_data);
    goto LABEL_5;
  }
  __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(M_data, v93._M_buffers._M_end_of_storage - M_data);
  if ( !v3 )
    return 16556;
LABEL_6:
  v73 = *(_DWORD **)(dword_99F73C + 16);
  v4 = v73[55];
  v5 = *(unsigned __int16 *)(v4 + 52);
  if ( v5 == 0xFFFF )
    LOBYTE(v5) = glitch::video::CMaterialRendererManager::createMaterialRenderer(v73[55], 4);
  glitch::video::CMaterialRendererManager::getMaterialInstance((glitch::video::CMaterialRendererManager *)&v92, v4, v5);
  if ( v92 )
    Technique = glitch::video::CMaterial::getTechnique(v92);
  else
    Technique = 255;
  glitch::video::IVideoDriver::setMaterial(v73, &v92, Technique, 0);
  v8 = (PerfCounters *)((char *)this + 20);
  v7 = *((PerfCounters **)this + 5);
  v9 = *(_DWORD **)(v73[51] - 4);
  v76 = (char *)v7;
  v70 = v9[7] - v9[5];
  v69 = v9[8] - v9[6];
  if ( v7 != (PerfCounters *)((char *)this + 20) )
  {
    v10 = 0;
    v11 = *((char **)this + 5);
    do
    {
      v11 = *(char **)v11;
      ++v10;
    }
    while ( v8 != (PerfCounters *)v11 );
    v76 = v11;
    if ( v10 != 1 )
    {
      v86[0] = 1.6;
      v86[2] = 0.0;
      v86[1] = 0.0;
      if ( v7 == v8 )
      {
        v12 = 0;
      }
      else
      {
        v12 = 0;
        do
        {
          v7 = *(PerfCounters **)v7;
          ++v12;
        }
        while ( v8 != v7 );
      }
      operator/(v78, v86, (float)(unsigned int)(v12 - 1));
      v76 = (char *)this + 20;
    }
  }
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v72 = (char *)v79;
  v75 = 0;
  v82 = (int)(float)((float)((float)(*(_DWORD *)(*(_DWORD *)(v73[51] - 4) + 28)
                                   - *(_DWORD *)(*(_DWORD *)(v73[51] - 4) + 20))
                           * 0.2)
                   * 0.5);
  v85 = (int)(float)((float)(*(_DWORD *)(*(_DWORD *)(v73[51] - 4) + 32) - *(_DWORD *)(*(_DWORD *)(v73[51] - 4) + 24))
                   + (float)((float)((float)(*(_DWORD *)(*(_DWORD *)(v73[51] - 4) + 32)
                                           - *(_DWORD *)(*(_DWORD *)(v73[51] - 4) + 24))
                                   * 0.2)
                           * -0.5));
  v84 = (int)(float)((float)((float)(*(_DWORD *)(*(_DWORD *)(v73[51] - 4) + 28)
                                   - *(_DWORD *)(*(_DWORD *)(v73[51] - 4) + 20))
                           * 1.8)
                   * 0.5);
  v83 = (int)(float)((float)(*(_DWORD *)(*(_DWORD *)(v73[51] - 4) + 32) - *(_DWORD *)(*(_DWORD *)(v73[51] - 4) + 24))
                   + (float)((float)((float)(*(_DWORD *)(*(_DWORD *)(v73[51] - 4) + 32)
                                           - *(_DWORD *)(*(_DWORD *)(v73[51] - 4) + 24))
                                   * 0.75)
                           * -0.5));
  v81[15] = 0x80;
  v81[14] = -1;
  v81[3] = 0x80;
  v81[2] = -1;
  v81[1] = 0;
  v81[0] = 0;
  v81[7] = 0x80;
  v81[6] = -1;
  v81[5] = 0;
  v81[4] = 0;
  v81[11] = 0x80;
  v81[10] = -1;
  v81[9] = 0;
  v81[8] = 0;
  v81[13] = 0;
  v81[12] = 0;
  (*(void (__fastcall **)(_DWORD *, int *, int *, _BYTE *, _DWORD))(*v73 + 52))(v73, &v82, &v82, v81, 0);
  v13 = *((_DWORD *)this + 1);
  v79[0] = 255;
  v79[1] = 255;
  v79[2] = 0xFFFFFF;
  v79[3] = -2130771713;
  v79[4] = -2147450880;
  v71 = v13 / 1000;
  v80 = -1;
  v68 = v13 - 1000 * v71;
  v14 = *((char **)this + 5);
  if ( v14 != v76 )
  {
    do
    {
      if ( v75 <= 6 )
      {
        v67 = *v72;
        v64 = v72[1];
        v66 = v72[2];
      }
      else
      {
        v64 = -1;
        v67 = -1;
        v66 = -1;
      }
      v65 = *((float *)v14 + 10) - *((float *)v14 + 9);
      if ( s_posArray != dword_99F708 )
        dword_99F708 = s_posArray;
      ++v75;
      v15 = 1000 * v71;
      if ( s_colArray != dword_99F714 )
        dword_99F714 = s_colArray;
      v16 = 0;
      if ( s_idxArray != dword_99F720 )
        dword_99F720 = s_idxArray;
      do
      {
        v18 = v15;
        if ( v68 <= v16 )
        {
          if ( v71 <= 0 )
            break;
          v18 = v15 - 1000;
        }
        v19 = (int)(float)((float)v70 * (float)((float)((float)((float)((float)++v16 * 0.0016) - 0.8) * 0.5) + 0.5));
        v20 = (int *)dword_99F708;
        v21 = (int)(float)((float)v69
                         * (float)(COERCE_FLOAT(
                                     COERCE_INT(
                                       (float)((float)((float)((float)(*(float *)(*((_DWORD *)v14 + 11) + 4 * v18)
                                                                     - *((float *)v14 + 9))
                                                             / v65)
                                                     * 0.55)
                                             - 0.8)
                                     * 0.5)
                                   + 0x80000000)
                                 + 0.5));
        if ( dword_99F708 == dword_99F70C )
        {
          v22 = (dword_99F708 - s_posArray) >> 3;
          if ( v22 )
            v23 = 2 * v22;
          else
            v23 = 1;
          if ( v23 > 0x1FFFFFFF || v22 > v23 )
            v23 = 0x1FFFFFFF;
          v91[0] = v23;
          v24 = (int *)std::allocator<glitch::core::position2d<int>>::_M_allocate((int)&dword_99F70C, v23, v91);
          v25 = (int)v24;
          v26 = s_posArray;
          v27 = ((int)v20 - s_posArray) >> 3;
          if ( v27 > 0 )
          {
            v29 = v27;
            v30 = 0;
            do
            {
              --v29;
              *(_DWORD *)(v25 + v30) = *(_DWORD *)(v26 + v30);
              v31 = v25 + v30;
              v32 = *(_DWORD *)(v26 + v30 + 4);
              v30 += 8;
              *(_DWORD *)(v31 + 4) = v32;
            }
            while ( v29 );
            v28 = (int *)(v25 + 8 * v27);
          }
          else
          {
            v28 = v24;
          }
          *v28 = v19;
          v28[1] = v21;
          v33 = (int)(v28 + 2);
          if ( s_posArray )
          {
            v34 = (dword_99F70C - s_posArray) & 0xFFFFFFF8;
            if ( v34 > 0x80 )
              CustomFree((void *)s_posArray);
            else
              __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)s_posArray, v34);
          }
          dword_99F70C = v25 + 8 * v91[0];
          s_posArray = v25;
          dword_99F708 = v33;
        }
        else
        {
          *(_DWORD *)(dword_99F708 + 4) = (int)(float)((float)v69
                                                     * (float)(COERCE_FLOAT(
                                                                 COERCE_INT(
                                                                   (float)((float)((float)((float)(*(float *)(*((_DWORD *)v14 + 11) + 4 * v18)
                                                                                                 - *((float *)v14 + 9))
                                                                                         / v65)
                                                                                 * 0.55)
                                                                         - 0.8)
                                                                 * 0.5)
                                                               + 0x80000000)
                                                             + 0.5));
          *v20 = v19;
          dword_99F708 += 8;
        }
        v17 = (char *)dword_99F714;
        if ( dword_99F714 == dword_99F718 )
        {
          v43 = (dword_99F714 - s_colArray) >> 2;
          if ( v43 )
            v44 = 2 * v43;
          else
            v44 = 1;
          if ( v44 > 0x3FFFFFFF || v43 > v44 )
            v44 = 0x3FFFFFFF;
          v91[0] = v44;
          v45 = (char *)std::allocator<glitch::video::SColor>::_M_allocate((int)&dword_99F718, v44, v91);
          v46 = (int)v45;
          v47 = s_colArray;
          v74 = (int)&v17[-s_colArray] >> 2;
          if ( v74 > 0 )
          {
            v49 = (int)&v17[-s_colArray] >> 2;
            v50 = 0;
            do
            {
              memcpy((void *)(v46 + v50), (const void *)(v47 + v50), 4u);
              --v49;
              v50 += 4;
            }
            while ( v49 );
            v48 = (char *)(v46 + 4 * v74);
          }
          else
          {
            v48 = v45;
          }
          v48[3] = 0x80;
          v48[2] = v66;
          v48[1] = v64;
          *v48 = v67;
          v51 = (int)(v48 + 4);
          if ( s_colArray )
          {
            v52 = (dword_99F718 - s_colArray) & 0xFFFFFFFC;
            if ( v52 > 0x80 )
              CustomFree((void *)s_colArray);
            else
              __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)s_colArray, v52);
          }
          dword_99F718 = v46 + 4 * v91[0];
          s_colArray = v46;
          dword_99F714 = v51;
        }
        else
        {
          *(_BYTE *)(dword_99F714 + 3) = 0x80;
          *v17 = v67;
          v17[2] = v66;
          v17[1] = v64;
          dword_99F714 += 4;
        }
        ++v15;
      }
      while ( v16 != 1000 );
      v36 = 0;
      v37 = (char **)v14;
      while ( v36 < 2 * v16 )
      {
        v38 = dword_99F720;
        v39 = (unsigned int)++v36 >> 1;
        if ( dword_99F720 == dword_99F724 )
        {
          v53 = (dword_99F720 - s_idxArray) >> 1;
          if ( v53 )
            v54 = 2 * v53;
          else
            v54 = 1;
          if ( v54 > 0x7FFFFFFF || v53 > v54 )
            v54 = 0x7FFFFFFF;
          v91[0] = v54;
          v55 = std::allocator<unsigned short>::_M_allocate((int)&dword_99F724, v54, v91);
          v56 = (int)v55;
          v57 = v38 - s_idxArray;
          if ( v57 )
          {
            v62 = (int)v55;
            v59 = (char *)memmove(v55, (const void *)s_idxArray, v57);
            v56 = v62;
            v58 = &v59[v57];
          }
          else
          {
            v58 = (char *)v55;
          }
          *(_WORD *)v58 = v39;
          v60 = (int)(v58 + 2);
          if ( s_idxArray )
          {
            v61 = (dword_99F724 - s_idxArray) & 0xFFFFFFFE;
            v63 = v56;
            if ( v61 > 0x80 )
              CustomFree((void *)s_idxArray);
            else
              __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)s_idxArray, v61);
            v56 = v63;
          }
          s_idxArray = v56;
          dword_99F720 = v60;
          dword_99F724 = v56 + 2 * v91[0];
        }
        else
        {
          *(_WORD *)dword_99F720 = v39;
          dword_99F720 += 2;
        }
      }
      if ( (unsigned int)((dword_99F708 - s_posArray) >> 3) > 1 )
        (*(void (__fastcall **)(_DWORD *, int, int, int, int, int))(*v73 + 48))(
          v73,
          s_posArray,
          s_idxArray,
          s_colArray,
          (dword_99F708 - s_posArray) >> 3,
          v16 - 1);
      v14 = *v37;
      v72 += 3;
    }
    while ( *v37 != v76 );
  }
  v89 = 0;
  v90 = 0;
  v40 = (float)((float)((float)v68 * 0.0016) - 0.8) + 1.0;
  v89 = (int)(float)((float)((float)(*(_DWORD *)(*(_DWORD *)(v73[51] - 4) + 28)
                                   - *(_DWORD *)(*(_DWORD *)(v73[51] - 4) + 20))
                           * v40)
                   * 0.5);
  v90 = (int)(float)((float)(*(_DWORD *)(*(_DWORD *)(v73[51] - 4) + 32) - *(_DWORD *)(*(_DWORD *)(v73[51] - 4) + 24))
                   + (float)((float)((float)(*(_DWORD *)(*(_DWORD *)(v73[51] - 4) + 32)
                                           - *(_DWORD *)(*(_DWORD *)(v73[51] - 4) + 24))
                                   * 0.2)
                           * -0.5));
  v88 = 0;
  v87 = 0;
  v87 = (int)(float)((float)(v40
                           * (float)(*(_DWORD *)(*(_DWORD *)(v73[51] - 4) + 28)
                                   - *(_DWORD *)(*(_DWORD *)(v73[51] - 4) + 20)))
                   * 0.5);
  v88 = (int)(float)((float)(*(_DWORD *)(*(_DWORD *)(v73[51] - 4) + 32) - *(_DWORD *)(*(_DWORD *)(v73[51] - 4) + 24))
                   + (float)((float)((float)(*(_DWORD *)(*(_DWORD *)(v73[51] - 4) + 32)
                                           - *(_DWORD *)(*(_DWORD *)(v73[51] - 4) + 24))
                                   * 0.75)
                           * -0.5));
  v41 = *(void (__fastcall **)(_DWORD *, int *, int *, int))(*v73 + 44);
  v91[1] = -1;
  v41(v73, &v89, &v87, -1);
  for ( i = *((char **)this + 5); i != v76; i = *(char **)i )
    ;
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v92);
  return 16556;
}


// ===== 312524 std::list<PerfCounters::CounterEntry,std::allocator<PerfCounters::CounterEntry>>::insert(std::priv::_List_iterator<PerfCounters::CounterEntry,std::_Nonconst_traits<PerfCounters::CounterEntry>>,PerfCounters::CounterEntry const&) =====
_DWORD *__fastcall std::list<PerfCounters::CounterEntry>::insert(_DWORD *a1, int a2, int *a3, int a4)
{
  _DWORD *v7; // r6
  int v8; // r3
  _DWORD *v10; // r2
  size_t v11; // [sp+4h] [bp-8h] BYREF

  v11 = 56;
  v7 = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v11);
  PerfCounters::CounterEntry::CounterEntry((int)(v7 + 2), a4);
  v8 = *a3;
  v10 = *(_DWORD **)(*a3 + 4);
  *v7 = *a3;
  v7[1] = v10;
  *v10 = v7;
  *(_DWORD *)(v8 + 4) = v7;
  *a1 = v7;
  return a1;
}


// ===== 312584 PerfCounters::GetEntry(std::string const&) =====
char *__fastcall PerfCounters::GetEntry(PerfCounters *this, const std::string *a2)
{
  char *v2; // r4
  char *v3; // r10
  const void *v6; // r0
  char *v7; // r1
  char *v8; // r2
  int v9; // r1
  unsigned int v10; // r1
  int v11; // r4
  size_t v12; // r1
  char *M_data; // r0
  int v15; // [sp+0h] [bp-4Ch] BYREF
  char *v16; // [sp+8h] [bp-44h] BYREF
  int v17; // [sp+Ch] [bp-40h] BYREF
  int v18; // [sp+10h] [bp-3Ch] BYREF
  std::string v19; // [sp+14h] [bp-38h] BYREF
  void *__p[2]; // [sp+38h] [bp-14h] BYREF
  int v21; // [sp+40h] [bp-Ch]

  v3 = (char *)this + 20;
  v2 = *((char **)this + 5);
  if ( v2 == (char *)this + 20 )
  {
LABEL_4:
    v19._M_finish = (char *)&v19;
    v19._M_start_of_storage._M_data = (char *)&v19;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v19, 0x10u);
    *v19._M_finish = 0;
    v21 = 0;
    __p[0] = nullptr;
    __p[1] = nullptr;
    if ( a2 != &v19 )
      std::string::_M_assign(&v19, a2->_M_start_of_storage._M_data, a2->_M_finish);
    std::vector<float>::reserve(__p);
    v9 = *((_DWORD *)this + 1);
    v18 = 0;
    std::vector<float>::resize((int)__p, v9 + 1, (char *)&v18);
    v10 = *((_DWORD *)this + 1);
    v17 = 0;
    std::vector<float>::_M_fill_assign((int *)__p, v10, &v17);
    v16 = v2;
    std::list<PerfCounters::CounterEntry>::insert(&v15, (int)v3, (int *)&v16, (int)&v19);
    v11 = *((_DWORD *)this + 6) + 8;
    if ( __p[0] )
    {
      v12 = (v21 - (unsigned int)__p[0]) & 0xFFFFFFFC;
      if ( v12 > 0x80 )
      {
        CustomFree(__p[0]);
        M_data = v19._M_start_of_storage._M_data;
        if ( (std::string *)v19._M_start_of_storage._M_data == &v19 )
          return (char *)v11;
LABEL_10:
        if ( M_data )
        {
          if ( (unsigned int)(v19._M_buffers._M_end_of_storage - M_data) > 0x80 )
            CustomFree(M_data);
          else
            __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(M_data, v19._M_buffers._M_end_of_storage - M_data);
        }
        return (char *)v11;
      }
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(__p[0], v12);
    }
    M_data = v19._M_start_of_storage._M_data;
    if ( (std::string *)v19._M_start_of_storage._M_data == &v19 )
      return (char *)v11;
    goto LABEL_10;
  }
  while ( 1 )
  {
    v6 = *((const void **)v2 + 7);
    v7 = a2->_M_start_of_storage._M_data;
    v8 = (char *)(*((_DWORD *)v2 + 6) - (_DWORD)v6);
    if ( v8 == (char *)(a2->_M_finish - v7) && !memcmp(v6, v7, (size_t)v8) )
      return v2 + 8;
    v2 = *(char **)v2;
    if ( v2 == v3 )
      goto LABEL_4;
  }
}


// ===== 312734 PerfCounters::SetCounterValue(std::string const&,float,float,float) =====
void __fastcall PerfCounters::SetCounterValue(PerfCounters *this, const std::string *a2, float a3, float a4, float a5)
{
  int Switch; // r6
  float *Entry; // r0
  std::string v11; // [sp+4h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  v11._M_finish = (char *)&v11;
  v11._M_start_of_storage._M_data = (char *)&v11;
  std::string::_M_range_initialize(&v11, "EnablePerfCounters", "");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v11);
  if ( (std::string *)v11._M_start_of_storage._M_data != &v11 && v11._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v11._M_buffers._M_end_of_storage - v11._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v11._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v11._M_start_of_storage._M_data,
        v11._M_buffers._M_end_of_storage - v11._M_start_of_storage._M_data);
  }
  if ( Switch )
  {
    Entry = (float *)PerfCounters::GetEntry(this, a2);
    Entry[7] = a4;
    Entry[6] = a3;
    Entry[8] = a5;
  }
}


// ===== 312828 `global constructor keyed to'.._.._sources_Utils_Performance.cpp =====
void `global constructor keyed to'.._.._sources_Utils_Performance.cpp()
{
  dword_99F844 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_99F840 = 1056964608;
}


// ===== 312848 Point2D<float>::lineIntersection(Point2D<float> const&,Point2D<float> const&,Point2D<float> const&,Point2D<float> const&,Point2D<float>&,float &,float &) =====
int __fastcall Point2D<float>::lineIntersection(
        float *a1,
        float *a2,
        float *a3,
        float *a4,
        float *a5,
        float *a6,
        float *a7)
{
  float v8; // r8
  float v9; // r7
  float v10; // r9
  float v11; // r6
  float v12; // r11
  float v13; // r9
  float v14; // r10
  float v16; // r0
  float v17; // r8
  float v18; // r0
  float v19; // [sp+8h] [bp-Ch]
  float v20; // [sp+Ch] [bp-8h]

  v8 = *a2 - *a1;
  v19 = a1[1];
  v9 = a2[1] - v19;
  v20 = *a4 - *a3;
  v10 = a4[1] - a3[1];
  v11 = (float)(v8 * v10) - (float)(v9 * v20);
  v12 = v19 - a3[1];
  v13 = (float)(v12 * v20) - (float)((float)(*a1 - *a3) * v10);
  v14 = (float)(v12 * v8) - (float)((float)(*a1 - *a3) * v9);
  if ( v11 >= 0.0001 || v11 <= -0.0001 )
  {
    *a6 = v13 * (float)(1.0 / v11);
    *a7 = v14 * (float)(1.0 / v11);
    *a5 = v8;
    a5[1] = v9;
    v16 = v8 * *a6;
    *a5 = v16;
    v17 = v16;
    v18 = v9 * *a6;
    a5[1] = v18;
    *a5 = v17 + *a1;
    a5[1] = v18 + a1[1];
    if ( *a6 < 0.0 || *a6 > 1.0 )
    {
      if ( *a7 < 0.0 || *a7 > 1.0 )
        return 2;
      else
        return 4;
    }
    else if ( *a7 < 0.0 || *a7 > 1.0 )
    {
      return 3;
    }
    else
    {
      return 5;
    }
  }
  else
  {
    return v13 < 0.0001 && v13 > -0.0001 && fabs(v13 - v14) < 0.0001;
  }
}


// ===== 312b40 Point2D<float>::lineIntersection(Point2D<float> const&,Point2D<float> const&,Point2D<float> const&,Point2D<float> const&,Point2D<float>&) =====
int __fastcall Point2D<float>::lineIntersection(float *a1, float *a2, float *a3, float *a4, float *a5)
{
  float v6; // [sp+10h] [bp-Ch] BYREF
  float v7[2]; // [sp+14h] [bp-8h] BYREF

  return Point2D<float>::lineIntersection(a1, a2, a3, a4, a5, v7, &v6);
}


// ===== 312b6c Point3D<float>::operator==(Point3D<float> const&) =====
bool __fastcall Point3D<float>::operator==(float *a1, float *a2)
{
  return fabs(*a1 - *a2) < 0.0001 && fabs(a1[1] - a2[1]) < 0.0001 && fabs(a1[2] - a2[2]) < 0.0001;
}


// ===== 312bf8 glitch::core::CMatrix4<float>::multiplyWith1x4Matrix(float *) =====
float __fastcall glitch::core::CMatrix4<float>::multiplyWith1x4Matrix(float *a1, float *a2)
{
  float v2; // r10
  float v3; // r8
  float v4; // r7
  float v5; // r6
  float result; // r0

  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  *a2 = (float)((float)((float)(*a2 * *a1) + (float)(v3 * a1[4])) + (float)(v4 * a1[8])) + (float)(v5 * a1[12]);
  a2[1] = (float)((float)((float)(v2 * a1[1]) + (float)(v3 * a1[5])) + (float)(v4 * a1[9])) + (float)(v5 * a1[13]);
  a2[2] = (float)((float)((float)(v2 * a1[2]) + (float)(v3 * a1[6])) + (float)(v4 * a1[10])) + (float)(v5 * a1[14]);
  result = (float)((float)((float)(v2 * a1[3]) + (float)(v3 * a1[7])) + (float)(v4 * a1[11])) + (float)(v5 * a1[15]);
  a2[3] = result;
  return result;
}


// ===== 312da8 Point3D<float>::transform(glitch::core::CMatrix4<float> const&) =====
float __fastcall Point3D<float>::transform(int *a1, float *a2)
{
  int v2; // r2
  int v3; // r12
  float result; // r0
  int v6; // r3
  int v7; // r1
  int v8; // [sp+0h] [bp-10h] BYREF
  int v9; // [sp+4h] [bp-Ch]
  int v10; // [sp+8h] [bp-8h]
  int v11; // [sp+Ch] [bp-4h]

  v2 = a1[1];
  v3 = *a1;
  v10 = a1[2];
  v9 = v2;
  v11 = 1065353216;
  v8 = v3;
  result = glitch::core::CMatrix4<float>::multiplyWith1x4Matrix(a2, (float *)&v8);
  v6 = v8;
  v7 = v9;
  a1[2] = v10;
  *a1 = v6;
  a1[1] = v7;
  return result;
}


// ===== 312e00 `global constructor keyed to'.._.._sources_Utils_Point3D.cpp =====
int *`global constructor keyed to'.._.._sources_Utils_Point3D.cpp()
{
  dword_99F850 = 1056964608;
  dword_99F880 = 1065353216;
  dword_99F85C = 0;
  dword_99F868 = 0;
  dword_99F874 = 0;
  dword_99F87C = 0;
  glitch::ps::vHalf = 1056964608;
  dword_99F84C = 1056964608;
  Vec3f_Origin = 0;
  dword_99F858 = 0;
  Vec3f_I = 1065353216;
  dword_99F864 = 0;
  Vec3f_J = 0;
  dword_99F870 = 1065353216;
  Vec3f_K = 0;
  return &Vec3f_K;
}


// ===== 312e9c std::allocator<Point3D<float>>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<Point3D<float>>::_M_allocate(int a1, unsigned int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0x15555555 )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 12 * a2;
  if ( 12 * a2 > 0x80 )
    result = CustomAlloc(12 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n / 0xC;
  return result;
}


// ===== 312f20 std::allocator<Point3D<float>>::deallocate(Point3D<float>*,uint) =====
void __fastcall std::allocator<Point3D<float>>::deallocate(int a1, void *a2, int a3)
{
  if ( a2 )
  {
    if ( (unsigned int)(12 * a3) > 0x80 )
      CustomFree(a2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(a2, 12 * a3);
  }
}


// ===== 312f40 Point3D<float>::angleCos(Point3D<float> const&) =====
float __fastcall Point3D<float>::angleCos(float *a1, float *a2)
{
  float v3; // r6
  float v4; // r5
  float v5; // r8
  float v6; // r5

  v3 = a1[1];
  v4 = a1[2];
  v5 = (float)((float)(*a1 * *a2) + (float)(v3 * a2[1])) + (float)(v4 * a2[2]);
  v6 = sqrtf((float)((float)(*a1 * *a1) + (float)(v3 * v3)) + (float)(v4 * v4));
  return v5 / (float)(v6 * sqrtf((float)((float)(*a2 * *a2) + (float)(a2[1] * a2[1])) + (float)(a2[2] * a2[2])));
}


// ===== 313058 Point3D<float>::angle(Point3D<float> const&) =====
float Point3D<float>::angle()
{
  float v0; // r0

  v0 = Point3D<float>::angleCos();
  return acosf(v0);
}


// ===== 313068 std::_M_ignore_unbuffered<char,std::char_traits<char>,std::priv::_Is_not_wspace<std::char_traits<char>>>(std::basic_istream<char,std::char_traits<char>> *,std::basic_streambuf<char,std::char_traits<char>> *,std::priv::_Is_not_wspace<std::char_traits<char>>,bool,bool) [clone] =====
void __fastcall std::_M_ignore_unbuffered<char,std::char_traits<char>,std::priv::_Is_not_wspace<std::char_traits<char>>>(
        _DWORD *a1,
        _DWORD *a2,
        int a3)
{
  _BYTE *v3; // r3
  _BYTE *v7; // r2
  int v8; // r0
  int v9; // r12
  int v10; // r3
  _BYTE *v11; // r2
  std::ios_base *v12; // r0
  int v13; // r12
  int M_exception_mask; // r3

  v3 = (_BYTE *)a2[2];
  do
  {
    v7 = v3 + 1;
    if ( a2[3] <= (unsigned int)v3 )
    {
      v8 = (*(int (__fastcall **)(_DWORD *))(*a2 + 36))(a2);
      if ( v8 == -1 )
      {
        v9 = 6;
        goto LABEL_11;
      }
      v7 = (_BYTE *)a2[2];
    }
    else
    {
      a2[2] = v7;
      LOBYTE(v8) = *v3;
    }
    v3 = v7;
    v9 = *(_DWORD *)(*(_DWORD *)(a3 + 12) + 4 * (unsigned __int8)v8) & 1;
  }
  while ( v9 );
  if ( a2[1] < (unsigned int)v7 && (v10 = (unsigned __int8)*(v7 - 1), v11 = v7 - 1, (unsigned __int8)v8 == v10) )
  {
    a2[2] = v11;
  }
  else if ( (*(int (__fastcall **)(_DWORD *))(*a2 + 40))(a2) == -1 )
  {
    v9 = 4;
  }
  else
  {
    v9 = 0;
  }
LABEL_11:
  v12 = (std::ios_base *)((char *)a1 + *(_DWORD *)(*a1 - 12));
  v13 = v9 | v12->_M_iostate;
  M_exception_mask = v12->_M_exception_mask;
  if ( !v12[1]._M_iostate )
    v13 |= 1u;
  v12->_M_iostate = v13;
  if ( (v13 & M_exception_mask) != 0 )
    __ZNSt8ios_base16_M_throw_failureEv_veneer(v12);
}


// ===== 313150 std::istream::sentry::sentry(std::istream &,bool) [clone] =====
std::istream::sentry *__fastcall std::istream::sentry::sentry(std::istream::sentry *this, std::istream *a2, bool a3)
{
  if ( (*(std::streamsize *)((_BYTE *)&a2->_M_gcount + *((_DWORD *)a2->_vptr.basic_istream - 3)) & 0x1000) != 0 )
    *(_BYTE *)this = std::_M_init_skip<char,std::char_traits<char>>(a2);
  else
    *(_BYTE *)this = std::_M_init_noskip<char,std::char_traits<char>>(a2);
  return this;
}


// ===== 313198 std::ostream::_M_put_nowiden(char const*) =====
void __fastcall std::ostream::_M_put_nowiden(std::ostream *this, const char *a2)
{
  signed int v4; // r0
  signed int v5; // r5
  char *v6; // r2
  signed int v7; // r7
  int v8; // r7
  std::ios_base *v9; // r0
  int M_iostate; // r2
  int v11; // r3
  int M_exception_mask; // r2
  int v13; // r0
  int v14; // r0

  if ( !std::priv::__init_bostr<char,std::char_traits<char>>(this) )
    goto LABEL_11;
  v4 = LC_API_STRLEN_0(a2);
  v5 = v4;
  v6 = (char *)this + *((_DWORD *)this->_vptr.basic_ostream - 3);
  v7 = *((_DWORD *)v6 + 7);
  if ( v4 < v7 && (v8 = v7 - v4) != 0 )
  {
    if ( (*((_DWORD *)v6 + 1) & 7) == 1 )
    {
      if ( v4 == (*(int (__fastcall **)(_DWORD, const char *, signed int))(**((_DWORD **)v6 + 18) + 44))(
                   *((_DWORD *)v6 + 18),
                   a2,
                   v4)
        && v8 == (*(int (__fastcall **)(_DWORD, _DWORD, int))(**(_DWORD **)&this->gap4[*((_DWORD *)this->_vptr.basic_ostream
                                                                                       - 3)
                                                                                     + 68]
                                                            + 48))(
                   *(_DWORD *)&this->gap4[*((_DWORD *)this->_vptr.basic_ostream - 3) + 68],
                   (char)this->gap4[*((_DWORD *)this->_vptr.basic_ostream - 3) + 64],
                   v8) )
      {
        goto LABEL_17;
      }
    }
    else if ( v8 == (*(int (__fastcall **)(_DWORD, _DWORD, int))(**((_DWORD **)v6 + 18) + 48))(
                      *((_DWORD *)v6 + 18),
                      v6[68],
                      v8) )
    {
      v14 = *(_DWORD *)&this->gap4[*((_DWORD *)this->_vptr.basic_ostream - 3) + 68];
      if ( v5 == (*(int (__fastcall **)(int, const char *, signed int))(*(_DWORD *)v14 + 44))(v14, a2, v5) )
      {
LABEL_17:
        *(_DWORD *)&this->gap4[*((_DWORD *)this->_vptr.basic_ostream - 3) + 24] = 0;
        goto LABEL_11;
      }
    }
    *(_DWORD *)&this->gap4[*((_DWORD *)this->_vptr.basic_ostream - 3) + 24] = 0;
  }
  else
  {
    v13 = (*(int (__fastcall **)(_DWORD, const char *, signed int))(**((_DWORD **)v6 + 18) + 44))(
            *((_DWORD *)v6 + 18),
            a2,
            v4);
    *(_DWORD *)&this->gap4[*((_DWORD *)this->_vptr.basic_ostream - 3) + 24] = 0;
    if ( v5 == v13 )
      goto LABEL_11;
  }
  v9 = (std::ios_base *)((char *)this + *((_DWORD *)this->_vptr.basic_ostream - 3));
  M_iostate = v9->_M_iostate;
  v11 = M_iostate | 4;
  if ( !v9[1]._M_iostate )
    v11 = M_iostate | 5;
  M_exception_mask = v9->_M_exception_mask;
  v9->_M_iostate = v11;
  if ( (v11 & M_exception_mask) != 0 )
    __ZNSt8ios_base16_M_throw_failureEv_veneer(v9);
LABEL_11:
  if ( (*(_DWORD *)&this->gap4[*((_DWORD *)this->_vptr.basic_ostream - 3)] & 0x2000) != 0 )
    std::ostream::flush(this);
}


// ===== 313360 operator<<<float>(std::ostream &,Point3D<float> const&) =====
std::ostream *__fastcall operator<<<float>(std::ostream *a1)
{
  std::ostream *v2; // r7
  std::ostream *v3; // r7

  v2 = std::priv::__put_num<char,std::char_traits<char>,double>(a1);
  std::ostream::_M_put_nowiden(v2, ",");
  v3 = std::priv::__put_num<char,std::char_traits<char>,double>(v2);
  std::ostream::_M_put_nowiden(v3, ",");
  std::priv::__put_num<char,std::char_traits<char>,double>(v3);
  return a1;
}


// ===== 3133e0 operator<<(std::ostream &,std::vector<Point3D<float>,std::allocator<Point3D<float>>> const&) =====
std::ostream *__fastcall operator<<(std::ostream *a1, _DWORD *a2)
{
  int v2; // r6
  int v4; // r4

  v2 = a2[1];
  if ( *a2 != v2 )
  {
    v4 = *a2 + 12;
    operator<<<float>(a1);
    while ( v4 != v2 )
    {
      std::ostream::_M_put_nowiden(a1, ";");
      v4 += 12;
      operator<<<float>(a1);
    }
  }
  return a1;
}


// ===== 313444 operator>><float>(std::istream &,Point3D<float> &) =====
std::istream *__fastcall operator>><float>(std::istream *a1, int a2, bool a3)
{
  bool v5; // r2
  bool v6; // r2
  bool v7; // r2
  bool v8; // r2
  char v10; // [sp+7h] [bp-1h] BYREF

  std::priv::__get_num<char,std::char_traits<char>,float>(a1, a2, a3);
  std::istream::_M_formatted_get(a1, &v10, v5);
  std::priv::__get_num<char,std::char_traits<char>,float>(a1, a2 + 4, v6);
  std::istream::_M_formatted_get(a1, &v10, v7);
  std::priv::__get_num<char,std::char_traits<char>,float>(a1, a2 + 8, v8);
  return a1;
}


// ===== 313498 operator>>(std::istream &,std::vector<Point3D<float>,std::allocator<Point3D<float>>> &) =====
std::istream *__fastcall operator>>(std::istream *a1, _DWORD *a2)
{
  size_t *v3; // r2
  _DWORD *v5; // r3
  _DWORD *v6; // r7
  char v7; // r2
  bool v8; // zf
  int v10; // r3
  unsigned int v11; // r2
  unsigned int v12; // r3
  _DWORD *v13; // r0
  char *v14; // r3
  _DWORD *v15; // r11
  int v16; // r2
  int v17; // r7
  _DWORD *v18; // r3
  int v19; // r1
  _DWORD *v20; // r2
  int v21; // r0
  _DWORD *v22; // r7
  char *v23; // r3
  size_t v24; // r3
  int v25; // [sp+4h] [bp-28h]
  int v26; // [sp+14h] [bp-18h] BYREF
  int v27; // [sp+18h] [bp-14h]
  int v28; // [sp+1Ch] [bp-10h]
  size_t v29; // [sp+20h] [bp-Ch] BYREF
  char v30[5]; // [sp+27h] [bp-5h] BYREF

  v3 = &v29;
  v25 = (int)(a2 + 2);
  do
  {
    v30[0] = 97;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    operator>><float>(a1, (int)&v26, (bool)v3);
    v5 = (_DWORD *)a2[1];
    v6 = (_DWORD *)a2[2];
    if ( v5 == v6 )
    {
      v10 = ((int)v6 - *a2) >> 2;
      v11 = -1431655765 * v10;
      if ( -1431655765 * v10 )
        v12 = 1431655766 * v10;
      else
        v12 = 1;
      if ( v12 > 0x15555555 || v11 > v12 )
        v12 = 357913941;
      v29 = v12;
      v13 = std::allocator<Point3D<float>>::_M_allocate(v25, v12, &v29);
      v14 = (char *)*a2;
      v15 = v13;
      v16 = ((int)v6 - *a2) >> 2;
      v17 = -1431655765 * v16;
      if ( -1431655765 * v16 > 0 )
      {
        v19 = -1431655765 * v16;
        v20 = v13;
        do
        {
          --v19;
          *v20 = *(_DWORD *)v14;
          v20[1] = *((_DWORD *)v14 + 1);
          v21 = *((_DWORD *)v14 + 2);
          v14 += 12;
          v20[2] = v21;
          v20 += 3;
        }
        while ( v19 );
        v18 = &v15[3 * v17];
      }
      else
      {
        v18 = v13;
      }
      v22 = v18 + 3;
      *v18 = v26;
      v18[1] = v27;
      v18[2] = v28;
      v23 = (char *)a2[1];
      if ( v23 != (char *)*a2 )
        v23 += -12 * ((715827883 * ((unsigned int)&v23[-*a2 - 12] >> 2)) & 0x3FFFFFFF) - 12;
      std::allocator<Point3D<float>>::deallocate(v25, v23, -1431655765 * ((a2[2] - (int)v23) >> 2));
      v24 = v29;
      v7 = 12;
      *a2 = v15;
      a2[1] = v22;
      a2[2] = &v15[3 * v24];
    }
    else
    {
      *v5 = v26;
      v5[1] = v27;
      v7 = v28;
      v5[2] = v28;
      a2[1] += 12;
    }
    std::istream::_M_formatted_get(a1, v30, v7);
    v8 = v30[0] == 59;
    if ( v30[0] != 59 )
      v8 = v30[0] == 32;
  }
  while ( v8 );
  return a1;
}


// ===== 3136b4 PushProfilingContext(char const*) =====
void __fastcall PushProfilingContext(const char *a1)
{
  ;
}


// ===== 3136b8 PopProfilingContext(char const*) =====
void __fastcall PopProfilingContext(const char *a1)
{
  ;
}


// ===== 3136bc `global constructor keyed to'.._.._sources_Utils_ProfilingContexts.cpp =====
void `global constructor keyed to'.._.._sources_Utils_ProfilingContexts.cpp()
{
  dword_99F88C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_99F888 = 1056964608;
}


// ===== 3136dc `global constructor keyed to'.._.._sources_Utils_Random.cpp =====
int *`global constructor keyed to'.._.._sources_Utils_Random.cpp()
{
  dword_99F898 = 1056964608;
  dword_99F8A8 = 0;
  glitch::ps::vHalf = 1056964608;
  dword_99F894 = 1056964608;
  Random::s_debugRandomCounters = 0;
  return &Random::s_debugRandomCounters;
}


// ===== 313720 Savegame::Job::finish(void) =====
_BYTE *__fastcall Savegame::Job::finish(_BYTE *this)
{
  _BYTE *v1; // r4

  v1 = this;
  if ( *(this + 29) && *(_DWORD *)this )
    this = (_BYTE *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)this + 4))(*(_DWORD *)this);
  v1[29] = 0;
  *(_DWORD *)v1 = 0;
  return this;
}


// ===== 313760 std::priv::_Rb_global<bool>::_Rebalance(std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *&) =====
int __fastcall std::priv::_Rb_global<bool>::_Rebalance(int result, _DWORD *a2)
{
  int v2; // r2
  int v3; // r6
  char *v4; // r12
  char v5; // r4
  int v6; // r12
  int v7; // r0
  int v8; // r12
  int v9; // r4
  int v10; // r4
  int v11; // r12
  int v12; // r0
  int v13; // r12
  int v14; // r4
  int v15; // r4
  int v16; // r0
  int v17; // r0
  int v18; // r0
  int v19; // r0

  *(_BYTE *)result = 0;
  while ( *a2 != result )
  {
    v2 = *(_DWORD *)(result + 4);
    if ( *(_BYTE *)v2 )
      break;
    v3 = *(_DWORD *)(v2 + 4);
    v4 = *(char **)(v3 + 8);
    if ( (char *)v2 == v4 )
    {
      v4 = *(char **)(v3 + 12);
      if ( v4 && (v5 = *v4) == 0 )
      {
LABEL_8:
        *(_BYTE *)v2 = 1;
        *v4 = 1;
        **(_BYTE **)(*(_DWORD *)(result + 4) + 4) = v5;
        result = *(_DWORD *)(*(_DWORD *)(result + 4) + 4);
      }
      else
      {
        v11 = *(_DWORD *)(v2 + 12);
        if ( v11 == result )
        {
          *(_DWORD *)(v2 + 12) = *(_DWORD *)(result + 8);
          v18 = *(_DWORD *)(result + 8);
          if ( v18 )
          {
            *(_DWORD *)(v18 + 4) = v2;
            v3 = *(_DWORD *)(v2 + 4);
          }
          *(_DWORD *)(v11 + 4) = v3;
          if ( v2 == *a2 )
          {
            *a2 = v11;
          }
          else
          {
            v19 = *(_DWORD *)(v2 + 4);
            if ( v2 == *(_DWORD *)(v19 + 8) )
              *(_DWORD *)(v19 + 8) = v11;
            else
              *(_DWORD *)(v19 + 12) = v11;
          }
          *(_DWORD *)(v11 + 8) = v2;
          *(_DWORD *)(v2 + 4) = v11;
        }
        else
        {
          v11 = *(_DWORD *)(result + 4);
          v2 = result;
        }
        *(_BYTE *)v11 = 1;
        **(_BYTE **)(*(_DWORD *)(v2 + 4) + 4) = 0;
        v12 = *(_DWORD *)(*(_DWORD *)(v2 + 4) + 4);
        v13 = *(_DWORD *)(v12 + 8);
        *(_DWORD *)(v12 + 8) = *(_DWORD *)(v13 + 12);
        v14 = *(_DWORD *)(v13 + 12);
        if ( v14 )
          *(_DWORD *)(v14 + 4) = v12;
        *(_DWORD *)(v13 + 4) = *(_DWORD *)(v12 + 4);
        if ( v12 == *a2 )
        {
          *a2 = v13;
        }
        else
        {
          v15 = *(_DWORD *)(v12 + 4);
          if ( v12 == *(_DWORD *)(v15 + 12) )
            *(_DWORD *)(v15 + 12) = v13;
          else
            *(_DWORD *)(v15 + 8) = v13;
        }
        *(_DWORD *)(v13 + 12) = v12;
        *(_DWORD *)(v12 + 4) = v13;
        result = v2;
      }
    }
    else
    {
      if ( v4 )
      {
        v5 = *v4;
        if ( !*v4 )
          goto LABEL_8;
      }
      v6 = *(_DWORD *)(v2 + 8);
      if ( v6 == result )
      {
        *(_DWORD *)(v2 + 8) = *(_DWORD *)(result + 12);
        v16 = *(_DWORD *)(result + 12);
        if ( v16 )
        {
          *(_DWORD *)(v16 + 4) = v2;
          v3 = *(_DWORD *)(v2 + 4);
        }
        *(_DWORD *)(v6 + 4) = v3;
        if ( v2 == *a2 )
        {
          *a2 = v6;
        }
        else
        {
          v17 = *(_DWORD *)(v2 + 4);
          if ( v2 == *(_DWORD *)(v17 + 12) )
            *(_DWORD *)(v17 + 12) = v6;
          else
            *(_DWORD *)(v17 + 8) = v6;
        }
        *(_DWORD *)(v6 + 12) = v2;
        *(_DWORD *)(v2 + 4) = v6;
      }
      else
      {
        v6 = *(_DWORD *)(result + 4);
        v2 = result;
      }
      *(_BYTE *)v6 = 1;
      **(_BYTE **)(*(_DWORD *)(v2 + 4) + 4) = 0;
      v7 = *(_DWORD *)(*(_DWORD *)(v2 + 4) + 4);
      v8 = *(_DWORD *)(v7 + 12);
      *(_DWORD *)(v7 + 12) = *(_DWORD *)(v8 + 8);
      v9 = *(_DWORD *)(v8 + 8);
      if ( v9 )
        *(_DWORD *)(v9 + 4) = v7;
      *(_DWORD *)(v8 + 4) = *(_DWORD *)(v7 + 4);
      if ( v7 == *a2 )
      {
        *a2 = v8;
      }
      else
      {
        v10 = *(_DWORD *)(v7 + 4);
        if ( v7 == *(_DWORD *)(v10 + 8) )
          *(_DWORD *)(v10 + 8) = v8;
        else
          *(_DWORD *)(v10 + 12) = v8;
      }
      *(_DWORD *)(v8 + 8) = v7;
      *(_DWORD *)(v7 + 4) = v8;
      result = v2;
    }
  }
  *(_BYTE *)*a2 = 1;
  return result;
}


// ===== 313994 std::__node_alloc::allocate(uint &) =====
void *__fastcall std::__node_alloc::allocate(std::__node_alloc *this, unsigned int *a2)
{
  if ( *(_DWORD *)&this->gap0 > 0x80u )
    return CustomAlloc(*(_DWORD *)&this->gap0);
  else
    return __ZNSt12__node_alloc11_M_allocateERj_veneer((size_t *const)this);
}


// ===== 3139ac std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(void) =====
void __fastcall std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(
        std::priv::_String_base<char,std::allocator<char> > *const this)
{
  std::priv::_String_base<char,std::allocator<char> > *M_data; // r3
  char *v2; // r1

  M_data = (std::priv::_String_base<char,std::allocator<char> > *)this->_M_start_of_storage._M_data;
  if ( M_data != this && M_data )
  {
    v2 = (char *)(this->_M_buffers._M_end_of_storage - (char *)M_data);
    if ( (unsigned int)v2 > 0x80 )
      CustomFree(this->_M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(this->_M_start_of_storage._M_data, (size_t)v2);
  }
}


// ===== 3139e0 StreamReader::writeAs<uint>(IStreamBase *,uint const*) =====
int __fastcall StreamReader::writeAs<unsigned int>(int a1, int a2)
{
  int result; // r0
  int v3; // r1

  result = (*(int (__fastcall **)(int, int, int, _DWORD))(*(_DWORD *)a1 + 28))(a1, a2, 4, 0);
  if ( result != 4 || v3 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      return fprintf(
               (FILE *)&_sF + 2,
               "ASSERT(%s) FAILED: %s:%d\n",
               "bytesWritten == sizeof(T)",
               "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\/StreamReader.h",
               128);
    }
  }
  return result;
}


// ===== 313a90 StreamReader::readAs<uint>(IStreamBase *) =====
int __fastcall StreamReader::readAs<unsigned int>(int a1)
{
  int v1; // r1
  int v3; // [sp+Ch] [bp-8h] BYREF

  if ( (*(int (__fastcall **)(int, int *, int, _DWORD))(*(_DWORD *)a1 + 24))(a1, &v3, 4, 0) != 4 || v1 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "bytesRead == sizeof(T)",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\/StreamReader.h",
        68);
    }
  }
  return v3;
}


// ===== 313b48 IStreamBase::readAs<uint>(uint &) =====
int __fastcall IStreamBase::readAs<unsigned int>(int a1, int a2)
{
  int result; // r0
  int v3; // r1

  result = (*(int (__fastcall **)(int, int, int, _DWORD))(*(_DWORD *)a1 + 24))(a1, a2, 4, 0);
  if ( result != 4 || v3 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      return fprintf(
               (FILE *)&_sF + 2,
               "ASSERT(%s) FAILED: %s:%d\n",
               "bytesRead == sizeof(T)",
               "..\\..\\project_vs2005\\Game/..\\..\\sources/Utils/IStream.h",
               69);
    }
  }
  return result;
}

