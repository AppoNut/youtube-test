//
//  MyFloatingPanelLayout.swift
//  youtube_test
//
//  Created by agusev on 02.02.2022.
//

import FloatingPanel

class MyFloatingPanelLayout: FloatingPanelLayout {
    let position: FloatingPanelPosition = .bottom
    let initialState: FloatingPanelState = .tip
    var anchors: [FloatingPanelState: FloatingPanelLayoutAnchoring] {
        return [
            .half: FloatingPanelLayoutAnchor(absoluteInset: 300, edge: .bottom, referenceGuide: .safeArea),
            .tip: FloatingPanelLayoutAnchor(absoluteInset: 56.0, edge: .bottom, referenceGuide: .safeArea),
        ]
    }
}
