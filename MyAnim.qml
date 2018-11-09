import QtQuick 2.0

Item {

    signal starta
    onStarta: anim1.restart()

    signal stopa
    onStopa: anim1.stop()

    Rectangle{
        id: myrec

        width: parent.width
        height: parent.height

        color: "blue"

        MouseArea{
            anchors.fill: parent
            onClicked: {
                anim1.restart()
                console.log("click")
            }
        }

    }


    NumberAnimation {
        id: anim1
        loops: Animation.Infinite
        running: false
        target: myrec
        property: "rotation"
        from:0; to: 180
        duration: 2000
        easing.type: Easing.InOutQuad
    }

}
