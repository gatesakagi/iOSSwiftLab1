//
//  ArticleTableViewController.swift
//  iosSwiftLab1
//
//  Created by gatesakagi on 2017/2/16.
//  Copyright © 2017年 gatesakagi. All rights reserved.
//

import UIKit

class ArticleTableViewController: UITableViewController {
    
    var destinationArray: NSMutableArray = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return destinationArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        let readDict:NSDictionary = destinationArray[indexPath.row] as! NSDictionary
        cell.textLabel?.text = readDict.value(forKey: "title") as! String?
        
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let detailVC = segue.destination as! DetailViewController
        
        if segue.identifier == "seguefromArticleVC" {
            let selectedCellIndex = tableView.indexPathForSelectedRow?.row
            let readDict = destinationArray[selectedCellIndex!] as! NSDictionary
            detailVC.titleString = readDict.value(forKey: "auther") as! String?
            detailVC.titleLabelString = readDict.value(forKey: "title") as! String?
            detailVC.contentTextViewString = readDict.value(forKey: "content") as! String?
        }
    }

}
