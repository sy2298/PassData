//

//  passing data (데이터를 넘겨주는 방법)
//  6가지

//  1. instance property


import UIKit

class ViewController: UIViewController {

    var someString = ""
    
    @IBOutlet weak var DetailButton: UIButton!
    
    @IBAction func MoveToDetail(_ sender: Any) {
        let detailVC = DetailViewController(nibName: "DetailViewController", bundle: nil)
        detailVC.someString = "aaa 스트링"
        self.present(detailVC, animated: true, completion: nil)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

