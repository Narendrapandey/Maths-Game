//
//  OnboardingScreenView.swift
//  MathsGame (iOS)
//
//  Created by Narendra Pandey on 24/05/21.
//

import SwiftUI

struct OnboardingScreenView: View {
    
    // MARK: - Variables -
    let handler: onboardingGetStarted
    private let onboardingTypes = [OnboardingItem(title: "Arithemetic Games",
                                                  content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                                  imageName: "mainOnboard"),
                                   
                                   OnboardingItem(title: "Geometry Games",
                                                  content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                                  imageName: "onboardPrimary"),
                                   
                                   OnboardingItem(title: "Fictions Games",
                                                  content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                                  imageName: "onboardSecondary")]
    
    // MARK: - State -
    @State private var selectedIndex = 0
    
    // MARK: - Bind View -
    var body: some View {
        
        TabView (selection: $selectedIndex) {
            ForEach(onboardingTypes.indices) { index in
                OnboardingView(item: onboardingTypes[index],
                               limit: onboardingTypes.count - 1,
                               index: .constant(index),
                               handler: handler)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .overlay(
            HStack(spacing: 15) {
                ForEach(onboardingTypes.indices) { index in
                    
                    Capsule()
                        .frame(width: 7, height: 7)
                        .foregroundColor(Color.blue)
                }
            }
            .padding(.bottom, (UIApplication.shared.windows.first?.safeAreaInsets.bottom ?? 0) + 30)
            .overlay(
                Capsule()
                    .frame(width: 20, height: 7)
                    .foregroundColor(Color.green)
                    .offset(x: getOffset() )
                    .padding(.bottom, (UIApplication.shared.windows.first?.safeAreaInsets.bottom ?? 0) + 30)
                ,alignment: .leading
            )
            ,alignment: .bottom
        )
    }
    
    private let screenWidth = UIScreen.main.bounds.width
    
    private func getOffset() -> CGFloat {
        CGFloat(selectedIndex*22)-7
    }
}

struct OnboardingScreenView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreenView() {}
    }
}
