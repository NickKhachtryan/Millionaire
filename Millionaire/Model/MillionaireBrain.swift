//
//  MillionaireBrain.swift
//  Millionaire
//
//  Created by Nick Khachatryan on 01.12.2020.
//

import Foundation
struct MillionaireBrain{
    
    
    //  MARK: - CUSTOM PROPERTIES
    let questionsAndAnswers = [
        Questions(question: "Какая игра хорошо знакома детсадовскому ребёнку?", answerA: ["A: Море волнуется раз", "True"], answerB: ["B: Океан бушует два", "False"], answerC: ["С: Речка бурлит три", "False"], answerD: ["D: Озеро штормит четыре", "False"]) ,
        Questions(question: "Как называется разновидность дудочки?", answerA: ["A: жилетка", "False"], answerB: ["B: утешайка", "False"], answerC: ["С: жалейка", "True"], answerD: ["D: обнимайка","False"]) ,
        Questions(question: "Что подтверждает соответствие продукции установленным требованиям и нормам?", answerA: ["A: сертификат", "True"], answerB: ["B: товарная накладная", "False"], answerC: ["С: штрихкод", "False"], answerD: ["D: товарный чек", "False"]) ,
        Questions(question: "У кого нормальная температура тела - 42 градуса?", answerA: ["A: у слона", "False"], answerB: ["B: у верблюда", "False"], answerC: ["С: у кита", "False"], answerD: ["D: у утки", "True"])
    ]
    var questionNum = 0
    var score = 0
       
    
    //  MARK: - FUNCTIONS
    func checkAnswer(tag : Int) -> Bool{
        let changeAnswer = questionsAndAnswers[questionNum]
        if tag == 0 && changeAnswer.answerA[1] == "True" {
            return true
        } else if tag == 1 && changeAnswer.answerC[1] == "True" {
            return true
        } else if tag == 2 && changeAnswer.answerA[1] == "True" {
            return true
        } else if tag == 3 && changeAnswer.answerD[1] == "True" {
            return true
        }
        return false
    }
    
    func getQuestion() -> String{
        return questionsAndAnswers[questionNum].question
    }
    
    func getAnswerA() -> String{
        return questionsAndAnswers[questionNum].answerA[0]
    }
    
    func getAnswerB() -> String{
        return questionsAndAnswers[questionNum].answerB[0]
    }
    
    func getAnswerC() -> String{
        return questionsAndAnswers[questionNum].answerC[0]
    }
    
    func getAnswerD() -> String{
        return questionsAndAnswers[questionNum].answerD[0]
    }

    mutating func nextQuestion() {
        if questionNum < questionsAndAnswers.count - 1 {
            questionNum += 1
        } else {
            questionNum = 0
        }
    }
    
    func getProgressStatus() -> Float{
        return Float(questionNum + 1) / Float(questionsAndAnswers.count)
    }
    
   mutating func countingScore(isTrue : Bool) -> String{
        if isTrue{
            score += 1
            return "score : \(score)/\(questionsAndAnswers.count)"
        }
    return "score : \(score)/\(questionsAndAnswers.count)"
    }
    
    mutating func startScore() -> String{
        if questionNum == 0{
            score = 0
            return "score : \(score)/\(questionsAndAnswers.count)"
        }
        return "score : \(score)/\(questionsAndAnswers.count)"
    }
}
