protocol MVVMExampleViewModelProtocol {
    func fetchData() -> MVVMExampleModel
}

final class MVVMExampleViewModel: MVVMExampleViewModelProtocol {
    private let service: MVVMExampleServiceProtocol

    init(with service: MVVMExampleServiceProtocol) {
        self.service = service
    }

    func fetchData() -> MVVMExampleModel {
        service.fetchData()
    }
}
