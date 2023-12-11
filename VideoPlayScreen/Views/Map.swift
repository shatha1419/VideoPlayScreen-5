//
//  Map.swift
//  VideoPlayScreen
//
//  Created by Nora Aldossary on 16/05/1445 AH.
//

import SwiftUI

struct Map: View {
    
    @State private var isNorthernRegionDetailsVisible = false
    @State private var isWesternRegionDetailsVisible = false
    @State private var isCentralRegionDetailsVisible = false
    @State private var isEasternRegionDetailsVisible = false
    @State private var isSouthernRegionDetailsVisible = false
    @State private var area: String = "" // State variable to hold the input text
    
    var body: some View {
        
            ZStack {
                VStack {
                    Text("اختر المنطقة") // Your text label
                        .font(.title) // Set the font size to title
                        .padding(.all)
                    
                    Image("sar")
                        .resizable()
                        .scaledToFit() // Adjust the image to fit while maintaining its aspect ratio
                    
                    
                }.position(CGPoint(x: 200, y: 325.0))
                
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(red: 150 / 255.0, green: 197 / 255.0, blue: 124 / 255.0))
                    
                        .frame(width: 105, height: 45)
                        .opacity(0.9)
                    
                    Button(action: {
                        self.isNorthernRegionDetailsVisible.toggle()
                        
                        isWesternRegionDetailsVisible = false
                        isCentralRegionDetailsVisible = false
                        isEasternRegionDetailsVisible = false
                        isSouthernRegionDetailsVisible = false
                    }) {
                        Text("المنطقة الشمالية")
                            .font(.custom("Al Bayan", size: 15))
                            .foregroundColor(.black)
                            .frame(width: 105, height: 45) // Set frame to the Text
                    }
                    .background(Color(red: 150 / 255.0, green: 197 / 255.0, blue: 124 / 255.0)) // Apply background to Button
                    .cornerRadius(10) // Apply corner radius to Button background
                }
                .offset(x: 0, y: 85) // Adjust the offset as needed
                .position(CGPoint(x: 120, y: 190))
                if isNorthernRegionDetailsVisible {
                    VStack {
                        Text("الربابة والدف هما\n آلتان موسيقيتان\nتقليديتان شهيرتان\nفي المنطقة الشمالية.")
                            .multilineTextAlignment(.trailing)
                            .font(.custom("Al Bayan", size: 15))
                        
                        NavigationLink(destination: insN()) {
                            Text("المزيد")
                                .frame(width: 100, height: 30)
                                .font(.custom("Al Bayan", size: 15))
                                .background(Color(red: 14 / 255.0, green: 40 / 255.0, blue: 55 / 255.0))
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                        
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 1)
                    .position(x: 120, y: 170)
                    .transition(.opacity)
                    //   .animation(.default)
                    .zIndex(1)
                }
                
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(red: 88 / 255.0, green: 144 / 255.0, blue: 174 / 255.0))
                    
                        .frame(width: 50, height: 45)
                        .opacity(0.9)
                    
