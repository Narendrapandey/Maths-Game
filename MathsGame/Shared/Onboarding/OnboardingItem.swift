//
//  OnboardingItem.swift
//  MathsGame (iOS)
//
//  Created by Narendra Pandey on 24/05/21.
//

import Foundation

struct OnboardingItem: Codable, Identifiable {
    
    var id = UUID()
    var title: String?
    var content: String?
    var imageName: String?
    
    enum CodingKeys: String, CodingKey {
        case title, content, imageName
    }
    
    init(title: String? = nil,
         content: String? = nil,
         sfSymbol: String? = nil) {
        self.title = title
        self.content = content
        self.imageName = sfSymbol
    }
    
    init(from decoder: Decoder) throws {
        
        do {
            
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.title = try container.decode(String?.self, forKey: .title)
            self.content = try container.decode(String?.self, forKey: .content)
            self.imageName = try container.decode(String?.self, forKey: .imageName)
            
        } catch {
            print(error)
        }
    }
}
