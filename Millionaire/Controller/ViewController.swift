//
//  ViewController.swift
//  Millionaire
//
//  Created by Nick Khachatryan on 30.10.2020.
//

import UIKit
class ViewController: UIViewController {
    
    //  MARK: - OUTLETS
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var answerButtons: [UIButton]!
    @IBOutlet var answerLabel: [UILabel]!
    @IBOutlet var answerImages: [UIImageView]!
    @IBOutlet weak var questionButtonOutlet: UIButton!
    
    
    //  MARK: - CUSTOM PROPERTIES
    var millionareBrain = MillionaireBrain()
    var timer = Timer()
    var isPressed = false
    
    
    //  MARK: - VC LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        setTextQuestionsAbdAnswers()
    }
    
    
    //  MARK: - ACTIONS
    @IBAction func changeQuestion(_ sender: UIButton) {
        if sender.tag == 1 {
            if isPressed{
                millionareBrain.nextQuestion()
                setTextQuestionsAbdAnswers()
                isPressed = false
                } else {
                questionLabel.text = "Вы не ответили"
            }
            returnsButton()
            print("QUESTION" , isPressed)
        } else {
            changeImages(tag: sender.tag - 2)
            hiddenButtons()
            print("ANSWER")
            isPressed = true
            questionButtonOutlet.isHidden = true
        }
        
    }
    
    
    //  MARK: - FUNCTIONS
    func setTextQuestionsAbdAnswers(){
        questionLabel.text = millionareBrain.getQuestion()
        
        answerLabel[0].text = millionareBrain.getAnswerA()
        answerLabel[1].text = millionareBrain.getAnswerB()
        answerLabel[2].text = millionareBrain.getAnswerC()
        answerLabel[3].text = millionareBrain.getAnswerD()
        
        setBlackImage()
        
        progressBar.progress = millionareBrain.getProgressStatus()
        scoreLabel.text = millionareBrain.startScore()
    }
    
    func changeImages(tag: Int){
        if tag == 0 || tag == 2 {
            blinkAnimation(img: answerImages[tag], letter: "L")
        } else {
            blinkAnimation(img: answerImages[tag], letter: "R")
        }
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3 * 6) {
            self.timer.invalidate()
            self.questionButtonOutlet.isHidden = false
            
          let isCorrectAnswer = self.millionareBrain.checkAnswer(tag: tag)
            
            self.scoreLabel.text = self.millionareBrain.countingScore(isTrue: isCorrectAnswer)
            
            switch tag {
            case 0:
                
                if isCorrectAnswer {
                    self.answerImages[tag].image = UIImage(named: "correctL")
                } else {
                    self.answerImages[tag].image = UIImage(named: "waitingL")
                }
                
            case 1:
                
                if isCorrectAnswer {
                    self.answerImages[tag].image = UIImage(named: "correctL")
                } else {
                    self.answerImages[tag].image = UIImage(named: "waitingL")
                }
                
            case 2:
                
                if isCorrectAnswer {
                    self.answerImages[tag].image = UIImage(named: "correctL")
                } else {
                    self.answerImages[tag].image = UIImage(named: "waitingL")
                }
                
            case 3:
                
                if isCorrectAnswer {
                    self.answerImages[tag].image = UIImage(named: "correctR")
                } else {
                    self.answerImages[tag].image = UIImage(named: "waitingR")
                }
            default:
                print("Error")
            }
        }
    }
    
    func setBlackImage(){
        answerImages[0].image = UIImage(named: "answerL")
        answerImages[1].image = UIImage(named: "answerR")
        answerImages[2].image = UIImage(named: "answerL")
        answerImages[3].image = UIImage(named: "answerR")
    }
    
    
    func hiddenButtons(){
        answerButtons[0].isHidden = true
        answerButtons[1].isHidden = true
        answerButtons[2].isHidden = true
        answerButtons[3].isHidden = true
    }
    func returnsButton(){
        answerButtons[0].isHidden = false
        answerButtons[1].isHidden = false
        answerButtons[2].isHidden = false
        answerButtons[3].isHidden = false
    }
    
    func blinkAnimation(img : UIImageView, letter : String){
        var count = 1
        timer = Timer.scheduledTimer(withTimeInterval: 0.3, repeats: true, block: { (timerInBlock) in
            count += 1
            if count % 2 == 0 {
                img.image = UIImage(named: "waiting" + letter)
            } else {
                img.image = UIImage(named: "answer" + letter)
            }
        })
    }
}

