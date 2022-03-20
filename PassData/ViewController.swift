//

//  passing data (데이터를 넘겨주는 방법)
//  6가지

//  1. instance property -> 데이터를 넘겨줄 때
//  2. segue
//  3. instance -> 데이터를 넘겨받을 때
//  4. delegate(delegation) pattern 대리 위임
//  5. closure 패턴
//  6. Notification

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MainButton: UIButton!
    @IBOutlet weak var DataLabel: UILabel!
    
    @IBAction func MoveToDetail(_ sender: Any) {
        let detailVC = DetailViewController(nibName: "DetailViewController", bundle: nil)
        detailVC.someString = "aaa 스트링"
        self.present(detailVC, animated: true, completion: nil)
    }

     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SegueDetail" {
            if let detailVC =  segue.destination as? SegueDetailViewController {
                detailVC.dataString = "ABCD"
                 
            }
        }
    }
    @IBAction func MoveToInstance(_ sender: Any) {
        let detailVC = InstanceDetailViewController(nibName: "InstanceDetailViewController", bundle: nil)
        detailVC.mainVC = self //나 자신을 넘겨준다
        self.present(detailVC, animated: true, completion: nil)
    }
    
    @IBAction func MoveToDelegate(_ sender: Any) {
        let detailVC = DelegateDetailViewController(nibName: "DelegateDetailViewController", bundle: nil)
        detailVC.delegate = self //프로토콜 준수해야 한다.
        //위에서 전부 넘겨주는 것이 아니라 해당 프로토콜만 넘겨주는 것. 
        self.present(detailVC,animated: true, completion: nil)
    }
    
    @IBAction func MoveToClosure(_ sender: Any) {
        let detailVC = ClosureDetailViewController(nibName: "ClosureDetailViewController", bundle: nil)
        detailVC.myClosure = { str in
            self.DataLabel.text = str
        }
        self.present(detailVC, animated: true, completion: nil)
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let notificationName = Notification.Name("sendSomeData")
        //notification: 앱에서 기본적으로 감지하도록 만들어 놓는 것
        NotificationCenter.default.addObserver(self, selector: #selector(showSomeString), name: notificationName, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidShow), name: UIResponder.keyboardDidShowNotification, object: nil)
        // Do any additional setup after loading the view.
    }
    @objc func keyboardDidShow() {
        print("did show")
    }
    
   @objc func showSomeString(notification: Notification) {
        if let str = notification.userInfo?["str"] as? String {
            self.DataLabel.text = str
        }      //key,value
    }
    @IBAction func moveToNoti(_ sender: Any) {
        let detailVC = NotiDetailViewController(nibName: "NotiDetailViewController", bundle: nil)
        self.present(detailVC,animated: true,completion: nil)
    }
}

extension ViewController: DelegateDetailVieControllerDelegate {
    func passString(string: String) {
        self.DataLabel.text = string
    }
}

