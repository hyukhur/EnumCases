//
//  EnumCasesTests.swift
//  EnumCases
//
//  Created by hyukhur on 29/09/2017.
//  Copyright © 2017 hyukhur. All rights reserved.
//

import XCTest
@testable import EnumCases

enum StringEnum: String, EnumCases {
    case none
    case first
    case second
}

enum IntEnum: Int, EnumCases {
    case zero
    case one
    case two
}

enum ExtensionEnum {
    case none
    case first
    case second
}

extension ExtensionEnum: EnumCases {
}

@objc enum SwiftEnumInObjc:Int, EnumCases {
    case zero
    case one
    case two
}

//extension ObjcEnum: EnumCases {
//}

class EnumCasesTests: XCTestCase {
    func testExample() {
        XCTAssertEqual([StringEnum.none, .first, .second], StringEnum.all)
        XCTAssertEqual([IntEnum.zero, .one, .two], IntEnum.all)
        XCTAssertEqual([ExtensionEnum.none, .first, .second], ExtensionEnum.all)
        XCTAssertEqual([SwiftEnumInObjc.zero, .one, .two], SwiftEnumInObjc.all)
    }

//    func testObjcEnum() {
//        XCTAssertEqual([ObjcEnum.none, .first, .second], ObjcEnum.all)
//    }

    func testLazyInitiate() {
        let array = StringEnum.all
        let array2 = StringEnum.all

        XCTAssertEqual(UnsafePointer(array).pointee, UnsafePointer(array2).pointee)
    }
}

