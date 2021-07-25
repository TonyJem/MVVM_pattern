import UIKit

class MvvmView: UIViewController {
    @IBOutlet private weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var showFirstImageBtn: UIButton!
    @IBOutlet private weak var showSecondImageBtn: UIButton!
    
    var viewModel: MvvmViewModelProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = MvvmViewModel()
    }
    
    @IBAction func showFirstImageBtnPressed(_ sender: UIButton) {
        print("🟢 showFirstImageBtnPressed")
        viewModel.showFirstImage()
    }
    
    @IBAction func showSecondImageBtnPressed(_ sender: UIButton) {
        print("🟢 showSecondImageBtnPressed")
        viewModel.showSecondImage()
    }
}
