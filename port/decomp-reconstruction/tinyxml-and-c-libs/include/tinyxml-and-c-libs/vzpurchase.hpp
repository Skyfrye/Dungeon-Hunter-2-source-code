// VZPurchase_* forwarders (0x532fb0 to 0x53333c). Each one calls a static method of DungeonHunter2
// through mEnv; the JNI state is declared in jni_globals.hpp. The three byte[] getters return a
// malloc'd, NUL-terminated copy that the caller frees.
#pragma once

void VZPurchase_requestLogin();
void VZPurchase_requestPurchaseGame();
void VZPurchase_InitMobileNetwork();
void VZPurchase_RestoreNetworkState();
int VZPurchase_IsMobileNetworkReady();
int VZPurchase_isErrorOcurred();
int VZPurchase_isInProgress();
char* VZPurchase_getLastServerMsg();
char* VZPurchase_getGameName();
char* VZPurchase_getGamePrice();
