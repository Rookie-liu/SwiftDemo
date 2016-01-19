//
//  CustomViewController.swift
//  tableViewDemo
//
//  Created by Rookie on 16/1/19.
//  Copyright © 2016年 Rookie. All rights reserved.
//

import UIKit

class tableViewCellT: UITableViewCell {
    
    @IBOutlet weak var labelT: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    required init(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)!
    }
}

class CustomViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.contentInset = UIEdgeInsetsMake(64, 0, 0, 0)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //number of rows
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20;
    }
    
    //Custom Cells
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell : tableViewCellT = tableView.dequeueReusableCellWithIdentifier("tableViewCell", forIndexPath: indexPath) as! tableViewCellT

        if(indexPath.row % 2 == 0) {
            cell.labelT.text = "我是可以被2整除的😊"
            cell.labelT.textColor = UIColor.yellowColor()
            cell.backgroundColor = UIColor.lightGrayColor()
        }else {
            cell.backgroundColor = UIColor.whiteColor()
            cell.labelT.text = "我是没有被整除的😢"
            cell.labelT.textColor = UIColor.redColor()
        }
        
        return cell
    }
    
    //cell did select
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        NSLog("%d", indexPath.row)
    }
    
    // tableView reloadData
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
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
