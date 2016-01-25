//
//  DoubleTabViewController.swift
//  Gestures
//
//  Created by Rookie on 16/1/21.
//  Copyright © 2016年 Rookie. All rights reserved.
//

import UIKit

class DoubleTabViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let tapGesture = UITapGestureRecognizer(target: self, action: "doubleTap:" )
        tapGesture.numberOfTapsRequired = 2
        self.imageView.addGestureRecognizer(tapGesture)
    }
    
    @IBAction func doubleTap(sender : UIGestureRecognizer) {
        if(sender.view?.contentMode == UIViewContentMode.ScaleAspectFit ) {
            sender.view?.contentMode = UIViewContentMode.Center
        }else if(sender.view?.contentMode == UIViewContentMode.Center){
            sender.view?.contentMode = UIViewContentMode.Left
        }else if(sender.view?.contentMode == UIViewContentMode.Left) {
            sender.view?.contentMode = UIViewContentMode.Bottom
        }else if(sender.view?.contentMode == UIViewContentMode.Bottom) {
            sender.view?.contentMode = UIViewContentMode.ScaleToFill
        }else {
            sender.view?.contentMode = UIViewContentMode.ScaleAspectFit
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
