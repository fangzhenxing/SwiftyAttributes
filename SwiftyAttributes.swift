
/**

The MIT License (MIT)

Copyright (c) 2015 Eddie Kaiger

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

*/

import UIKit


public extension NSAttributedString {

    private var mutableString: NSMutableAttributedString {
        return self is NSMutableAttributedString ? self as! NSMutableAttributedString : mutableCopy() as! NSMutableAttributedString
    }

    private func withNewAttribute(attributeName: String, value: AnyObject) -> NSAttributedString {
        let newString = mutableString
        newString.addAttributes([attributeName: value], range: NSMakeRange(0, newString.length))
        return newString
    }

    public func withFont(font: UIFont) -> NSAttributedString {
        return withNewAttribute(NSFontAttributeName, value: font)
    }

    public func withParagraphStyle(style: NSParagraphStyle) -> NSAttributedString {
        return withNewAttribute(NSParagraphStyleAttributeName, value: style)
    }

    public func withTextColor(color: UIColor) -> NSAttributedString {
        return withNewAttribute(NSForegroundColorAttributeName, value: color)
    }

    public func withBackgroundColor(color: UIColor) -> NSAttributedString {
        return withNewAttribute(NSBackgroundColorAttributeName, value: color)
    }

    public func withLigature(ligatureValue: NSNumber) -> NSAttributedString {
        return withNewAttribute(NSLigatureAttributeName, value: ligatureValue)
    }

    public func withKern(kernValue: NSNumber) -> NSAttributedString {
        return withNewAttribute(NSKernAttributeName, value: kernValue)
    }

    public func withStrikethroughStyle(style: NSUnderlineStyle) -> NSAttributedString {
        return withNewAttribute(NSStrikethroughColorAttributeName, value: NSNumber(integer: style.rawValue))
    }

    public func withUnderlineStyle(style: NSUnderlineStyle) -> NSAttributedString {
        return withNewAttribute(NSUnderlineStyleAttributeName, value: NSNumber(integer: style.rawValue))
    }

    public func withStrokeColor(color: UIColor) -> NSAttributedString {
        return withNewAttribute(NSStrokeColorAttributeName, value: color)
    }

    public func withStrokeWidth(width: NSNumber) -> NSAttributedString {
        return withNewAttribute(NSStrokeWidthAttributeName, value: width)
    }

    public func withShadow(shadow: NSShadow) -> NSAttributedString {
        return withNewAttribute(NSShadowAttributeName, value: shadow)
    }

    public func withTextEffect(effect: String) -> NSAttributedString {
        return withNewAttribute(NSTextEffectAttributeName, value: effect)
    }

    public func withAttachment(attachment: NSTextAttachment) -> NSAttributedString {
        return withNewAttribute(NSTextEffectAttributeName, value: attachment)
    }

    public func withLink(link: NSURL) -> NSAttributedString {
        return withNewAttribute(NSLinkAttributeName, value: link)
    }

    public func withBaselineOffset(offset: NSNumber) -> NSAttributedString {
        return withNewAttribute(NSBaselineOffsetAttributeName, value: offset)
    }

    public func withUnderlineColor(color: UIColor) -> NSAttributedString {
        return withNewAttribute(NSUnderlineColorAttributeName, value: color)
    }

    public func withStrikethroughColor(color: UIColor) -> NSAttributedString {
        return withNewAttribute(NSStrikethroughColorAttributeName, value: color)
    }

    public func withObliqueness(obliquenessValue: NSNumber) -> NSAttributedString {
        return withNewAttribute(NSObliquenessAttributeName, value: obliquenessValue)
    }

    public func withExpansion(expansion: NSNumber) -> NSAttributedString {
        return withNewAttribute(NSExpansionAttributeName, value: expansion)
    }

    public func withWritingDirection(direction: [NSNumber]) -> NSAttributedString {
        return withNewAttribute(NSWritingDirectionAttributeName, value: direction)
    }

    public func withVerticalGlyphForm(form: NSNumber) -> NSAttributedString {
        return withNewAttribute(NSVerticalGlyphFormAttributeName, value: form)
    }

}

public func + (lhs: NSAttributedString, rhs: NSAttributedString) -> NSAttributedString {
    let combinedString = lhs.mutableString
    combinedString.appendAttributedString(rhs)
    return combinedString
}

public extension String {

    private var attributedString: NSAttributedString {
        return NSAttributedString(string: self)
    }

    public func withFont(font: UIFont) -> NSAttributedString {
        return attributedString.withFont(font)
    }

    public func withParagraphStyle(style: NSParagraphStyle) -> NSAttributedString {
        return attributedString.withParagraphStyle(style)
    }

    public func withTextColor(color: UIColor) -> NSAttributedString {
        return attributedString.withTextColor(color)
    }

    public func withBackgroundColor(color: UIColor) -> NSAttributedString {
        return attributedString.withBackgroundColor(color)
    }

    public func withLigature(ligatureValue: NSNumber) -> NSAttributedString {
        return attributedString.withLigature(ligatureValue)
    }

    public func withKern(kernValue: NSNumber) -> NSAttributedString {
        return attributedString.withKern(kernValue)
    }

    public func withStrikethroughStyle(style: NSUnderlineStyle) -> NSAttributedString {
        return attributedString.withStrikethroughStyle(style)
    }

    public func withUnderlineStyle(style: NSUnderlineStyle) -> NSAttributedString {
        return attributedString.withUnderlineStyle(style)
    }

    public func withStrokeColor(color: UIColor) -> NSAttributedString {
        return attributedString.withStrokeColor(color)
    }

    public func withStrokeWidth(width: NSNumber) -> NSAttributedString {
        return attributedString.withStrokeWidth(width)
    }

    public func withShadow(shadow: NSShadow) -> NSAttributedString {
        return attributedString.withShadow(shadow)
    }

    public func withTextEffect(effect: String) -> NSAttributedString {
        return attributedString.withTextEffect(effect)
    }

    public func withAttachment(attachment: NSTextAttachment) -> NSAttributedString {
        return attributedString.withAttachment(attachment)
    }

    public func withLink(link: NSURL) -> NSAttributedString {
        return attributedString.withLink(link)
    }

    public func withBaselineOffset(offset: NSNumber) -> NSAttributedString {
        return attributedString.withBaselineOffset(offset)
    }

    public func withUnderlineColor(color: UIColor) -> NSAttributedString {
        return attributedString.withUnderlineColor(color)
    }

    public func withStrikethroughColor(color: UIColor) -> NSAttributedString {
        return attributedString.withStrikethroughColor(color)
    }

    public func withObliqueness(obliquenessValue: NSNumber) -> NSAttributedString {
        return attributedString.withObliqueness(obliquenessValue)
    }

    public func withExpansion(expansion: NSNumber) -> NSAttributedString {
        return attributedString.withExpansion(expansion)
    }

    public func withWritingDirection(direction: [NSNumber]) -> NSAttributedString {
        return attributedString.withWritingDirection(direction)
    }

    public func withVerticalGlyphForm(form: NSNumber) -> NSAttributedString {
        return attributedString.withVerticalGlyphForm(form)
    }
}








