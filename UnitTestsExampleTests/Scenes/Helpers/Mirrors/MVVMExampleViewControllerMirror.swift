import UIKit
@testable import UnitTestsExample

final class MVVMExampleViewControllerMirror: MirrorObject {
    init(viewController: MVVMExampleViewController) {
        super.init(reflecting: viewController)
    }

    var titleLabel: UILabel? {
        return extract()
    }

    var imageView: UIImageView? {
        return extract()
    }

    var actionButton: UIButton? {
        return extract()
    }
}
