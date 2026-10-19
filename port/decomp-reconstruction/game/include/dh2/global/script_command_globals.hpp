// File-scope globals read by the script command bodies (batch g1-game-app-pack7-38b07e-0, Script_LockTutorial). Both are
// .bss words of libDungeonHunter2.so. Their definitions belong to the globals batch; this header only declares them.
#pragma once

class updateJob_thread;

// 0x9f63fc (ELF object lastOpenMenuID, 4 bytes). The id of the last opened menu, printed with %d by the menu code.
// Script_LockTutorial compares it with 17.
extern int lastOpenMenuID;

// 0x99fa2c (ELF object m_updateJobThread1, 4 bytes): a pointer to a job thread. Script_LockTutorial starts it with
// updateJob_thread::Start2 (net-transport/include/net-transport/update_job_thread.hpp).
extern updateJob_thread* m_updateJobThread1;
