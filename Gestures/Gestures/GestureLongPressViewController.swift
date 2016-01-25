//
//  GestureLongPressViewController.swift
//  Gestures
//
//  Created by Rookie on 16/1/21.
//  Copyright © 2016年 Rookie. All rights reserved.
//

import UIKit

class GestureLongPressViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        
        let longPressGesture = UILongPressGestureRecognizer(target: self, action: "action:")
        
        longPressGesture.minimumPressDuration = 0.5;
        
        imageView.addGestureRecognizer(longPressGesture)
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
     func action(gestureRecognizer:UIGestureRecognizer) {
        
        if (gestureRecognizer.state == UIGestureRecognizerState.Began){
            
            let alertController = UIAlertController(title: "Alert", message: "Long Press gesture", preferredStyle: .Alert)
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in }
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true) { }
            
        }else if (gestureRecognizer.state == UIGestureRecognizerState.Ended) {
            NSLog("结束长按喽.....")
        }else if (gestureRecognizer.state == UIGestureRecognizerState.Failed) {
            NSLog("失败了嘛??????")
        }else if (gestureRecognizer.state == UIGestureRecognizerState.Changed) {
            NSLog("改变了改变了改变啦???")
        }
        
        
        
    }

}
