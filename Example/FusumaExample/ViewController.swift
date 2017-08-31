//
//  ViewController.swift
//  Fusuma
//
//  Created by ytakzk on 01/31/2016.
//  Copyright (c) 2016 ytakzk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var showButton: UIButton!
    
    @IBOutlet weak var fileUrlLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        showButton.layer.cornerRadius = 2.0
        self.fileUrlLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showButtonPressed(_ sender: AnyObject) {
        
        // Show Fusuma
        let fusuma = FusumaViewController()
        
        fusuma.delegate = self
        fusuma.cropHeightRatio = 0.6
        fusuma.defaultMode     = .library
        fusuma.allowMultipleSelection = true
        fusumaSavesImage = true

        self.present(fusuma, animated: true, completion: nil)
    }
}

extension ViewController: FusumaViewControllerDelegate {
  func fusumaViewController(vc: FusumaViewController, didSelectImages details: [FusumaImageDetails], andSource source: FusumaMode) {
    
  }
  
  func fusumaViewControllerCameraRollUnauthorized(vc: FusumaViewController) {
    
  }
}

