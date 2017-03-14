//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Roger Villarreal on 12/12/16.
//  Copyright © 2016 Roger Villarreal. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var definitionLabel: UILabel!
    @IBOutlet var categoryTextLabel: UILabel!
    @IBOutlet var birthYearTextLabel: UILabel!
    
    var emoji = Emoji()
    override func viewDidLoad() {
        mainLabel.text = emoji.emojiString
        definitionLabel.text = emoji.definition
        birthYearTextLabel.text = "Birth Year: \(emoji.dateCreated)"
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
}
