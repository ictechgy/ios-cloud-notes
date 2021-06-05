//
//  NoteData.swift
//  CloudNotes
//
//  Created by 배은서 on 2021/06/01.
//

import Foundation

struct NoteData: Decodable {
    let title: String
    let body: String
    let lastModified: Int
    var formattedLastModified: String {
        let date = Date(timeIntervalSince1970: TimeInterval(lastModified))
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale.current
        dateFormatter.dateStyle = .medium
        
        return dateFormatter.string(from: date)
    }
    
    private enum CodingKeys: String, CodingKey {
        case title, body
        case lastModified = "last_modified"
    }
    
}
