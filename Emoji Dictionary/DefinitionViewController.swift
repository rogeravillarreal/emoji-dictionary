//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Roger Villarreal on 12/12/16.
//  Copyright © 2016 Roger Villarreal. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    @IBOutlet weak var picLabel: UILabel!
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        picLabel.text = emoji
        
        if emoji == "😎" {
            definitionLabel.text = "Sunglasses man"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
