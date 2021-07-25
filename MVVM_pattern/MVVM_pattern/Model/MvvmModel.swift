import Foundation

enum MvvmModel {
    case initial
    case loading(Model)
    case success(Model)
    case failure(Model)
    
    struct Model {
        let image: String
        let isHiden: Bool
    }
}
