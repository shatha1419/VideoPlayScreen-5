//
//  insN.swift
//  VideoPlayScreen
//
//  Created by Nora Aldossary on 22/05/1445 AH.
//

import SwiftUI

struct insN: View {
    
    let horizontalPadding: CGFloat = 30
    let cornerRadiusConstant: CGFloat = 10
    let paddingConstant: CGFloat = 10
    
    var body: some View {
        ZStack {
            Color(.graay)// غيرو اللون
               .ignoresSafeArea()
            VStack {
                Text("اختر نوع الالة الموسيقية")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/.bold())
                    .frame(height: 100)
                GeometryReader(content: { geometry in
                    let size = geometry.size
                    ScrollView(.horizontal) {
                        HStack(spacing: 5) {
                            ForEach(instCard.cardsN) { card in
                                GeometryReader(content: { proxy in
                                    let minX = min( proxy.frame(in: .scrollView).minX * 1.4, proxy.size.width  * 1.4)
                                    
                                    Image(card.imageName)
                                        .resizable()
                                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                        .offset(x: -minX)
                                        .frame(width: proxy.size.width * 2.5)
                                        .frame(width: proxy.size.width)
                                        .frame(height: proxy.size.height)
                                        .overlay(content: {
                                            titleOverlayForCard(card)
                                        })
                                        .clipShape(.rect(cornerRadius: cornerRadiusConstant))
                                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.5), radius: cornerRadiusConstant, x: -1, y: paddingConstant)
                                })
                                .frame(width: size.width - 2*horizontalPadding - 2*paddingConstant, height: size.height - horizontalPadding)
                                .scrollTransition(.interactive, axis: .horizontal) { view, phase in
                                    view.scaleEffect(phase.isIdentity ? 1 : 0.95)
                                }
                            }
                        }
                        .padding(.horizontal, horizontalPadding )
                        .scrollTargetLayout()
                        .frame(height: size.height, alignment: .top)
                    }
                    .scrollTargetBehavior(.viewAligned)
                    .scrollIndicators(.hidden)
                })
                Text("")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/.bold())
                    .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                Spacer()
            }
        }
    }
    
    @ViewBuilder
    private func titleOverlayForCard(_ instCard: instCard) -> some View {
        ZStack(alignment: .bottomLeading, content: {
            LinearGradient(colors: [
                .clear,
                .clear,
                .clear,
                .clear,
                .clear,
                .black.opacity(0.1),
                .black.opacity(0.5),
                .black
            ], startPoint: .top, endPoint: .bottom)
            VStack(alignment: .leading , spacing: 5) {
                Text(instCard.title)
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.white)
                Text(instCard.subTitle)
                    .font(.callout)
                    .foregroundStyle(.white.opacity(0.7))
            }
            .padding(paddingConstant)
        })
    }
}
#Preview {
    insN()
}
