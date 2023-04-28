//
//  IntroView.swift
//  swiftui_camp_fire_login_ui
//
//  Created by Enigma Kod on 28/04/2023.
//

import SwiftUI

struct IntroView: View {
    var body: some View {
        ZStack {
            Rectangle().foregroundColor(Color("background"))
                .allowsHitTesting(false)

            VStack() {
                startAndMoonViews()
                campTentFireAndTextView()
            }
        }
        .ignoresSafeArea()
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
