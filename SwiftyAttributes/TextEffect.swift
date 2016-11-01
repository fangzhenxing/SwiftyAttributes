//
//  TextEffect.swift
//  SwiftyAttributes
//
//  Created by Eddie Kaiger on 10/28/16.
//  Copyright © 2016 Eddie Kaiger. All rights reserved.
//

import Foundation

/**
 An enum describing the possible values for text effects on attributed strings.
 */
public enum TextEffect: RawRepresentable {
    /// A graphical text effect giving glyphs the appearance of letterpress printing, in which type is pressed into the paper.
    case letterPressStyle

    public init?(rawValue: String) {
        switch rawValue {
        case NSTextEffectLetterpressStyle: self = .letterPressStyle
        default: return nil
        }
    }

    public var rawValue: String {
        switch self {
        case .letterPressStyle: return NSTextEffectLetterpressStyle
        }
    }
}
