//
//  ViewController.swift
//  CustomScrollView
//  
//  Created by king on 15/3/29.
//  Copyright (c) 2015年 king. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    required init(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
        customScrollView = CustomScrollView(frame:UIScreen.mainScreen().applicationFrame)
        super.init(coder: aDecoder)
    }
    var customScrollView : CustomScrollView
    override func viewDidLoad() {
        super.viewDidLoad()
        customScrollView.backgroundColor = UIColor.clearColor()
        customScrollView.contentSize = CGSizeMake(view.bounds.width, 1000)
        var redView = UIView.init(frame:CGRectMake(20, 20, 100, 100))
        var greenView = UIView(frame: CGRectMake(150, 160, 150, 200))
        var blueView = UIView(frame: CGRectMake(40, 400, 200, 150))
        var yellowView = UIView(frame: CGRectMake(100, 600, 180, 150))
        redView.backgroundColor = UIColor.redColor()
        greenView.backgroundColor = UIColor.greenColor()
        blueView.backgroundColor = UIColor.blueColor()
        yellowView.backgroundColor = UIColor.yellowColor()
        customScrollView.addSubview(redView)
        customScrollView.addSubview(greenView)
        customScrollView.addSubview(blueView)
        customScrollView.addSubview(yellowView)
        self.view.addSubview(customScrollView)
        self.view.backgroundColor = UIColor.whiteColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

