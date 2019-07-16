//
//  Modified from iOS Programming, Big Nerd Ranch
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    //Quiz Model moved to the Quiz class, create a new object reference here
    let quizzy:Quiz = Quiz()
    var currentQuestionIndex: Int = 0
    
    //TODO : Modify the functions below to use the quizzy object's properties and methods instead of the array values
    override func viewDidLoad() {
        super.viewDidLoad()
       // questionLabel.text = questions[currentQuestionIndex] //The questions array has been moved to the quiz class, use the quizzy reference to access it
        questionLabel.text = quizzy.question(number: currentQuestionIndex)
    }
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == quizzy.count { //The quiz class has a computed property for the number of questions
            currentQuestionIndex = 0
        }
        
        let question: String = quizzy.question(number: currentQuestionIndex)
            //questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        let answer: String = quizzy.answer(number: currentQuestionIndex)
            //answers[currentQuestionIndex] //The answers array has been moved to the quiz class, use the quizzy reference to access it
        answerLabel.text = answer
    }

}