                    Button(action: {
                        self.isWesternRegionDetailsVisible.toggle()
                        
                        isNorthernRegionDetailsVisible = false
                        isCentralRegionDetailsVisible = false
                        isEasternRegionDetailsVisible = false
                        isSouthernRegionDetailsVisible = false
                    }) {
                        Text("المنطقة الغربية")
                            .font(.custom("Al Bayan", size: 15))
                            .foregroundColor(.black)
                            .frame(width: 50, height: 45) // Set frame to the Text
                    }
                    .background(Color(red: 88 / 255.0, green: 144 / 255.0, blue: 174 / 255.0)) // Apply background to Button
                    .cornerRadius(10) // Apply corner radius to Button background
                    
                }
                .offset(x: 0, y: 85) // Adjust the offset as needed
                .position(CGPoint(x: 130, y: 310))
                if isWesternRegionDetailsVisible {
                    VStack {
                        Text("العود، السمسمية، والمزمار\nهي آلات موسيقية تقليدية\nشهيرة في المنطقة الغربية\n بالمملكة العربية السعودية.")
                            .multilineTextAlignment(.trailing)
                            .font(.custom("Al Bayan", size: 15))
                        
                        NavigationLink(destination: insW()) {
                            Text("المزيد")
                                .frame(width: 100, height: 30)
                                .font(.custom("Al Bayan", size: 15))
                                .background(Color(red: 14 / 255.0, green: 40 / 255.0, blue: 55 / 255.0))
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                    }
                    .padding() // Add padding around the entire VStack
                    
                    .background(Color.white) // Add a background to the VStack to contain both the text and the button
                    .cornerRadius(10) // Apply corner radius to the VStack background
                    .shadow(radius: 1) // Apply shadow to the VStack background
                    // .offset(x: -90, y: 90)
                    .position(CGPoint(x: 130, y: 290))
                    .transition(.opacity)
                    .animation(.default, value: isWesternRegionDetailsVisible)
                    .zIndex(1)
                }
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(red: 251 / 255.0, green: 219 / 255.0, blue: 100 / 255.0))
                    
                        .frame(width: 80, height: 45)
                        .opacity(0.9)
                    
                    Button(action: {
                        self.isCentralRegionDetailsVisible.toggle()
                        isNorthernRegionDetailsVisible = false
                        isWesternRegionDetailsVisible = false
                        isEasternRegionDetailsVisible = false
                        isSouthernRegionDetailsVisible = false
                    }) {
                        Text("المنطقة الوسطى")
                            .font(.custom("Al Bayan", size: 15))
                            .foregroundColor(.black)
                            .frame(width: 80, height: 45) // Set frame to the Text
                    }
                    .background(Color(red: 251 / 255.0, green: 219 / 255.0, blue: 100 / 255.0)) // Apply background to Button
                    .cornerRadius(10) // Apply corner radius to Button background
                }
                .position(CGPoint(x: 204, y: 360))
                if isCentralRegionDetailsVisible {
                    VStack {
                        Text("العود والدف والمزمار\nهي آلات موسيقية تقليدية\nشهيرة في المنطقة الوسطى.")
                            .multilineTextAlignment(.trailing)
                            .font(.custom("Al Bayan", size: 15))
                        
                        
                        NavigationLink(destination: insC()) {
                            Text("المزيد")
                                .frame(width: 100, height: 30)
                                .font(.custom("Al Bayan", size: 15))
                                .background(Color(red: 14 / 255.0, green: 40 / 255.0, blue: 55 / 255.0))
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                    }
                    .padding() // Add padding around the entire VStack
                    .background(Color.white) // Add a background to the VStack to contain both the text and the button
                    .cornerRadius(10) // Apply corner radius to the VStack background
                    .shadow(radius: 1) // Apply shadow to the VStack background
                    .position(CGPoint(x: 204, y: 240))
                    .transition(.opacity)
                    .animation(.default, value: isCentralRegionDetailsVisible)
                    .zIndex(1)
                }
                
                
                
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(red: 249 / 255.0, green: 117 / 255.0, blue: 54 / 255.0))
                        .frame(width: 80, height: 45)
                        .opacity(0.9)
                    
                    Button(action: {
                        self.isEasternRegionDetailsVisible.toggle()
                        isNorthernRegionDetailsVisible = false
                        isWesternRegionDetailsVisible = false
                        isCentralRegionDetailsVisible = false
                        isSouthernRegionDetailsVisible = false
                    }) {
                        Text("المنطقة الشرقية")
                            .font(.custom("Al Bayan", size: 15))
                            .foregroundColor(.black)
                            .frame(width: 80, height: 45) // Set frame to the Text
                    }
                    .background(Color(red: 249 / 255.0, green: 117 / 255.0, blue: 54 / 255.0)) // Apply background to Button
                    .cornerRadius(10) // Apply corner radius to Button background
                }
                
                .position(CGPoint(x: 310, y: 410))
                if isEasternRegionDetailsVisible {
                    VStack {
                        Text(" المراس والعود والدف\n هما آلات موسيقية تقليدية رائعة\n تعتبر شعارًا للمنطقة الشرقية.")
                            .multilineTextAlignment(.trailing)
                            .font(.custom("Al Bayan", size: 15))
                        
                        
                        NavigationLink(destination: insE()) {
                            Text("المزيد")
                                .frame(width: 100, height: 30)
                                .font(.custom("Al Bayan", size: 15))
                                .background(Color(red: 14 / 255.0, green: 40 / 255.0, blue: 55 / 255.0))
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                    }
                    .padding() // Add padding around the entire VStack
                    .background(Color.white) // Add a background to the VStack to contain both the text and the button
                    .cornerRadius(10) // Apply corner radius to the VStack background
                    .shadow(radius: 1) // Apply shadow to the VStack background
                    
                    .position(CGPoint(x: 290, y: 300))
                    .transition(.opacity)
                    .animation(.default, value: isEasternRegionDetailsVisible)
                    .zIndex(1)
                }
                
                
                
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(red: 34 / 255.0, green: 135 / 255.0, blue: 116 / 255.0))
                    
                    
                        .frame(width: 90, height: 35)
                        .opacity(0.9)
                    
                    Button(action: {
                        self.isSouthernRegionDetailsVisible.toggle()
                        isNorthernRegionDetailsVisible = false
                        isWesternRegionDetailsVisible = false
                        isCentralRegionDetailsVisible = false
                        isEasternRegionDetailsVisible = false
                        
                    }) {
                        Text("المنطقة الجنوبية")
                            .font(.custom("Al Bayan", size: 15))
                            .foregroundColor(.black)
                            .frame(width: 90, height: 35) // Set frame to the Text
                    }
                    .background(Color(red: 34 / 255.0, green: 135 / 255.0, blue: 116 / 255.0)) // Apply background to Button
                    .cornerRadius(10) // Apply corner radius to Button background
                }
                .offset(x: 0, y: 85) // Adjust the offset as needed
                .position(CGPoint(x: 200, y: 390))
                if isSouthernRegionDetailsVisible {
                    VStack {
                        Text("المزمار والدف والطنبور هما\n آلات موسيقية تقليدية رائعة \nتعتبر شعارًا للمنطقة الجنوبية.")
                            .multilineTextAlignment(.trailing)
                            .font(.custom("Al Bayan", size: 15))
                        
                        
                        NavigationLink(destination: insS()) {
                            Text("المزيد")
                                .frame(width: 100, height: 30)
                                .font(.custom("Al Bayan", size: 15))
                                .background(Color(red: 14 / 255.0, green: 40 / 255.0, blue: 55 / 255.0))
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                    }
                    .padding() // Add padding around the entire VStack
                    .background(Color.white) // Add a background to the VStack to contain both the text and the button
                    .cornerRadius(10) // Apply corner radius to the VStack background
                    .shadow(radius: 1) // Apply shadow to the VStack background
                    .position(CGPoint(x: 200, y: 360))
                    .transition(.opacity)
                    .animation(.default, value: isSouthernRegionDetailsVisible)
                    .zIndex(1)
                }
                
            }.navigationBarHidden(true)
        
    }
        
        }

            



#Preview {
    Map()
}
