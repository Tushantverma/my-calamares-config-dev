/* === This file is part of Calamares - <https://calamares.io> ===
 *
 *   SPDX-FileCopyrightText: 2015 Teo Mrnjavac <teo@kde.org>
 *   SPDX-FileCopyrightText: 2018 Adriaan de Groot <groot@kde.org>
 *   SPDX-License-Identifier: GPL-3.0-or-later
 *
 *   Calamares is Free Software: see the License-Identifier above.
 *
 */

import QtQuick 2.0;
import calamares.slideshow 1.0;

Presentation
{
    id: presentation

    function nextSlide() {
        console.log("QML Component (default slideshow) Next slide");
        presentation.goToNextSlide();
    }

    Timer {
        id: advanceTimer
        interval: 5000
        running: presentation.activatedInCalamares
        repeat: true
        onTriggered: nextSlide()
    }

    Slide {

    anchors.fill: parent
    anchors.verticalCenterOffset: 0

    Image {
        id: background1
        source: "01welcome.png"
        width: parent.width; height: parent.height
        horizontalAlignment: Image.AlignCenter
        verticalAlignment: Image.AlignTop
        fillMode: Image.Stretch
        anchors.fill: parent
    	}

    Text {
        anchors.horizontalCenter: background.horizontalCenter
        anchors.top: background.bottom
        text: "01welcome"
        wrapMode: Text.WordWrap
        width: presentation.width
        horizontalAlignment: Text.Center
    	}
    }

    Slide {

    anchors.fill: parent
    anchors.verticalCenterOffset: 0

    Image {
        id: background2
        source: "02intro.png"
        width: parent.width; height: parent.height
        horizontalAlignment: Image.AlignCenter
        verticalAlignment: Image.AlignTop
        fillMode: Image.Stretch
        anchors.fill: parent
    	}

    Text {
        anchors.horizontalCenter: background.horizontalCenter
        anchors.top: background.bottom
        text: "02intro"
        wrapMode: Text.WordWrap
        width: presentation.width
        horizontalAlignment: Text.Center
    	}
    }




    Slide {

    anchors.fill: parent
    anchors.verticalCenterOffset: 0

    Image {
        id: background3
        source: "03intro.png"
        width: parent.width; height: parent.height
        horizontalAlignment: Image.AlignCenter
        verticalAlignment: Image.AlignTop
        fillMode: Image.Stretch
        anchors.fill: parent
        }

    Text {
        anchors.horizontalCenter: background.horizontalCenter
        anchors.top: background.bottom
        text: "03intro"
        wrapMode: Text.WordWrap
        width: presentation.width
        horizontalAlignment: Text.Center
        }
    }

    Slide {

    anchors.fill: parent
    anchors.verticalCenterOffset: 0

    Image {
        id: background4
        source: "04intro.png"
        width: parent.width; height: parent.height
        horizontalAlignment: Image.AlignCenter
        verticalAlignment: Image.AlignTop
        fillMode: Image.Stretch
        anchors.fill: parent
        }

    Text {
        anchors.horizontalCenter: background.horizontalCenter
        anchors.top: background.bottom
        text: "04intro"
        wrapMode: Text.WordWrap
        width: presentation.width
        horizontalAlignment: Text.Center
        }
    }

    Slide {

    anchors.fill: parent
    anchors.verticalCenterOffset: 0

    Image {
        id: background5
        source: "05intro.png"
        width: parent.width; height: parent.height
        horizontalAlignment: Image.AlignCenter
        verticalAlignment: Image.AlignTop
        fillMode: Image.Stretch
        anchors.fill: parent
        }

    Text {
        anchors.horizontalCenter: background.horizontalCenter
        anchors.top: background.bottom
        text: "05intro"
        wrapMode: Text.WordWrap
        width: presentation.width
        horizontalAlignment: Text.Center
        }
    }

    Slide {

    anchors.fill: parent
    anchors.verticalCenterOffset: 0

    Image {
        id: background6
        source: "06intro.png"
        width: parent.width; height: parent.height
        horizontalAlignment: Image.AlignCenter
        verticalAlignment: Image.AlignTop
        fillMode: Image.Stretch
        anchors.fill: parent
        }

    Text {
        anchors.horizontalCenter: background.horizontalCenter
        anchors.top: background.bottom
        text: "06intro"
        wrapMode: Text.WordWrap
        width: presentation.width
        horizontalAlignment: Text.Center
        }
    }

    Slide {

    anchors.fill: parent
    anchors.verticalCenterOffset: 0

    Image {
        id: background7
        source: "07intro.png"
        width: parent.width; height: parent.height
        horizontalAlignment: Image.AlignCenter
        verticalAlignment: Image.AlignTop
        fillMode: Image.Stretch
        anchors.fill: parent
        }

    Text {
        anchors.horizontalCenter: background.horizontalCenter
        anchors.top: background.bottom
        text: "07intro"
        wrapMode: Text.WordWrap
        width: presentation.width
        horizontalAlignment: Text.Center
        }
    }

    Slide {

    anchors.fill: parent
    anchors.verticalCenterOffset: 0

    Image {
        id: background8
        source: "08intro.png"
        width: parent.width; height: parent.height
        horizontalAlignment: Image.AlignCenter
        verticalAlignment: Image.AlignTop
        fillMode: Image.Stretch
        anchors.fill: parent
        }

    Text {
        anchors.horizontalCenter: background.horizontalCenter
        anchors.top: background.bottom
        text: "08intro"
        wrapMode: Text.WordWrap
        width: presentation.width
        horizontalAlignment: Text.Center
        }
    }

    Slide {

    anchors.fill: parent
    anchors.verticalCenterOffset: 0

    Image {
        id: background9
        source: "09intro.png"
        width: parent.width; height: parent.height
        horizontalAlignment: Image.AlignCenter
        verticalAlignment: Image.AlignTop
        fillMode: Image.Stretch
        anchors.fill: parent
        }

    Text {
        anchors.horizontalCenter: background.horizontalCenter
        anchors.top: background.bottom
        text: "09intro"
        wrapMode: Text.WordWrap
        width: presentation.width
        horizontalAlignment: Text.Center
        }
    }


    // When this slideshow is loaded as a V1 slideshow, only
    // activatedInCalamares is set, which starts the timer (see above).
    //
    // In V2, also the onActivate() and onLeave() methods are called.
    // These example functions log a message (and re-start the slides
    // from the first).
    function onActivate() {
        console.log("QML Component (default slideshow) activated");
        presentation.currentSlide = 0;
    }

    function onLeave() {
        console.log("QML Component (default slideshow) deactivated");
    }

}
