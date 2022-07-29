//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Николай Выскребенцев on 29.07.2022.
//

import UIKit

class ResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    
    @IBAction func doneButtonPressed(_ sender: Any) {
        view.window?.rootViewController?.dismiss(animated: true)
    }
    

}
