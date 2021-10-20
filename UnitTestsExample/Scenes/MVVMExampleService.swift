protocol MVVMExampleServiceProtocol {
    func fetchData() -> MVVMExampleModel
}

final class MVVMExampleService: MVVMExampleServiceProtocol {
    func fetchData() -> MVVMExampleModel {
        MVVMExampleModel(title: "Title",
                         imageName: "any",
                         actionButtonTitle: "Ok")
    }
}
