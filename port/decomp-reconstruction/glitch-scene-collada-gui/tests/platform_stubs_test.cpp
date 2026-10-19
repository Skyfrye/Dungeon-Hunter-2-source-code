// Checks for the platform stand-ins (logger, OS operator, Android device stubs) and
// the particle-system heap helpers.
#include "glitch-scene-collada-gui/platform_stubs.hpp"
#include "glitch-scene-collada-gui/ps_types.hpp"

#include <cstdio>
#include <string>

using namespace glitch;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    {
        IObject object;
        (void)object;
        int receiverTag = 0;
        CLogger logger(reinterpret_cast<IEventReceiver*>(&receiverTag));
        CHECK(logger.getLogLevel() == ELL_INFORMATION);
        CHECK(logger.receiver == reinterpret_cast<IEventReceiver*>(&receiverTag));
        logger.setLogLevel(ELL_WARNING);
        CHECK(logger.getLogLevel() == ELL_WARNING);
        logger.setReceiver(nullptr);
        CHECK(logger.receiver == nullptr);
    }

    {
        // A receiver is offered the text of a message at or above the minimum level, and consumes it.
        struct Capture : IEventReceiver {
            int events = 0;
            std::string text;
            int level = -1;
            bool onEvent(const SEvent& event) override {
                ++events;
                if (event.EventType == EET_LOG_TEXT_EVENT) {
                    text = event.LogEvent.Text;
                    level = event.LogEvent.Level;
                }
                return true;
            }
        } capture;
        CLogger logger(&capture);
        logger.log("below", ELL_DEBUG);
        CHECK(capture.events == 0);
        logger.log("hello", ELL_ERROR);
        CHECK(capture.events == 1 && capture.text == "hello" && capture.level == ELL_ERROR);
        logger.log("name", "hint", ELL_WARNING);
        CHECK(capture.text == "name: hint" && capture.level == ELL_WARNING);
        logger.log(L"wide", ELL_INFORMATION);
        CHECK(capture.text == "wide");
        logger.logf(ELL_INFORMATION, "%d-%s", 7, "x");
        CHECK(capture.text == "7-x");
    }

    {
        COSOperator os("test");
        CHECK(std::wstring(os.getOperationSystemVersion()) == L"test");
        CHECK(os.referenceCounter == 1);
        CHECK(os.getTextFromClipboard() == nullptr);
        std::uint32_t mhz = 7, total = 1, avail = 2;
        CHECK(!os.getProcessorSpeedMHz(&mhz));
        CHECK(!os.getSystemMemory(&total, &avail));
        os.copyToClipboard("ignored");
    }

    {
        // The cursor control without a device: the position and the relative position.
        CAndroidOSDevice::CCursorControl cursor(core::dimension2d<int>{200, 100}, nullptr);
        CHECK(cursor.isVisible() && cursor.referenceCounter == 1);
        cursor.visible = false;
        CHECK(!cursor.isVisible());
        cursor.position = core::position2d<int>{50, 25};
        core::position2d<int> where = cursor.getPosition();
        CHECK(where.X == 50 && where.Y == 25);
        core::position2d<float> relative = cursor.getRelativePosition();
        CHECK(relative.X == 0.25f && relative.Y == 0.25f);
        core::rect<int> reference;
        reference.UpperLeftCorner = core::position2d<int>{0, 0};
        reference.LowerRightCorner = core::position2d<int>{100, 50};
        cursor.setReferenceRect(&reference);
        relative = cursor.getRelativePosition();
        CHECK(relative.X == 0.5f && relative.Y == 0.5f);
        reference.LowerRightCorner = core::position2d<int>{101, 50};
        cursor.setReferenceRect(&reference);
        CHECK(cursor.referenceRect.LowerRightCorner.X == 102 && cursor.referenceRect.LowerRightCorner.Y == 50);  // an odd width grows by one, an even height stays
        cursor.setReferenceRect(nullptr);
        CHECK(!cursor.useReferenceRect);
    }

    {
        void* block = glitch::ps::PS_NEW(64);
        CHECK(block != nullptr);
        glitch::ps::PS_FREE(block);
    }

    std::printf("%s\n", failures ? "platform_stubs: FAILED" : "platform_stubs: ok");
    return failures != 0;
}
