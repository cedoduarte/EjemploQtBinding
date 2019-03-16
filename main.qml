import QtQuick 2.11
import QtQuick.Controls 2.4

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    Rectangle {
        id: rect1
        color: "red"
        x: 0
        y: 0
        width: 10
        height: rect2.width
    }

    Rectangle {
        id: rect2
        color: "blue"
        x: 300
        y: 0
        width: 20
        height: 20
    }

    Button {
        x: 200
        y: 300
        text: "AUMENTAR ANCHURA DE AZUL"
        onClicked: {
            rect2.width += 10;
        }
    }

    Button {
        x: 200
        y: 350
        text: "CAMBIAR PROPORCIÓN"
        onClicked: {
            rect1.height = rect2.width * 2;
//            rect1.height = Qt.binding(function() {
//                return rect2.width * 2;
//            });
        }
    }
}
