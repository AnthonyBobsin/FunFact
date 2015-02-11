//
//  ViewController.swift
//  FunFacts
//
//  Created by Anthony Bobsin on 2015-02-10.
//  Copyright (c) 2015 Anthony Bobsin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    
    let factBook = FactBook()
    let colorWheel = ColorWheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factBook.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        var currentColor = colorWheel.randomColor()
        view.backgroundColor = currentColor
        funFactButton.tintColor = currentColor
        funFactLabel.text = factBook.randomFact()
    }
    
    
}

