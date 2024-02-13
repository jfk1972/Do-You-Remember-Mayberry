//
//  ViewController.swift
//
//  Credits to Angela Yu
//  The App Brewery
//
//




import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    //Added another button and a corroponding outlet.
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var choice3: UIButton!
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var scoreLabel2: UILabel!
    @IBOutlet weak var gameOverLabel: UILabel!
    
    var quizModel = QuizModel()
    var timerInterval = 1.5
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        updateUI()
    }

    //New button needs to be linked to this IBAction too.
    @IBAction func answerButtonPressed(_ sender: UIButton)
    {
        let userAnswer = sender.currentTitle!
        
        let userGotItRight = quizModel.checkAnswer(userAnswer: userAnswer)
        
        if userGotItRight
        {
            sender.backgroundColor = UIColor.green
            timerInterval = 0.5
            questionLabel.text = "Correct"
        } else
        {
            sender.backgroundColor = UIColor.red
            timerInterval = 0.5
            questionLabel.text = "Sorry, that is not correct. \nThe correct answer is \(quizModel.getCorrectAnswer())"
        }
        
        quizModel.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: timerInterval, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI()
    {
        questionLabel.text = quizModel.getQuestionText()
        //Need to fetch the answers and update the button titles using the setTitle method. 
        let answerChoices = quizModel.getAnswers()
        choice1.setTitle(answerChoices[0], for: .normal)
        choice2.setTitle(answerChoices[1], for: .normal)
        choice3.setTitle(answerChoices[2], for: .normal)
        
        progressBar.progress = quizModel.getProgress()
        scoreLabel.text = "Score: \(quizModel.getScore())"
        scoreLabel2.text = "Question  \(quizModel.questionNumber+1)  of  \(quizModel.quiz.count)"
        
        choice1.backgroundColor = UIColor.clear
        choice2.backgroundColor = UIColor.clear
        choice3.backgroundColor = UIColor.clear

    }
    func presentGameOver() {

        
    }

    
}


























