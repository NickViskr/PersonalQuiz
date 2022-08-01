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
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
//        view.window?.rootViewController?.dismiss(animated: true) используется если нет NavigationController
        navigationController?.dismiss(animated: true)
    }
    

}
