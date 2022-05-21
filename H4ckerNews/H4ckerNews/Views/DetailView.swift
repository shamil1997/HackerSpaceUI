//
//  DetailView.swift
//  H4ckerNews
//
//  Created by Iris Medical Solutions on 20/05/22.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url : String?
    
    
    var body: some View {
        Webview(urlStrng: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}








