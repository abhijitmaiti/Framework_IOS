//
//  GridViewItem.swift
//  Framework_ios
//
//  Created by Abhijit Maiti on 1/5/24.
//

import SwiftUI
import Foundation

struct GridViewItem:View{
    let imageName: String
    let name: String
    var body: some View{
        VStack{
            Image(imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 90, height: 90)
                .padding(.top,5)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }.padding()
    }
}
