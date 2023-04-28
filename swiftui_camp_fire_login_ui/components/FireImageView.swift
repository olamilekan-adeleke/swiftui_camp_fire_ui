//
//  FireImageView.swift
//  swiftui_camp_fire_login_ui
//
//  Created by Enigma Kod on 28/04/2023.
//

import SwiftUI

struct FireImageView: View {
    @State private var fireImageStage: FireImageStage = .one
    @Namespace private var namespace
    let timer = Timer.publish(every: 0.15, on: .main, in: .common).autoconnect()

    var body: some View {
        loadImage
            .onReceive(timer) { _ in
                switch fireImageStage {
                    case .one:
                        animate(.two)
                    case .two:
                        animate(.three)
                    case .three:
                        animate(.four)
                    case .four:
                        animate(.one)
                }
            }
    }

    @ViewBuilder private var loadImage: some View {
        switch fireImageStage {
            case .one:
                imageWidget("FireStageOne")
                    .matchedGeometryEffect(id: "image_id", in: namespace)
            case .two:
                imageWidget("FireStageTwo")
                    .matchedGeometryEffect(id: "image_id", in: namespace)
            case .three:
                imageWidget("FireStageThree")
                    .matchedGeometryEffect(id: "image_id", in: namespace)
            case .four:
                imageWidget("FireStageFour")
                    .matchedGeometryEffect(id: "image_id", in: namespace)
        }
    }

    private func imageWidget(_ imageName: String) -> some View {
        return Image(imageName).resizable().frame(width: 150, height: 150)
    }

    func animate(_ fireStage: FireImageStage) {
        withAnimation(.easeInOut(duration: 0.15)) {
            self.fireImageStage = fireStage
        }
    }
}

struct FireImageView_Previews: PreviewProvider {
    static var previews: some View {
        FireImageView()
    }
}
