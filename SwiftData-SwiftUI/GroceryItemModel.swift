//
//  GroceryItemModel.swift
//  SwiftData-SwiftUI
//
//  Created by Bipul Islam on 19/12/24.
//

import Foundation
import SwiftData

@Model
class GroceryItemModel{
    let title: String
    let subTitle: String
    let date: Date
    
    init(title: String, subTitle: String, date: Date) {
        self.title = title
        self.subTitle = subTitle
        self.date = date
    }
}
