//
//  DetailView.swift
//  Newzoo
//
//  Created by JJ on 26/02/24.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}


