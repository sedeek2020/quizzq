//
//  QuesBank.swift
//  quizzQ
//
//  Created by sedeek Reda on 12/22/17.
//  Copyright © 2017 sedeek Reda. All rights reserved.
//

import Foundation
class QuestionsBank {
    var list = [Constraint]()
    init() {
        let item = Constraint(ques: "Is There a Man", answer: true)
         list.append(item)
         list.append(Constraint(ques: "Is There a Women",answer: true))
         list.append(Constraint(ques: "Is There a Boys",answer: false))
         list.append(Constraint(ques: "Is There a Girls",answer: true))
         list.append(Constraint(ques: "Is There a Animal",answer: false))
         list.append(Constraint(ques: "Is There a Carton",answer: true))
         list.append(Constraint(ques: "Is There a Car",answer: false))
         list.append(Constraint(ques: "Is There a Women",answer: true))
         list.append(Constraint(ques: "Is There a Garden",answer: true))
         list.append(Constraint(ques: "Is There a Ice",answer: false))
         list.append(Constraint(ques: "Is There a Dainasor",answer: false))
         list.append(Constraint(ques: "Is There a Bus",answer: true))
         list.append(Constraint(ques: "Is There a Maboo",answer: false))
    }
}
