//
//  Animation1ViewController.swift
//  CoreAnimation
//
//  Created by Rookie on 16/1/20.
//  Copyright © 2016年 Rookie. All rights reserved.
//

import UIKit

class Animation1ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func buttonClicked(sender: AnyObject) {
        let animation:CABasicAnimation = CABasicAnimation(keyPath: "position")
        animation.fromValue = NSValue(CGPoint:CGPointMake(imageView.frame.midX, imageView.frame.midY))
        animation.toValue = NSValue(CGPoint:CGPointMake(imageView.frame.midX, 500))
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
        animation.duration = 0.4;
        imageView.layer.addAnimation(animation, forKey: "position")
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
