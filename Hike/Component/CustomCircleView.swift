//
//  CustomCircleView.swift
//  Hike
//
//  Created by ISYS Macbook air 1 on 14/10/24.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimateGradient : Bool = false
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [.customIndigoMedium,.customSalmonLight],
                        startPoint: isAnimateGradient ? .topLeading : .bottomLeading,
                        endPoint: isAnimateGradient ?  .bottomTrailing : .topTrailing))
                .onAppear{
                    withAnimation(.linear(duration: 3).repeatForever(autoreverses: true)){
                        isAnimateGradient.toggle()
                    }
                }
            MotionAnimationView()
        }
        .frame(width: 256,height: 256)
    }
}

#Preview {
    CustomCircleView()
}
