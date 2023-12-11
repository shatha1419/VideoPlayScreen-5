//
//  UserProfile.swift
//  VideoPlayScreen
//
//  Created by Nora Aldossary on 20/05/1445 AH.
//

import SwiftUI

struct UserProfile: View {
    @State private var selectedTab = 0
    
    var body: some View {
        
            // First tab
            VStack {
                ZStack {
                   
                        VStack (spacing:50){
                    
                            ScrollView {
                                ZStack{
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 335, height: 104)
                                        .background(Color(red: 0.78, green: 0.71, blue: 0.59))
                                        .cornerRadius(15)
                                        .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                                        .cornerRadius(30)
                                    HStack(spacing:60){
                                        Rectangle()
                                        .frame(width: 90, height: 90)
                                        .cornerRadius(25)
                                        .clipped()
                                        Text("عزفي على آلة الطبلة")
                                        .font(Font.custom("Al Bayan", size: 24))
                                        .multilineTextAlignment(.trailing)
                                        .foregroundColor(.black)
                                    }
                                }
                                
                            
                                ZStack{
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 335, height: 104)
                                        .background(Color(red: 0.78, green: 0.71, blue: 0.59))
                                        .cornerRadius(15)
                                        .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                                        .cornerRadius(30)
                                    HStack(spacing:60){
                                        Rectangle()
                                        .frame(width: 90, height: 90)
                                        .cornerRadius(25)
                                        .clipped()
                                        Text("عزفي على آلة الطبلة")
                                        .font(Font.custom("Al Bayan", size: 24))
                                        .multilineTextAlignment(.trailing)
                                        .foregroundColor(.black)
                                    }
                                }
                                
                            
                                ZStack{
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 335, height: 104)
                                        .background(Color(red: 0.78, green: 0.71, blue: 0.59))
                                        .cornerRadius(15)
                                        .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                                        .cornerRadius(30)
                                    HStack(spacing:60){
                                        Rectangle()
                                        .frame(width: 90, height: 90)
                                        .cornerRadius(25)
                                        .clipped()
                                        Text("عزفي على آلة الطبلة")
                                        .font(Font.custom("Al Bayan", size: 24))
                                        .multilineTextAlignment(.trailing)
                                        .foregroundColor(.black)
                                    }
                                }
                            
                                ZStack{
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 335, height: 104)
                                        .background(Color(red: 0.78, green: 0.71, blue: 0.59))
                                        .cornerRadius(15)
                                        .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                                        .cornerRadius(30)
                                    HStack(spacing:60){
                                        Rectangle()
                                        .frame(width: 90, height: 90)
                                        .cornerRadius(25)
                                        .clipped()
                                        Text("عزفي على آلة الطبلة")
                                        .font(Font.custom("Al Bayan", size: 24))
                                        .multilineTextAlignment(.trailing)
                                        .foregroundColor(.black)
                                    }
                                }
                            
                
                                
                        }//end of scrollView
                            .padding(.top, 300.0)}//end of VStack

                    
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}
