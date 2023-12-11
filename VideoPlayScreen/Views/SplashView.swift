//
//  SplashView.swift
//  VideoPlayScreen
//
//  Created by Nora Aldossary on 20/05/1445 AH.
//

import SwiftUI

struct SplashView: View {
    @State var isHomeRootScreen = false
    @State var scaleAmount: CGFloat = 1
    
    var body: some View {
        ZStack {
            Color("graay")
            if isHomeRootScreen {
                Login()
            } else {
        
                Image("Home")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaleEffect(scaleAmount)
                    .frame(width: 50 )
            }
        }
        .ignoresSafeArea()
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                withAnimation (.easeOut(duration: 1)) {
                    scaleAmount = 0.6
                }
                withAnimation (.easeInOut (duration: 1).delay(1)) {
                    scaleAmount  = 20
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                    isHomeRootScreen = true
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
