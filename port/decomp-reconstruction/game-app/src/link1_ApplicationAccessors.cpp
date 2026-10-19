// Accessors for words of the Application singleton that the listings read as separate globals (link-1). Declared in
// dh2/global/item_instance.hpp and dh2/global/charai_ai.hpp, which left their definition to the integrator.
#include "core-platform/deps/application.hpp"  // ApplicationGetDt
#include "dh2/Application.hpp"
#include "dh2/global/charai_ai.hpp"
#include "dh2/global/item_instance.hpp"

// Application::GetDt() as the core-platform timer reads it (core-platform/deps/application.hpp: frame time in milliseconds).
int ApplicationGetDt() {
    return ApplicationGetInstance().GetDt();
}

// dword_99F760: Singleton<Application>::s_inst +0x34, Application::m_stringManager.
StringManager* ApplicationGetStringManager() {
    return ApplicationGetInstance().m_stringManager;
}

// dword_99F758: Singleton<Application>::s_inst +0x2c, Application::m_pyDataConstants.
PyDataConstants* ApplicationGetPyDataConstants() {
    return ApplicationGetInstance().m_pyDataConstants;
}
