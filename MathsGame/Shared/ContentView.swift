//
//  ContentView.swift
//  Shared
//
//  Created by Narendra Pandey on 23/05/21.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - App Storage -
    @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding = false
    
    // MARK: - Binding View -
    var body: some View {
        
        LoginView()
            .fullScreenCover(isPresented: .constant(!hasSeenOnboarding),
                             content: {
                                
                                OnboardingScreenView() {
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
