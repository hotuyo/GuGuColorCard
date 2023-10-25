//ImportImage.qml
// This is a QML document that process images. It is the main part of the program
import QtQuick
import QtQuick.Dialogs
import QtQuick.Controls
import ImageAnalyse

Item {
    id: import_image
    property var colors_: ["white", "white", "white", "white", "white", "white"]
    property var pending_picture_
    property var processed_picture_
    anchors.fill: parent

    Rectangle {
        id: background_color
        anchors.left: parent.left
        height: parent.height - 40
        width: parent.width
        color: "#cccccc"
        Text {
            id: tip_text
            anchors.centerIn: background_color
            text: "+"
            font.pixelSize: 40
        }
        MouseArea {
            id: background_color_mouse_area
            anchors.fill: background_color
            enabled: true
            z: 3
        }
        Image {
            id: open_tick_image
            anchors.centerIn: background_color
            width: 30
            height: 30
            visible: true
        }

        Image {
            id: editing_picture
            anchors.fill: background_color
            visible: false
            fillMode: Image.PreserveAspectFit
        }
    }
    Row {
        id: bottom_area
        anchors.top: background_color.bottom
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
            }
            Button {
                id: change_button
                text: qsTr("change")
            }
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
                    color: colors_[index]
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

    // Image processing class
    ImageAnalyse {
        id: image_analyse
    }

    // Dialog
    Dialog {
        id: messageDialog
        title: "error:"
        Label {
            text: "No picture selected!"
        }
    }
    Dialog {
        id: output_message
        title: "error:"
        Label {
            text: "Missing picture!"
        }
    }

    //  Connect the signal
    Connections {
        target: image_analyse
        onSignal_ComposeImage: image_path => {
                                   editing_picture.source = ""
                                   editing_picture.source = image_path
                               }
    }
    Connections {
        target: image_analyse
        onSignal_EmitComposeImage: emit_image => {
                                       import_image.processed_picture_ = emit_image
                                   }
    }
    Connections {
        target: background_color_mouse_area
        onClicked: {
            editing_picture.source = image_analyse.OpenImageFileDialog()
            if (editing_picture.source != "") {
                editing_picture.visible = true
                open_tick_image.visible = false
                background_color_mouse_area.enabled = false
                if (pending_picture_ == null) {
                    pending_picture_ = image_analyse.CreateQImage(
                                editing_picture.source)
                }
            }
        }
    }
    Connections {
        target: pickup_button
        onClicked: {
            if (editing_picture.source == "") {
                messageDialog.open()
            } else {
                import_image.colors_ = image_analyse.GrabPixelBit(
                            pending_picture_)
                for (var i = 0; i < color_item.count; ++i) {
                    color_item.itemAt(i).color = import_image.colors_[i]
                }
                image_analyse.ComposeImage(pending_picture_,
                                           import_image.colors_)
            }
        }
    }
    Connections {
        target: output_button
        onClicked: {
            if (processed_picture_ != null) {
                image_analyse.SaveImage(processed_picture_)
            } else {
                output_message.open()
            }
        }
    }
    Connections {
        target: change_button
        onClicked: {
            if (editing_picture.source != "") {
                var changed_path = image_analyse.OpenImageFileDialog()
                if (changed_path != "") {
                    editing_picture.source = ""
                    editing_picture.source = changed_path
                    processed_picture_ = null
                    pending_picture_ = image_analyse.CreateQImage(
                                editing_picture.source)
                }
            }
        }
    }
}
