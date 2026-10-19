#include "net-session-online/glx_player_login.hpp"

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <utility>

#include "net-session-online/deps/glx_stand_ins.hpp"
#include "net-session-online/glx_player_observer.hpp"
#include "net-session-online/glx_text.hpp"
#include "net-session-online/owned_text.hpp"

namespace {
// Keep-alive interval in ms, from the original's comparison constant.
constexpr std::int32_t kKeepAliveIntervalMs = 90000;

// The original checks only that the array is allocated and the index is not negative.
// The port also stops at the end of the vector, which the original does not check.
template <typename T>
bool ElementPresent(const std::vector<T>& list, std::int32_t index) {
    return index >= 0 && static_cast<std::size_t>(index) < list.size();
}
}  // namespace

// 0x8333b4 _ZN14GLXPlayerLogin13getProductGGIEi
std::int32_t GLXPlayerLogin::getProductGGI(std::int32_t index) const {
    if (ElementPresent(productGgi_, index)) {
        return productGgi_[static_cast<std::size_t>(index)];
    }
    return -1;
}

// 0x8333d8 _ZN14GLXPlayerLogin12getProductIDEi
std::int32_t GLXPlayerLogin::getProductID(std::int32_t index) const {
    if (ElementPresent(productId_, index)) {
        return productId_[static_cast<std::size_t>(index)];
    }
    return -1;
}

// 0x8333fc _ZN14GLXPlayerLogin14getProductNameEi
const char* GLXPlayerLogin::getProductName(std::int32_t index) const {
    if (ElementPresent(productName_, index)) {
        return productName_[static_cast<std::size_t>(index)].get();
    }
    return nullptr;
}

// 0x834bd4 _ZN14GLXPlayerLoginC1Ev, 0x834c80 _ZN14GLXPlayerLoginC2Ev
GLXPlayerLogin::GLXPlayerLogin() {
    GLXPlayerWebComponent::LoadConfig();
    requestClient_ = std::make_unique<GLXPlayerHttp>(string10_.get(), string18_.get(), string14_.get());
}

// 0x833a84 _ZN14GLXPlayerLogin22processApplePushServerEPc
// The original fills fixed buffers (0x20 for the addresses, 0x100 for the PEM paths and the
// password). The port keeps each whole field. The fields are: 0 address, 1 port, 2 feedback
// address, 3 feedback port, 4 public PEM, 5 private key PEM, 6 password.
void GLXPlayerLogin::processApplePushServer(char* text) {
    if (text == nullptr || std::strlen(text) == 0) {
        return;
    }
    apnsIp_ = GLXCopy(GLXField(text, 0, '|'));
    apnsPort_ = std::atoi(GLXField(text, 1, '|').c_str());
    apnsFeedbackIp_ = GLXCopy(GLXField(text, 2, '|'));
    apnsFeedbackPort_ = std::atoi(GLXField(text, 3, '|').c_str());
    apnsPublicPem_ = GLXCopy(GLXField(text, 4, '|'));
    apnsPrivateKeyPem_ = GLXCopy(GLXField(text, 5, '|'));
    apnsPrivateKeyPassword_ = GLXCopy(GLXField(text, 6, '|'));
}

// 0x8344a0 _ZN14GLXPlayerLogin21processGetProductInfoEPc
// The pseudocode's product count is 1 plus the number of '|' separators. Each record is
// "ggi^id^name". The original allocates the id and name arrays but writes the GGI array
// through a pointer that it never allocates, so the port allocates all three.
void GLXPlayerLogin::processGetProductInfo(char* text) {
    if (text == nullptr || std::strlen(text) == 0) {
        return;
    }
    clearProductInfo();
    std::int32_t count = 1;
    for (const char* p = text; *p != '\0'; ++p) {
        if (*p == '|') {
            ++count;
        }
    }
    productCount_ = count;
    const auto n = static_cast<std::size_t>(count);
    productGgi_.assign(n, 0);
    productId_.assign(n, 0);
    productName_.clear();
    productName_.resize(n);
    for (std::size_t i = 0; i < n; ++i) {
        const std::string record = GLXField(text, static_cast<std::int32_t>(i), '|');
        productGgi_[i] = std::atoi(GLXField(record.c_str(), 0, '^').c_str());
        productId_[i] = std::atoi(GLXField(record.c_str(), 1, '^').c_str());
        productName_[i] = GLXCopy(GLXField(record.c_str(), 2, '^'));
    }
}

