//
//  ViewController.swift
//  YesNoApp
//
//  Created by Vermut xxx on 08.07.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var answerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answerButton.setTitleColor(.purple, for: .selected)
    }


    @IBAction func answerButtonAction(_ sender: Any) {
        let answer = Bool.random()
        answerLabel.text = ""
        answerLabel.highlightedTextColor = UIColor.purple
        answerLabel.isHighlighted = true
        self.answerButton.isSelected = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.answerLabel.text = answer ? "YES" : "NO"

        }
    }
}

