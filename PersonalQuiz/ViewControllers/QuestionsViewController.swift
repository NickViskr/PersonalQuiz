//
//  QuestionsViewController.swift
//  PersonalQuiz
//
//  Created by Николай Выскребенцев on 19.07.2022.
//

import UIKit

class QuestionsViewController: UIViewController {
    
    @IBOutlet var singleStackView: UIStackView!
    @IBOutlet var singleButtons: [UIButton]!
    
    @IBOutlet var multipleStackView: UIStackView!
    @IBOutlet var multipleLabels: [UILabel]!
    @IBOutlet var multipleSwitches: [UISwitch]!
    @IBOutlet var rangeStackView: UIStackView!
    @IBOutlet var rangedLabels: [UILabel]!
    
    
    private let question = Question.getQuestions()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

