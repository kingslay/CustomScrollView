//
//  CustomScrollView.swift
//  CustomScrollView
//  自定义ScrollView
//  Created by king on 15/3/29.
//  Copyright (c) 2015年 king. All rights reserved.
//

import UIKit

class CustomScrollView: UIView {
    var contentSize: CGSize = CGSizeZero
    override init(frame: CGRect) {
        super.init(frame: frame)
        var gestureRecognizer = UIPanGestureRecognizer(target: self, action:Selector("handlePanGesture:"))
        self.addGestureRecognizer(gestureRecognizer)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func handlePanGesture(gestureRecognizer: UIPanGestureRecognizer) {
        var translation = gestureRecognizer.translationInView(self)
        var bounds = self.bounds
        var newBoundsOriginX = bounds.origin.x - translation.x
        var minBoundsOriginX : CGFloat = 0.0
        var maxboundsOriginX = self.contentSize.width - self.bounds.width
        bounds.origin.x = fmax(minBoundsOriginX, fmin(newBoundsOriginX, maxboundsOriginX))
        var newBoundsOriginY = bounds.origin.y - translation.y
        var minBoundsOriginY : CGFloat = 0.0
        var maxboundsOriginY = self.contentSize.height - self.bounds.height
        bounds.origin.y = fmax(minBoundsOriginY, fmin(newBoundsOriginY, maxboundsOriginY))
        self.bounds = bounds
        gestureRecognizer.setTranslation(CGPointZero, inView: self)
        
    }

}
