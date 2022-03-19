//
//  DelegateDetailViewController.swift
//  PassData
//
//  Created by 이서영 on 2022/03/19.
//

import UIKit

protocol DelegateDetailVieControllerDelegate: AnyObject {
    func passString(string: String) //protocol 정의만 있고 내용은 없다
}
class DelegateDetailViewController: UIViewController {

    weak var delegate: DelegateDetailVieControllerDelegate?
    //delegate: 프로토콜 타입의 변수
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func passDataToMainVC(_ sender: Any) {
        delegate?.passString(string: "delegate pass Data")
        self.dismiss(animated: true, completion: nil)
        //펑션을 실행해서 값을 넘긴다
    }
    
}
