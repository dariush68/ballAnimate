import QtQuick 2.0

Item {


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
        running: true
        target: myrec
        property: "rotation"
        from:0; to: 180
        duration: 2000
        easing.type: Easing.InOutQuad
    }

}
