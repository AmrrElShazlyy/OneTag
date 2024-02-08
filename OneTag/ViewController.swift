//
//  ViewController.swift
//  OneTag
//
//  Created by Amr El Shazly on 06/02/2024.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let onBoardingTaggingModel = OnBoardingModelTaggingModel()
        print("@@@ address obj: \(onBoardingTaggingModel.pages?.address)")
        let dict = convertObjectToDictionary(onBoardingTaggingModel.pages?.address)
        print("\n\n~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\n")
        print("@@@ address obj dic: \(onBoardingTaggingModel.pages?.address)")
        //TealiumHelper.trackView(title: "view", data: dict)

    }
}

