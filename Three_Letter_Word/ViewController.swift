/*
  ViewController.swift
  Three_Letter_Word

  Created by Grant Spraker on 11/4/21.
*/

import  UIKit

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
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    @IBAction func tapLetter(_ sender: UITapGestureRecognizer)
    {
        //Initialize Current Letter & Label
        currentLetter = alphubet[i]
        
        a_Label.text = currentLetter
        
        //Reconized where the user is tapping
        let selectedPoint = sender.location(in: horanzoltleView)
        
        for label in letterLabels
        {
            if
                label.frame.contains(selectedPoint)
            {
                label.text = "\(currentLetter)"
            }
        }
        
        i += 1
        
        if i == 26
        {
            i = 0
            currentLetter = alphubet[i] // good
            currentLetterLabel.text = currentLetter
            for label in
                self.letterLabels
            {
                label.text = "?"
            }
        }
        
        
        
        
        
        
        
    }
    
}

