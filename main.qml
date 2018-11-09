import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello Dariush")

    MyAnim{
        width: parent.width * 0.5
        height: parent.height * 0.5
        anchors.centerIn: parent
    }
}
