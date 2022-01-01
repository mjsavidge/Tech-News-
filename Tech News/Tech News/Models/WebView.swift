//
//  WebView.swift
//  Tech News
//
//  Created by matthew savidge on 1/1/22.
//

import Foundation
import SwiftUI
import WebKit

struct WebView : UIViewRepresentable{
    let urlString : String?
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString{
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
}
