import XCTest
@testable import UnitTestsExample

class MVVMExampleViewControllerTests: XCTestCase {
    func test_init_shouldSetupViewsCorrectly() {
        let model = MVVMExampleModel.fixture()
        let (sut, viewModelSpy) = makeSUT(with: model)
        let mirror = MVVMExampleViewControllerMirror(viewController: sut)

        _ = sut.view

        XCTAssertTrue(viewModelSpy.fetchDataCalled)
        XCTAssertEqual(mirror.titleLabel?.text, model.title)
        XCTAssertEqual(mirror.imageView?.image, UIImage(named: model.imageName))
        XCTAssertEqual(mirror.actionButton?.titleLabel?.text, model.actionButtonTitle)
    }

    private func makeSUT(with model: MVVMExampleModel) -> (sut: MVVMExampleViewController,
                                                           viewModelSpy: MVVMExampleViewModelSpy) {
        let viewModelSpy = MVVMExampleViewModelSpy(model: model)
        let sut = MVVMExampleViewController(viewModel: viewModelSpy)

        trackForMemoryLeaks(sut)
        trackForMemoryLeaks(viewModelSpy)

        return (sut, viewModelSpy)
    }
}
