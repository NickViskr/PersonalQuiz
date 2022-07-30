//
//  QuestionsViewController.swift
//  PersonalQuiz
//
//  Created by Николай Выскребенцев on 19.07.2022.
//

import UIKit

class QuestionsViewController: UIViewController {
    
    @IBOutlet var singleStackView: UIStackView!
    
    private let question = Question.getQuestions()
    @IBOutlet var singleButtons: [UIButton]!
    
    @IBOutlet var multipleStackView: UIStackView!// рпвппапапа
    @IBOutlet var multipleLabels: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

