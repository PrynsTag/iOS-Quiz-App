//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Prince Carl Velasco on 5/17/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let title: String
    let answer: String
    
    init(q: String, a: String) {
        title = q
        answer = a
    }
}
