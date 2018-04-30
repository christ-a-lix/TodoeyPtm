//
//  Item.swift
//  Todoey
//
//  Created by Alix Christa kaze on 2018-04-29.
//  Copyright © 2018 planstomake. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var dateCreated: Date?
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
