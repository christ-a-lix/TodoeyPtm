//
//  Category.swift
//  Todoey
//
//  Created by Alix Christa kaze on 2018-04-29.
//  Copyright © 2018 planstomake. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    let items = List<Item>()
}
