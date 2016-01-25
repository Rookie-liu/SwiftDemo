//
//  RotateGestureViewController.swift
//  Gestures
//
//  Created by Rookie on 16/1/21.
//  Copyright © 2016年 Rookie. All rights reserved.
//

import UIKit

class RotateGestureViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var netRotation:CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let rotateGesture = UIRotationGestureRecognizer(target: self, action: "rotateGesture:")
        imageView.addGestureRecognizer(rotateGesture)
    }
    
    func rotateGesture(sender : UIRotationGestureRecognizer) {
        let rotation:CGFloat = sender.rotation
        let transform:CGAffineTransform = CGAffineTransformMakeRotation(rotation + self.netRotation)
        sender.view?.transform = transform
        if(sender.state == UIGestureRecognizerState.Ended) {
            netRotation += rotation
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
