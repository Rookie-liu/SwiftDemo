//
//  PinchGestureViewController.swift
//  Gestures
//
//  Created by Rookie on 16/1/21.
//  Copyright © 2016年 Rookie. All rights reserved.
//

import UIKit

class PinchGestureViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var lastScaleFactor:CGFloat = 1.0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let pinchGesture :UIPinchGestureRecognizer = UIPinchGestureRecognizer(target: self, action: "pinchGesture:")
        imageView.addGestureRecognizer(pinchGesture)
        
    }
    func pinchGesture(sender : UIPinchGestureRecognizer) {
        let factor = sender.scale
        if (factor > 1) {
            sender.view?.transform = CGAffineTransformMakeScale(
                lastScaleFactor + (factor-1),
                lastScaleFactor + (factor-1))
        }else {
            sender.view?.transform = CGAffineTransformMakeScale(
                lastScaleFactor * factor,
                lastScaleFactor * factor
            )
        }
        if(sender.state == UIGestureRecognizerState.Ended) {
            if(factor > 1) {
                lastScaleFactor += (factor-1)
            }else {
                lastScaleFactor *= factor
            }
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
