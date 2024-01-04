//
//  FrameworkDetailView.swift
//  Framework_ios
//
//  Created by Abhijit Maiti on 1/4/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    let framwork :Framework
    
    var body: some View {
        VStack{
            DetailsView(framework: framwork,isShowingDetails: .constant(false))
            
        }
            
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framwork: DataModel.framworkDetails[1] )
            .preferredColorScheme(.light)
            .previewDevice("iPhone 11")
    }
}

