//
//  CustomButtonView.swift
//  Hike
//
//  Created by ISYS Macbook air 1 on 11/10/24.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(.linearGradient(colors: [.white, .customGreenLight,.customGreenMedium], startPoint: .top, endPoint: .bottom))
            
            Circle()
                .stroke(.linearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom), lineWidth: 4)

            
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(.linearGradient(colors: [.customGrayLight,.customGrayMedium], startPoint: .top, endPoint: .bottom))
            
            
        }
        .frame(width: 58,height: 58)
    }
}

#Preview {
    CustomButtonView()
}
