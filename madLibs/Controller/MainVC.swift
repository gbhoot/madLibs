//
//  ViewController.swift
//  madLibs
//
//  Created by Gurpal Bhoot on 10/31/18.
//  Copyright © 2018 Gurpal Bhoot. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    // Outlets
    @IBOutlet var outputLbl: UILabel!
    
    // Variables
    var finalSentence = "..."
    var adjective = ""
    var animal = ""
    var verb = ""
    var noun = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setupView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        setupView()
    }
    
    func setupView() {
        if adjective != "" {
            finalSentence = "The very \(adjective), funny looking \(animal) was about to \(verb) when he was stopped by a \(noun)."
        }
        
        outputLbl.text = finalSentence
    }
    
    // IB-Action
    @IBAction func unwindToMainVC(segue: UIStoryboardSegue){}
}

