import QtQuick
import QtQuick.Dialogs
import QtQuick.Controls
import QtMultimedia

ApplicationWindow  {
    width: 600
    height: 400
    visible: true
    header: ToolBar {
        Flow {
            anchors.fill: parent
            ToolButton {
                text: qsTr("Open")
                icon.name: "document-open"
                onClicked: fileOpenDialog.open()
            }
        }
    }

    FileDialog {
        id: fileOpenDialog
        title: "Select an image file"
        // folder: StandardPaths.writableLocation(StandardPaths.DocumentsLocation)
        nameFilters: [
            "Video files (*.mp4 *.avi *.mkv)",
        ]
        onAccepted: {
            console.log("User has selected " + fileOpenDialog.folder);
            player.source = fileOpenDialog.currentFile
            player.play()
        }
    }
    

    MediaPlayer {
        id: player
        // source: "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4"
        audioOutput: AudioOutput {}
        videoOutput: videoOutput
    }

    VideoOutput {
        id: videoOutput
        anchors.fill: parent
        anchors.margins: 20
    }

    // Component.onCompleted: {
    //     player.play()
    // }
}