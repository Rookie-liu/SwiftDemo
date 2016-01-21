//
//  Animation3ViewController.swift
//  CoreAnimation
//
//  Created by Rookie on 16/1/21.
//  Copyright © 2016年 Rookie. All rights reserved.
//

import UIKit

class Animation3ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var position = true
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonClicked(sender: AnyObject) {
        
        if(position) {
            
            let animation:CABasicAnimation! = CABasicAnimation(keyPath: "position")
            
            animation.toValue = NSValue(CGPoint:CGPointMake(160, 200))
            animation.fillMode = kCAFillModeForwards
            animation.removedOnCompletion = false
            
            let resizeAnimation: CABasicAnimation! = CABasicAnimation(keyPath: "bounds.size")
            resizeAnimation.toValue = NSValue(CGPoint: CGPointMake(50, 50))
            resizeAnimation.fillMode = kCAFillModeForwards
            resizeAnimation.removedOnCompletion = false
            
            
            UIView.animateWithDuration(3.0, animations: { () -> Void in
                self.imageView.alpha = 0.0
                
                }, completion: { (value: Bool) -> Void in
                    self.imageView.alpha = 1
                    self.imageView.layer.addAnimation(animation, forKey: "position")
                    self.imageView.layer.addAnimation(resizeAnimation, forKey: "bounds.size")
                    
            })
            position = false
            
        }else {
            
            let animation:CABasicAnimation! = CABasicAnimation(keyPath: "position")
            animation.toValue = NSValue(CGPoint:CGPointMake(160, 200))
            animation.fillMode = kCAFillModeForwards
            animation.removedOnCompletion = false
            
            
            let resizeAnimation: CABasicAnimation! =  CABasicAnimation(keyPath: "bouds.size")
            resizeAnimation.toValue = NSValue(CGPoint:CGPointMake(50, 50))
            resizeAnimation.fillMode = kCAFillModeForwards
            resizeAnimation.removedOnCompletion = false
            self.imageView.layer.addAnimation(animation, forKey: "position")
            self.imageView.layer.addAnimation(resizeAnimation, forKey: "bouds.size")
            position = true 
            
            
            
        }
        
    }
    @IBOutlet weak var buttonClicked: UIButton!

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
