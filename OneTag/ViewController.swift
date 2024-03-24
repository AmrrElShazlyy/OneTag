//
//  ViewController.swift
//  OneTag
//
//  Created by Amr El Shazly on 06/02/2024.
//

import UIKit
import TealiumSwift

class ViewController: UIViewController {
    
    let onBoardingTaggingModel = OnBoardingTaggingModel()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        guard let newPageView = onBoardingTaggingModel.pages?.newPageView else { return }
        TealiumHelper.trackView(title: "formStartEvent$$", data: newPageView)
    }
    
    @IBAction func TrackEvent(_ sender: UIButton) {
        guard var formStartEvent = onBoardingTaggingModel.events?.formStart else { return }
        formStartEvent.customMap = ["newCustomrMap": AnyCodable("newValue")]
        TealiumHelper.trackEvent(title: "formStartEvent$$", data: formStartEvent)
    }
    
}

