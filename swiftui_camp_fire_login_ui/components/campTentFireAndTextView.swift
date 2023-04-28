//
//  campTentFireAndTextView.swift
//  swiftui_camp_fire_login_ui
//
//  Created by Enigma Kod on 28/04/2023.
//

import SwiftUI

struct campTentFireAndTextView: View {
    var body: some View {
        VStack {
            HStack {
                Image("Tent")
                    .resizable()
                    .frame(width: 280, height: 170, alignment: .leading)
                    .offset(x: 40, y: -45)

                FireImageView().offset(x: -40)
            }

            Spacer().frame(height: 40)

            VStack(alignment: .leading) {
                Spacer().frame(width: .infinity, height: 0)

                Text("Camp-tastic!")
                    .font(.system(size: 30))
                    .fontWeight(.semibold)
                    .foregroundColor(Color("TextColor"))

                Text("/kæmp-tas-tic/")
                    .italic()
                    .font(.system(size: 14))
                    .fontWeight(.regular)
                    .foregroundColor(Color("TextColor"))

                Spacer().frame(height: 10)

                Text("“the most wonderful, awe-inspiring and simply fantastic camping experiences”")
                    .font(.system(size: 15))
                    .fontWeight(.regular)
                    .foregroundColor(Color("TextColor"))
                    .frame(width: UIScreen.screenWidth * 0.85)
            }

            Spacer().frame(height: 80)

            Button {} label: {
                RoundedRectangle(cornerRadius: 40)
                    .frame(width: 305, height: 54)
                    .foregroundColor(Color("ButtonBackGroundColor"))
                    .overlay {
                        Text("Get Started!")
                            .font(.system(size: 16))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                    }
            }

            Spacer().frame(height: 10)

            Ellipse().fill(.black.opacity(0.4)).frame(width: 143, height: 12)

            Spacer()
        }
        .frame(width: UIScreen.screenWidth * 0.90, height: UIScreen.screenHeight * 0.65)
        .foregroundColor(Color.clear)
        .padding(.horizontal, 20)
    }
}

struct campTentFireAndTextView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
