//
//  Models.swift
//  HomeControl
//
//  Created by Cesar  Perez Catalan on 25/01/23.
//

import Foundation

struct NotificationModel {
    let section : Int
    let title: String
    let subTitle : String
    
    init(section: Int, title: String, subTitle: String) {
        self.section = section
        self.title = title
        self.subTitle = subTitle
    }
}


struct GoalsModel {
    let category: String
    let room: String
    let hour: String
    let days: String
}
