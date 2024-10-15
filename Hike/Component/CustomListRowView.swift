//
//  CustomListRowView.swift
//  Hike
//
//  Created by ISYS Macbook air 1 on 14/10/24.
//

import SwiftUI

struct CustomListRowView: View {
    
    @State var rowLabel : String
    @State var rowContent: String? = nil
    @State var rowIcon : String
    @State var rowTintColor : Color
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDestination: String? = nil
    var body: some View {
        LabeledContent{
            if rowContent != nil {
                Text(rowContent!)
                    .foregroundStyle(.primary)
                .fontWeight(.heavy)
            } else if (rowLinkLabel != nil && rowLinkDestination != nil) {
                Link(rowLinkLabel!, destination: URL(string: rowLinkDestination!)!)
                    .foregroundStyle(.pink)
                    .fontWeight(.heavy)
            }else {
                EmptyView()
            }
        } label: {
            HStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30,height: 30)
                        .foregroundStyle(rowTintColor)
                    Image(systemName: rowIcon)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                }
                Text(rowLabel)
            }
        }
    }
}

#Preview {
    List {
        CustomListRowView(rowLabel: "Application", rowContent: nil, rowIcon: "doc.append.fill", rowTintColor: .pink,rowLinkLabel: "Credo Academy",rowLinkDestination: "https://credo.academy")
    }
}
