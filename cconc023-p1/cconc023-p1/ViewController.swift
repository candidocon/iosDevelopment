//  PROGRAMMER:     Candido Concepcion

//  PANTHERID:      2989348

//  CLASS:          COP 4655 RH1 1198

//  INSTRUCTOR:     Steve Luis  ECS 282

//  ASSIGNMENT:     Programming Assignment #1

//  DUE:            Wednesday 09/04/19

import UIKit

class ViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    @IBOutlet var questionCounterLabel: UILabel!
    @IBOutlet var answersCounterLabel: UILabel!
    
    let questions: [String] = [
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is cognac made from?"
    ]
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes"
    ]
    var currentQuestionIndex: Int = 0
    var questionsCounter: Int = 1
    var answersCounter: Int = 0
    
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        questionsCounter += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
        questionCounterLabel.text = "\(questionsCounter)"
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        if(answerLabel.text == "???"){
            answersCounter += 1
        }
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
        answersCounterLabel.text = "\(answersCounter)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
        questionCounterLabel.text = "\(questionsCounter)"
        answersCounterLabel.text = "\(answersCounter)"
    }
}

