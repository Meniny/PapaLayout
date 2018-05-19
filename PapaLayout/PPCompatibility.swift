//
//  PPCompatibility.swift
//  Pods
//
//  Created by Daniel Huri on 5/12/18.
//

import Foundation

#if os(OSX)
import AppKit
public typealias PPView = NSView
public typealias PPPriority = NSLayoutConstraint.Priority
public typealias PPAttribute = NSLayoutConstraint.Attribute
public typealias PPRelation = NSLayoutConstraint.Relation
#else
import UIKit
public typealias PPView = UIView
public typealias PPPriority = UILayoutPriority
public typealias PPAttribute = NSLayoutAttribute
public typealias PPRelation = NSLayoutRelation
#endif
