//
//  startAndMoonViews.swift
//  swiftui_camp_fire_login_ui
//
//  Created by Enigma Kod on 28/04/2023.
//

import SwiftUI

struct startAndMoonViews: View {
    @State private var rotate = false

    var body: some View {
        ZStack {
            Image("startImage")
                .resizable()
                .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight * 0.35)

            Image("moonImage")
                .resizable()
                .frame(width: 70, height: 70)
                .offset(x: 120, y: -30)
                .rotation3DEffect(.degrees(360), axis: (x: 1, y: 1, z: 0))

            VStack {
                Spacer()
                Image("hillsAndTress")
                    .resizable()
                    .frame(width: UIScreen.screenWidth, height: 100)
            }
        }
        .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight * 0.35)
        .foregroundColor(Color.clear)
    }
}

struct startAndMoonViews_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
