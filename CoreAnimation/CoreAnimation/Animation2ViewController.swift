//
//  Animation2ViewController.swift
//  CoreAnimation
//
//  Created by Rookie on 16/1/20.
//  Copyright © 2016年 Rookie. All rights reserved.
//

import UIKit

class Animation2ViewController: UIViewController {

    var position = true
    
    @IBOutlet weak var imageView: UIImageView!
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
            let animation:CABasicAnimation! = CABasicAnimation(keyPath:"position")
            
            
            animation.toValue = NSValue(CGPoint:CGPointMake(160, 200))
            
            //EXAMPLE2
            animation.fillMode = kCAFillModeForwards
            animation.removedOnCompletion = false
            
            let resizeAnimation:CABasicAnimation = CABasicAnimation(keyPath:"bounds.size")
            resizeAnimation.toValue = NSValue(CGSize:CGSizeMake(100, 100))
            
            //EXAMPLE2
            resizeAnimation.fillMode = kCAFillModeForwards
            resizeAnimation.removedOnCompletion = false
            
            imageView.layer.addAnimation(animation, forKey: "position")
            
            imageView.layer.addAnimation(resizeAnimation, forKey: "bounds.size")
            
            position = false
            
        }else {
            let animation:CABasicAnimation! = CABasicAnimation(keyPath:"position")
            
            animation.fromValue = NSValue(CGPoint:CGPointMake(160, 200))
            
            //EXAMPLE2
            animation.fillMode = kCAFillModeForwards
            animation.removedOnCompletion = false
            
            let resizeAnimation:CABasicAnimation = CABasicAnimation(keyPath:"bounds.size")
            resizeAnimation.fromValue = NSValue(CGSize:CGSizeMake(100, 100))
            
            //EXAMPLE2
            resizeAnimation.fillMode = kCAFillModeForwards
            resizeAnimation.removedOnCompletion = false
            
            imageView.layer.addAnimation(animation, forKey: "position")
            
            imageView.layer.addAnimation(resizeAnimation, forKey: "bounds.size")
            
            position = true
            
            
        }
        
        
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
