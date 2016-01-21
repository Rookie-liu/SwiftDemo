//
//  Animation4ViewController.swift
//  CoreAnimation
//
//  Created by Rookie on 16/1/21.
//  Copyright © 2016年 Rookie. All rights reserved.
//

import UIKit

class Animation4ViewController: UIViewController {

    var position = true
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func buttonClicked(sender: AnyObject) {
        
        
        if (position){  //SAMPLE 2
            
            
            
            //SAMPLE 3
            
            let subLayer : CALayer = self.imageView.layer
            let thePath : CGMutablePathRef = CGPathCreateMutable();
            CGPathMoveToPoint(thePath, nil, 160.0, 200.0);
            CGPathAddCurveToPoint(thePath, nil, 83.0, 50.0, 100.0, 100.0, 160.0, 200.0);
            //CGPathAddCurveToPoint(thePath, nil, 320.0, 500.0, 566.0, 500.0, 566.0, 74.0);
            let theAnimation: CAKeyframeAnimation = CAKeyframeAnimation(keyPath:"position")
            theAnimation.path = thePath
            theAnimation.duration = 5.0
            
            theAnimation.fillMode = kCAFillModeForwards
            theAnimation.removedOnCompletion = false
            
            let resizeAnimation:CABasicAnimation = CABasicAnimation(keyPath:"bounds.size")
            resizeAnimation.toValue = NSValue(CGSize:CGSizeMake(240, 60))
            
            //SAMPLE 2
            resizeAnimation.duration = 5.0
            resizeAnimation.fillMode = kCAFillModeForwards
            resizeAnimation.removedOnCompletion = false
            
            subLayer.addAnimation(theAnimation, forKey: "position")
            
            imageView.layer.addAnimation(resizeAnimation, forKey: "bounds.size")
            
            position = false
        }
        else{
            
            let animation:CABasicAnimation! = CABasicAnimation(keyPath:"position")
            
            animation.fromValue = NSValue(CGPoint:CGPointMake(160, 200))
            
            //SAMPLE 2
            animation.fillMode = kCAFillModeForwards
            animation.removedOnCompletion = false
            
            let resizeAnimation:CABasicAnimation = CABasicAnimation(keyPath:"bounds.size")
            resizeAnimation.fromValue = NSValue(CGSize:CGSizeMake(240, 60))
            
            //SAMPLE 2
            resizeAnimation.fillMode = kCAFillModeForwards
            resizeAnimation.removedOnCompletion = false
            
            imageView.layer.addAnimation(animation, forKey: "position")
            
            imageView.layer.addAnimation(resizeAnimation, forKey: "bounds.size")
            
            position = true
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
