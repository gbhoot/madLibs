//
//  CreateLibVC.swift
//  madLibs
//
//  Created by Gurpal Bhoot on 10/31/18.
//  Copyright © 2018 Gurpal Bhoot. All rights reserved.
//

import UIKit

class CreateLibVC: UIViewController {
    
    // Outlets
    @IBOutlet weak var adjectiveTextField: UITextField!
    @IBOutlet weak var animalTextField: UITextField!
    @IBOutlet weak var verbTextField: UITextField!
    @IBOutlet weak var nounTextField: UITextField!
    
    // Variables
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("preparing for segue")
        if let destination = segue.destination as? MainVC {
            print("setting the vars")
            print(adjectiveTextField.text!)
            destination.adjective = adjectiveTextField.text!
            destination.animal = animalTextField.text!
            destination.verb = verbTextField.text!
            destination.noun = nounTextField.text!
        }
    }
    
    @IBAction func submitButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: ID_SEGUE_UNWIND_MAIN, sender: nil)
    }
    
}
