//
//  WalktroughModel.swift
//  Cars
//
//  Created by Alfredo Luco on 11-07-20.
//

import Foundation

class WalktroughModel: Identifiable, ObservableObject {
    let id: UUID = UUID()
    let imageName: String
    let title: String
    
    init(imageName: String, title: String) {
        self.imageName = imageName
        self.title = title
    }
}
