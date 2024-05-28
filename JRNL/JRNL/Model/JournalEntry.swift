//
//  JournalEntry.swift
//  JRNL
//
//  Created by 차지용 on 5/28/24.
//

import Foundation
import UIKit


class JournalEntry: Identifiable {
    let id = UUID()
    let date: Date
    let rating: Int
    let entryTitle: String
    let entryBody: String
    let photo: UIImage
    let latitude: Double?
    let longitude: Double?
    
    init(date: Date, rating: Int, entryTitle: String, entryBody: String, photo: UIImage, latitude: Double?, longitude: Double?) {
        self.date = date
        self.rating = rating
        self.entryTitle = entryTitle
        self.entryBody = entryBody
        self.photo = photo
        self.latitude = latitude
        self.longitude = longitude
    }
    
    
}
