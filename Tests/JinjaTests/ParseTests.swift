//
//  File.swift
//
//
//  Created by John Mai on 2024/3/21.
//

@testable import Jinja
import XCTest

final class ParseTests: XCTestCase {
    func testParse() throws {
        let tokens = try tokenize("Hello world!")
        let parsed = try parse(tokens: tokens)
        XCTAssertEqual((parsed.body.first! as! StringLiteral).value, "Hello world!")
    }
}
