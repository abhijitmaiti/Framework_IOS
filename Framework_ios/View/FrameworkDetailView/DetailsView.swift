//
//  DetailView.swift
//  Framework_ios
//
//  Created by Abhijit Maiti on 1/5/24.
//
import SwiftUI
import Foundation

struct DetailsView :View {
    let framework : Framework
    @Binding var isShowingDetails : Bool
    @State private var isLinkActive = false
    var body: some View{
        VStack{
            
            HStack{
                Spacer()
                Button{
                 isShowingDetails = false
                }label :{
                    Image(systemName: "xmark")
                        .imageScale(.large)
                        .foregroundColor(Color(.label))
                        
                        .frame(width: 40, height: 40)
                       
                        
                }
                .padding(.trailing,20)
                .padding(.top,20)
                
            }
        VStack{
            Spacer()
            Image(framework.imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 110, height: 110)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding(.bottom,30)
           
            Text(framework.description)
                .font(.body)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 20)
            Spacer()
            Button{
                isLinkActive = true
            } label: {
                Text("Learn More")
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .frame(width: 250, height: 50)
                    .foregroundColor(.white)
                    .background(Color(.red))
                    .cornerRadius(10)
                
            
            }
            .sheet(isPresented: $isLinkActive, content: {
                safariView(urlString: (URL(string: framework.urlString) ?? URL(string: "www.google.com"))!)
            })
        }
    }
}
    

}

