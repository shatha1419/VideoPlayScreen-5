//
//  Login.swift
//  VideoPlayScreen
//
//  Created by Nora Aldossary on 16/05/1445 AH.
//

import SwiftUI

struct Login: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("graay")
                    .edgesIgnoringSafeArea(.all)

                Image("Home")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .position(CGPoint(x: 200, y: 300.0))

                NavigationLink(destination: Map()) {
                    Text("استكشف الموسيقى")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .padding(.horizontal, 30)
                        .background(Color("brownn"))
                        .clipShape(Capsule())
                        .shadow(color: Color.white.opacity(0.1), radius: 5, x: 0, y: 5)
                }
                .position(CGPoint(x: 200.0, y: 500.0))
                .padding(.vertical)
            }
            .navigationBarHidden(true)
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}

                
