//
//  ContentView.swift
//  VerifiedBadge
//
//  Created by Jared Davidson on 4/29/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CloudBadge(content: {
            Image(systemName: "checkmark")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.white)
                .bold()
        })
            .foregroundColor(.blue)
            .frame(width: 100, height: 100)
    }
}

#Preview {
    ContentView()
}
