//
//  ViewController.swift
//  desafio-ScreenShare
//
//  Created by Mizia Lima on 11/16/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonShare: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func shareButtonAction(_ sender: Any) {
        let text = "This is a text for share.."
        let textToShare = [text]
        let activityViewController = UIActivityViewController(activityItems: textToShare, applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view
        self.present(activityViewController, animated: true, completion: nil)    
    }
}
