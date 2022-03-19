//

//  passing data (데이터를 넘겨주는 방법)
//  6가지

//  1. instance property
//  2. segue
//. 3. instance

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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

