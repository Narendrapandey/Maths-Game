//
//  OnboardingScreenView.swift
//  MathsGame (iOS)
//
//  Created by Narendra Pandey on 24/05/21.
//

import SwiftUI

struct OnboardingScreenView: View {
    
    let manager: OnboardingContentManager
    let handler: onboardingGetStarted
    
    @State private var selected = 0
    
    internal init(manager: OnboardingContentManager,
                  handler: @escaping onboardingGetStarted) {
        self.manager = manager
        self.handler = handler
    }
    
    var body: some View {
        
        TabView (selection: $selected) {
            ForEach(manager.items.indices) { index in
                OnboardingView(item: manager.items[index],
                               limit: manager.limit,
                               index: .constant(index),
                               handler: handler)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct OnboardingScreenView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreenView(manager: OnboardingContentManagerImpl(manager: PlistManagerImpl())) { }
    }
}
