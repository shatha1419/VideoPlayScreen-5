import SwiftUI

struct insS: View {
    let horizontalPadding: CGFloat = 30
    let cornerRadiusConstant: CGFloat = 10
    let paddingConstant: CGFloat = 10

    var body: some View {
        NavigationView {
            ZStack {
                Color("")
                    .ignoresSafeArea()

                VStack {
                    Text("اختر نوع الالة الموسيقية")
                        .font(.title)
                        .bold()
                        .frame(height: 100)

                    GeometryReader(content: { geometry in
                        let size = geometry.size

                        ScrollView(.horizontal) {
                            HStack(spacing: 5) {
                                ForEach(instCard.cardsS) { card in
                                    NavigationLink(destination: instrumentView()) {
                                        ZStack {
                                            GeometryReader(content: { proxy in
                                                let minX = min(proxy.frame(in: .scrollView).minX * 1.4, proxy.size.width * 1.4)

                                                Image(card.imageName)
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .offset(x: -minX)
                                                    .frame(width: proxy.size.width * 2.5)
                                                    .frame(width: proxy.size.width)
                                                    .frame(height: proxy.size.height)
                                                    .overlay(content: {
                                                        titleOverlayForCard(card)
                                                    })
                                                    .clipShape(Rectangle())
                                                    .cornerRadius(cornerRadiusConstant)
                                                    .shadow(color: .black.opacity(0.5), radius: cornerRadiusConstant, x: -1, y: paddingConstant)
                                            })
                                            .frame(width: size.width - 2 * horizontalPadding - 2 * paddingConstant)
                                            .scrollTransition(.interactive, axis: .horizontal) { view, phase in
                                                view.scaleEffect(phase.isIdentity ? 1 : 0.95)
                                            }
                                        }
                                    }
                                    .buttonStyle(PlainButtonStyle())
                                }
                            }
                            .padding(.horizontal, horizontalPadding)
                            .scrollTargetLayout()
                            .frame(height: size.height, alignment: .top)
                        }
                        .scrollTargetBehavior(.viewAligned)
                        .scrollIndicators(.hidden)
                    })

                    Text("")
                        .font(.title)
                        .bold()
                        .frame(height: 100)

                    Spacer()
                }
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
            VStack(alignment: .leading, spacing: 5) {
                Text(instCard.title)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Text(instCard.subTitle)
                    .font(.callout)
                    .foregroundColor(.white.opacity(0.7))
            }
            .padding(paddingConstant)
        })
    }
}

struct insS_Previews: PreviewProvider {
    static var previews: some View {
        insS()
    }
}

