//
//  ViewController.swift
//  youtube_test
//
//  Created by agusev on 31.01.2022.
//

import UIKit
import FloatingPanel
import youtube_ios_player_helper

class ViewController: UIViewController {

    @IBOutlet weak var navBarView: UIView!
    @IBOutlet weak var bottomBarView: UIView!
    @IBOutlet weak var youtubeView: YTPlayerView!
    
    private var fpc: FloatingPanelController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setup()
    }
    
    private func setup() {
        setupViews()
        setupBottomSheet()
        setupYoutube()
    }
    
    private func setupViews() {
        navBarView.backgroundColor = .yellow
        bottomBarView.backgroundColor = .cyan
    }
    
    private func setupBottomSheet() {
        fpc = FloatingPanelController()
        fpc.layout = MyFloatingPanelLayout()
        
        // Assign self as the delegate of the controller.
        fpc.delegate = self // Optional

        // Set a content view controller.
        let contentVC = ContentViewController()
        fpc.set(contentViewController: contentVC)

        // Add and show the views managed by the `FloatingPanelController` object to self.view.
        fpc.addPanel(toParent: self)
    }
    
    private func setupYoutube() {
        youtubeView.load(withVideoId: "ITXbsLIzqmc")
    }

}

extension ViewController: FloatingPanelControllerDelegate {
    // do nothing
}
