//
//  webView.swift
//  H4ckerNews
//
//  Created by Iris Medical Solutions on 20/05/22.
//

import SwiftUI
import WebKit

struct webView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct webView_Previews: PreviewProvider {
    static var previews: some View {
        webView()
    }
}
struct Webview : UIViewRepresentable {
    
    let urlStrng : String?
    
    func makeUIView(context: Context) -> Webview.UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeStrng = urlStrng {
            if let url = URL(string: safeStrng) {
                let req = URLRequest(url: url)
                uiView.load(req)
            }
        }
    }
}
