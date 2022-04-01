//
//  Category.swift
//  Todoey
//
//  Created by Rafsan Al Mamun on 1/4/22.
//  Copyright © 2022 Rafsan Al Mamun. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    let items = List<Item>()
}
