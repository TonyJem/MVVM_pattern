import Foundation

protocol MvvmViewModelProtocol: class {
    var updateView: ((MvvmModel)->())? { get set }
    
    func showFirstImage()
    func showSecondImage()
}

class MvvmViewModel: MvvmViewModelProtocol {
    var updateView: ((MvvmModel) -> ())?
    
    func showFirstImage() {
        updateView?(.loading(MvvmModel.Model(image: "Loading", isHiden: false)))
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.updateView?(.success(MvvmModel.Model(image: "Success", isHiden: true)))
        }
    }
    
    func showSecondImage() {
        updateView?(.loading(MvvmModel.Model(image: "Loading", isHiden: false)))
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.updateView?(.failure(MvvmModel.Model(image: "Failure", isHiden: true)))
        }
    }
}
