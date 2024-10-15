//
//  CardView.swift
//  Hike
//
//  Created by ISYS Macbook air 1 on 07/10/24.
//

import SwiftUI

struct CardView: View {
    
    @State private var imageNumber = 1
    @State private var randomNumber = 1
    @State private var isShowingSheet : Bool = false
    
    func randomImage(){
        repeat{
            randomNumber = Int.random(in: 1...5)
        }while randomNumber == imageNumber
        imageNumber = randomNumber
    }
    
    var body: some View {
        ZStack {
            CustomBackgroundView()
            VStack {
                
                VStack(alignment: .leading){
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                        .foregroundStyle(.linearGradient(colors: [.customGrayLight,.customGrayMedium], startPoint: .top, endPoint: .bottom))
                        
                        Spacer()
                        Button{
                            print("button pressed")
                            isShowingSheet.toggle()
                        }label: {
                            CustomButtonView()
                        }.sheet(isPresented: $isShowingSheet){
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium,.large])
                        }
                    }
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundStyle(.colorGrayLight)
                }
                .padding(.horizontal,30)
                
                // MARK:  Main Component
                ZStack {
                    CustomCircleView()
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                }
                
                Button{
                    randomImage()
                }label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.black)
                        .shadow(color: .black.opacity(0.25), radius: 0.25,x: 1,y: 2)
                        .foregroundStyle(.linearGradient(colors: [.customGreenLight,.customGreenMedium], startPoint: .top, endPoint: .bottom))
                }
                .buttonStyle(GradientButton())
                
            }
        }
        .frame(width: 320,height: 570)
    }
}

#Preview {
    CardView()
}
