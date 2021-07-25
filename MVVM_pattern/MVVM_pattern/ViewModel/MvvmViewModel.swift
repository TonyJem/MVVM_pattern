import Foundation

protocol MvvmViewModelProtocol: class {
    var updateView: ((MvvmView)->())? { get set }
    
    func showFirstImage()
    func showSecondIamge()
}

class MvvmViewModel: MvvmViewModelProtocol {
    var updateView: ((MvvmView) -> ())?
    
    func showFirstImage() {
        
    }
    
    func showSecondIamge() {
        
    }
}
