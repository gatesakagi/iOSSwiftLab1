//
//  DetailViewController.swift
//  iosSwiftLab1
//
//  Created by gatesakagi on 2017/2/16.
//  Copyright © 2017年 gatesakagi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentTextView: UITextView!
    var titleString: String?
    var titleLabelString: String?
    var contentTextViewString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = titleString
        titleLabel.text = titleLabelString
        
        contentTextViewString = contentTextViewString?.replacingOccurrences(of: "，", with: "，\n", options: .literal, range: nil)
        contentTextViewString = contentTextViewString?.replacingOccurrences(of: "。", with: "。\n", options: .literal, range: nil)
        contentTextViewString = contentTextViewString?.replacingOccurrences(of: "、", with: "、\n", options: .literal, range: nil)
        contentTextViewString = contentTextViewString?.replacingOccurrences(of: "？", with: "？\n", options: .literal, range: nil)
        contentTextView.text = contentTextViewString
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
