//
//  NotiDetailViewController.swift
//  PassData
//
//  Created by 이서영 on 2022/03/20.
//

import UIKit

class NotiDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    
    @IBAction func notiAction(_ sender: Any) {
        let notificationName = Notification.Name("sendSomeData")
        let strDic = ["str" : "noti string"]
        NotificationCenter.default.post(name:notificationName, object: nil, userInfo: strDic)
        self.dismiss(animated: true, completion: nil)
    }
    

}
