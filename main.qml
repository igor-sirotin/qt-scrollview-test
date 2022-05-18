import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.14

Window {
    id: root

    width: 800
    height: 400
    visible: true
    title: qsTr("ScrollView Test")

    readonly property string imageSource: "https://placekitten.com/400/400"

    GridLayout {
        anchors.fill: parent
        anchors.margins: 10
        columns: 2

        Label {
            Layout.fillWidth: true
            Layout.columnSpan: 2
            horizontalAlignment: Label.AlignHCenter
            font.bold: true
            font.pointSize: 16
            text: "Qt " + qtversion
        }

        GroupBox {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 100
            title: qsTr("Fliackable")

            Flickable {
                anchors.fill: parent
                implicitWidth: contentWidht
                implicitHeight: contentHeight
                contentWidth: delegate1.implicitWidth
                contentHeight: delegate1.implicitHeight
                clip: true

                Image {
                    id: delegate1
                    source: root.imageSource
                }
            }
        }

        GroupBox {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredWidth: 100
            title: qsTr("ScrollView")

            ScrollView {
                anchors.fill: parent
                clip: true

                Image {
                    source: root.imageSource
                }
            }
        }
    }
}
