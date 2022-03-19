//
//  DetailViewController.swift
//  PassData
//
//  Created by 이서영 on 2022/03/18.
//

import UIKit

class DetailViewController: UIViewController {

    
    var someString = ""
    @IBOutlet weak var DetailLabel: UILabel!
    //클래스 메모리 처음 생성될 시점에는 nil
    //그 때 안에 접근하려고 하면 crash ex) text 접근하려고 할 때
    
    
    override func viewDidLoad() { //화면이 준비가 돼서 메모리 올라갈 시점
        super.viewDidLoad()
        DetailLabel.text = someString
        // Do any additional setup after loading the view.
    }


   

}
