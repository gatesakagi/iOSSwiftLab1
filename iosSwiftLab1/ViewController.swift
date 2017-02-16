//
//  ViewController.swift
//  iosSwiftLab1
//
//  Created by gatesakagi on 2017/2/15.
//  Copyright © 2017年 gatesakagi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var destinationArray = [String]()

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let mainTableVC = segue.destination.childViewControllers[0] as! MainTableViewController
        let articleTableVC = segue.destination.childViewControllers[1] as! ArticleTableViewController

        if segue.identifier == "segueBtn1" {
            mainTableVC.titleString = "唐詩"
            mainTableVC.destinationArray = readPlist(targetIndex: 0)
            articleTableVC.destinationArray = readPlist(targetIndex: 0)
        } else if segue.identifier == "segueBtn2" {
            mainTableVC.titleString = "宋詞"
            mainTableVC.destinationArray = readPlist(targetIndex: 1)
            articleTableVC.destinationArray = readPlist(targetIndex: 1)
        } else if segue.identifier == "segueBtn3" {
            mainTableVC.titleString = "元曲"
            mainTableVC.destinationArray = readPlist(targetIndex: 2)
            articleTableVC.destinationArray = readPlist(targetIndex: 2)
        }
        
    }
    
    func readPlist(targetIndex:Int) -> NSMutableArray {
        let path:String? = Bundle.main.path(forResource: "lab1data", ofType: "plist")
        let readplistArray = NSMutableArray(contentsOfFile: path!)!
        return readplistArray[targetIndex] as! NSMutableArray
    }
}

