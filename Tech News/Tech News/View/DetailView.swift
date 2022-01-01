//
//  DetailView.swift
//  Tech News
//
//  Created by matthew savidge on 1/1/22.
//

import SwiftUI

struct DetailView: View {
    let url : String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "")
    }
}
