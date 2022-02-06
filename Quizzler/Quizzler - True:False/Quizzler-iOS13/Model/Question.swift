//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Rafsan Al Mamun on 3/2/22.
//  Copyright © 2022 Rafsan Al Mamun. All rights reserved.
//

import Foundation

struct Question {
    
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
