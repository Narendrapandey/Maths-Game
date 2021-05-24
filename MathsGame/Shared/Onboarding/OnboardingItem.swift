//
//  OnboardingItem.swift
//  MathsGame (iOS)
//
//  Created by Narendra Pandey on 24/05/21.
//

import Foundation

struct OnboardingItem: Identifiable {
    var id = UUID()
    var title: String?
    var content: String?
    var imageName: String?
}
