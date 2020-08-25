//
//  TextField_EXT.swift
//  test_exercise_1
//
//  Created by Richárd Hardi on 2020. 08. 23..
//  Copyright © 2020. Richárd Hardi. All rights reserved.
//

import UIKit

extension UITextField {
    func roundCornersWithLayerMask(cornerRadius: CGFloat, corners: UIRectCorner) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
        let maskLayer = CAShapeLayer()
        maskLayer.frame = self.bounds
        maskLayer.path = path.cgPath
        self.layer.mask = maskLayer
    }
}


extension UITextField {
    func paddingLeft(inset: CGFloat){
        self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: inset, height: self.frame.height))
        self.leftViewMode = UITextField.ViewMode.always
    }
}
