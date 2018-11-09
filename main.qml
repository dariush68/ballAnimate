import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.4

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello Dariush")

    MyAnim{
        id: myAnim
        width: parent.width * 0.5
        height: parent.height * 0.5
        anchors.centerIn: parent
    }

    RowLayout{
        width: parent.width

        Button{
            text: "start"

            onClicked: {
                myAnim.starta()
            }
        }
        Button{
            text: "stop"

            onClicked: {
                myAnim.stopa()
            }
        }

    }
}
