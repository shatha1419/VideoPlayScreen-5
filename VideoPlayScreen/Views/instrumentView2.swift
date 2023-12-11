//
//  instrumentView2.swift
//  VideoPlayScreen
//
//  Created by SHATHA on 22/05/1445 AH.
//


import SwiftUI
import WebKit
import PhotosUI

struct instrumentView2: View {
    @State private var isImagePickerPresented: Bool = false
    @State private var selectedVideo: URL?
    @State private var currentVideoURL: String = "https://www.youtube.com/embed/SfLQ2YRrSes"


    var body: some View {
        VStack {
            RoundedVideoView(videoURL: currentVideoURL)
            ZStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 335, height: 104)
                    .background(Color(red: 0.78, green: 0.71, blue: 0.59))
                    .cornerRadius(15)
                    .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                    .cornerRadius(30)
                HStack(spacing: 60) {
                    Rectangle()
                        .frame(width: 90, height: 90)
                        .cornerRadius(25)
                        .clipped()
                        .overlay(
                            Image("الدفوف") // Replace "your_image_name" with the actual name of your image asset
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 90, height: 90)
                                .cornerRadius(25)
                                .clipped()
                        )
                        
                    Text("عزفي على آلة الدفوف ")
                        .font(Font.custom("Al Bayan", size: 24))
                        .multilineTextAlignment(.trailing)
                        .foregroundColor(.black)
                }
            }.navigationBarHidden(true)


            Spacer()

            RoundedButtonView(action: { isImagePickerPresented = true })
                .padding()
                .fileImporter(
                    isPresented: $isImagePickerPresented,
                    allowedContentTypes: [.movie],
                    allowsMultipleSelection: false
                ) { result in
                    do {
                        let videoURL = try result.get().first!
                        selectedVideo = videoURL
                    } catch {
                        // Handle error
                        print("Error selecting video: \(error.localizedDescription)")
                    }
                }
        }
    }
}



#Preview {
    instrumentView()
}

struct RoundedVideoView2: View {
    let videoURL: String

    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(height: 300)
            .overlay(
                WebView(url: URL(string: videoURL)!)
                    .padding()
            )
            .padding()
    }
}

struct RoundedButtonView2: View {
    var action: () -> Void

    var body: some View {
        
        Button(action: action) {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color("6"))
                        .background(Color(red: 0.06, green: 0.16, blue: 0.23))
                        .frame(width: 200, height: 45)
                        .shadow(radius: 1)
                        .cornerRadius(15)
                        .overlay(
                            Text("إدراج فيديو")
                                .font(.custom("Al Bayan", size: 20))
                                .foregroundColor(.white)
                        )
                }
    }
}

struct WebView2: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        let request = URLRequest(url: url)
        webView.load(request)

        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        // Update logic, if needed
    }
}


