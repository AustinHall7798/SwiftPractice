//
//  TextViews.swift
//  SwiftPractice
//
//  Created by Austin Hall on 9/4/23.
//

import SwiftUI

struct TextView: View, Identifiable, CustomView {
    let id = UUID()

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    
    func getViewContent() -> String {
        "Text Components"
    }
    
    func getLabelIcon() -> String {
        "text.bubble.fill"
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
