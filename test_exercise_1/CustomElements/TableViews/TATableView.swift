//
//  TATableView.swift
//  test_exercise_1
//
//  Created by Richárd Hardi on 2020. 08. 25..
//  Copyright © 2020. Richárd Hardi. All rights reserved.
//


import UIKit

class SelfSizedTableView: UITableView {
    
  var maxHeight: CGFloat = UIScreen.main.bounds.size.height
  
    
  override func reloadData() {
    self.invalidateIntrinsicContentSize()
  }
  
    
  override var intrinsicContentSize: CGSize {
    setNeedsLayout()
    self.layoutIfNeeded()
    let height = min(contentSize.height, maxHeight)
    return CGSize(width: contentSize.width, height: height)
  }
}
