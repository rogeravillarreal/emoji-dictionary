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
    
    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        mainLabel.text = emoji
        
        switch emoji {
        case "😱":
            definitionLabel.text = "I am shocked"
        case "😍":
            definitionLabel.text = "I love this"
        case "👌":
            definitionLabel.text = "Very Nice"
        case "😈":
            definitionLabel.text = "I am the devil"
        case "💩":
            definitionLabel.text = "I am poop"
        default:
            definitionLabel.text = "I don't know"
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
}
