//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by ISYS Macbook air 1 on 11/10/24.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            
            Color.customGreenDark
                .clipShape(RoundedRectangle(cornerRadius: 40))
                .offset(y: 12)
            
            Color.customGreenLight
                .clipShape(RoundedRectangle(cornerRadius: 40))
                .offset(y: 3)
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            
            LinearGradient(colors: [Color.customGreenLight,Color.customGreenMedium], startPoint: .top, endPoint: .bottom)
                .clipShape(RoundedRectangle(cornerRadius: 40))
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
