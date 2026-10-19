// Application loop entry points that the JNI natives call (GameRenderer.nativeInit, nativeRender, nativeDone).
// Defined by the app and menu batches: ELF 0x530ba8 appInit, 0x530fc8 appUpdate, 0x530a1c appDestroy.
// Hex-Rays (chunk_024.c) shows each as int with no arguments. The symbols are unmangled, so C linkage.
#pragma once

extern "C" {

int appInit();
int appUpdate();
int appDestroy();
// Track B (UI3, not in the original): the GL surface changed size after appInit (fold/unfold, split screen, rotation); resizes the screen framebuffer.
void appResizeSurface(int width, int height);

}  // extern "C"
