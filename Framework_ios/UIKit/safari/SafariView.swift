//
//  SafariView.swift
//  Framework_ios
//
//  Created by Abhijit Maiti on 1/5/24.
//

import SwiftUI
import Foundation
import SafariServices

struct safariView : UIViewControllerRepresentable {
    let urlString : URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<safariView>) -> SFSafariViewController {
        SFSafariViewController(url: urlString)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<safariView>) {}
    
    
    
    
}
