import QtQuick.Layouts 1.4
import QtQuick 2.4
import QtQuick.Controls 2.0
import org.kde.kirigami 2.5 as Kirigami
import org.kde.plasma.networkmanagement 0.2 as PlasmaNM
import Mycroft 1.0 as Mycroft

Mycroft.Delegate {
    id: mainLoaderView
    anchors.fill: parent
    skillBackgroundSource: Qt.resolvedUrl("bg.png")
    property var pageToLoad: sessionData.state
    
    Loader {
        id: rootLoader
        anchors.fill: parent
    }
    
    onPageToLoadChanged: {
        console.log(sessionData.state)
        rootLoader.setSource(sessionData.state + ".qml")
    }
}
