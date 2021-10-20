import XCTest
@testable import UnitTestsExample

class MVVMExampleViewModelTests: XCTestCase {
    func test_fetchData_shouldCallsService() {
        let model = MVVMExampleModel.fixture()
        let (sut, serviceSpy) = makeSUT(with: model)
        
        let receivedModel = sut.fetchData()
        
        XCTAssertTrue(serviceSpy.fetchDataCalled)
        XCTAssertEqual(receivedModel, model)
    }
    
    // MARK: - Helpers
    private func makeSUT(with model: MVVMExampleModel) -> (sut: MVVMExampleViewModel,
                                                           serviceSpy: MVVMExampleServiceSpy) {
        let serviceSpy = MVVMExampleServiceSpy(model: model)
        let sut = MVVMExampleViewModel(with: serviceSpy)

        trackForMemoryLeaks(sut)
        trackForMemoryLeaks(serviceSpy)

        return (sut, serviceSpy)
    }
}
