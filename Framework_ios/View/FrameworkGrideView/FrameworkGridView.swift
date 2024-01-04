//
//  FrameworkGridView.swift
//  Framework_ios
//
//  Created by Abhijit Maiti on 1/4/24.
//

import SwiftUI

struct FrameworkGridView: View {

    let column : [GridItem]=[GridItem(.flexible()),
                             GridItem(.flexible()),
                             GridItem(.flexible()),
    ]
    @StateObject var viewModel = FrameworkGirdViewModel()
    var body: some View {
        
        NavigationView{
            ScrollView{
                LazyVGrid(columns:column){
                    ForEach(DataModel.framworkDetails){ framework in GridViewItem(imageName: framework.imageName, name: framework.name)
                        .onTapGesture{
                            viewModel.selectFramework = framework
                            
                        }
                        
                    }
                    
                }
                
            }
            .navigationTitle("🍏 Framework")
            .sheet(isPresented: $viewModel.isShowingDetails) {
                DetailsView(framework: viewModel.selectFramework ?? DataModel.framworkDetails[1],isShowingDetails: $viewModel.isShowingDetails
                        
                            
                )
                        
            }
            
        }
       
    }
}




struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .previewDevice("iPhone 11")
    }
}

