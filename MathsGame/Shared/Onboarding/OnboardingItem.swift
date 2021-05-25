//
//  OnboardingItem.swift
//  MathsGame (iOS)
//
//  Created by Narendra Pandey on 24/05/21.
//

import Foundation

struct OnboardingItem: Identifiable {
    let id = UUID()
    let title: String?
    let content: String?
    let imageName: String?
}
