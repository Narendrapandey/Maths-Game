//
//  OnboardingView.swift
//  MathsGame (iOS)
//
//  Created by Narendra Pandey on 24/05/21.
//

import SwiftUI

typealias onboardingGetStarted = () -> Void

struct OnboardingView: View {
    
    @Environment(\.presentationMode) private var presentationMode
    
    let item: OnboardingItem
    let handler: onboardingGetStarted
    let limit: Int
    
    @Binding var index: Int
    
    internal init( item: OnboardingItem,
                   limit: Int,
                   index: Binding<Int>,
                   handler: @escaping onboardingGetStarted) {
        self.item = item
        self.limit = limit
        self._index = index
        self.handler = handler
    }
    
    var body: some View {
        
        VStack {
            
            Spacer()
                        
            Image(item.imageName ?? "")
                .padding(.bottom, 50)
                .font(.system(size: 120, weight: .bold))
            
            Text(item.title ?? "")
                .padding(.bottom, 2)
                .font(.system(size: 25, weight: .bold))
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
            
            Text(item.content ?? "")
                .padding(.horizontal, 50)
                .font(.system(size: 15, weight: .bold))
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
                handler()
            }, label: {
                Text("Get Started")
            })
            .font(.system(size: 18, weight: .bold))
            .foregroundColor(.white)
            .padding(.horizontal, 25)
            .padding(.vertical, 10)
            .background(Color.blue)
            .clipShape(Capsule())
            .padding(.top, 50)
            .opacity(index == limit ? 1 : 0)
            .allowsHitTesting(index == limit)
            .animation(.easeInOut(duration: 0.25))
            
        }
        .padding(.bottom, 150)
        
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(item: OnboardingItem(title: "Dummy", content: "content is dummy", sfSymbol: "heart"),
                       limit: 0,
                       index: .constant(0)) { }
    }
}
