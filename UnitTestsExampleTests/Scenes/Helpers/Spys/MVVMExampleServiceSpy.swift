@testable import UnitTestsExample

final class MVVMExampleServiceSpy: MVVMExampleServiceProtocol {
    private let model: MVVMExampleModel
    var fetchDataCalled = false

    init(model: MVVMExampleModel) {
        self.model = model
    }

    func fetchData() -> MVVMExampleModel {
        fetchDataCalled = true
        return model
    }
}
