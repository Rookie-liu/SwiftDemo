//
//  tableViewViewController.swift
//  TableViewWithPropertyList
//
//  Created by Rookie on 16/1/19.
//  Copyright © 2016年 Rookie. All rights reserved.
//

import UIKit
//这里添加的两个代理其实是为了下面写方法可以有提示, 仅此而已
class tableViewViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var dataSourcesDic : NSDictionary?  //Global Variable
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let plistName:String = "Property List.plist"
        let finalPath:NSString = (NSBundle.mainBundle().bundlePath as NSString).stringByAppendingPathComponent(plistName  as String)
        dataSourcesDic = NSDictionary(contentsOfFile: finalPath as String)
        tableView.contentInset =  UIEdgeInsetsMake(64, 0, 0, 0)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSourcesDic!.count;
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:CustomTableViewCell = tableView.dequeueReusableCellWithIdentifier("tableViewCell") as! CustomTableViewCell
        
        let dataArray : AnyObject = dataSourcesDic?.objectForKey("cell\(indexPath.row)") as! NSDictionary
        
        cell.titleLabel.text = dataArray.objectForKey("title") as? String
        cell.contentLabel.text = dataArray.objectForKey("subtitle") as? String
        cell.showImageView.image = UIImage(named: dataArray.objectForKey("image") as! String)
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        NSLog("%d", indexPath.row)
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
