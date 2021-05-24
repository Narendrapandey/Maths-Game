//
//  ContentView.swift
//  Shared
//
//  Created by Narendra Pandey on 23/05/21.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding = false
    
    var body: some View {
        
        Text("Welcome to login screen")
            .fullScreenCover(isPresented: .constant(!hasSeenOnboarding),
                             content: {
                                
                                let plistManager = PlistManagerImpl()
                                let onboardingContentManager = OnboardingContentManagerImpl(manager: plistManager)
                                
                                OnboardingScreenView(manager: onboardingContentManager) {
                                    hasSeenOnboarding = true
                                }
                             })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
