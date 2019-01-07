import QtQuick.Layouts 1.4
import QtQuick 2.4
import QtQuick.Controls 2.0
import org.kde.kirigami 2.4 as Kirigami

import Mycroft 1.0 as Mycroft
import org.kde.lottie 1.0

Item {
    skillBackgroundSource: Qt.resolvedUrl('bg.png')
    ColumnLayout {
        id: grid
        Layout.fillWidth: true
        width: parent.width
        spacing: Kirigami.Units.largeSpacing

        Item {
            height: Kirigami.Units.largeSpacing * 5
        }
           
        LottieAnimation {
            id: thinking
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.preferredWidth: Kirigami.Units.gridUnit * 14
            Layout.preferredHeight: Kirigami.Units.gridUnit * 14
            source: Qt.resolvedUrl("thinking.json")
            loops: Animation.Infinite
            fillMode: Image.PreserveAspectFit
            running: true
                    
            onStatusChanged: {
                console.log(thinking.status, errorString)
            }
        }        
    }
}
