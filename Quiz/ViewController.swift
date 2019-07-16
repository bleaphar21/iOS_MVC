//
//  Modified from iOS Programming, Big Nerd Ranch
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    //Quiz Model
    let questions: [String] = [
        "What is the captial of Colorado?",
        "Who coined the term 'debugging'?",
        "Below what temperature do mosquitos stop flying?",
        "Who wrote the popular 2014 song 'Tuesday' feat. Drake?"
    ]
    let answers: [String] = [
        "Denver",
        "Grace Hopper",
        "50 degrees F",
        "IloveMakonnen"
    ]
    var currentQuestionIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }

}

