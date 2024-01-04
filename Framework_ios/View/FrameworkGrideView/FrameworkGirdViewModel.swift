//
//  FrameworkGirdViewModel.swift
//  Framework_ios
//
//  Created by Abhijit Maiti on 1/4/24.
//


import Foundation

final class FrameworkGirdViewModel : ObservableObject {
    var selectFramework : Framework?{
        didSet{
            isShowingDetails = true
        }
    }
    @Published var isShowingDetails = false
    
    
}
 
 
