//
//  File.swift
//  Instagram_firebase
//
//  Created by 豊岡正紘 on 2019/03/16.
//  Copyright © 2019 Masahiro Toyooka. All rights reserved.
//

import UIKit

extension UIColor {
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
}

//struct AnchoredConstraints {
//
//    var top, leading, bottom, trailing, width, height: NSLayoutConstraint?
//}
//
//extension UIView {
//
//
//    func anchor(top: NSLayoutYAxisAnchor?, leading: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, trailing: NSLayoutXAxisAnchor?, padding: UIEdgeInsets = .zero, size: CGSize = .zero) -> AnchoredConstraints {
//
//        translatesAutoresizingMaskIntoConstraints = false
//        var anchoredConstraints = AnchoredConstraints()
//
//        if let top = top {
//            anchoredConstraints.top = topAnchor.constraint(equalTo: top, constant: padding.top)
//        }
//
//        if let leading = leading {
//            anchoredConstraints.leading = leadingAnchor.constraint(equalTo: leading, constant: padding.left)
//        }
//
//        if let bottom = bottom {
//            anchoredConstraints.top = topAnchor.constraint(equalTo: bottom, constant: -padding.bottom)
//        }
//
//        if let trailing = trailing {
//            anchoredConstraints.trailing = trailingAnchor.constraint(equalTo: trailing, constant: -padding.right)
//        }
//
//        if size.width != 0 {
//            anchoredConstraints.width = widthAnchor.constraint(equalToConstant: size.width)
//        }
//
//        if size.height != 0 {
//            anchoredConstraints.height = heightAnchor.constraint(equalToConstant: size.height)
//        }
//
//        [anchoredConstraints.top, anchoredConstraints.leading, anchoredConstraints.bottom, anchoredConstraints.trailing, anchoredConstraints.width, anchoredConstraints.height].forEach { $0?.isActive = true }
//
//        return anchoredConstraints
//    }
//
//    func fillSuperview(padding: UIEdgeInsets = .zero) {
//
//        translatesAutoresizingMaskIntoConstraints = false
//
//        if let superviewTopAnchor = superview?.topAnchor {
//            topAnchor.constraint(equalTo: superviewTopAnchor, constant: padding.top).isActive = true
//        }
//
//        if let superviewLeadingAnchor = superview?.leftAnchor {
//            leadingAnchor.constraint(equalTo: superviewLeadingAnchor, constant: padding.left).isActive = true
//        }
//
//        if let superviewBottomAnchor = superview?.bottomAnchor {
//            bottomAnchor.constraint(equalTo: superviewBottomAnchor, constant: padding.bottom).isActive = true
//        }
//
//        if let superviewTrailingAnchor = superview?.trailingAnchor {
//            trailingAnchor.constraint(equalTo: superviewTrailingAnchor, constant: padding.right).isActive = true
//        }
//    }
//}

extension UIView {
    func anchor(top: NSLayoutYAxisAnchor?, left: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, right: NSLayoutXAxisAnchor?,  paddingTop: CGFloat, paddingLeft: CGFloat, paddingBottom: CGFloat, paddingRight: CGFloat, width: CGFloat, height: CGFloat) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: paddingBottom).isActive = true
        }
        
        if let right = right {
            rightAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
        }
        
        if width != 0 {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if height != 0 {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
    
}
