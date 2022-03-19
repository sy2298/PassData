//
//  InstanceDetailViewController.swift
//  PassData
//
//  Created by 이서영 on 2022/03/19.
//

import UIKit

class InstanceDetailViewController: UIViewController {

    var mainVC: ViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func sendDataMainVC(_ sender: Any) {
        mainVC?.DataLabel.text = "Some Data"
        self.dismiss(animated: true, completion: nil)
    }
    
}
