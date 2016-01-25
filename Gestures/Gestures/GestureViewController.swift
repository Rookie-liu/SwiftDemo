//
//  GestureViewController.swift
//  Gestures
//
//  Created by Rookie on 16/1/22.
//  Copyright © 2016年 Rookie. All rights reserved.
//

import UIKit

class GestureViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    var netRotation:CGFloat = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = UIImage(named: "image1.png")
        // Do any additional setup after loading the view.
        let rotateGesture = UIRotationGestureRecognizer(target: self, action: "rotateGesture:")
        imageView.addGestureRecognizer(rotateGesture)
        
        let swipeGestureRight = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
        swipeGestureRight.direction = UISwipeGestureRecognizerDirection.Right
        imageView.addGestureRecognizer(swipeGestureRight)
        
        let swipeGestureDown = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
        swipeGestureDown.direction = UISwipeGestureRecognizerDirection.Down
        imageView.addGestureRecognizer(swipeGestureDown)
        
        let swipeGestureLeft = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
        swipeGestureLeft.direction = UISwipeGestureRecognizerDirection.Left
        imageView.addGestureRecognizer(swipeGestureLeft)
        
        let swipeGestureUp = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
        swipeGestureUp.direction = UISwipeGestureRecognizerDirection.Up
        imageView.addGestureRecognizer(swipeGestureUp)
        
        let longPressGesture = UILongPressGestureRecognizer(target: self, action: "action:")
        longPressGesture.minimumPressDuration = 1.0
        imageView.addGestureRecognizer(longPressGesture)
        
    }
    
    
    func rotateGesture(sender : UIRotationGestureRecognizer) {
        let rotation:CGFloat = sender.rotation
        let transform : CGAffineTransform = CGAffineTransformMakeRotation(rotation + self.netRotation)
        sender.view?.transform = transform
        if sender.state == UIGestureRecognizerState.Ended {
            netRotation += rotation
        }
    }
    
    
    func respondToSwipeGesture(sender : UIGestureRecognizer) {
        if let swipeGesture = sender as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.Right:
                changeImage()
                print("Swiped Right")
                
            case UISwipeGestureRecognizerDirection.Down:
                changeImage()
                print("Swiped Down")
            case UISwipeGestureRecognizerDirection.Left:
                changeImage()
                print("Swiped Left")
            case UISwipeGestureRecognizerDirection.Up:
                changeImage()
                print("Swiped Up")
            default:
                break
            }
        }
    }
    
    func action(gestureRecognizer:UIGestureRecognizer) {
        if gestureRecognizer.state == UIGestureRecognizerState.Began {
            
            let alertController = UIAlertController(title: "Alert", message: "Long Press gesture", preferredStyle: .Alert)
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in }
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true) { }
        }
    }
    
    func changeImage() {
        if imageView.image == UIImage(named: "apple") {
            imageView.image = UIImage(named: "image1")
        }else {
            imageView.image = UIImage(named: "apple")
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
