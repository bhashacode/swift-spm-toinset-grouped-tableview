import XCTest
import UIKit
import TOInsetGroupedTableView

final class TOInsetGroupedTableViewTests: XCTestCase {
    private var tableView: InsetGroupedTableView?

    override func setUp() {
        super.setUp()

        let hostView = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 480))
        let tableView = InsetGroupedTableView(frame: hostView.bounds)
        hostView.addSubview(tableView)
        self.tableView = tableView
    }

    override func tearDown() {
        tableView = nil
        super.tearDown()
    }

    func testTableViewCreation() {
        XCTAssertNotNil(tableView)
        XCTAssertEqual(tableView?.style, .insetGrouped)
    }
}
