//
//  SettingsView.swift
//  Hike
//
//  Created by ISYS Macbook air 1 on 14/10/24.
//

import SwiftUI

struct SettingsView: View {
    
    private let alternateAppIcons : [String] = [
        "AppIcon-MagnifyingGlass",
        "AppIcon-Map",
        "AppIcon-Mushroom",
        "AppIcon-Campfire",
        "AppIcon-Camera",
        "AppIcon-Backpack",
    ]
    var body: some View {
        List{
            Section{
                HStack{
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80))
                        .fontWeight(.black)
                    VStack(spacing: -10) {
                        Text("HIKE")
                            .font(.system(size: 66))
                            .fontWeight(.black)
                        Text("Editor's Choice")
                            .fontWeight(.medium)
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80))
                        .fontWeight(.black)
                    Spacer()
                }
                .foregroundStyle(.linearGradient(colors: [.customGreenLight,.customGreenMedium,.customGreenDark], startPoint: .top, endPoint: .bottom))
                .padding(.top,8)
                
                VStack(spacing: 8) {
                    Text("Where can you find \nperfect tracks?")
                        .fontWeight(.heavy)
                        .font(.title2)
                    Text("Discover the best hiking trails with Hike Explorer, your ultimate companion for outdoor adventures! Whether you're an experienced hiker or just starting, our app helps you find and explore scenic trails near you.")
                        .font(.caption)
                        .italic()
                    Text("Dust off the boots! It's time for a walk")
                        .fontWeight(.heavy)
                        .foregroundStyle(Color.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom,16)
                .frame(maxWidth: .infinity)
                
                
            }.listRowSeparator(.hidden)
            
            Section(header:Text("Alternate Icons")){
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(spacing: 12) {
                        ForEach(alternateAppIcons.indices,id: \.self) { item in
                            Button{
                                print("pressed")
                                UIApplication.shared.setAlternateIconName(alternateAppIcons[item]){
                                    error in
                                    if error != nil {
                                        print("Failed request to update the app's icon : \(String(describing: error?.localizedDescription))")
                                    }else{
                                        print("Success! You have changed the app's icon tp \(alternateAppIcons[item])")
                                    }
                                    
                                }
                                
                            }label: {
                                Image("\(alternateAppIcons[item])-Preview")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 86,height: 86)
                                    .clipShape(RoundedRectangle(cornerRadius: 16))
                            }.buttonStyle(.borderless)
                        }
                    }
                }.padding(.top,12)
                Text("Choose your favourite icon from the collection above")
                    .frame(minWidth: 0,maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .font(.footnote)
                    .padding(.bottom,12)
            }.listRowSeparator(.hidden)
            
            Section(
                header: Text("ABOUT THE APP"),
                footer: HStack{
                    Spacer()
                    Text("Copyright © All right reserved")
                    Spacer()
                    
                }){
                    CustomListRowView(rowLabel: "Application", rowContent: "Hike", rowIcon: "iphone.gen3", rowTintColor: .blue)
                    CustomListRowView(rowLabel: "Compatibility", rowContent: "iOS, iPadOS", rowIcon: "info.circle", rowTintColor: .red)
                    CustomListRowView(rowLabel: "Technology", rowContent: "Swift", rowIcon: "swift", rowTintColor: .orange)
                    CustomListRowView(rowLabel: "Version", rowContent: "1.0", rowIcon: "gear", rowTintColor: .purple)
                    CustomListRowView(rowLabel: "Developer", rowContent: "Yuda", rowIcon: "ellipsis.curlybraces", rowTintColor: .mint)
                    CustomListRowView(rowLabel: "Designer", rowContent: "Rabbani", rowIcon: "paintpalette", rowTintColor: .pink)
                    CustomListRowView(rowLabel: "Website",rowIcon: "globe", rowTintColor: .indigo, rowLinkLabel: "Credo Academy",rowLinkDestination: "https://credo.academy")
                }
        }
        
    }
}

#Preview {
    SettingsView()
}
