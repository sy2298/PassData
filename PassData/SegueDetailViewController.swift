//
//  SegueDetailViewController.swift
//  PassData
//
//  Created by 이서영 on 2022/03/19.
//

import UIKit

class SegueDetailViewController: UIViewController {

    @IBOutlet weak var DataLabel: UILabel!
    
    var dataString = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        DataLabel.text = dataString
        
        // Do any additional setup after loading the view.
    }
    

}
