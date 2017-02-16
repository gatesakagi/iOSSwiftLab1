//
//  MainTableViewController.swift
//  iosSwiftLab1
//
//  Created by Gates on 2017/2/16.
//  Copyright © 2017年 gatesakagi. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    var titleString: String?
    var destinationArray: NSMutableArray = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = false
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.navigationItem.title = titleString
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return destinationArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let strRestorationIdentifier: String! = self.restorationIdentifier
        let cell = tableView.dequeueReusableCell(withIdentifier: strRestorationIdentifier, for: indexPath)
        let readDict = destinationArray[indexPath.row] as! NSDictionary
        if strRestorationIdentifier == "mainVC" {
            cell.textLabel?.text = readDict.value(forKey: "auther") as! String?
            
        } else if strRestorationIdentifier == "articleVC" {
            cell.textLabel?.text = readDict.value(forKey: "title") as! String?
        }
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let detailVC = segue.destination as! DetailViewController
        
            let selectedCellIndex = tableView.indexPathForSelectedRow?.row
            let readDict = destinationArray[selectedCellIndex!] as! NSDictionary
            detailVC.titleString = readDict.value(forKey: "auther") as! String?
            detailVC.titleLabelString = readDict.value(forKey: "title") as! String?
            detailVC.contentTextViewString = readDict.value(forKey: "content") as! String?
    }
}
