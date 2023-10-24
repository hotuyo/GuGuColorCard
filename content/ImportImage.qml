//ImportImage.qml
import QtQuick
import QtQuick.Dialogs
import QtQuick.Controls
import ImageAnalyse

Item {
    id: import_image
    property var colors: ["white", "white", "white", "white", "white", "white"]
    property var pending_picture_
    property var processed_picture_
    anchors.fill: parent
    Rectangle {
        id: backgroundColor
        anchors.left: parent.left
        height: parent.height - 40
        width: parent.width
        color: "#cccccc"
        Text {
            id: tip_text
            anchors.centerIn: backgroundColor
            text: "+"
            font.pixelSize: 40
        }

        MouseArea {
            id: backgroundColorMouseArea
            anchors.fill: backgroundColor
            onClicked: fileDialog.open()
            enabled: true
            z: 3
        }
        Image {
            id: openTickImage
            anchors.centerIn: backgroundColor
            width: 30
            height: 30
            visible: true
        }

        Image {
            id: myImage
            anchors.fill: backgroundColor
            visible: false
            fillMode: Image.PreserveAspectFit
        }
    }
    Row {
        id: bottom_area
        anchors.top: backgroundColor.bottom
        height: 40
        width: import_image.width
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 200
        Row {
            id: button_area_button
            Button {
                id: pickup_button
                text: qsTr("distill")
            }
            Button {
                id: output_button
                text: qsTr("output")
                onClicked: imageAnalyse.SaveImage(processed_picture_)
            }
            Button {
                id: change_button
                text: qsTr("switch")
                onClicked: {
                    fileDialog.open()
                }
            }
            // Button Component
            Component.onCompleted: {
                pickup_button.clicked.connect(function () {
                    if (myImage.source == "") {
                        messageDialog.open()
                    } else {
                        import_image.colors = imageAnalyse.GrabPixelBit(
                                    myImage.source)
                        if (import_image.colors.length == color_item.count) {
                            for (var i = 0; i < color_item.count; ++i) {
                                color_item.itemAt(
                                            i).color = import_image.colors[i]
                            }
                            imageAnalyse.ComposeImage(pending_picture_,
                                                      import_image.colors)
                        } else {
                            console.log("Error: The number of colors does not match")
                        }
                    }
                })
            }
            // Button Component
        }

        // Color range
        Row {
            id: color_area
            Repeater {
                id: color_item
                model: 6
                delegate: Rectangle {
                    width: 32
                    height: 32
                    radius: 16
                    color: colors[index]
                    MouseArea {
                        id: color_show
                        anchors.fill: parent
                        hoverEnabled: true
                        ToolTip {
                            id: tool_tip
                            visible: color_show.containsMouse
                            text: "Color value: " + color
                            background: Rectangle {
                                color: "#ffffff"
                            }
                        }
                    }
                }
            }
        }
    }
    // open image directory
    FileDialog {
        id: fileDialog
        nameFilters: ["Images (*.jpg *.jpeg *.png)"]
        onAccepted: {
            myImage.visible = true
            openTickImage.visible = false
            myImage.source = selectedFile
            backgroundColorMouseArea.enabled = false
            pending_picture_ = imageAnalyse.CreateQImage(selectedFile)
        }
    }

    // Image processing class
    ImageAnalyse {
        id: imageAnalyse
    }

    // Dialog
    Dialog {
        id: messageDialog
        title: "error:"
        Label {
            text: "No picture selected"
        }
    }

    //  Connect the signal
    Connections {
        target: imageAnalyse
        onSignal_ComposeImage: image_path => {
                                   myImage.source = ""
                                   myImage.source = image_path
                               }
    }
    Connections {
        target: imageAnalyse
        onSignal_emitComposeImage: emit_image => {
                                       import_image.processed_picture_ = emit_image
                                   }
    }
}
