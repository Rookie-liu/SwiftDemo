//
//  ViewController.swift
//  tableViewDemo
//
//  Created by Rookie on 16/1/18.
//  Copyright © 2016年 Rookie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.contentInset = UIEdgeInsetsMake(64, 0, 0, 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //Number of rows
    func tableView(tableView: UITableView, numberOfRowsInSection section:
        Int) -> Int{
            return 10
    }
    
    //DetailCells
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:
        NSIndexPath) -> UITableViewCell{
            let cell:UITableViewCell = UITableViewCell(style:
                UITableViewCellStyle.Subtitle, reuseIdentifier: nil)
            cell.textLabel!.text = "Cell text"
            cell.detailTextLabel?.text = "Cell Subtitle"
            cell.imageView!.image = UIImage(named:"image1.png")
            return cell
    }
    //Title
    func tableView(tableView: UITableView, titleForHeaderInSection section:
        Int) -> String?{
            return "Head"
    }
    //Foot Subtitle
    func tableView(tableView: UITableView, titleForFooterInSection section:
        Int) -> String?{
            return "Foot"
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        NSLog("%d", indexPath.row)
    }


}

