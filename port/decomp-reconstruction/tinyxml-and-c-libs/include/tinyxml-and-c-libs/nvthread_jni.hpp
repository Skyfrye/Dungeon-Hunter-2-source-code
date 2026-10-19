// NVThread JNI thread glue: 0x533cb8 NVThreadSpawnJNIThread, 0x533d20 NVThreadGetCurrentJNIEnv and
// 0x533e4c NVThreadSpawnProc. NVThreadInit and NVThreadSleep are in nvthread.hpp.
#pragma once

#include <jni.h>
#include <pthread.h>

// The block the spawner hands to the new thread: the argument and the function to run. The original
// keeps these as two 32-bit words in an 8-byte malloc'd block.
struct NVThreadSpawnContext {
    int arg;         // +0x00: argument passed to fn (the original's a4)
    int (*fn)(int);  // +0x04: thread function (the original's a3)
};

// Starts a thread that runs fn(arg) through NVThreadSpawnProc. Returns -1 when fn is null, otherwise
// the pthread_create result.
int NVThreadSpawnJNIThread(pthread_t* thread, const pthread_attr_t* attr, int (*fn)(int), int arg);

// Returns the JNIEnv of the calling thread: the key's value when the thread already has one, otherwise the
// result of AttachCurrentThread on the JavaVM that NVThreadInit stored (g_nvThreadVm, nvthread.hpp).
JNIEnv* NVThreadGetCurrentJNIEnv();

// Thread entry point: frees the context, runs the function, and returns its result.
int NVThreadSpawnProc(NVThreadSpawnContext* context);
