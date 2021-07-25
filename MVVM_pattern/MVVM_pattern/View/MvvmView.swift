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
        getState()
    }
    
    @IBAction func showFirstImageBtnPressed(_ sender: UIButton) {
        viewModel.showFirstImage()
    }
    
    @IBAction func showSecondImageBtnPressed(_ sender: UIButton) {
        viewModel.showSecondImage()
    }
    
    private func update(state: MvvmModel.Model?) {
        guard let state = state else { return }
        imageView.image = UIImage(named: state.image)
        activityIndicator.isHidden = state.isHiden
    }
    
    private func getState() {
        activityIndicator.isHidden = true
        
        viewModel.updateView = { [weak self] data in
            guard let self = self else { return }
            switch data {
            case .initial:
                self.update(state: nil)
            case .loading(let loading):
                self.update(state: loading)
                self.activityIndicator.startAnimating()
            case .success(let success):
                self.update(state: success)
                self.activityIndicator.stopAnimating()
            case .failure(let failure):
                self.update(state: failure)
                self.activityIndicator.stopAnimating()
            }
        }
    }
}

