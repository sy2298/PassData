//
//  ClosureDetailViewController.swift
//  PassData
//
//  Created by 이서영 on 2022/03/19.
//

import UIKit

class ClosureDetailViewController: UIViewController {

    var myClosure: ((String)->Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func ClosurePassData(_ sender: Any) {
        myClosure?("closure string")
        self.dismiss(animated: true, completion: nil)
    }
    //    @IBAction func ClosurePassData(_ sender: Any) {
//     //   myClosure?("closure string") //없으면 호출 안함
//        self.dismiss(animated: true, completion: nil)
//    }
    
    

}