// 0x8342f0 _ZN14GLXPlayerLogin15OnUpdateFailureEi
bool GLXPlayerLogin::OnUpdateFailure(std::int32_t code) {
    const std::int32_t detail = GetNextResponseIntToken();
    if (code == 11 && detail == 48 && IsNextResponseStringToken("u")) {
        char token[0x1000] = {};
        uErrorToken_ = GLXCopy(GetNextResponseToken(token));
    }
    if (observer_ != nullptr) {
        observer_->OnRequestFailure(code, detail);
    }
    return true;
}

// 0x834658 _ZN14GLXPlayerLogin15OnUpdateSuccessEi
// The login reply (kind 15) is "u|UID|t|time|[un|..|][n|..|][gct|..|]". Kinds 16, 83 and 95
// read their own fields, and kind 17 is a keep-alive reply that is passed to the observer.
void GLXPlayerLogin::OnUpdateSuccess(std::int32_t arg) {
    char token[0x1000] = {};
    const std::string text = cursor_ != nullptr ? cursor_ : "";
    if (arg != 15) {
        switch (arg) {
            case 17:
                keepAliveEnabled_ = false;
                if (observer_ != nullptr) {
                    observer_->OnRequestSuccess(17, const_cast<char*>(text.c_str()), static_cast<std::int32_t>(text.size()));
                }
                return;
            case 16:
                GetNextResponseToken(token);                       // the first token is skipped
                loginTime_ = std::atoi(GetNextResponseToken(token));
                break;
            case 83: {
                std::string copy = text;
                processApplePushServer(copy.data());
                break;
            }
            case 95: {
                std::string copy = text;
                processGetProductInfo(copy.data());
                break;
            }
            default:
                break;
        }
        GLXPlayerWebComponent::OnUpdateSuccess(arg);
        return;
    }

    if (!IsNextResponseStringToken("u")) {
        if (observer_ != nullptr) {
            observer_->OnRequestFailure(15, 40);
        }
        return;
    }
    SetUID(GetNextResponseToken(token));
    if (!IsNextResponseStringToken("t")) {
        if (observer_ != nullptr) {
            observer_->OnRequestFailure(15, 40);
        }
        return;
    }
    loginTime_ = std::atoi(GetNextResponseToken(token));
    if (IsNextResponseStringToken("un")) {
        unToken_ = GLXCopy(GetNextResponseToken(token));
    }
    if (IsNextResponseStringToken("n")) {
        nickName_ = GLXCopy(GetNextResponseToken(token));
    }
    if (IsNextResponseStringToken("gct")) {
        gctToken_ = GLXCopy(GetNextResponseToken(token));
    }
    keepAliveEnabled_ = true;
    if (observer_ != nullptr) {
        const char* rest = cursor_ != nullptr ? cursor_ : "";
        observer_->OnRequestSuccess(15, const_cast<char*>(rest), static_cast<std::int32_t>(std::strlen(rest)));
    }
}

// 0x83341c _ZN14GLXPlayerLogin19ShouldSendKeepAliveEv
bool GLXPlayerLogin::ShouldSendKeepAlive() const {
    if (!keepAliveEnabled_) {
        return false;
    }
    const std::int32_t now = static_cast<std::int32_t>(XP_API_GET_TIME());
    return kKeepAliveIntervalMs < now - lastKeepAliveMs_;
}

void GLXPlayerLogin::SetAPNSIPForTest(const char* value) {
    if (value == nullptr || std::strlen(value) == 0) {
        apnsIp_.reset();
        return;
    }
    apnsIp_.reset(new char[std::strlen(value) + 1]);
    std::strcpy(apnsIp_.get(), value);
}

void GLXPlayerLogin::SetProductsForTest(std::vector<std::int32_t> ggis, std::vector<std::int32_t> ids,
                                        const std::vector<std::string>& names) {
    productCount_ = static_cast<std::int32_t>(ggis.size());
    productGgi_ = std::move(ggis);
    productId_ = std::move(ids);
    productName_.clear();
    for (const std::string& name : names) {
        productName_.push_back(GLXCopy(name));
    }
}
