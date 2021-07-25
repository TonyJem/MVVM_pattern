import UIKit

class MvvmView: UIViewController {
    @IBOutlet private weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var showFirstImageBtn: UIButton!
    @IBOutlet private weak var showSecondImageBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func showFirstImageBtnPressed(_ sender: UIButton) {
        print("🟢 showFirstImageBtnPressed")
    }
    
    @IBAction func showSecondImageBtnPressed(_ sender: UIButton) {
        print("🟢 showSecondImageBtnPressed")
    }
}
