@testable import UnitTestsExample

final class MVVMExampleViewModelSpy: MVVMExampleViewModelProtocol {
    private let model: MVVMExampleModel
    var fetchDataCalled = false
    var didTapActionButtonCalled = false

    init(model: MVVMExampleModel) {
        self.model = model
    }

    func fetchData() -> MVVMExampleModel {
        fetchDataCalled = true
        return model
    }

    func didTapActionButton() {
        didTapActionButtonCalled = true
    }
}
