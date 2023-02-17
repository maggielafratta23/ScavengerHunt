//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Find a body of water 🌊",
                 description: "Whether it be a river, waterfall, ocean, or lake, search for a beautiful sight!"),
            Task(title: "Search for fall foliage 🍁",
                 description: "The months of September - November cause the leaves to change. Find some leaves on the ground or in the trees!"),
            Task(title: "Look for a national monument 🗽",
                 description: "There are 130 national monuments in the United States! Be sure to look for the St. Louis arch.")
        ]
    }
}
