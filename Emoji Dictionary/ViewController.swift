//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Roger Villarreal on 12/12/16.
//  Copyright © 2016 Roger Villarreal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var emojis: [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        emojis = createEmojiArray()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = String(emojis[indexPath.row].dateCreated)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! String
    }
    
    func createEmojiArray() -> [Emoji] {
        
        let emoji1 = Emoji()
        emoji1.emojiString = "😱"
        emoji1.definition = "Surpised"
        emoji1.dateCreated = 2011
        emoji1.category = "Smiley"
        
        let emoji2 = Emoji()
        emoji2.emojiString = "😍"
        emoji2.definition = "In Love"
        emoji2.dateCreated = 2000
        emoji2.category = "Face Emoji"
        
        let emoji3 = Emoji()
        emoji3.emojiString = "👌"
        emoji3.definition = "Okay"
        emoji3.dateCreated = 2001
        emoji3.category = "Hand"
        
        return [emoji1, emoji2, emoji3]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

