//
//  ViewController.swift
//  AppExpandView
//
//  Created by Regis Araujo Melo on 14/12/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nsLayout: NSLayoutConstraint!
    @IBOutlet weak var buttonExpand: UIButton!
    
    var isExpand: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func expandView(_ sender: Any) {
        if !isExpand {
            nsLayout.constant = 120
            isExpand = true
            buttonExpand.setImage(UIImage(systemName: "arrow.up"), for: UIControl.State.normal)
        } else {
            nsLayout.constant = 60
            isExpand = false
            buttonExpand.setImage(UIImage(systemName: "arrow.down"), for: UIControl.State.normal)
        }
    }
    
}

