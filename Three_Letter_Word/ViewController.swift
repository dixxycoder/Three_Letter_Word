//
//  ViewController.swift
//  Three_Letter_Word
//
//  Created by Grant Spraker on 11/4/21.
//

import UIKit

class ViewController: UIViewController
{
    //declaring varbuls and Outlets
    @IBOutlet weak var currentLetterLabel: UILabel!
    
    @IBOutlet weak var a_Label: UILabel!
    
    @IBOutlet weak var horanzoltleView: UIStackView!
    
    @IBOutlet var letterLabels: [UILabel]!
    
    var alphubet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
   
    var i = 0
    var currentLetter = "a"
    
    
//    var letter1 = ""
//    var letter2 = ""
//    var letter3 = ""
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    @IBAction func tapLetter(_ sender: UITapGestureRecognizer)
    {
        currentLetter = alphubet[i]
        
        currentLetterLabel.text = currentLetter
    }
    
}

