//
//  Item.swift
//  Todoey
//
//  Created by Rafsan Al Mamun on 1/4/22.
//  Copyright © 2022 Rafsan Al Mamun. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
