//
//  QuestionsViewController.swift
//  PersonalQuiz
//
//  Created by Николай Выскребенцев on 19.07.2022.
//

import UIKit

class QuestionsViewController: UIViewController {
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var questionProgressView: UIProgressView!
    
    @IBOutlet var singleStackView: UIStackView!
    @IBOutlet var singleButtons: [UIButton]!
    
    @IBOutlet var multipleStackView: UIStackView!
    @IBOutlet var multipleLabels: [UILabel]!
    @IBOutlet var multipleSwitches: [UISwitch]!
    @IBOutlet var rangeStackView: UIStackView!
    @IBOutlet var rangedLabels: [UILabel]!
    @IBOutlet var rangedSlider: UISlider!
    
    
    private let question = Question.getQuestions()
    private var questionIndex = 0
    private var currentAnswers: [Answer] {
        question[questionIndex].answers
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }

    @IBAction func singleButtonAnswerPressed(_ sender: UIButton) {
    }
    @IBAction func multipleAnswerButtonPressed() {
    }
    
    @IBAction func rangedAnswerButtonPressed() {
    }
    
    
}

// MARK: - Private Methods

extension QuestionsViewController {
    private func updateUI() {
        // Hide stacks
        for stackView in [singleStackView, multipleStackView, rangeStackView] {
            stackView?.isHidden = true
        }
        // можно и так
//        singleStackView?.isHidden = true
//        multipleStackView?.isHidden = true
//        rangeStackView?.isHidden = true
        
        // Get current question
        
        let currentQuestion = question[questionIndex]
        
        // Set current question for question label
        questionLabel?.text = currentQuestion.title
        
        // Calculate progress
        let totalProgress = Float(questionIndex) / Float(question.count)
        
        // Set progress for questionProgressView
        
        questionProgressView?.setProgress(totalProgress, animated: true)
        
        // новое ваввававввыывыаы
        
        // Set navigation title
        title = "Вопрос № \(questionIndex + 1) из \(question.count)"
        
        showCurrentAnswers(for: currentQuestion.responseType)
        
    }
    private func showCurrentAnswers(for type: ResponseType) {
        switch type {
        case .single: showSingleStackView(with: currentAnswers)
        case .multiple: break
        case .ranger: break
        }
    }
    
    private func showSingleStackView(with answers: [Answer]) {
        singleStackView.isHidden = false
        
        for (button, answer) in zip(singleButtons, answers) {
            button.setTitle(answer.title, for: .normal)
        }
    }
}
