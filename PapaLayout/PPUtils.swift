//
//  PPUtils.swift
//  PapaLayout
//
//  Created by Daniel Huri on 11/21/17.
//

import Foundation
#if os(OSX)
import AppKit
#else
import UIKit
#endif

/**
 Typealias for dictionary that contains multiple constraints
 */
public typealias PPMultipleConstraints = [PPAttribute : NSLayoutConstraint]

/**
 Extends layout priority to other readable types
 */
public extension PPPriority {
    public static let must = PPPriority(rawValue: 999)
    public static let zero = PPPriority(rawValue: 0)
}

/**
 Represents pair of attributes
 */
public struct PPAttributePair {
    public let first: PPAttribute
    public let second: PPAttribute
}

/**
 Represents size constraints
 */
public struct PPSizeConstraints {
    public let width: NSLayoutConstraint
    public let height: NSLayoutConstraint
}

/**
 Represents center constraints
 */
public struct PPCenterConstraints {
    public let x: NSLayoutConstraint
    public let y: NSLayoutConstraint
}

/**
 Represents axis constraints (might be .top and .bottom, .left and .right, .leading and .trailing)
 */
public struct PPAxisConstraints {
    public let first: NSLayoutConstraint
    public let second: NSLayoutConstraint
}

/**
 Represents center and size constraints
 */
public struct PPFillConstraints {
    public let center: PPCenterConstraints
    public let size: PPSizeConstraints
}

/**
 Represents pair of priorities
 */
public struct PPPriorityPair {
    public let horizontal: PPPriority
    public let vertical: PPPriority
    public static var required: PPPriorityPair {
        return PPPriorityPair(.required, .required)
    }
    public static var must: PPPriorityPair {
        return PPPriorityPair(.must, .must)
    }
    public init(_ horizontal: PPPriority, _ vertical: PPPriority) {
        self.horizontal = horizontal
        self.vertical = vertical
    }
}

/**
 Represents axis description
 */
public enum PPAxis {
    case horizontally
    case vertically
    public var attributes: PPAttributePair {
        let first: PPAttribute
        let second: PPAttribute
        switch self {
        case .horizontally:
            first = .left
            second = .right
        case .vertically:
            first = .top
            second = .bottom
        }
        return PPAttributePair(first: first, second: second)
    }
}
