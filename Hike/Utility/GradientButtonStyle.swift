//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by ISYS Macbook air 1 on 14/10/24.
//

import Foundation
import SwiftUI

struct GradientButton : ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal,30)
            .background(
                configuration.isPressed ?
                    LinearGradient(colors: [.customGrayMedium,.customGrayLight], startPoint: .top, endPoint: .bottom) :
                    LinearGradient(colors: [.customGrayLight,.customGrayMedium], startPoint: .top, endPoint: .bottom))
            .clipShape(RoundedRectangle(cornerRadius: 40))
    }
}
