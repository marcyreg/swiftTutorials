//
//  ViewController.swift
//  ReadFilie
//
//  Created by Marcy Regalado on 9/30/15.
//  Copyright © 2015 Marcy Regalado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var miniNote: UITextField!
    @IBOutlet var fileContents: UITextView!
    let file = FileContentManager(file: "test.txt")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        fileContents.text = file.read()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onSaveFile(sender: AnyObject) {
        file.write(miniNote.text!)
    }

}

