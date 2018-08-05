//
//  ViewController.swift
//  二択クイズ
//
//  Created by Namiki Nakano on 2018/08/05.
//  Copyright © 2018年 nakano.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    
    var currentQuestionNum:Int = 0
    
    let questions : [ [ String : Any ] ] = [
    
             [
    
                "q" : "フォフォフォですか" ,
                "a" : false
        ],
             
             [
                
                "q" : "フォフォファですか" ,
                "a" : true
    
    ],
             
             [
    
                "q" : "ファフォファですか" ,
                "a" : true
                
    
        ]
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showQuestion()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tappedNoButton(_ sender: UIButton) {
        checkAnswer(youtAnswer:   false )
    }
    
   
    @IBAction func tappedYesButton(_ sender: UIButton) {
         checkAnswer(youtAnswer:   true )
    }
    func showQuestion ( ) {
            let question = questions[ currentQuestionNum ]
            
            if let questionText = question["q"] as? String {
            questionLabel.text = questionText
            
        }
    }
    
    func checkAnswer ( youtAnswer :     Bool ) {
        let question  = questions[ currentQuestionNum ]
        
        if let ans = question[ "a" ] as? Bool {
            if youtAnswer == ans {
                
                currentQuestionNum += 1
            }else{
                
            }
        }
        if currentQuestionNum >= questions.count  {
                currentQuestionNum = 0
        }
        
        showQuestion()
    }
    
    
}

