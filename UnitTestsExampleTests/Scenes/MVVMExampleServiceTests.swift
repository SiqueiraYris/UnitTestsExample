import XCTest
@testable import UnitTestsExample

class MVVMExampleServiceTests: XCTestCase {
    func test_fetchData_shouldDeliversCorrectData() {
        let sut = MVVMExampleService()
        
        let model = sut.fetchData()
        
        XCTAssertEqual(model, MVVMExampleModel(title: "Title",
                                               imageName: "any",
                                               actionButtonTitle: "Ok"))
    }
}
