//
//  PPView+PPContentWrap.swift
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

// MARK: Content Compression Resistance & Content Hugging Priority
public extension PPView {

    /**
     Force hugging and compression resistance for the given axes, using variadic parameter.
     - parameter axes: The axes
     */
    public func forceContentWrap(_ axes: PPAxis...) {
        if axes.contains(.vertically) {
            verticalHuggingPriority = .required
            verticalCompressionResistancePriority = .required
        }
        if axes.contains(.horizontally) {
            horizontalHuggingPriority = .required
            horizontalCompressionResistancePriority = .required
        }
    }
    
    /**
     Force hugging and compression resistance vertically and horizontally.
     */
    public func forceContentWrap() {
        contentHuggingPriority = .required
        contentCompressionResistancePriority = .required
    }
    
    /**
     Vertical hugging priority
     */
    public var verticalHuggingPriority: PPPriority {
        set {
            setContentHuggingPriority(newValue, for: .vertical)
        }
        get {
            return contentHuggingPriority(for: .vertical)
        }
    }
    
    /**
     Horizontal hugging priority
     */
    public var horizontalHuggingPriority: PPPriority {
        set {
            setContentHuggingPriority(newValue, for: .horizontal)
        }
        get {
            return contentHuggingPriority(for: .horizontal)
        }
    }
    
    /**
     Content hugging priority (Vertical & Horizontal)
     */
    public var contentHuggingPriority: PPPriorityPair {
        set {
            horizontalHuggingPriority = newValue.horizontal
            verticalHuggingPriority = newValue.vertical
        }
        get {
            return PPPriorityPair(horizontalHuggingPriority, verticalHuggingPriority)
        }
    }
    
    /**
     Vertical content compression resistance priority
     */
    public var verticalCompressionResistancePriority: PPPriority {
        set {
            setContentCompressionResistancePriority(newValue, for: .vertical)
        }
        get {
            return contentCompressionResistancePriority(for: .vertical)
        }
    }
    
    /**
     Horizontal content compression resistance priority
     */
    public var horizontalCompressionResistancePriority: PPPriority {
        set {
            setContentCompressionResistancePriority(newValue, for: .horizontal)
        }
        get {
            return contentCompressionResistancePriority(for: .horizontal)
        }
    }
    
    /**
    Content compression resistance priority (Vertical & Horizontal)
     */
    public var contentCompressionResistancePriority: PPPriorityPair {
        set {
            horizontalCompressionResistancePriority = newValue.horizontal
            verticalCompressionResistancePriority = newValue.vertical
        }
        get {
            return PPPriorityPair(horizontalCompressionResistancePriority, verticalCompressionResistancePriority)
        }
    }
}
