// Scene files and mesh loading of glitch::scene::CSceneManager (canonical class: scene/CSceneManager.hpp): saveScene, loadScene,
// the XML scene element reader and writer, and getMesh. Scene owner pass (R3b); it replaces the stubs that lived in
// src/scene/CSceneManager_virtuals.cpp.
//
// The scene file is XML with short element names (the manager keeps them as wide strings at +0x178, +0x1c0 and +0x208):
//   <i> .. </i>           the scene (the root node); its children are <n> elements
//   <n t="type"> .. </n>  a node of the type the factories name; children are further <n> elements
//   <attributes>          inside a node: the node's attribute set (an XML attribute writer's output)
//   <m> .. </m>           the node's materials (the writer writes only the element; the reader skips the contents)
//   <a> .. </a>           the node's animators, one <attributes> per animator with "Type" naming the animator
//   <u> .. </u>           user data from the ISceneUserDataSerializer
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"

#include <string>

#include "glitch-core-io/core/strings.hpp"
#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-core-io/io/xml_attributes.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/scene/IMesh.hpp"
#include "glitch-scene-collada-gui/scene/IMeshCache.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNodeAnimator.hpp"
#include "glitch-scene-collada-gui/scene/SceneFactories.hpp"

namespace glitch::scene {

namespace {

using WideReader = io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>;

// The scene files are read through the file system's XML reader, which is the port's CXMLReaderImpl<wchar_t> (the attribute
// readers take that type, where the original takes the interface).
WideReader* concrete(io::IXMLReader* reader) {
    return static_cast<WideReader*>(reader);
}

bool nodeIs(io::IXMLReader* reader, const std::wstring& name) {
    return name == reader->getNodeName();
}

void lowerCase(std::string& text) {
    for (char& c : text) {
        if (c >= 'A' && c <= 'Z') c = static_cast<char>(c + 32);
    }
}

}  // namespace

// 0x589364 _ZN6glitch5scene13CSceneManager8saveSceneEPKcPNS0_24ISceneUserDataSerializerE
// Creates the file through the file system (not appending), saves into it (vptr+0x78), and drops the file.
bool CSceneManager::saveScene(const char* fileName, ISceneUserDataSerializer* userData) {
    io::IWriteFile* file = fileSystem->createAndWriteFile(fileName, false);
    if (file == nullptr) {
        return false;
    }
    const bool result = saveScene(file, userData);
    file->drop();
    return result;
}

// 0x58d36c _ZN6glitch5scene13CSceneManager8saveSceneEPNS_2io10IWriteFileEPNS0_24ISceneUserDataSerializerE
// Creates the XML writer over the file, writes the header and the root node tree, and drops the writer.
bool CSceneManager::saveScene(io::IWriteFile* file, ISceneUserDataSerializer* userData) {
    if (file == nullptr) {
        return false;
    }
    io::IXMLWriter* writer = fileSystem->createXMLWriter(file);
    if (writer == nullptr) {
        return false;
    }
    writer->writeXMLHeader();
    writeSceneNode(writer, rootNode, userData);
    writer->drop();
    return true;
}

// 0x589b84 _ZN6glitch5scene13CSceneManager8loadSceneEPKcPNS0_24ISceneUserDataSerializerE
// Opens the file through the file system; on failure logs "Unable to open scene file" with the name and returns false.
bool CSceneManager::loadScene(const char* fileName, ISceneUserDataSerializer* userData) {
    io::IReadFile* file = fileSystem->createAndOpenFile(fileName);
    if (file == nullptr) {
        os::Printer::log("Unable to open scene file", fileName, ELL_ERROR);
        return false;
    }
    const bool result = loadScene(file, userData);
    file->drop();
    return result;
}

// 0x58e768 _ZN6glitch5scene13CSceneManager8loadSceneEPNS_2io9IReadFileEPNS0_24ISceneUserDataSerializerE
// Opens an XML reader over the file and reads scene elements until the reader is exhausted; without a file or with a file that is not
// XML the matching error is logged and false returned.
bool CSceneManager::loadScene(io::IReadFile* file, ISceneUserDataSerializer* userData) {
    if (file == nullptr) {
        os::Printer::log("Unable to open scene file", ELL_ERROR);
        return false;
    }
    io::IXMLReader* reader = fileSystem->createXMLReader(file);
    if (reader == nullptr) {
        os::Printer::log("Scene is not a valid XML file", file->getFileName(), ELL_ERROR);
        return false;
    }
    while (reader->read()) {
        readSceneNode(reader, nullptr, userData);
    }
    reader->drop();
    return true;
}

// 0x58e1e0 _ZN6glitch5scene13CSceneManager13readSceneNodeEPN5glitch2io12IIrrXMLReaderIwNS_17IReferenceCountedEEEPNS0_10ISceneNodeEPNS0_24ISceneUserDataSerializerE
// Reads one scene element and what is inside it. With a parent the current element must be <n>: its type attribute "t" is given to
// the node factories (newest first) until one makes the node, under the parent; an unknown type is logged ("Could not create scene
// node of unknown type") and the contents are read into nothing. Without a parent the current element must be <i>, and the node is
// the root. A node that exists is announced to the serializer (onCreateNode) once its contents are read. The contents: <attributes>
// go to the node's deserializeAttributes, <m>, <a> and <u> to their readers, <n> and <i> elements recurse with this node as the
// parent, anything else is logged ("Found unknown element in irrlicht scene file"); the matching end element returns.
void CSceneManager::readSceneNode(io::IXMLReader* reader, ISceneNode* parent, ISceneUserDataSerializer* userData) {
    if (reader == nullptr) {
        return;
    }
    ISceneNode* node = nullptr;
    bool announce = false;
    if (parent != nullptr) {
        if (nodeIs(reader, nodeElementName)) {
            const std::string typeName = core::stringw2stringc(reader->getAttributeValue(typeAttributeName.c_str()));
            for (std::size_t i = sceneNodeFactories.size(); i-- > 0 && node == nullptr;) {
                node = sceneNodeFactories[i]->addSceneNode(typeName.c_str(), parent);
            }
            if (node == nullptr) {
                os::Printer::log("Could not create scene node of unknown type", typeName.c_str(), ELL_INFORMATION);
            }
            announce = node != nullptr && userData != nullptr;
        }
    } else if (nodeIs(reader, rootElementName)) {
        node = rootNode;
        announce = node != nullptr && userData != nullptr;
    }
    while (reader->read()) {
        const int type = reader->getNodeType();
        if (type == 1) {
            if (nodeIs(reader, L"attributes")) {
                io::IAttributes* attributesIn = fileSystem->createEmptyAttributes(driver);
                io::CXMLAttributesReader attributesReader(concrete(reader), true, nullptr);
                attributesReader.read(attributesIn);
                if (node != nullptr) {
                    node->deserializeAttributes(attributesIn, nullptr);
                }
                attributesIn->drop();
            } else if (nodeIs(reader, L"m")) {
                readMaterials(reader, node);
            } else if (nodeIs(reader, L"a")) {
                readAnimators(reader, node);
            } else if (nodeIs(reader, L"u")) {
                readUserData(reader, node, userData);
            } else if (nodeIs(reader, nodeElementName) || nodeIs(reader, rootElementName)) {
                readSceneNode(reader, node, userData);
            } else {
                os::Printer::log("Found unknown element in irrlicht scene file", core::stringw2stringc(reader->getNodeName()).c_str(),
                                 ELL_INFORMATION);
            }
        } else if (type == 2) {
            if (nodeIs(reader, nodeElementName) || nodeIs(reader, rootElementName)) {
                break;
            }
        }
    }
    if (announce) {
        userData->onCreateNode(node);
    }
}

// 0x58c4a4 _ZN6glitch5scene13CSceneManager12readUserDataEPN5glitch2io12IIrrXMLReaderIwNS_17IReferenceCountedEEEPNS0_10ISceneNodeEPNS0_24ISceneUserDataSerializerE
// Reads <attributes> elements until </u>; each is read into a new attribute set and, when there is a serializer and a node, given to
// the serializer's onReadUserData.
void CSceneManager::readUserData(io::IXMLReader* reader, ISceneNode* node, ISceneUserDataSerializer* userData) {
    while (reader->read()) {
        const int type = reader->getNodeType();
        if (type == 1) {
            if (nodeIs(reader, L"attributes")) {
                io::IAttributes* attributesIn = fileSystem->createEmptyAttributes(driver);
                io::CXMLAttributesReader attributesReader(concrete(reader), false, nullptr);
                attributesReader.read(attributesIn);
                if (userData != nullptr && node != nullptr) {
                    userData->onReadUserData(node, attributesIn);
                }
                attributesIn->drop();
            }
        } else if (type == 2) {
            if (nodeIs(reader, L"u")) {
                return;
            }
        }
    }
}

// 0x58c644 _ZN6glitch5scene13CSceneManager13readAnimatorsEPN5glitch2io12IIrrXMLReaderIwNS_17IReferenceCountedEEEPNS0_10ISceneNodeE
// Reads <attributes> elements until </a>; with a node, the "Type" string of each is given to the animator factories, in order,
// until one makes the animator, which then reads the attribute set and is dropped.
void CSceneManager::readAnimators(io::IXMLReader* reader, ISceneNode* node) {
    while (reader->read()) {
        const int type = reader->getNodeType();
        if (type == 1) {
            if (nodeIs(reader, L"attributes")) {
                io::IAttributes* attributesIn = fileSystem->createEmptyAttributes(driver);
                io::CXMLAttributesReader attributesReader(concrete(reader), false, nullptr);
                attributesReader.read(attributesIn);
                if (node != nullptr) {
                    const std::string typeName = attributesIn->getString("Type");
                    ISceneNodeAnimator* animator = nullptr;
                    for (std::size_t i = 0; i < sceneNodeAnimatorFactories.size(); ++i) {
                        animator = sceneNodeAnimatorFactories[i]->createSceneNodeAnimator(typeName.c_str(), node);
                        if (animator != nullptr) break;
                    }
                    if (animator != nullptr) {
                        animator->deserializeAttributes(attributesIn, nullptr);
                        animator->drop();
                    }
                }
                attributesIn->drop();
            }
        } else if (type == 2) {
            if (nodeIs(reader, L"a")) {
                return;
            }
        }
    }
}

// 0x58c8dc _ZN6glitch5scene13CSceneManager13readMaterialsEPN5glitch2io12IIrrXMLReaderIwNS_17IReferenceCountedEEEPNS0_10ISceneNodeE
// Reads <attributes> elements until </m>. The materials are not applied: for a node the original only asks it for its material count
// (vptr+0x88) and discards the answer.
void CSceneManager::readMaterials(io::IXMLReader* reader, ISceneNode* node) {
    while (reader->read()) {
        const int type = reader->getNodeType();
        if (type == 1) {
            if (nodeIs(reader, L"attributes")) {
                io::IAttributes* attributesIn = fileSystem->createEmptyAttributes(driver);
                io::CXMLAttributesReader attributesReader(concrete(reader), false, nullptr);
                attributesReader.read(attributesIn);
                if (node != nullptr) {
                    node->getMaterialCount();
                }
                attributesIn->drop();
            }
        } else if (type == 2) {
            if (nodeIs(reader, L"m")) {
                return;
            }
        }
    }
}

// 0x58cdd4 _ZN6glitch5scene13CSceneManager14writeSceneNodeEPNS_2io10IXMLWriterEPKNS0_10ISceneNodeEPNS0_24ISceneUserDataSerializerE
// Writes the node and what hangs off it: the element (<i> for the root, else <n t="typeName">), the node's attributes, an <m>
// element (empty: the materials are not written), the animators as <a> with one attribute set each ("Type" plus the animator's own),
// the serializer's user data as <u>, then the children, then the closing tag. Debug objects are skipped. A line break follows each
// element as in the original.
void CSceneManager::writeSceneNode(io::IXMLWriter* writer, const ISceneNode* node, ISceneUserDataSerializer* userData) {
    if (writer == nullptr || node == nullptr || node->isDebugObject()) {
        return;
    }
    const wchar_t* closingName;
    if (node == rootNode) {
        closingName = rootElementName.c_str();
        writer->writeElement(closingName, false, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr,
                             nullptr);
    } else {
        closingName = nodeElementName.c_str();
        const char* typeNarrow = getSceneNodeTypeName(node->getType());
        const std::wstring typeName = core::stringc2stringw(typeNarrow);
        writer->writeElement(closingName, false, typeAttributeName.c_str(), typeName.c_str(), nullptr, nullptr, nullptr, nullptr,
                             nullptr, nullptr, nullptr, nullptr);
    }
    writer->writeLineBreak();
    writer->writeLineBreak();
    io::IAttributes* attributesOut = fileSystem->createEmptyAttributes(driver);
    node->serializeAttributes(attributesOut, nullptr);
    if (attributesOut->getAttributeCount() != 0) {
        io::CXMLAttributesWriter attributesWriter(writer, true, nullptr);
        attributesWriter.write(attributesOut);
        writer->writeLineBreak();
    }
    if (node->getMaterialCount() != 0 && driver != nullptr) {
        writer->writeElement(L"m", false, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr);
        writer->writeLineBreak();
        writer->writeClosingTag(L"m");
        writer->writeLineBreak();
    }
    const auto& animators = node->getAnimators();
    if (!animators.empty()) {
        writer->writeElement(L"a", false, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr);
        writer->writeLineBreak();
        for (ISceneNodeAnimator* animator : animators) {
            attributesOut->clear();
            attributesOut->addString("Type", getAnimatorTypeName(animator->getType()), false);
            animator->serializeAttributes(attributesOut, nullptr);
            io::CXMLAttributesWriter attributesWriter(writer, true, nullptr);
            attributesWriter.write(attributesOut);
        }
        writer->writeClosingTag(L"a");
        writer->writeLineBreak();
    }
    if (userData != nullptr) {
        io::IAttributes* userAttributes = userData->createUserData(const_cast<ISceneNode*>(node));
        if (userAttributes != nullptr) {
            writer->writeLineBreak();
            writer->writeElement(L"u", false, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr,
                                 nullptr);
            writer->writeLineBreak();
            io::CXMLAttributesWriter userWriter(writer, true, nullptr);
            userWriter.write(userAttributes);
            writer->writeClosingTag(L"u");
            writer->writeLineBreak();
            writer->writeLineBreak();
            userAttributes->drop();
        }
    }
    for (ISceneNode* child : node->getChildren()) {
        writeSceneNode(writer, child, userData);
    }
    attributesOut->drop();
    writer->writeClosingTag(closingName);
    writer->writeLineBreak();
    writer->writeLineBreak();
}

// 0x58bdb0 _ZN6glitch5scene13CSceneManager7getMeshEPNS_2io9IReadFileE
// The mesh cache is asked for the file name first. Otherwise the external mesh loaders are tried newest first: the first whose
// isALoadableFileExtension accepts the lower-cased name gets the file (rewound) in createMesh, and a mesh that comes out is cached
// under the file name. "Loaded mesh" or "Could not load mesh, file format seems to be unsupported" is logged with the name.
boost::intrusive_ptr<IAnimatedMesh> CSceneManager::getMesh(io::IReadFile* file) {
    if (file == nullptr) {
        return boost::intrusive_ptr<IAnimatedMesh>();
    }
    std::string lowerName(file->getFileName());
    boost::intrusive_ptr<IAnimatedMesh> mesh = meshCache->getMeshByFilename(file->getFileName());
    if (mesh) {
        return mesh;
    }
    lowerCase(lowerName);
    for (std::size_t i = externalMeshLoaders.size(); i-- > 0;) {
        if (externalMeshLoaders[i]->isALoadableFileExtension(lowerName.c_str())) {
            file->seek(0, false);
            mesh = externalMeshLoaders[i]->createMesh(file);
            if (mesh) {
                meshCache->addMesh(file->getFileName(), mesh);
                break;
            }
        }
    }
    if (mesh) {
        os::Printer::log("Loaded mesh", file->getFileName(), ELL_INFORMATION);
    } else {
        os::Printer::log("Could not load mesh, file format seems to be unsupported", file->getFileName(), ELL_ERROR);
    }
    return mesh;
}

// 0x58e824 _ZN6glitch5scene13CSceneManager7getMeshEPKc
// As above by name: after the cache the file is opened through the file system ("Could not load mesh, because file could not be
// opened." when it cannot), run through the loaders, dropped, and the outcome logged.
boost::intrusive_ptr<IAnimatedMesh> CSceneManager::getMesh(const char* fileName) {
    boost::intrusive_ptr<IAnimatedMesh> mesh = meshCache->getMeshByFilename(fileName);
    if (mesh) {
        return mesh;
    }
    io::IReadFile* file = fileSystem->createAndOpenFile(fileName);
    if (file == nullptr) {
        os::Printer::log("Could not load mesh, because file could not be opened.", fileName, ELL_ERROR);
        return boost::intrusive_ptr<IAnimatedMesh>();
    }
    std::string lowerName(fileName);
    lowerCase(lowerName);
    for (std::size_t i = externalMeshLoaders.size(); i-- > 0;) {
        if (externalMeshLoaders[i]->isALoadableFileExtension(lowerName.c_str())) {
            file->seek(0, false);
            mesh = externalMeshLoaders[i]->createMesh(file);
            if (mesh) {
                meshCache->addMesh(fileName, mesh);
                break;
            }
        }
    }
    file->drop();
    if (mesh) {
        os::Printer::log("Loaded mesh", fileName, ELL_INFORMATION);
    } else {
        os::Printer::log("Could not load mesh, file format seems to be unsupported", fileName, ELL_ERROR);
    }
    return mesh;
}

}  // namespace glitch::scene
