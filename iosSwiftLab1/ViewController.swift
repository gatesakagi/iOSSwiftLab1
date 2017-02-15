//
//  ViewController.swift
//  iosSwiftLab1
//
//  Created by gatesakagi on 2017/2/15.
//  Copyright © 2017年 gatesakagi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueBtn1" {

            self.tabBarController?.navigationItem.title = "唐詩"
        } else if segue.identifier == "segueBtn2" {
            self.tabBarController?.title = "宋詞"
        } else if segue.identifier == "segueBtn3" {
            self.tabBarController?.title = "元曲"
        }
        print(segue.identifier)
    }
}

