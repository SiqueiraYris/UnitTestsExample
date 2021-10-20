@testable import UnitTestsExample

extension MVVMExampleModel {
    static func fixture() -> MVVMExampleModel {
        MVVMExampleModel(title: "any-title",
                         imageName: "any-image-name",
                         actionButtonTitle: "any-action-button-title")
    }
}
