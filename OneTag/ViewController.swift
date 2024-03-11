//
//  ViewController.swift
//  OneTag
//
//  Created by Amr El Shazly on 06/02/2024.
//

import UIKit

class ViewController: UIViewController {
    
    let onBoardingTaggingModel = OnBoardingModelTaggingModel()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func TrackEvent(_ sender: UIButton) {
        guard let formStartEvent = onBoardingTaggingModel.events?.formStart else { return }
        TealiumHelper.trackEvent(title: "formStartEvent$$", data: formStartEvent)
    }
    
}

