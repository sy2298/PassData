//

//  passing data (데이터를 넘겨주는 방법)
//  6가지

//  1. instance property
//  2. segue

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MainButton: UIButton!

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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

