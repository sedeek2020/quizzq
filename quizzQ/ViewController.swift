//
//  ViewController.swift
//  quizzQ
//
//  Created by sedeek Reda on 12/22/17.
//  Copyright © 2017 sedeek Reda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
 
    let questions = QuesBank()
    var pickedAnswer = false
    var numberOfQuestion = 0
    var score = 0
    

   
    @IBOutlet weak var prograssBar: UIView!
    @IBOutlet weak var pointLable: UILabel!
    @IBOutlet weak var scoreLable: UILabel!
    @IBOutlet weak var quesLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
      updateUI()
    }

  
    func nextQuestion(){
        if numberOfQuestion <= 12 {
           quesLable.text! = questions.list[numberOfQuestion].Ques
            
        }else{
          let alert = UIAlertController(title: "End Of Quizz", message: "You Have Finshed The Quizz", preferredStyle: .alert)
            let restartAlert = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
                self.startOver()
            })
            alert.addAction(restartAlert)
            present(alert, animated: true, completion: nil)
        }
      
        
    }
    func checkAnswer(){
      let correctAnswer = questions.list[numberOfQuestion].answer
        if correctAnswer == pickedAnswer {
            ProgressHUD.showSuccess("Correct")
             score += 10
        }else{
           ProgressHUD.showError("Wrong!")
        }
    }
    func startOver(){
        numberOfQuestion = 0
        score = 0
        updateUI()
        
    }
    @IBAction func btn(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        }else  if sender.tag == 2{
            pickedAnswer = false
        }
        checkAnswer()
       numberOfQuestion += 1
       
        
        updateUI()
     
    }
    func updateUI(){
         prograssBar.frame.size.width = CGFloat(view.frame.size.width / 13) * CGFloat(numberOfQuestion)
        scoreLable.text = "Score: \(score)"
        pointLable.text = "\(numberOfQuestion)/13"
        
       nextQuestion()
        
        
    }
    
  
}

