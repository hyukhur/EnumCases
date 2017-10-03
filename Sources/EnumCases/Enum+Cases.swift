//
//  Enum+Cases.swift
//  Cases
//
//  Created by hyukhur on 29/09/2017.
//  Copyright © 2017 hyukhur. All rights reserved.
//

import Foundation

public protocol EnumCases: Hashable {
    static var iterator: AnyIterator<Self> { get }
    static var all: [Self] { get }
}

public extension EnumCases {
    static var iterator: AnyIterator<Self> {
        var raw = 0
        return AnyIterator.init({
            let next = withUnsafeBytes(of: &raw, {
                $0.load(as: Self.self)
            })
            guard next.hashValue == raw else { return nil }
            raw += 1
            return next
        })
    }

    static var all: [Self] {
        return Array(iterator)
    }
}
